'One Blocky Adventure
'Copyright 2019, Program made by Albert Banoy
'All Rights Reserved
SCREEN _NEWIMAGE(1920, 1080, 32)
_FULLSCREEN
_MOUSEHIDE
_TITLE "One Blocky Adventure"
RANDOMIZE TIMER
LOCATE 64, 224
PRINT "LOADING"
DIM img_controls, img_controls1, img_statement_stuck, img_statement_cave, img_statement_back, img_code_enter_color, img_end1, img_welcome, img_code2, img_hint1, img_hint2, img_abba, img_baba, img_cadi, img_deca, img_code, img_blank_clear, img_code_enter, img_scr1, img_scr2, img_scr3, img_scr4, img_scr5, img_scr6, img_scr7, img_scr8, img_scr9, img_scr10, img_scr11, img_scr12, img_playerhome_f2, img_playerhome_f1, img_world_goto_select1, img_world_goto_select2, img_world_playerhome_goto_select1, img_world_playerhome_goto_select2, img_world_cave_goto_select1, img_world_cave_goto_select2, img_world, img_pause_opt1, img_pause_opt3, img_title, img_num_one, img_num_two, img_num_three, img_num_four, img_num_five, img_num_six, img_num_seven, img_num_eight, img_num_nine, img_num_zero AS LONG
img_num_one = _LOADIMAGE("num_one.png")
img_num_two = _LOADIMAGE("num_two.png")
img_num_three = _LOADIMAGE("num_three.png")
img_num_four = _LOADIMAGE("num_four.png")
img_num_five = _LOADIMAGE("num_five.png")
img_num_six = _LOADIMAGE("num_six.png")
img_num_seven = _LOADIMAGE("num_seven.png")
img_num_eight = _LOADIMAGE("num_eight.png")
img_num_nine = _LOADIMAGE("num_nine.png")
img_num_zero = _LOADIMAGE("num_zero.png")
img_pause_opt1 = _LOADIMAGE("pause_menu_opt1.png")
img_pause_opt3 = _LOADIMAGE("pause_menu_opt3.png")
img_world = _LOADIMAGE("world.png")
img_world_icon_playerhouse = _LOADIMAGE("world_icon_playerhouse.png")
img_world_icon_playerhouse_select = _LOADIMAGE("world_icon_playerhouse_select.png")
img_world_icon_cave = _LOADIMAGE("world_icon_cave.png")
img_world_icon_cave_select = _LOADIMAGE("world_icon_cave_select.png")
img_world_playerhome_goto_select1 = _LOADIMAGE("world_playerhome_goto_select1.png")
img_world_playerhome_goto_select2 = _LOADIMAGE("world_playerhome_goto_select2.png")
img_world_cave_goto_select1 = _LOADIMAGE("world_cave_goto_select1.png")
img_world_cave_goto_select2 = _LOADIMAGE("world_cave_goto_select2.png")
img_world_goto_select1 = _LOADIMAGE("world_goto_select1.png")
img_world_goto_select2 = _LOADIMAGE("world_goto_select2.png")
img_playerhome_f2 = _LOADIMAGE("playerhome_f2.png")
img_playerhome_f1 = _LOADIMAGE("playerhome_f1.png")
img_title = _LOADIMAGE("title_screen.png")
img_scr1 = _LOADIMAGE("scr1.png")
img_scr2 = _LOADIMAGE("scr2.png")
img_scr3 = _LOADIMAGE("scr3.png")
img_scr4 = _LOADIMAGE("scr4.png")
img_scr5 = _LOADIMAGE("scr5.png")
img_scr6 = _LOADIMAGE("scr6.png")
img_scr7 = _LOADIMAGE("scr7.png")
img_scr8 = _LOADIMAGE("scr8.png")
img_scr9 = _LOADIMAGE("scr9.png")
img_scr10 = _LOADIMAGE("scr10.png")
img_scr11 = _LOADIMAGE("scr11.png")
img_scr12 = _LOADIMAGE("scr12.png")
img_code_enter = _LOADIMAGE("code_enter.png")
img_blank_clear = _LOADIMAGE("blank_clear.png")
img_end1 = _LOADIMAGE("end1.png")
img_code = _LOADIMAGE("code.png")
img_abba = _LOADIMAGE("abba.png")
img_baba = _LOADIMAGE("baba.png")
img_cadi = _LOADIMAGE("cadi.png")
img_deca = _LOADIMAGE("deca.png")
img_hint1 = _LOADIMAGE("hint1.png")
img_hint2 = _LOADIMAGE("hint2.png")
img_code2 = _LOADIMAGE("code2.png")
img_welcome = _LOADIMAGE("welcome.png")
img_code_enter_color = _LOADIMAGE("code_enter_color.png")
img_statement_cave = _LOADIMAGE("statement_cave.png")
img_statement_back = _LOADIMAGE("statement_back.png")
img_statement_stuck = _LOADIMAGE("statement_stuck.png")
img_controls = _LOADIMAGE("controls.png")
img_controls1 = _LOADIMAGE("controls1.png")
snd_start = _SNDOPEN("start.wav", "VOL,SYNC,LEN,PAUSE")
snd_next = _SNDOPEN("next.wav", "VOL,SYNC,LEN,PAUSE")
snd_open = _SNDOPEN("open.wav", "VOL,SYNC,LEN,PAUSE")
snd_close = _SNDOPEN("close.wav", "VOL,SYNC,LEN,PAUSE")
snd_warning = _SNDOPEN("warning.wav", "VOL,SYNC,LEN,PAUSE")
snd_voice = _SNDOPEN("voice.wav", "VOL,SYNC,LEN,PAUSE")
snd_secret = _SNDOPEN("secret.wav", "VOL,SYNC,LEN,PAUSE")
'Pre-programmed variables
win = 0
x1 = 920
y1 = 560
ticket = 2
counter = 0
h_way = 2
scr_point = 1
door_lock1 = 1
door_lock2 = 1
door_lock4 = 1
door_lock6 = 1
door_lock7 = 1
door_lock8 = 1
door_lock9 = 0
door_lock10 = 1
half_btn2 = 0
quarter_btn1 = 0
quarter_btn2 = 0
quarter_btn3 = 0
quarter_btn4 = 0
code_done1 = 0
code_done2 = 0
code_done3 = 0
code_done4 = 0
code_stop = 0
secret_btn1 = 0
secret_btn2 = 0
secret_btn3 = 0
once_cave = 0
once_back = 0
CLS
DO
    CALL title(img_controls, img_welcome, img_title, snd_start, snd_secret, snd_voice)
    DO
        'Main program
        CLS
        CALL house(snd_start, once_back, img_statement_back, x1, y1, counter, img_playerhome_f2, img_playerhome_f1, ticket, h_way)
        CALL cave(img_statement_stuck, once_cave, once_back, img_statement_cave, img_code_enter_color, img_end1, img_code2, snd_start, secret_btn1, secret_btn2, secret_btn3, snd_secret, img_hint1, img_hint2, img_abba, img_baba, img_cadi, img_deca, img_code, code_done1, code_done2, code_done3, code_done4, code_stop, img_blank_clear, img_num_one, img_num_two, img_num_three, img_num_four, img_num_five, img_num_six, img_num_seven, img_num_eight, img_num_nine, img_num_zero, img_code_enter, x1, y1, counter, ticket, scr_point, quarter_btn1, quarter_btn2, quarter_btn3, quarter_btn4, opened_btn1, half_btn1, half_btn2, snd_open, snd_warning, snd_next, snd_close, door_lock1, door_lock2, door_lock4, door_lock6, door_lock7, door_lock8, door_lock9, door_lock10, img_scr1, img_scr2, img_scr3, img_scr4, img_scr5, img_scr6, img_scr7, img_scr8, img_scr9, img_scr10, img_scr11, img_scr12)
        CALL keyboard(img_controls1, snd_open, snd_next, snd_close, img_pause_opt1, img_pause_opt3, x1, y1)
        CALL world_goto(x1, y1, img_world_goto_select1, img_world_goto_select2, snd_warning, snd_next, snd_close, snd_start, ticket, h_way, scr_point)
        CALL world_map(x1, y1, snd_start, snd_next, snd_warning, snd_close, counter, ticket, img_world, img_world_icon_playerhouse, img_world_icon_playerhouse_select, img_world_icon_cave, img_world_icon_cave_select, img_world_playerhome_goto_select1, img_world_playerhome_goto_select2, img_world_cave_goto_select1, img_world_cave_goto_select2)
        _DISPLAY
    LOOP UNTIL win = 1
LOOP

SUB world_goto (x1, y1, img_world_goto_select1, img_world_goto_select2, snd_warning, snd_next, snd_close, snd_start, ticket, h_way, scr_point)
    IF ticket = 2 AND h_way = 1 AND x1 >= 900 AND x1 <= 1000 AND y1 >= 640 AND y1 <= 700 THEN
        pause = 1
        counter = 1
        _SNDPLAY snd_warning
        DO
            IF counter = 1 THEN
                _PUTIMAGE (620, 370), img_world_goto_select1
                DO
                    scancode% = INP(&H60)
                    IF scancode% = 77 THEN
                        _SNDPLAY snd_next
                        counter = 2
                        _DELAY 0.1
                    ELSEIF scancode% = 28 THEN
                        _SNDPLAY snd_start
                        ticket = 1
                        pause = 0
                        CLS
                    END IF
                    _DISPLAY
                LOOP UNTIL counter = 2 OR pause = 0
            ELSEIF counter = 2 THEN
                _PUTIMAGE (620, 370), img_world_goto_select2
                DO
                    scancode% = INP(&H60)
                    IF scancode% = 75 THEN
                        _SNDPLAY snd_next
                        counter = 1
                        _DELAY 0.1
                    ELSEIF scancode% = 28 THEN
                        _SNDPLAY snd_close
                        pause = 0
                        y1 = y1 - 10
                        x1 = x1 - 10
                    END IF
                    _DISPLAY
                LOOP UNTIL counter = 1 OR pause = 0
            END IF
        LOOP UNTIL pause = 0
    ELSEIF ticket = 3 AND x1 >= 1115 AND x1 <= 1200 AND y1 >= 555 AND y1 <= 679 AND scr_point = 1 THEN
        pause = 1
        counter = 1
        _SNDPLAY snd_warning
        DO
            IF counter = 1 THEN
                _PUTIMAGE (620, 370), img_world_goto_select1
                DO
                    scancode% = INP(&H60)
                    IF scancode% = 77 THEN
                        _SNDPLAY snd_next
                        counter = 2
                        _DELAY 0.1
                    ELSEIF scancode% = 28 THEN
                        _SNDPLAY snd_start
                        ticket = 1
                        pause = 0
                        CLS
                    END IF
                    _DISPLAY
                LOOP UNTIL counter = 2 OR pause = 0
            ELSEIF counter = 2 THEN
                _PUTIMAGE (620, 370), img_world_goto_select2
                DO
                    scancode% = INP(&H60)
                    IF scancode% = 75 THEN
                        _SNDPLAY snd_next
                        counter = 1
                        _DELAY 0.1
                    ELSEIF scancode% = 28 THEN
                        _SNDPLAY snd_close
                        pause = 0
                        y1 = y1 - 10
                        x1 = x1 + 10
                    END IF
                    _DISPLAY
                LOOP UNTIL counter = 1 OR pause = 0
            END IF
        LOOP UNTIL pause = 0
    END IF
END SUB

