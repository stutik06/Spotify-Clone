# -*- coding: utf-8 -*-
"""
Created on Tue Dec  1 20:46:14 2020

@author: Divyakant
"""
# importing all modules
import pandas as pd
import mysql.connector
import pygame
import tkinter as tkr

#connectivity
connection=mysql.connector.connect(host='localhost',database='project',
                                   user='root',password='12345')
cursor=connection.cursor()
print("Main Menu")

#MENU ITEMS
print(pd.Series(["1 Preview","2 search by category","3 top viewed songs","4 purchase"]))
while(True):   
    x=int(input("enter your search choice from 1 to 4 :"))
# PREVIEW TABLE    
    if x==1:
        print("All the songs we have") 
        sql_select1="select * from preview"
        cursor.execute(sql_select1)
        record=cursor.fetchall()
        print(record)
# MUSIC PLAYER        
        n=int(input("Enter S.no of song you wanna listen :"))
        
        player=tkr.Tk()
        player.title("Audio PLayer")
        player.geometry("205x340")
        
        if n==1:
            file= "1.mp3"
        if n==2:
            file= "2.mp3"
        if n==3:
            file= "3.mp3"
        if n==4:
            file= "4.mp3"
        if n==5:
            file= "5.mp3"
        if n==6:
            file= "6.mp3"
        if n==7:
            file= "7.mp3"
        if n==8:
            file= "8.mp3"
        if n==9:
            file= "9.mp3"
        if n==10:
            file= "10.mp3"
        if n==11:
            file= "11.mp3"
        if n==12:
            file= "12.mp3"
        if n==13:
            file= "13.mp3"
        if n==14:
            file= "14.mp3"
        if n==15:
            file= "15.mp3"
        if n==16:
            file= "16.mp3"
        if n==17:
            file= "17.mp3"
        if n==18:
            file= "18.mp3"
        if n==19:
            file= "19.mp3"
        if n==20:
            file= "20.mp3"
        if n==21:
            file= "21.mp3"
        if n==22:
            file= "22.mp3"
        if n==23:
            file= "23.mp3"
        if n==24:
            file= "24.mp3"
        if n==25:
            file= "25.mp3"
        if n==26:
            file= "26.mp3"
        if n==27:
            file= "27.mp3"
        if n==28:
            file= "28.mp3"
        if n==29:
            file= "29.mp3"
        if n==30:
            file= "30.mp3"
        if n==31:
            file= "31.mp3"
        if n==32:
            file= "32.mp3"
        if n==33:
            file= "33.mp3"
        if n==34:
            file= "34.mp3"
        if n==35:
            file= "35.mp3"
        if n==36:
            file= "36.mp3"
        if n==37:
            file= "37.mp3"
        if n==38:
            file= "38.mp3"
        def Play():
                pygame.init()
                pygame.mixer.init()
                pygame.mixer.music.load(file)
                pygame.mixer.music.play()
    
        def ExitPlayer():
                pygame.mixer.music.stop()
    
        Button1=tkr.Button(player,width=5,height=3, text="PLAY",command=Play)
        Button1.pack(fill='x')
        Button2=tkr.Button(player,width=5,height=3, text="STOP",command=ExitPlayer)
        Button2.pack(fill='x')

        player.mainloop()

# CATEGORY WISE LISTING        
    if x==2:
        print("a Genres")
        print("b artist")
        y=input("enter choice in a or b :")
        if y=="a":
            print(pd.Series(["Pop","Classical","Jazz","Folk","Punjabi"],index=[1,2,3,4,5]))
            z=int(input("enter choice from 1 to 5 :"))
            if z==1:
                print('pop songs')
                sql_select1="select name_of_song,s_no from sub_gerne where parent_gerne=1"
                cursor.execute(sql_select1)
                record=cursor.fetchall()
                print(record)
            if z==2:
                print ("classical song")
                sql_select1="select name_of_song,s_no from sub_gerne where parent_gerne=2"
                cursor.execute(sql_select1)
                record=cursor.fetchall()
                print(record)
            if z==3:
                print ("jazz")
                sql_select1="select name_of_song,s_no from sub_gerne where parent_gerne=3"
                cursor.execute(sql_select1)
                record=cursor.fetchall()
                print(record)
            if z==4:
                print("folk")
                sql_select1="select name_of_song,s_no from sub_gerne where parent_gerne=4"
                cursor.execute(sql_select1)
                record=cursor.fetchall()
                print(record)
            if z==5:
                print("punjabi")
                sql_select1="select name_of_song,s_no from sub_gerne where parent_gerne=5"
                cursor.execute(sql_select1)
                record=cursor.fetchall()
                print(record)
                break
        if y=="b":
            print("all the artist")
 
# TOP VIEWED  SOONGS TABLE            
    if x==3:
        print("here are top viewed songs")
        sql_select1="select * from hits"
        cursor.execute(sql_select1)
        record=cursor.fetchall()
        print(record)
# PURCHASE TABLE ALONG WITH BILLING         
    if x==4:
        print("enter s.no of the song :")
        cart=[]
        while(True):
                s=int(input("s.no :"))
                if s > 38 or s==0:
                    break
                else:
                    print("added to cart")
                    cart.append(s)
                    print ("your cart:")
                    print(cart)
                    print("Total amount :",len(cart)*10)
    if x>4:
         print("check your choice")