SUB keyboard (img_controls1, snd_open, snd_next, snd_close, img_pause_opt1, img_pause_opt3, x1, y1)
    LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
    scancode% = INP(&H60)
    IF scancode% = 17 THEN
        y1 = y1 - 5
    ELSEIF scancode% = 31 THEN
        y1 = y1 + 5
    ELSEIF scancode% = 32 THEN
        x1 = x1 + 5
    ELSEIF scancode% = 30 THEN
        x1 = x1 - 5
    ELSEIF scancode% = 1 THEN
        pause = 1
        counter = 1
        _SNDPLAY snd_open
        DO
            IF counter = 1 THEN
                _PUTIMAGE (800, 800), img_pause_opt1
                DO
                    scancode% = INP(&H60)
                    IF scancode% = 28 THEN
                        _SNDPLAY snd_close
                        pause = 0
                    ELSEIF scancode% = 80 THEN
                        _SNDPLAY snd_next
                        counter = 3
                        _DELAY 0.1
                    END IF
                    _DISPLAY
                LOOP UNTIL counter = 3 OR pause = 0
            ELSEIF counter = 3 THEN
                _PUTIMAGE (800, 800), img_pause_opt3
                DO
                    scancode% = INP(&H60)
                    IF scancode% = 28 THEN
                        _SNDPLAY snd_close
                        END
                    ELSEIF scancode% = 72 THEN
                        _SNDPLAY snd_next
                        counter = 1
                        _DELAY 0.1
                    END IF
                    _DISPLAY
                LOOP UNTIL counter = 1
            END IF
        LOOP UNTIL pause = 0
    ELSEIF scancode% = 59 THEN
        _SNDPLAY snd_open
        scancode% = INP(&H60)
        pause = 1
        DO
            _PUTIMAGE (0, 0), img_controls1
            scancode% = INP(&H60)
            IF scancode% = 28 THEN
                pause = 0
            END IF
            _DISPLAY
        LOOP UNTIL pause = 0
        _SNDPLAY snd_close
    END IF
END SUB

SUB house (snd_start, once_back, img_statement_back, x1, y1, counter, img_playerhome_f2, img_playerhome_f1, ticket, h_way)
    IF ticket = 2 THEN
        counter = 1
        IF once_back = 1 THEN
            scancode% = INP(&H60)
            once_cave = 0
            pause = 1
            DO
                _PUTIMAGE (0, 0), img_statement_back
                scancode% = INP(&H60)
                IF scancode% = 28 THEN
                    pause = 0
                    ticket = 3
                    x1 = 1225
                    y1 = 615
                END IF
                _DISPLAY
            LOOP UNTIL pause = 0
            _SNDPLAY snd_start
        END IF
        IF h_way = 1 THEN
            _PUTIMAGE (800, 365), img_playerhome_f1
        ELSEIF h_way = 2 THEN
            _PUTIMAGE (800, 365), img_playerhome_f2
        END IF
        IF x1 >= 1050 AND x1 <= 1129 AND y1 >= 375 AND y1 <= 460 AND h_way = 2 THEN
            h_way = 1
            x1 = 945
            y1 = 395
        ELSEIF x1 >= 988 AND x1 <= 1043 AND y1 >= 330 AND y1 <= 440 AND h_way = 1 THEN
            h_way = 2
            x1 = 1070
            y1 = 470
        ELSEIF x1 >= 995 AND x1 <= 1005 AND y1 >= 560 AND y1 <= 705 AND h_way = 2 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 995 AND x1 <= 1174 AND y1 >= 560 AND y1 <= 605 AND h_way = 2 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 855 AND x1 <= 989 AND y1 >= 410 AND y1 <= 465 AND h_way = 2 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 805 AND x1 <= 939 AND y1 >= 440 AND y1 <= 495 AND h_way = 2 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 934 AND x1 <= 989 AND y1 >= 320 AND y1 <= 465 AND h_way = 2 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 884 AND x1 <= 939 AND y1 >= 410 AND y1 <= 495 AND h_way = 2 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 1033 AND x1 <= 1130 AND y1 >= 440 AND y1 <= 450 AND h_way = 1 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 818 AND x1 <= 873 AND y1 >= 351 AND y1 <= 417 AND h_way = 1 THEN
            x1 = x1 + 5
        ELSEIF y1 = 370 THEN
            y1 = y1 + 5
        ELSEIF x1 = 1085 THEN
            x1 = x1 - 5
        ELSEIF x1 = 895 AND h_way = 2 THEN
            x1 = x1 + 5
        ELSEIF x1 = 855 AND h_way = 1 THEN
            x1 = x1 + 5
        ELSEIF y1 = 650 THEN
            y1 = y1 - 5
        END IF
    END IF
END SUB

SUB cave (img_statement_stuck, once_cave, once_back, img_statement_cave, img_code_enter_color, img_end1, img_code2, snd_start, secret_btn1, secret_btn2, secret_btn3, snd_secret, img_hint1, img_hint2, img_abba, img_baba, img_cadi, img_deca, img_code, code_done1, code_done2, code_done3, code_done4, code_stop, img_blank_clear, img_num_one, img_num_two, img_num_three, img_num_four, img_num_five, img_num_six, img_num_seven, img_num_eight, img_num_nine, img_num_zero, img_code_enter, x1, y1, counter, ticket, scr_point, quarter_btn1, quarter_btn2, quarter_btn3, quarter_btn4, opened_btn1, half_btn1, half_btn2, snd_open, snd_warning, snd_next, snd_close, door_lock1, door_lock2, door_lock4, door_lock6, door_lock7, door_lock8, door_lock9, door_lock10, img_scr1, img_scr2, img_scr3, img_scr4, img_scr5, img_scr6, img_scr7, img_scr8, img_scr9, img_scr10, img_scr11, img_scr12)
    IF ticket = 3 THEN
        counter = 2
        IF once_cave = 0 THEN
            scancode% = INP(&H60)
            once_cave = 1
            pause = 1
            DO
                _PUTIMAGE (0, 0), img_statement_cave
                scancode% = INP(&H60)
                IF scancode% = 28 THEN
                    pause = 0
                END IF
                _DISPLAY
            LOOP UNTIL pause = 0
            _SNDPLAY snd_start
        END IF
        IF once_back = 0 THEN
            once_back = 1
        END IF
        IF scr_point = 1 THEN
            _PUTIMAGE (0, 0), img_scr1
            'CALL cave_indication_scr_point_1
        ELSEIF scr_point = 2 THEN
            _PUTIMAGE (0, 0), img_scr2
            'CALL cave_indication_scr_point_2
        ELSEIF scr_point = 3 THEN
            _PUTIMAGE (0, 0), img_scr3
            'CALL cave_indication_scr_point_3
        ELSEIF scr_point = 4 THEN
            _PUTIMAGE (0, 0), img_scr4
            'CALL cave_indication_scr_point_4
        ELSEIF scr_point = 5 THEN
            _PUTIMAGE (0, 0), img_scr5
            'CALL cave_indication_scr_point_5
        ELSEIF scr_point = 6 THEN
            _PUTIMAGE (0, 0), img_scr6
            'CALL cave_indication_scr_point_6
        ELSEIF scr_point = 7 THEN
            _PUTIMAGE (0, 0), img_scr7
            'CALL cave_indication_scr_point_7
        ELSEIF scr_point = 8 THEN
            _PUTIMAGE (0, 0), img_scr8
            'CALL cave_indication_scr_point_8
        ELSEIF scr_point = 9 THEN
            _PUTIMAGE (0, 0), img_scr9
            'CALL cave_indication_scr_point_9
        ELSEIF scr_point = 10 THEN
            _PUTIMAGE (0, 0), img_scr10
            'CALL cave_indication_scr_point_10
        ELSEIF scr_point = 11 THEN
            _PUTIMAGE (0, 0), img_scr11
            'CALL cave_indication_scr_point_11
        ELSEIF scr_point = 12 THEN
            _PUTIMAGE (0, 0), img_scr12
            'CALL cave_indication_scr_point_12
        END IF
        IF x1 >= 1477 AND x1 <= 1600 AND y1 >= 635 AND y1 <= 719 AND scr_point = 1 THEN
            IF secret_btn3 = 1 THEN
                scr_point = 11
                x1 = 1375
                y1 = 135
            ELSE
                y1 = y1 - 5
            END IF
        ELSEIF x1 >= 1675 AND x1 <= 1799 AND y1 >= 515 AND y1 <= 599 AND scr_point = 1 THEN
            IF secret_btn2 = 1 THEN
                scr_point = 9
                x1 = 1495
                y1 = 860
            ELSE
                y1 = y1 + 5
            END IF
        ELSEIF x1 >= 1875 AND x1 <= 1959 AND y1 >= 515 AND y1 <= 679 AND scr_point = 1 THEN
            scr_point = 2
            x1 = 15
            y1 = 615
        ELSEIF x1 >= 1754 AND x1 <= 1920 AND y1 >= 515 AND y1 <= 599 AND scr_point = 1 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1115 AND x1 <= 1720 AND y1 >= 515 AND y1 <= 599 AND scr_point = 1 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1555 AND x1 <= 1920 AND y1 >= 635 AND y1 <= 719 AND scr_point = 1 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1115 AND x1 <= 1522 AND y1 >= 635 AND y1 <= 719 AND scr_point = 1 THEN
            y1 = y1 - 5
        ELSEIF x1 >= -95 AND x1 <= 0 AND y1 >= 555 AND y1 <= 679 AND scr_point = 2 THEN
            scr_point = 1
            x1 = 1855
            y1 = 615
        ELSEIF x1 >= 1875 AND x1 <= 1959 AND y1 >= 515 AND y1 <= 679 AND scr_point = 2 THEN
            scr_point = 12
            x1 = 15
            y1 = 615
        ELSEIF x1 >= 915 AND x1 <= 1039 AND y1 >= -95 AND y1 <= 0 AND scr_point = 2 THEN
            scr_point = 3
            x1 = 975
            y1 = 1020
        ELSEIF x1 >= 195 AND x1 <= 319 AND y1 >= -95 AND y1 <= 0 AND scr_point = 2 THEN
            scr_point = 8
            x1 = 255
            y1 = 1015
        ELSEIF x1 >= 235 AND x1 <= 359 AND y1 >= 1035 AND y1 <= 1130 AND scr_point = 2 THEN
            scr_point = 10
            x1 = 295
            y1 = 15
        ELSEIF x1 >= 1315 AND x1 <= 1439 AND y1 >= 1035 AND y1 <= 1130 AND scr_point = 2 THEN
            scr_point = 6
            x1 = 1335
            y1 = 15
        ELSEIF x1 >= 469 AND x1 <= 593 AND y1 >= 635 AND y1 <= 730 AND scr_point = 2 THEN
            IF secret_btn2 = 0 THEN
                y1 = y1 - 10
                _SNDPLAY snd_secret
                secret_btn2 = 1
            ELSE
                y1 = y1 - 10
                _SNDPLAY snd_warning
            END IF
        ELSEIF x1 >= 1315 AND x1 <= 1439 AND y1 >= 675 AND y1 <= 770 AND scr_point = 2 AND door_lock2 = 1 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 195 AND x1 <= 319 AND y1 >= 525 AND y1 <= 570 AND scr_point = 2 AND door_lock7 = 1 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 235 AND x1 <= 359 AND y1 >= 675 AND y1 <= 770 AND scr_point = 2 AND door_lock8 = 1 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1435 AND x1 <= 1499 AND y1 >= 555 AND y1 <= 679 AND scr_point = 2 AND door_lock10 = 1 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1455 AND x1 <= 1519 AND y1 >= 555 AND y1 <= 679 AND scr_point = 2 AND door_lock10 = 1 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 315 AND x1 <= 513 AND y1 >= 635 AND y1 <= 719 AND scr_point = 2 THEN
            y1 = y1 - 5
        ELSEIF x1 >= -45 AND x1 <= 279 AND y1 >= 635 AND y1 <= 719 AND scr_point = 2 THEN
            y1 = y1 - 5
        ELSEIF x1 >= -45 AND x1 <= 239 AND y1 >= 515 AND y1 <= 599 AND scr_point = 2 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 275 AND x1 <= 959 AND y1 >= 515 AND y1 <= 599 AND scr_point = 2 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 995 AND x1 <= 1920 AND y1 >= 515 AND y1 <= 599 AND scr_point = 2 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1395 AND x1 <= 1920 AND y1 >= 635 AND y1 <= 719 AND scr_point = 2 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 549 AND x1 <= 1359 AND y1 >= 635 AND y1 <= 719 AND scr_point = 2 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 315 AND x1 <= 355 AND y1 >= 635 AND y1 <= 1080 AND scr_point = 2 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 195 AND x1 <= 280 AND y1 >= 635 AND y1 <= 1080 AND scr_point = 2 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 1395 AND x1 <= 1479 AND y1 >= 635 AND y1 <= 1080 AND scr_point = 2 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1275 AND x1 <= 1359 AND y1 >= 635 AND y1 <= 1080 AND scr_point = 2 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 995 AND x1 <= 1079 AND y1 >= -45 AND y1 <= 559 AND scr_point = 2 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 875 AND x1 <= 959 AND y1 >= -45 AND y1 <= 559 AND scr_point = 2 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 275 AND x1 <= 359 AND y1 >= -45 AND y1 <= 559 AND scr_point = 2 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 155 AND x1 <= 239 AND y1 >= -45 AND y1 <= 559 AND scr_point = 2 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 1875 AND x1 <= 1959 AND y1 >= 595 AND y1 <= 719 AND scr_point = 3 THEN
            scr_point = 4
            x1 = 10
            y1 = 615
        ELSEIF x1 >= 1875 AND x1 <= 1959 AND y1 >= -5 AND y1 <= 119 AND scr_point = 3 THEN
            scr_point = 5
            x1 = 15
            y1 = 55
        ELSEIF x1 >= 915 AND x1 <= 1039 AND y1 >= 1035 AND y1 <= 1130 AND scr_point = 3 THEN
            scr_point = 2
            x1 = 975
            y1 = 15
        ELSEIF x1 >= 915 AND x1 <= 1039 AND y1 >= 560 AND y1 <= 610 AND scr_point = 3 AND door_lock1 = 1 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 875 AND x1 <= 959 AND y1 >= -45 AND y1 <= 1080 AND scr_point = 3 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 995 AND x1 <= 1079 AND y1 >= 675 AND y1 <= 1080 AND scr_point = 3 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 995 AND x1 <= 1079 AND y1 >= 75 AND y1 <= 639 AND scr_point = 3 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 995 AND x1 <= 1920 AND y1 >= 75 AND y1 <= 159 AND scr_point = 3 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 995 AND x1 <= 1920 AND y1 >= 600 AND y1 <= 639 AND scr_point = 3 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 995 AND x1 <= 1920 AND y1 >= 675 AND y1 <= 759 AND scr_point = 3 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 875 AND x1 <= 1920 AND y1 >= -45 AND y1 <= 39 AND scr_point = 3 THEN
            y1 = y1 + 5
        ELSEIF x1 >= -95 AND x1 <= 0 AND y1 >= 555 AND y1 <= 679 AND scr_point = 4 THEN
            scr_point = 3
            x1 = 1860
            y1 = 655
        ELSEIF x1 >= 1515 AND x1 <= 1690 AND y1 >= 835 AND y1 <= 959 AND scr_point = 4 THEN
            IF secret_btn1 = 1 THEN
                scr_point = 12
                x1 = 95
                y1 = 610
            ELSE
                x1 = x1 - 5
            END IF
        ELSEIF x1 >= 1515 AND x1 <= 1690 AND y1 >= 600 AND y1 <= 719 AND scr_point = 4 THEN
            IF opened_btn1 = 0 THEN
                _SNDPLAY snd_open
                door_lock1 = 0
                x1 = x1 - 30
                opened_btn1 = 1
            ELSE
                _SNDPLAY snd_warning
                x1 = x1 - 30
            END IF
        ELSEIF x1 >= -45 AND x1 <= 1599 AND y1 >= 515 AND y1 <= 599 AND scr_point = 4 THEN
            y1 = y1 + 5
        ELSEIF x1 >= -45 AND x1 <= 1359 AND y1 >= 635 AND y1 <= 719 AND scr_point = 4 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1275 AND x1 <= 1599 AND y1 >= 955 AND y1 <= 1079 AND scr_point = 4 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1275 AND x1 <= 1359 AND y1 >= 635 AND y1 <= 1039 AND scr_point = 4 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 1515 AND x1 <= 1599 AND y1 >= 915 AND y1 <= 1039 AND scr_point = 4 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1515 AND x1 <= 1599 AND y1 >= 675 AND y1 <= 879 AND scr_point = 4 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1515 AND x1 <= 1599 AND y1 >= 555 AND y1 <= 639 AND scr_point = 4 THEN
            x1 = x1 - 5
        ELSEIF x1 >= -95 AND x1 <= 0 AND y1 >= -5 AND y1 <= 119 AND scr_point = 5 THEN
            scr_point = 3
            x1 = 1845
            y1 = 55
        ELSEIF x1 >= 595 AND x1 <= 679 AND y1 >= 35 AND y1 <= 159 AND scr_point = 5 THEN
            IF secret_btn1 = 0 THEN
                x1 = x1 - 10
                _SNDPLAY snd_secret
                secret_btn1 = 1
            ELSE
                x1 = x1 - 10
                _SNDPLAY snd_warning
            END IF
        ELSEIF x1 >= 595 AND x1 <= 679 AND y1 >= -45 AND y1 <= 159 AND scr_point = 5 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 595 AND x1 <= 679 AND y1 >= 115 AND y1 <= 399 AND scr_point = 5 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 595 AND x1 <= 679 AND y1 >= 435 AND y1 <= 559 AND scr_point = 5 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 35 AND x1 <= 119 AND y1 >= 75 AND y1 <= 559 AND scr_point = 5 THEN
            x1 = x1 + 5
        ELSEIF x1 >= -45 AND x1 <= 119 AND y1 >= 75 AND y1 <= 159 AND scr_point = 5 THEN
            y1 = y1 - 5
        ELSEIF x1 >= -45 AND x1 <= 679 AND y1 >= -45 AND y1 <= 39 AND scr_point = 5 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 35 AND x1 <= 679 AND y1 >= 475 AND y1 <= 560 AND scr_point = 5 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 595 AND x1 <= 679 AND y1 >= 355 AND y1 <= 479 AND scr_point = 5 THEN
            IF code_done1 = 1 THEN
                _SNDPLAY snd_warning
                x1 = x1 - 10
            ELSE
                LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
                code_done = 0
                code_stop = 0
                pause = 1
                selector = 1
                num_slot1 = 0
                num_slot2 = 0
                num_slot3 = 0
                num_slot4 = 0
                slot1done = 0
                _SNDPLAY snd_open
                _PUTIMAGE (620, 370), img_code_enter_color
                DO
                    IF selector = 1 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (760, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 2
                                num_slot1 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (770, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (770, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (770, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (770, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (770, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (770, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (770, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (770, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (770, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 2
                                num_slot1 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot1 = 1 OR num_slot1 = 2 OR num_slot1 = 3 OR num_slot1 = 4 OR num_slot1 = 5 OR num_slot1 = 6 OR num_slot1 = 7 OR num_slot1 = 8 OR num_slot1 = 9 OR num_slot1 = 0 THEN
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 2
                    ELSEIF selector = 2 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (860, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 3
                                num_slot2 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (870, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (870, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (870, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (870, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (870, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (870, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (870, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (870, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (870, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 3
                                num_slot2 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot2 = 1 OR num_slot2 = 2 OR num_slot2 = 3 OR num_slot2 = 4 OR num_slot2 = 5 OR num_slot2 = 6 OR num_slot2 = 7 OR num_slot2 = 8 OR num_slot2 = 9 OR num_slot2 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (740, 520), img_blank_clear
                                selector = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 77 THEN
                                _SNDPLAY snd_close
                                selector = 3
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 3 OR selector = 1
                    ELSEIF selector = 3 THEN
                        DO

                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (960, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 4
                                num_slot3 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (970, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (970, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (970, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (970, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (970, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (970, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (970, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (970, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (970, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 4
                                num_slot3 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot3 = 1 OR num_slot3 = 3 OR num_slot3 = 3 OR num_slot3 = 4 OR num_slot3 = 5 OR num_slot3 = 6 OR num_slot3 = 7 OR num_slot3 = 8 OR num_slot3 = 9 OR num_slot3 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (840, 520), img_blank_clear
                                selector = 2
                                _DELAY 0.1
                            ELSEIF scancode% = 77 THEN
                                _SNDPLAY snd_close
                                selector = 4
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 4 OR selector = 2
                    ELSEIF selector = 4 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 AND code_stop = 0 THEN
                                _PUTIMAGE (1060, 530), img_num_one
                                _SNDPLAY snd_next
                                num_slot4 = 1
                                code_stop = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_two
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 2
                                code_stop = 1
                            ELSEIF scancode% = 4 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_three
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 3
                                code_stop = 1
                            ELSEIF scancode% = 5 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_four
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 4
                                code_stop = 1
                            ELSEIF scancode% = 6 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_five
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 5
                                code_stop = 1
                            ELSEIF scancode% = 7 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_six
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 6
                                code_stop = 1
                            ELSEIF scancode% = 8 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_seven
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 7
                                code_stop = 1
                            ELSEIF scancode% = 9 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_eight
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 8
                                code_stop = 1
                            ELSEIF scancode% = 10 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_nine
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 9
                                code_stop = 1
                            ELSEIF scancode% = 11 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_zero
                                _SNDPLAY snd_next
                                num_slot4 = 10
                                code_stop = 1
                                _DELAY 0.1
                            END IF

                            IF num_slot4 = 1 OR num_slot4 = 2 OR num_slot4 = 3 OR num_slot4 = 4 OR num_slot4 = 5 OR num_slot4 = 6 OR num_slot4 = 7 OR num_slot4 = 8 OR num_slot4 = 9 OR num_slot4 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (940, 520), img_blank_clear
                                _PUTIMAGE (1040, 520), img_blank_clear
                                selector = 3
                                code_stop = 0
                                _DELAY 0.1
                            ELSEIF scancode% = 28 THEN
                                IF num_slot1 = 4 AND num_slot2 = 2 AND num_slot3 = 1 AND num_slot4 = 2 THEN
                                    _SNDPLAY snd_open
                                    pause = 0
                                    x1 = x1 - 10
                                    code_done1 = 1
                                    door_lock2 = 0
                                ELSE
                                    _SNDPLAY snd_warning
                                    pause = 0
                                    y1 = y1 - 10
                                    x1 = x1 - 10
                                END IF
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 3 OR pause = 0
                    END IF
                LOOP UNTIL pause = 0
            END IF
        ELSEIF x1 >= 1315 AND x1 <= 1439 AND y1 >= -95 AND y1 <= 0 AND scr_point = 6 THEN
            scr_point = 2
            x1 = 1375
            y1 = 1020
        ELSEIF x1 >= 875 AND x1 <= 1079 AND y1 >= 355 AND y1 <= 450 AND scr_point = 6 AND door_lock4 = 1 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1595 AND x1 <= 1799 AND y1 >= 35 AND y1 <= 130 AND scr_point = 6 AND door_lock6 = 1 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 915 AND x1 <= 1040 AND y1 >= 406 AND y1 <= 479 AND scr_point = 6 THEN
            IF half_btn1 = 0 THEN
                _SNDPLAY snd_open
                half_btn1 = 1
                y1 = y1 - 30
            ELSE
                _SNDPLAY snd_warning
                y1 = y1 - 30
            END IF
        ELSEIF x1 >= 1635 AND x1 <= 1760 AND y1 >= -5 AND y1 <= 79 AND scr_point = 6 THEN
            IF half_btn2 = 0 THEN
                _SNDPLAY snd_open
                half_btn2 = 1
                y1 = y1 + 30
            ELSE
                _SNDPLAY snd_warning
                y1 = y1 + 30
            END IF
        ELSEIF x1 >= 835 AND x1 <= 919 AND y1 >= 275 AND y1 <= 399 AND scr_point = 6 THEN
            IF code_done2 = 1 THEN
                _SNDPLAY snd_warning
                x1 = x1 + 10
            ELSE
                LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
                code_done = 0
                code_stop = 0
                pause = 1
                selector = 1
                num_slot1 = 0
                num_slot2 = 0
                num_slot3 = 0
                num_slot4 = 0
                slot1done = 0
                _SNDPLAY snd_open
                _PUTIMAGE (620, 370), img_code_enter
                DO
                    IF selector = 1 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (760, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 2
                                num_slot1 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (770, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (770, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (770, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (770, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (770, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (770, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (770, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (770, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (770, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 2
                                num_slot1 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot1 = 1 OR num_slot1 = 2 OR num_slot1 = 3 OR num_slot1 = 4 OR num_slot1 = 5 OR num_slot1 = 6 OR num_slot1 = 7 OR num_slot1 = 8 OR num_slot1 = 9 OR num_slot1 = 0 THEN
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 2
                    ELSEIF selector = 2 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (860, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 3
                                num_slot2 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (870, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (870, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (870, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (870, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (870, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (870, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (870, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (870, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (870, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 3
                                num_slot2 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot2 = 1 OR num_slot2 = 2 OR num_slot2 = 3 OR num_slot2 = 4 OR num_slot2 = 5 OR num_slot2 = 6 OR num_slot2 = 7 OR num_slot2 = 8 OR num_slot2 = 9 OR num_slot2 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (740, 520), img_blank_clear
                                selector = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 77 THEN
                                _SNDPLAY snd_close
                                selector = 3
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 3 OR selector = 1
                    ELSEIF selector = 3 THEN
                        DO

                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (960, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 4
                                num_slot3 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (970, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (970, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (970, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (970, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (970, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (970, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (970, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (970, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (970, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 4
                                num_slot3 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot3 = 1 OR num_slot3 = 3 OR num_slot3 = 3 OR num_slot3 = 4 OR num_slot3 = 5 OR num_slot3 = 6 OR num_slot3 = 7 OR num_slot3 = 8 OR num_slot3 = 9 OR num_slot3 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (840, 520), img_blank_clear
                                selector = 2
                                _DELAY 0.1
                            ELSEIF scancode% = 77 THEN
                                _SNDPLAY snd_close
                                selector = 4
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 4 OR selector = 2
                    ELSEIF selector = 4 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 AND code_stop = 0 THEN
                                _PUTIMAGE (1060, 530), img_num_one
                                _SNDPLAY snd_next
                                num_slot4 = 1
                                code_stop = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_two
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 2
                                code_stop = 1
                            ELSEIF scancode% = 4 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_three
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 3
                                code_stop = 1
                            ELSEIF scancode% = 5 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_four
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 4
                                code_stop = 1
                            ELSEIF scancode% = 6 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_five
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 5
                                code_stop = 1
                            ELSEIF scancode% = 7 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_six
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 6
                                code_stop = 1
                            ELSEIF scancode% = 8 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_seven
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 7
                                code_stop = 1
                            ELSEIF scancode% = 9 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_eight
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 8
                                code_stop = 1
                            ELSEIF scancode% = 10 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_nine
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 9
                                code_stop = 1
                            ELSEIF scancode% = 11 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_zero
                                _SNDPLAY snd_next
                                num_slot4 = 10
                                code_stop = 1
                                _DELAY 0.1
                            END IF

                            IF num_slot4 = 1 OR num_slot4 = 2 OR num_slot4 = 3 OR num_slot4 = 4 OR num_slot4 = 5 OR num_slot4 = 6 OR num_slot4 = 7 OR num_slot4 = 8 OR num_slot4 = 9 OR num_slot4 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (940, 520), img_blank_clear
                                _PUTIMAGE (1040, 520), img_blank_clear
                                selector = 3
                                code_stop = 0
                                _DELAY 0.1
                            ELSEIF scancode% = 28 THEN
                                IF num_slot1 = 7 AND num_slot2 = 9 AND num_slot3 = 1 AND num_slot4 = 3 THEN
                                    _SNDPLAY snd_open
                                    pause = 0
                                    x1 = x1 + 10
                                    code_done2 = 1
                                    door_lock4 = 0
                                ELSE
                                    _SNDPLAY snd_warning
                                    pause = 0
                                    x1 = x1 + 10
                                END IF
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 3 OR pause = 0
                    END IF
                LOOP UNTIL pause = 0
            END IF
        ELSEIF x1 >= 1755 AND x1 <= 1839 AND y1 >= 115 AND y1 <= 239 AND scr_point = 6 THEN
            IF code_done3 = 1 THEN
                _SNDPLAY snd_warning
                x1 = x1 - 10
            ELSE
                LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
                code_done = 0
                code_stop = 0
                pause = 1
                selector = 1
                num_slot1 = 0
                num_slot2 = 0
                num_slot3 = 0
                num_slot4 = 0
                slot1done = 0
                _SNDPLAY snd_open
                _PUTIMAGE (620, 370), img_code_enter
                DO
                    IF selector = 1 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (760, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 2
                                num_slot1 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (770, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (770, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (770, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (770, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (770, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (770, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (770, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (770, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (770, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 2
                                num_slot1 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot1 = 1 OR num_slot1 = 2 OR num_slot1 = 3 OR num_slot1 = 4 OR num_slot1 = 5 OR num_slot1 = 6 OR num_slot1 = 7 OR num_slot1 = 8 OR num_slot1 = 9 OR num_slot1 = 0 THEN
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 2
                    ELSEIF selector = 2 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (860, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 3
                                num_slot2 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (870, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (870, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (870, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (870, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (870, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (870, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (870, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (870, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (870, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 3
                                num_slot2 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot2 = 1 OR num_slot2 = 2 OR num_slot2 = 3 OR num_slot2 = 4 OR num_slot2 = 5 OR num_slot2 = 6 OR num_slot2 = 7 OR num_slot2 = 8 OR num_slot2 = 9 OR num_slot2 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (740, 520), img_blank_clear
                                selector = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 77 THEN
                                _SNDPLAY snd_close
                                selector = 3
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 3 OR selector = 1
                    ELSEIF selector = 3 THEN
                        DO

                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (960, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 4
                                num_slot3 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (970, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (970, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (970, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (970, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (970, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (970, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (970, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (970, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (970, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 4
                                num_slot3 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot3 = 1 OR num_slot3 = 3 OR num_slot3 = 3 OR num_slot3 = 4 OR num_slot3 = 5 OR num_slot3 = 6 OR num_slot3 = 7 OR num_slot3 = 8 OR num_slot3 = 9 OR num_slot3 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (840, 520), img_blank_clear
                                selector = 2
                                _DELAY 0.1
                            ELSEIF scancode% = 77 THEN
                                _SNDPLAY snd_close
                                selector = 4
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 4 OR selector = 2
                    ELSEIF selector = 4 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 AND code_stop = 0 THEN
                                _PUTIMAGE (1060, 530), img_num_one
                                _SNDPLAY snd_next
                                num_slot4 = 1
                                code_stop = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_two
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 2
                                code_stop = 1
                            ELSEIF scancode% = 4 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_three
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 3
                                code_stop = 1
                            ELSEIF scancode% = 5 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_four
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 4
                                code_stop = 1
                            ELSEIF scancode% = 6 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_five
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 5
                                code_stop = 1
                            ELSEIF scancode% = 7 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_six
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 6
                                code_stop = 1
                            ELSEIF scancode% = 8 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_seven
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 7
                                code_stop = 1
                            ELSEIF scancode% = 9 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_eight
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 8
                                code_stop = 1
                            ELSEIF scancode% = 10 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_nine
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 9
                                code_stop = 1
                            ELSEIF scancode% = 11 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_zero
                                _SNDPLAY snd_next
                                num_slot4 = 10
                                code_stop = 1
                                _DELAY 0.1
                            END IF

                            IF num_slot4 = 1 OR num_slot4 = 2 OR num_slot4 = 3 OR num_slot4 = 4 OR num_slot4 = 5 OR num_slot4 = 6 OR num_slot4 = 7 OR num_slot4 = 8 OR num_slot4 = 9 OR num_slot4 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (940, 520), img_blank_clear
                                _PUTIMAGE (1040, 520), img_blank_clear
                                selector = 3
                                code_stop = 0
                                _DELAY 0.1
                            ELSEIF scancode% = 28 THEN
                                IF num_slot1 = 7 AND num_slot2 = 1 AND num_slot3 = 3 AND num_slot4 = 5 THEN
                                    _SNDPLAY snd_open
                                    pause = 0
                                    x1 = x1 - 10
                                    code_done3 = 1
                                    door_lock6 = 0
                                ELSE
                                    _SNDPLAY snd_warning
                                    pause = 0
                                    x1 = x1 - 10
                                END IF
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 3 OR pause = 0
                    END IF
                LOOP UNTIL pause = 0
            END IF
        ELSEIF x1 >= 1035 AND x1 <= 1119 AND y1 >= 275 AND y1 <= 399 AND scr_point = 6 THEN
            x1 = x1 - 10
            _SNDPLAY snd_open
            LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
            _PUTIMAGE (620, 370), img_code2
            pause = 1
            DO
                scancode% = INP(&H60)
                IF scancode% = 28 THEN
                    pause = 0
                    _SNDPLAY snd_close
                END IF
                _DISPLAY
            LOOP UNTIL pause = 0
        ELSEIF x1 >= 1555 AND x1 <= 1639 AND y1 >= 115 AND y1 <= 239 AND scr_point = 6 THEN
            x1 = x1 + 10
            _SNDPLAY snd_open
            pause = 1
            _PUTIMAGE (620, 370), img_code
            LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
            DO
                scancode% = INP(&H60)
                IF scancode% = 28 THEN
                    pause = 0
                    _SNDPLAY snd_close
                END IF
                _DISPLAY
            LOOP UNTIL pause = 0
        ELSEIF x1 >= 835 AND x1 <= 1119 AND y1 >= 435 AND y1 <= 519 AND scr_point = 6 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 835 AND x1 <= 1319 AND y1 >= 155 AND y1 <= 239 AND scr_point = 6 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1355 AND x1 <= 1599 AND y1 >= 155 AND y1 <= 239 AND scr_point = 6 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1555 AND x1 <= 1839 AND y1 >= -45 AND y1 <= 39 AND scr_point = 6 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1075 AND x1 <= 1839 AND y1 >= 275 AND y1 <= 359 AND scr_point = 6 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1035 AND x1 <= 1119 AND y1 >= 355 AND y1 <= 519 AND scr_point = 6 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 835 AND x1 <= 919 AND y1 >= 355 AND y1 <= 519 AND scr_point = 6 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 835 AND x1 <= 919 AND y1 >= 155 AND y1 <= 319 AND scr_point = 6 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 1755 AND x1 <= 1839 AND y1 >= 195 AND y1 <= 319 AND scr_point = 6 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1755 AND x1 <= 1839 AND y1 >= -5 AND y1 <= 159 AND scr_point = 6 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1555 AND x1 <= 1639 AND y1 >= -5 AND y1 <= 159 AND scr_point = 6 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 1355 AND x1 <= 1439 AND y1 >= -45 AND y1 <= 199 AND scr_point = 6 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1235 AND x1 <= 1320 AND y1 >= -45 AND y1 <= 199 AND scr_point = 6 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 1315 AND x1 <= 1439 AND y1 >= -95 AND y1 <= 0 AND scr_point = 7 THEN
            scr_point = 6
            x1 = 1335
            y1 = 1010
        ELSEIF x1 >= 195 AND x1 <= 319 AND y1 >= 1035 AND y1 <= 1130 AND scr_point = 8 THEN
            scr_point = 2
            x1 = 255
            y1 = 10
        ELSEIF x1 >= -95 AND x1 <= 0 AND y1 >= 555 AND y1 <= 679 AND scr_point = 8 THEN
            scr_point = 9
            x1 = 1855
            y1 = 655
        ELSEIF x1 >= 155 AND x1 <= 239 AND y1 >= 675 AND y1 <= 1080 AND scr_point = 8 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 275 AND x1 <= 359 AND y1 >= 555 AND y1 <= 1080 AND scr_point = 8 THEN
            x1 = x1 - 5
        ELSEIF x1 >= -45 AND x1 <= 239 AND y1 >= 675 AND y1 <= 760 AND scr_point = 8 THEN
            y1 = y1 - 5
        ELSEIF x1 >= -45 AND x1 <= 359 AND y1 >= 555 AND y1 <= 640 AND scr_point = 8 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1875 AND x1 <= 1959 AND y1 >= 555 AND y1 <= 679 AND scr_point = 9 THEN
            scr_point = 8
            x1 = 20
            y1 = 655
        ELSEIF x1 >= 1435 AND x1 <= 1559 AND y1 >= 875 AND y1 <= 959 AND scr_point = 9 THEN
            IF secret_btn2 = 1 THEN
                scr_point = 1
                x1 = 1735
                y1 = 605
            ELSE
                y1 = y1 - 5
            END IF
        ELSEIF x1 >= 1315 AND x1 <= 1439 AND y1 >= 875 AND y1 <= 959 AND scr_point = 9 THEN
            ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            y1 = y1 - 10
            _SNDPLAY snd_open
            pause = 1
            _PUTIMAGE (620, 370), img_abba
            LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
            DO
                scancode% = INP(&H60)
                IF scancode% = 28 THEN
                    pause = 0
                    _SNDPLAY snd_close
                END IF
                _DISPLAY
            LOOP UNTIL pause = 0
        ELSEIF x1 >= 1555 AND x1 <= 1679 AND y1 >= 875 AND y1 <= 959 AND scr_point = 9 THEN
            ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            y1 = y1 - 10
            _SNDPLAY snd_open
            pause = 1
            _PUTIMAGE (620, 370), img_baba
            LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
            DO
                scancode% = INP(&H60)
                IF scancode% = 28 THEN
                    pause = 0
                    _SNDPLAY snd_close
                END IF
                _DISPLAY
            LOOP UNTIL pause = 0
        ELSEIF x1 >= 1315 AND x1 <= 1439 AND y1 >= 355 AND y1 <= 439 AND scr_point = 9 THEN
            ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            y1 = y1 + 10
            _SNDPLAY snd_open
            pause = 1
            _PUTIMAGE (620, 370), img_cadi
            LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
            DO
                scancode% = INP(&H60)
                IF scancode% = 28 THEN
                    pause = 0
                    _SNDPLAY snd_close
                END IF
                _DISPLAY
            LOOP UNTIL pause = 0
        ELSEIF x1 >= 1555 AND x1 <= 1679 AND y1 >= 355 AND y1 <= 439 AND scr_point = 9 THEN
            ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            y1 = y1 + 10
            _SNDPLAY snd_open
            pause = 1
            _PUTIMAGE (620, 370), img_deca
            LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
            DO
                scancode% = INP(&H60)
                IF scancode% = 28 THEN
                    pause = 0
                    _SNDPLAY snd_close
                END IF
                _DISPLAY
            LOOP UNTIL pause = 0
        ELSEIF x1 >= 1715 AND x1 <= 1799 AND y1 >= 475 AND y1 <= 599 AND scr_point = 9 THEN
            ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            x1 = x1 - 10
            _SNDPLAY snd_open
            pause = 1
            slide = 1
            LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
            DO
                scancode% = INP(&H60)
                IF slide = 1 THEN
                    _PUTIMAGE (620, 370), img_hint1
                    DO
                        scancode% = INP(&H60)
                        IF scancode% = 77 THEN
                            slide = 2
                            _SNDPLAY snd_next
                            _DELAY 0.1
                        END IF
                        _DISPLAY
                    LOOP UNTIL slide = 2
                ELSEIF slide = 2 THEN
                    _PUTIMAGE (620, 370), img_hint2
                    DO
                        scancode% = INP(&H60)
                        IF scancode% = 28 THEN
                            pause = 0
                            _SNDPLAY snd_close
                        ELSEIF scancode% = 75 THEN
                            slide = 1
                            _SNDPLAY snd_next
                            _DELAY 0.1
                        END IF
                        _DISPLAY
                    LOOP UNTIL pause = 0 OR slide = 1
                END IF
            LOOP UNTIL pause = 0
        ELSEIF x1 >= 1235 AND x1 <= 1359 AND y1 >= 355 AND y1 <= 439 AND scr_point = 9 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1395 AND x1 <= 1599 AND y1 >= 355 AND y1 <= 439 AND scr_point = 9 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1635 AND x1 <= 1799 AND y1 >= 355 AND y1 <= 439 AND scr_point = 9 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1714 AND x1 <= 1799 AND y1 >= 355 AND y1 <= 519 AND scr_point = 9 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1714 AND x1 <= 1799 AND y1 >= 554 AND y1 <= 639 AND scr_point = 9 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1714 AND x1 <= 1920 AND y1 >= 554 AND y1 <= 639 AND scr_point = 9 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1714 AND x1 <= 1920 AND y1 >= 674 AND y1 <= 759 AND scr_point = 9 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1714 AND x1 <= 1799 AND y1 >= 674 AND y1 <= 959 AND scr_point = 9 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1634 AND x1 <= 1799 AND y1 >= 874 AND y1 <= 959 AND scr_point = 9 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1514 AND x1 <= 1599 AND y1 >= 874 AND y1 <= 959 AND scr_point = 9 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1394 AND x1 <= 1479 AND y1 >= 874 AND y1 <= 959 AND scr_point = 9 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1195 AND x1 <= 1359 AND y1 >= 874 AND y1 <= 959 AND scr_point = 9 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1195 AND x1 <= 1280 AND y1 >= 355 AND y1 <= 959 AND scr_point = 9 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 1555 AND x1 <= 1640 AND y1 >= 515 AND y1 <= 799 AND scr_point = 9 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 1355 AND x1 <= 1640 AND y1 >= 715 AND y1 <= 799 AND scr_point = 9 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1355 AND x1 <= 1640 AND y1 >= 515 AND y1 <= 599 AND scr_point = 9 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1355 AND x1 <= 1439 AND y1 >= 515 AND y1 <= 599 AND scr_point = 9 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1355 AND x1 <= 1439 AND y1 >= 675 AND y1 <= 799 AND scr_point = 9 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1355 AND x1 <= 1439 AND y1 >= 595 AND y1 <= 719 AND scr_point = 9 THEN
            IF code_done4 = 1 THEN
                _SNDPLAY snd_warning
                x1 = x1 - 10
            ELSE
                LINE (x1, y1)-(x1 + 50, y1 + 50), _RGB(255, 193, 7), BF
                code_done = 0
                code_stop = 0
                pause = 1
                selector = 1
                num_slot1 = 0
                num_slot2 = 0
                num_slot3 = 0
                num_slot4 = 0
                slot1done = 0
                _SNDPLAY snd_open
                _PUTIMAGE (620, 370), img_code_enter
                DO
                    IF selector = 1 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (760, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 2
                                num_slot1 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (770, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (770, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (770, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (770, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (770, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (770, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (770, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (770, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 2
                                _DELAY 0.1
                                num_slot1 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (770, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 2
                                num_slot1 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot1 = 1 OR num_slot1 = 2 OR num_slot1 = 3 OR num_slot1 = 4 OR num_slot1 = 5 OR num_slot1 = 6 OR num_slot1 = 7 OR num_slot1 = 8 OR num_slot1 = 9 OR num_slot1 = 0 THEN
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 2
                    ELSEIF selector = 2 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (860, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 3
                                num_slot2 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (870, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (870, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (870, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (870, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (870, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (870, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (870, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (870, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 3
                                _DELAY 0.1
                                num_slot2 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (870, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 3
                                num_slot2 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot2 = 1 OR num_slot2 = 2 OR num_slot2 = 3 OR num_slot2 = 4 OR num_slot2 = 5 OR num_slot2 = 6 OR num_slot2 = 7 OR num_slot2 = 8 OR num_slot2 = 9 OR num_slot2 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (740, 520), img_blank_clear
                                selector = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 77 THEN
                                _SNDPLAY snd_close
                                selector = 3
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 3 OR selector = 1
                    ELSEIF selector = 3 THEN
                        DO

                            scancode% = INP(&H60)
                            IF scancode% = 2 THEN
                                _PUTIMAGE (960, 530), img_num_one
                                _SNDPLAY snd_next
                                selector = 4
                                num_slot3 = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 THEN
                                _PUTIMAGE (970, 530), img_num_two
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 2
                            ELSEIF scancode% = 4 THEN
                                _PUTIMAGE (970, 530), img_num_three
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 3
                            ELSEIF scancode% = 5 THEN
                                _PUTIMAGE (970, 530), img_num_four
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 4
                            ELSEIF scancode% = 6 THEN
                                _PUTIMAGE (970, 530), img_num_five
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 5
                            ELSEIF scancode% = 7 THEN
                                _PUTIMAGE (970, 530), img_num_six
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 6
                            ELSEIF scancode% = 8 THEN
                                _PUTIMAGE (970, 530), img_num_seven
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 7
                            ELSEIF scancode% = 9 THEN
                                _PUTIMAGE (970, 530), img_num_eight
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 8
                            ELSEIF scancode% = 10 THEN
                                _PUTIMAGE (970, 530), img_num_nine
                                _SNDPLAY snd_next
                                selector = 4
                                _DELAY 0.1
                                num_slot3 = 9
                            ELSEIF scancode% = 11 THEN
                                _PUTIMAGE (970, 530), img_num_zero
                                _SNDPLAY snd_next
                                selector = 4
                                num_slot3 = 10
                                _DELAY 0.1
                            END IF

                            IF num_slot3 = 1 OR num_slot3 = 3 OR num_slot3 = 3 OR num_slot3 = 4 OR num_slot3 = 5 OR num_slot3 = 6 OR num_slot3 = 7 OR num_slot3 = 8 OR num_slot3 = 9 OR num_slot3 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (840, 520), img_blank_clear
                                selector = 2
                                _DELAY 0.1
                            ELSEIF scancode% = 77 THEN
                                _SNDPLAY snd_close
                                selector = 4
                                _DELAY 0.1
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 4 OR selector = 2
                    ELSEIF selector = 4 THEN
                        DO
                            scancode% = INP(&H60)
                            IF scancode% = 2 AND code_stop = 0 THEN
                                _PUTIMAGE (1060, 530), img_num_one
                                _SNDPLAY snd_next
                                num_slot4 = 1
                                code_stop = 1
                                _DELAY 0.1
                            ELSEIF scancode% = 3 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_two
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 2
                                code_stop = 1
                            ELSEIF scancode% = 4 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_three
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 3
                                code_stop = 1
                            ELSEIF scancode% = 5 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_four
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 4
                                code_stop = 1
                            ELSEIF scancode% = 6 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_five
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 5
                                code_stop = 1
                            ELSEIF scancode% = 7 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_six
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 6
                                code_stop = 1
                            ELSEIF scancode% = 8 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_seven
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 7
                                code_stop = 1
                            ELSEIF scancode% = 9 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_eight
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 8
                                code_stop = 1
                            ELSEIF scancode% = 10 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_nine
                                _SNDPLAY snd_next
                                _DELAY 0.1
                                num_slot4 = 9
                                code_stop = 1
                            ELSEIF scancode% = 11 AND code_stop = 0 THEN
                                _PUTIMAGE (1070, 530), img_num_zero
                                _SNDPLAY snd_next
                                num_slot4 = 10
                                code_stop = 1
                                _DELAY 0.1
                            END IF

                            IF num_slot4 = 1 OR num_slot4 = 2 OR num_slot4 = 3 OR num_slot4 = 4 OR num_slot4 = 5 OR num_slot4 = 6 OR num_slot4 = 7 OR num_slot4 = 8 OR num_slot4 = 9 OR num_slot4 = 0 THEN
                                _DELAY 0.1
                            END IF

                            IF scancode% = 75 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (940, 520), img_blank_clear
                                _PUTIMAGE (1040, 520), img_blank_clear
                                selector = 3
                                code_stop = 0
                                _DELAY 0.1
                            ELSEIF scancode% = 28 THEN
                                IF num_slot1 = 9 AND num_slot2 = 4 AND num_slot3 = 1 AND num_slot4 = 3 THEN
                                    _SNDPLAY snd_open
                                    pause = 0
                                    x1 = x1 - 10
                                    code_done4 = 1
                                    door_lock8 = 0
                                ELSE
                                    _SNDPLAY snd_warning
                                    pause = 0
                                    x1 = x1 - 10
                                END IF
                            END IF
                            _DISPLAY
                        LOOP UNTIL selector = 3 OR pause = 0
                    END IF
                LOOP UNTIL pause = 0
            END IF
        ELSEIF x1 >= 235 AND x1 <= 359 AND y1 >= -95 AND y1 <= 0 AND scr_point = 10 THEN
            scr_point = 2
            x1 = 295
            y1 = 1015
        ELSEIF x1 >= -95 AND x1 <= 0 AND y1 >= 235 AND y1 <= 359 AND scr_point = 10 THEN
            scr_point = 11
            x1 = 1855
            y1 = 295
        ELSEIF x1 >= 195 AND x1 <= 279 AND y1 >= -45 AND y1 <= 279 AND scr_point = 10 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 315 AND x1 <= 399 AND y1 >= -45 AND y1 <= 399 AND scr_point = 10 THEN
            x1 = x1 - 5
        ELSEIF x1 >= -25 AND x1 <= 279 AND y1 >= 194 AND y1 <= 279 AND scr_point = 10 THEN
            y1 = y1 + 5
        ELSEIF x1 >= -25 AND x1 <= 399 AND y1 >= 315 AND y1 <= 399 AND scr_point = 10 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1875 AND x1 <= 1970 AND y1 >= 235 AND y1 <= 359 AND scr_point = 11 THEN
            scr_point = 10
            x1 = 15
            y1 = 295
        ELSEIF x1 >= 1310 AND x1 <= 1439 AND y1 >= 35 AND y1 <= 119 AND scr_point = 11 THEN
            IF secret_btn3 = 1 THEN
                scr_point = 1
                x1 = 1535
                y1 = 620
            ELSE
                y1 = y1 + 5
            END IF
        ELSEIF x1 >= 1755 AND x1 <= 1810 AND y1 >= 235 AND y1 <= 359 AND scr_point = 11 AND door_lock9 = 1 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1785 AND x1 <= 1840 AND y1 >= 235 AND y1 <= 359 AND scr_point = 11 AND door_lock9 = 1 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 1425 AND x1 <= 1479 AND y1 >= 196 AND y1 <= 359 AND scr_point = 11 THEN
            IF quarter_btn1 = 0 AND quarter_btn2 = 0 AND quarter_btn3 = 0 AND quarter_btn4 = 0 THEN
                _SNDPLAY snd_open
                door_lock9 = 1
                door_lock10 = 0
                quarter_btn1 = 1
                secret_btn3 = 1
                x1 = x1 + 10
                pause = 1
                DO
                    _PUTIMAGE (0, 0), img_statement_stuck
                    scancode% = INP(&H60)
                    IF scancode% = 28 THEN
                        pause = 0
                    END IF
                    _DISPLAY
                LOOP UNTIL pause = 0
                _SNDPLAY snd_next
            ELSE
                _SNDPLAY snd_warning
                x1 = x1 + 10
            END IF
        ELSEIF x1 >= 1315 AND x1 <= 1479 AND y1 >= 304 AND y1 <= 359 AND scr_point = 11 THEN
            IF quarter_btn1 = 0 AND quarter_btn2 = 0 AND quarter_btn3 = 0 AND quarter_btn4 = 0 THEN
                _SNDPLAY snd_open
                door_lock9 = 1
                door_lock10 = 0
                quarter_btn2 = 1
                secret_btn3 = 1
                y1 = y1 + 10
                pause = 1
                DO
                    _PUTIMAGE (0, 0), img_statement_stuck
                    scancode% = INP(&H60)
                    IF scancode% = 28 THEN
                        pause = 0
                    END IF
                    _DISPLAY
                LOOP UNTIL pause = 0
                _SNDPLAY snd_next
            ELSE
                _SNDPLAY snd_warning
                y1 = y1 + 10
            END IF
        ELSEIF x1 >= 1315 AND x1 <= 1370 AND y1 >= 196 AND y1 <= 359 AND scr_point = 11 THEN
            IF quarter_btn1 = 0 AND quarter_btn2 = 0 AND quarter_btn3 = 0 AND quarter_btn4 = 0 THEN
                _SNDPLAY snd_open
                door_lock9 = 1
                door_lock10 = 0
                quarter_btn3 = 1
                secret_btn3 = 1
                x1 = x1 - 10
                pause = 1
                DO
                    _PUTIMAGE (0, 0), img_statement_stuck
                    scancode% = INP(&H60)
                    IF scancode% = 28 THEN
                        pause = 0
                    END IF
                    _DISPLAY
                LOOP UNTIL pause = 0
                _SNDPLAY snd_next
            ELSE
                _SNDPLAY snd_warning
                x1 = x1 - 10
            END IF
        ELSEIF x1 >= 1315 AND x1 <= 1479 AND y1 >= 196 AND y1 <= 251 AND scr_point = 11 THEN
            IF quarter_btn1 = 0 AND quarter_btn2 = 0 AND quarter_btn3 = 0 AND quarter_btn4 = 0 THEN
                _SNDPLAY snd_open
                door_lock9 = 1
                door_lock10 = 0
                quarter_btn4 = 1
                secret_btn3 = 1
                y1 = y1 - 10
                pause = 1
                DO
                    _PUTIMAGE (0, 0), img_statement_stuck
                    scancode% = INP(&H60)
                    IF scancode% = 28 THEN
                        pause = 0
                    END IF
                    _DISPLAY
                LOOP UNTIL pause = 0
                _SNDPLAY snd_next
            ELSE
                _SNDPLAY snd_warning
                y1 = y1 - 10
            END IF
        ELSEIF x1 >= 1315 AND x1 <= 1370 AND y1 >= 196 AND y1 <= 359 AND scr_point = 11 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1315 AND x1 <= 1479 AND y1 >= 196 AND y1 <= 251 AND scr_point = 11 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1315 AND x1 <= 1479 AND y1 >= 349 AND y1 <= 359 AND scr_point = 11 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 955 AND x1 <= 1040 AND y1 >= 35 AND y1 <= 519 AND scr_point = 11 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 1675 AND x1 <= 1760 AND y1 >= 35 AND y1 <= 279 AND scr_point = 11 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1675 AND x1 <= 1760 AND y1 >= 315 AND y1 <= 519 AND scr_point = 11 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 1675 AND x1 <= 1920 AND y1 >= 194 AND y1 <= 279 AND scr_point = 11 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 1675 AND x1 <= 1920 AND y1 >= 315 AND y1 <= 400 AND scr_point = 11 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 1395 AND x1 <= 1760 AND y1 >= 35 AND y1 <= 119 AND scr_point = 11 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 955 AND x1 <= 1355 AND y1 >= 35 AND y1 <= 119 AND scr_point = 11 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 955 AND x1 <= 1760 AND y1 >= 434 AND y1 <= 519 AND scr_point = 11 THEN
            y1 = y1 - 5
        ELSEIF x1 >= -95 AND x1 <= 0 AND y1 >= 555 AND y1 <= 679 AND scr_point = 12 THEN
            scr_point = 2
            x1 = 1855
            y1 = 615
        ELSEIF x1 >= 80 AND x1 <= 159 AND y1 >= 549 AND y1 <= 599 AND scr_point = 12 THEN
            IF secret_btn = 1 THEN
                scr_point = 4
                x1 = 1500
                y1 = 895
            ELSE
                y1 = y1 + 5
            END IF
        ELSEIF x1 >= 235 AND x1 <= 519 AND y1 >= 435 AND y1 <= 519 AND scr_point = 12 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 235 AND x1 <= 519 AND y1 >= 715 AND y1 <= 799 AND scr_point = 12 THEN
            y1 = y1 - 5
        ELSEIF x1 >= 475 AND x1 <= 559 AND y1 >= 475 AND y1 <= 759 AND scr_point = 12 THEN
            x1 = x1 - 5
        ELSEIF x1 >= 195 AND x1 <= 279 AND y1 >= 475 AND y1 <= 599 AND scr_point = 12 THEN
            x1 = x1 + 5
        ELSEIF x1 >= 195 AND x1 <= 279 AND y1 >= 635 AND y1 <= 759 AND scr_point = 12 THEN
            x1 = x1 + 5
        ELSEIF x1 >= -45 AND x1 <= 279 AND y1 >= 635 AND y1 <= 719 AND scr_point = 12 THEN
            y1 = y1 - 5
        ELSEIF x1 >= -45 AND x1 <= 79 AND y1 >= 515 AND y1 <= 599 AND scr_point = 12 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 115 AND x1 <= 279 AND y1 >= 515 AND y1 <= 599 AND scr_point = 12 THEN
            y1 = y1 + 5
        ELSEIF x1 >= 315 AND x1 <= 380 AND y1 >= 555 AND y1 <= 679 AND scr_point = 12 THEN
            _SNDPLAY snd_start
            _DELAY 0.7
            _PUTIMAGE (0, 0), img_end1
            _SNDPLAY snd_close
            END
        ELSEIF x1 >= 375 AND x1 <= 440 AND y1 >= 555 AND y1 <= 679 AND scr_point = 12 THEN
            _SNDPLAY snd_start
            _DELAY 0.7
            _PUTIMAGE (0, 0), img_end1
            _SNDPLAY snd_close
            END
        ELSEIF x1 >= 315 AND x1 <= 440 AND y1 >= 555 AND y1 <= 620 AND scr_point = 12 THEN
            _SNDPLAY snd_start
            _DELAY 0.7
            _PUTIMAGE (0, 0), img_end1
            _SNDPLAY snd_close
            END
        ELSEIF x1 >= 315 AND x1 <= 440 AND y1 >= 615 AND y1 <= 679 AND scr_point = 12 THEN
            _SNDPLAY snd_start
            _DELAY 0.7
            _PUTIMAGE (0, 0), img_end1
            _SNDPLAY snd_close
            END
        END IF
        IF half_btn1 = 1 AND half_btn2 = 1 THEN
            door_lock7 = 0
        END IF
    END IF
END SUB


SUB world_map (x1, y1, snd_start, snd_next, snd_warning, snd_close, counter, ticket, img_world, img_world_icon_playerhouse, img_world_icon_playerhouse_select, img_world_icon_cave, img_world_icon_cave_select, img_world_playerhome_goto_select1, img_world_playerhome_goto_select2, img_world_cave_goto_select1, img_world_cave_goto_select2)
    IF ticket = 1 THEN
        pause = 1
        DO
            IF counter = 1 THEN
                'House
                _DELAY 0.1
                _PUTIMAGE (0, 0), img_world
                _PUTIMAGE (218, 858), img_world_icon_playerhouse_select
                _PUTIMAGE (280, 600), img_world_icon_cave
                DO
                    scancode% = INP(&H60)
                    IF scancode% = 72 THEN
                        _DELAY 0.1
                        _SNDPLAY snd_next
                        counter = 2
                    ELSEIF scancode% = 28 THEN
                        'When "Enter"
                        _DELAY 0.1
                        _SNDPLAY snd_warning
                        _PUTIMAGE (620, 370), img_world_playerhome_goto_select1
                        freeze = 2
                        DO
                            scancode% = INP(&H60)
                            IF freeze = 3 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (620, 370), img_world_playerhome_goto_select2
                                _DELAY 0.2
                                DO
                                    scancode% = INP(&H60)
                                    IF scancode% = 28 THEN
                                        _SNDPLAY snd_close
                                        _DELAY 0.1
                                        freeze = 0
                                        _PUTIMAGE (0, 0), img_world
                                        _PUTIMAGE (218, 858), img_world_icon_playerhouse_select
                                        _PUTIMAGE (280, 600), img_world_icon_cave
                                    ELSEIF scancode% = 75 THEN
                                        _DELAY 0.1
                                        _PUTIMAGE (620, 370), img_world_playerhome_goto_select1
                                        freeze = 2
                                    END IF
                                    _DISPLAY
                                LOOP UNTIL freeze = 2 OR freeze = 0
                            ELSEIF freeze = 2 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (620, 370), img_world_playerhome_goto_select1
                                _DELAY 0.2
                                DO
                                    scancode% = INP(&H60)
                                    IF scancode% = 28 THEN
                                        _SNDPLAY snd_start
                                        _DELAY 0.1
                                        x1 = 945
                                        y1 = 625
                                        ticket = 2
                                        pause = 0
                                        _PUTIMAGE (0, 0), img_world
                                        _PUTIMAGE (218, 858), img_world_icon_playerhouse_select
                                        _PUTIMAGE (280, 600), img_world_icon_cave
                                    ELSEIF scancode% = 77 THEN
                                        _DELAY 0.1
                                        _PUTIMAGE (620, 370), img_world_playerhome_goto_select2
                                        freeze = 3
                                    END IF
                                    _DISPLAY
                                LOOP UNTIL freeze = 3 OR ticket = 2
                            END IF
                            _DISPLAY
                        LOOP UNTIL ticket = 2 OR freeze = 0
                    END IF
                    _DISPLAY
                LOOP UNTIL counter = 2 OR pause = 0
            ELSEIF counter = 2 THEN
                'Cave
                _DELAY 0.1
                _PUTIMAGE (0, 0), img_world
                _PUTIMAGE (278, 598), img_world_icon_cave_select
                _PUTIMAGE (220, 860), img_world_icon_playerhouse
                DO
                    scancode% = INP(&H60)
                    IF scancode% = 80 THEN
                        _DELAY 0.1
                        _SNDPLAY snd_next
                        counter = 1
                    ELSEIF scancode% = 28 THEN
                        'When "Enter"
                        _DELAY 0.1
                        _PUTIMAGE (620, 370), img_world_cave_goto_select1
                        _SNDPLAY snd_warning
                        freeze = 2
                        DO
                            scancode% = INP(&H60)
                            IF freeze = 3 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (620, 370), img_world_cave_goto_select2
                                _DELAY 0.2
                                DO
                                    scancode% = INP(&H60)
                                    IF scancode% = 28 THEN
                                        _SNDPLAY snd_close
                                        _DELAY 0.1
                                        freeze = 0
                                        _PUTIMAGE (0, 0), img_world
                                        _PUTIMAGE (220, 860), img_world_icon_playerhouse
                                        _PUTIMAGE (278, 598), img_world_icon_cave_select
                                    ELSEIF scancode% = 75 THEN
                                        _DELAY 0.1
                                        _PUTIMAGE (620, 370), img_world_cave_goto_select1
                                        freeze = 2
                                    END IF
                                    _DISPLAY
                                LOOP UNTIL freeze = 2 OR freeze = 0
                            ELSEIF freeze = 2 THEN
                                _SNDPLAY snd_next
                                _PUTIMAGE (620, 370), img_world_cave_goto_select1
                                _DELAY 0.2
                                DO
                                    scancode% = INP(&H60)
                                    IF scancode% = 28 THEN
                                        _SNDPLAY snd_start
                                        _DELAY 0.1
                                        ticket = 3
                                        x1 = 1225
                                        y1 = 615
                                        pause = 0
                                        _PUTIMAGE (0, 0), img_world
                                        _PUTIMAGE (220, 860), img_world_icon_playerhouse
                                        _PUTIMAGE (278, 598), img_world_icon_cave_select
                                    ELSEIF scancode% = 77 THEN
                                        _DELAY 0.1
                                        _PUTIMAGE (620, 370), img_world_cave_goto_select2
                                        freeze = 3
                                    END IF
                                    _DISPLAY
                                LOOP UNTIL freeze = 3 OR ticket = 3
                            END IF
                            _DISPLAY
                        LOOP UNTIL ticket = 3 OR freeze = 0
                    END IF
                    _DISPLAY
                LOOP UNTIL counter = 1 OR pause = 0
            END IF
        LOOP UNTIL pause = 0
    END IF
END SUB

SUB title (img_controls, img_welcome, img_title, snd_start, snd_secret, snd_voice)

    DO
        scancode% = INP(&H60)
        _PUTIMAGE (0, 0), img_title
        IF scancode% = 48 AND NOT no_more = 1 THEN
            buildup = 1
        ELSEIF scancode% = 30 AND buildup = 1 THEN
            buildup = 2
        ELSEIF scancode% = 49 AND buildup = 2 THEN
            buildup = 3
        ELSEIF scancode% = 24 AND buildup = 3 THEN
            buildup = 4
        ELSEIF scancode% = 21 AND buildup = 4 THEN
            buildup = 5
            no_more = 1
            alt_start = 1
            _SNDPLAY snd_secret
        END IF
    LOOP UNTIL scancode% = 28
    DO
        scancode% = INP(&H60)
        _PUTIMAGE (0, 0), img_welcome
        SLEEP
        _PUTIMAGE (0, 0), img_controls
        SLEEP
    LOOP UNTIL scancode% = 28
    IF alt_start = 1 THEN
        _SNDPLAY snd_voice
        _DELAY 1.5
    ELSE
        _SNDPLAY snd_start
        _DELAY 0.5
    END IF

END SUB

SUB playerhome_f2_indication
    LINE (1050, 375)-(1129, 460), _RGB(255, 0, 255), B
    LINE (800, 365)-(1140, 375), _RGB(255, 0, 255), B
    LINE (1140, 375)-(1129, 704), _RGB(255, 0, 0), B
    LINE (1040, 605)-(1050, 705), _RGB(255, 0, 0), B
    LINE (1040, 605)-(1129, 615), _RGB(255, 0, 0), B
    LINE (900, 455)-(989, 465), _RGB(255, 0, 0), B
    LINE (850, 485)-(939, 495), _RGB(255, 0, 0), B
    LINE (979, 365)-(989, 465), _RGB(255, 0, 0), B
    LINE (929, 455)-(939, 495), _RGB(255, 0, 0), B
END SUB
SUB playerhome_f1_indication
    LINE (940, 680)-(1000, 700), _RGB(255, 0, 255), B
    LINE (1033, 375)-(1043, 440), _RGB(255, 0, 255), B
    LINE (1033, 440)-(1130, 450), _RGB(255, 0, 255), B
    LINE (863, 396)-(873, 417), _RGB(255, 0, 255), B
END SUB
SUB cave_indication_scr_point_1
    LINE (1160, 600)-(1200, 679), _RGB(255, 0, 255), B
    LINE (1920, 600)-(1959, 679), _RGB(255, 0, 255), B
    LINE (1522, 680)-(1600, 719), _RGB(255, 0, 0), B
    LINE (1720, 560)-(1799, 599), _RGB(255, 0, 0), B
    LINE (1799, 560)-(1920, 599), _RGB(255, 0, 0), B
    LINE (1160, 560)-(1720, 599), _RGB(255, 0, 0), B
    LINE (1600, 680)-(1920, 719), _RGB(255, 0, 0), B
    LINE (1160, 680)-(1522, 719), _RGB(255, 0, 0), B
END SUB

SUB cave_indication_scr_point_2
    LINE (-50, 600)-(0, 679), _RGB(255, 0, 255), B
    LINE (1920, 600)-(1959, 679), _RGB(255, 0, 255), B
    LINE (960, -50)-(1039, 0), _RGB(255, 0, 0), B
    LINE (240, -50)-(319, 0), _RGB(255, 0, 0), B
    LINE (280, 1080)-(359, 1130), _RGB(255, 255, 0), BF
    LINE (1360, 1080)-(1439, 1130), _RGB(255, 255, 0), BF
    LINE (1360, 720)-(1439, 770), _RGB(255, 255, 0), BF
    LINE (280, 720)-(359, 770), _RGB(255, 255, 0), BF
    LINE (240, 520)-(319, 570), _RGB(255, 255, 0), BF
    LINE (1480, 600)-(1499, 679), _RGB(255, 0, 255), B
    LINE (1500, 600)-(1519, 679), _RGB(255, 0, 255), B
    LINE (514, 680)-(593, 730), _RGB(255, 255, 0), BF

    LINE (360, 680)-(513, 719), _RGB(0, 255, 0), BF
    LINE (0, 680)-(279, 719), _RGB(0, 255, 0), BF
    LINE (0, 560)-(239, 599), _RGB(0, 255, 0), BF
    LINE (320, 560)-(959, 599), _RGB(0, 255, 0), BF
    LINE (1040, 560)-(1920, 599), _RGB(0, 255, 0), BF
    LINE (1440, 680)-(1920, 719), _RGB(0, 255, 0), BF
    LINE (594, 680)-(1359, 719), _RGB(0, 255, 0), BF
    LINE (360, 680)-(400, 1080), _RGB(0, 0, 255), BF
    LINE (240, 680)-(280, 1080), _RGB(0, 0, 255), BF
    LINE (1440, 680)-(1479, 1080), _RGB(0, 0, 255), BF
    LINE (1320, 680)-(1359, 1080), _RGB(0, 0, 255), BF
    LINE (1040, 0)-(1079, 559), _RGB(0, 0, 255), BF
    LINE (920, 0)-(959, 559), _RGB(0, 0, 255), BF
    LINE (320, 0)-(359, 559), _RGB(0, 0, 255), BF
    LINE (200, 0)-(239, 559), _RGB(0, 0, 255), BF
END SUB

SUB cave_indication_scr_point_3
    LINE (1920, 640)-(1959, 719), _RGB(255, 0, 255), BF
    LINE (1910, 40)-(1959, 119), _RGB(255, 0, 255), BF
    LINE (960, 1080)-(1039, 1130), _RGB(255, 255, 0), BF
    LINE (960, 560)-(1039, 610), _RGB(255, 255, 0), BF

    LINE (920, 0)-(959, 1080), _RGB(255, 255, 0), BF
    LINE (1040, 720)-(1079, 1080), _RGB(255, 255, 0), BF
    LINE (1040, 120)-(1079, 639), _RGB(255, 255, 0), BF

    LINE (1040, 120)-(1920, 159), _RGB(0, 255, 0), BF
    LINE (1040, 600)-(1920, 639), _RGB(0, 255, 0), BF

    LINE (920, 0)-(1920, 39), _RGB(0, 255, 0), BF

END SUB

SUB cave_indication_scr_point_4
    LINE (-50, 600)-(0, 679), _RGB(255, 0, 255), BF
    LINE (1560, 880)-(1690, 959), _RGB(0, 255, 255), BF
    LINE (1560, 640)-(1690, 719), _RGB(0, 255, 255), BF

    LINE (0, 560)-(1599, 599), _RGB(255, 0, 255), BF
    LINE (0, 680)-(1359, 719), _RGB(255, 0, 255), BF
    LINE (1320, 1000)-(1599, 1039), _RGB(255, 0, 255), BF

    LINE (1320, 680)-(1359, 1039), _RGB(255, 0, 0), BF

    LINE (1560, 960)-(1599, 1039), _RGB(255, 0, 0), BF
    LINE (1560, 720)-(1599, 879), _RGB(255, 0, 0), BF
    LINE (1560, 600)-(1599, 639), _RGB(255, 0, 0), BF
END SUB

SUB cave_indication_scr_point_5
    LINE (-50, 40)-(0, 119), _RGB(255, 0, 255), BF
    LINE (640, 400)-(679, 479), _RGB(255, 0, 255), BF
    LINE (640, 80)-(679, 159), _RGB(255, 0, 255), BF

    LINE (640, 0)-(679, 79), _RGB(150, 100, 255), BF
    LINE (640, 160)-(679, 399), _RGB(150, 100, 255), BF
    LINE (640, 480)-(679, 559), _RGB(150, 100, 255), BF
    LINE (80, 120)-(119, 559), _RGB(150, 100, 255), BF

    LINE (0, 120)-(119, 159), _RGB(0, 0, 255), BF
    LINE (0, 0)-(679, 39), _RGB(0, 0, 255), BF
    LINE (80, 520)-(679, 560), _RGB(0, 255, 255), BF
END SUB

SUB cave_indication_scr_point_6
    LINE (920, 400)-(1079, 450), _RGB(255, 255, 0), BF
    LINE (1640, 80)-(1799, 130), _RGB(255, 255, 0), BF
    LINE (960, 451)-(1040, 479), _RGB(0, 255, 0), BF
    LINE (1680, 40)-(1760, 79), _RGB(0, 255, 0), BF

    LINE (880, 320)-(919, 399), _RGB(255, 0, 255), BF
    LINE (1080, 320)-(1119, 399), _RGB(255, 0, 255), BF
    LINE (1800, 160)-(1839, 239), _RGB(255, 0, 255), BF
    LINE (1600, 160)-(1639, 239), _RGB(255, 0, 255), BF

    LINE (880, 480)-(1119, 519), _RGB(0, 255, 255), BF
    LINE (880, 200)-(1319, 239), _RGB(0, 255, 255), BF
    LINE (1400, 200)-(1599, 239), _RGB(0, 0, 255), BF
    LINE (1600, 0)-(1839, 39), _RGB(0, 0, 255), BF
    LINE (1120, 320)-(1839, 359), _RGB(0, 0, 255), BF

    LINE (1080, 400)-(1119, 519), _RGB(150, 100, 255), BF
    LINE (880, 400)-(919, 519), _RGB(150, 100, 255), BF
    LINE (880, 200)-(919, 319), _RGB(150, 100, 255), BF
    LINE (1800, 240)-(1839, 319), _RGB(150, 100, 255), BF
    LINE (1800, 40)-(1839, 159), _RGB(150, 100, 255), BF
    LINE (1600, 40)-(1639, 159), _RGB(150, 100, 255), BF
    LINE (1400, 0)-(1439, 199), _RGB(150, 100, 255), BF
    LINE (1280, 0)-(1319, 199), _RGB(150, 100, 255), BF
END SUB

SUB cave_indication_scr_point_7
END SUB

SUB cave_indication_scr_point_8
    LINE (200, 720)-(239, 1080), _RGB(0, 255, 255), BF
    LINE (320, 600)-(359, 1080), _RGB(0, 255, 255), BF

    LINE (0, 720)-(239, 760), _RGB(0, 255, 255), BF
    LINE (0, 600)-(359, 640), _RGB(0, 255, 255), BF
END SUB

SUB cave_indication_scr_point_9
    LINE (1480, 920)-(1559, 959), _RGB(255, 0, 0), BF
    LINE (1400, 640)-(1439, 719), _RGB(255, 0, 255), BF
    LINE (1360, 920)-(1439, 959), _RGB(255, 0, 0), BF
    LINE (1600, 920)-(1679, 959), _RGB(255, 0, 0), BF
    LINE (1360, 400)-(1439, 439), _RGB(255, 0, 0), BF
    LINE (1760, 520)-(1799, 599), _RGB(255, 0, 255), BF

    LINE (1240, 400)-(1359, 439), _RGB(0, 255, 0), BF
    LINE (1440, 400)-(1599, 439), _RGB(0, 255, 0), BF
    LINE (1680, 400)-(1799, 439), _RGB(0, 255, 0), BF
    LINE (1759, 400)-(1799, 519), _RGB(0, 255, 255), BF
    LINE (1759, 599)-(1799, 639), _RGB(0, 255, 255), BF
    LINE (1759, 599)-(1920, 639), _RGB(0, 255, 0), BF
    LINE (1759, 719)-(1920, 759), _RGB(0, 255, 0), BF
    LINE (1759, 719)-(1799, 959), _RGB(0, 255, 255), BF
    LINE (1679, 919)-(1799, 959), _RGB(0, 255, 0), BF
    LINE (1559, 919)-(1599, 959), _RGB(0, 255, 0), BF
    LINE (1439, 919)-(1479, 959), _RGB(0, 255, 0), BF
    LINE (1240, 919)-(1359, 959), _RGB(0, 255, 0), BF
    LINE (1240, 400)-(1280, 959), _RGB(0, 255, 255), BF
    LINE (1600, 560)-(1640, 799), _RGB(0, 255, 255), BF

    LINE (1400, 760)-(1640, 799), _RGB(0, 255, 0), BF
    LINE (1400, 560)-(1640, 599), _RGB(0, 255, 0), BF

    LINE (1400, 560)-(1439, 639), _RGB(0, 255, 255), BF
    LINE (1400, 720)-(1439, 799), _RGB(0, 255, 255), BF
END SUB

SUB cave_indication_scr_point_10
    LINE (280, -50)-(359, 0), _RGB(255, 255, 0), BF
    LINE (-50, 280)-(0, 359), _RGB(255, 0, 255), BF
    LINE (360, 0)-(399, 399), _RGB(255, 0, 255), BF
    LINE (240, 0)-(279, 279), _RGB(255, 0, 255), BF
    LINE (0, 240)-(279, 279), _RGB(255, 0, 255), BF
    LINE (0, 360)-(399, 399), _RGB(255, 0, 255), BF
END SUB

SUB cave_indication_scr_point_11
    LINE (1355, 80)-(1439, 119), _RGB(255, 255, 0), BF
    LINE (1800, 280)-(1810, 359), _RGB(255, 0, 255), B
    LINE (1830, 280)-(1840, 359), _RGB(255, 0, 255), B
    LINE (1470, 241)-(1479, 359), _RGB(255, 0, 255), B
    LINE (1360, 349)-(1479, 359), _RGB(255, 0, 255), B
    LINE (1360, 241)-(1370, 359), _RGB(255, 0, 255), B
    LINE (1360, 241)-(1479, 251), _RGB(255, 0, 255), B

    LINE (1470, 241)-(1499, 359), _RGB(255, 0, 0), B
    LINE (1360, 349)-(1479, 379), _RGB(255, 0, 255), B
    LINE (1340, 241)-(1370, 359), _RGB(255, 0, 255), B
    LINE (1360, 221)-(1479, 251), _RGB(255, 0, 255), B

    LINE (1000, 80)-(1040, 519), _RGB(255, 0, 255), B
    LINE (1720, 80)-(1760, 279), _RGB(255, 0, 255), B
    LINE (1720, 360)-(1760, 519), _RGB(255, 0, 255), B

    LINE (1720, 239)-(1920, 279), _RGB(255, 0, 255), B
    LINE (1720, 360)-(1920, 400), _RGB(255, 0, 255), B

    LINE (1440, 80)-(1760, 120), _RGB(255, 0, 255), B
    LINE (1000, 80)-(1355, 120), _RGB(255, 0, 255), B
    LINE (1000, 479)-(1760, 519), _RGB(255, 0, 255), B
END SUB

SUB cave_indication_scr_point_12
    LINE (-50, 600)-(0, 679), _RGB(255, 0, 255), B
    LINE (80, 549)-(159, 599), _RGB(255, 255, 0), BF
    LINE (360, 600)-(380, 679), _RGB(255, 0, 255), B
    LINE (420, 600)-(440, 679), _RGB(255, 0, 255), B
    LINE (360, 600)-(440, 620), _RGB(255, 0, 255), B
    LINE (360, 660)-(440, 679), _RGB(255, 0, 255), B

    LINE (280, 480)-(519, 519), _RGB(255, 0, 255), BF
    LINE (280, 760)-(519, 799), _RGB(255, 0, 255), BF
    LINE (520, 520)-(559, 759), _RGB(255, 0, 255), BF
    LINE (240, 520)-(279, 599), _RGB(255, 0, 255), B
    LINE (160, 560)-(279, 599), _RGB(255, 0, 255), B
    LINE (0, 560)-(79, 599), _RGB(255, 0, 255), B

    LINE (240, 680)-(279, 759), _RGB(255, 0, 255), B
    LINE (0, 680)-(279, 719), _RGB(255, 0, 255), B
END SUB
