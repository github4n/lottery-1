﻿Attribute VB_Name = "test"
Sub 程序升级()
    Call 程序升级20180818
End Sub
Sub 程序升级20180715()

    Dim sheet1 As Worksheet
    Dim tmClBgCol As Long       '总排名交锋等级数据所在列

    Set sheet1 = ActiveWorkbook.Sheets("综合数据")
    Call 初始化一般字典(dataColDict, sheet1, 4, 0, 1, False)
    
    
    '处理【主队+客队盘形分析(相对数据)】
    tmClBgCol = dataColDict.Item("ANARATIO_1")

    If tmClBgCol = 0 Then
        i1 = dataColDict.Item("ANARATIO")
        '修改原来的名称代码
        i2 = i1 + 4
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells(3, i2) = "初始"
        sheet1.Cells(3, i2 + 1) = "即时一"
        sheet1.Cells(3, i2 + 2) = "即时二"
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "主队+客队盘形分析(相对数据)-总排名"
        sheet1.Cells(4, i2) = "ANARATIO_1"
        
        MsgBox ("主队+客队盘形分析程序更新完毕！")
    Else
        MsgBox ("主队+客队盘分析程序已更新！")
    End If
    
    
    '处理bet365盘口评测
    tmClBgCol = dataColDict.Item("PANB_1")

    If tmClBgCol = 0 Then
        i1 = dataColDict.Item("PANB")
        '修改原来的名称代码
        i2 = i1 + 4
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells(3, i2) = "贴水"
        sheet1.Cells(3, i2 + 1) = "盘口"
        sheet1.Cells(3, i2 + 2) = "贴水"
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "bet365最新盘口评测"
        sheet1.Cells(4, i2) = "PANB_3"
        
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells(3, i2) = "贴水"
        sheet1.Cells(3, i2 + 1) = "盘口"
        sheet1.Cells(3, i2 + 2) = "贴水"
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "bet365赛前8小时盘口评测"
        sheet1.Cells(4, i2) = "PANB_2"
        
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells(3, i2) = "贴水"
        sheet1.Cells(3, i2 + 1) = "盘口"
        sheet1.Cells(3, i2 + 2) = "贴水"
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "bet365初始盘口评测"
        sheet1.Cells(4, i2) = "PANB_1"
        
        'sheet1.Cells.Columns(i2).ShrinkToFit = True
        MsgBox ("Bet365盘口评测程序更新完毕！")
    Else
        MsgBox ("Bet365盘口评测程序已更新！")
    End If
    
    
    '处理澳门盘口评测
    tmClBgCol = dataColDict.Item("PANM_1")
    If tmClBgCol = 0 Then
        i1 = dataColDict.Item("PANM")
        '修改原来的名称代码
        i2 = i1 + 4
        
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells(3, i2) = "贴水"
        sheet1.Cells(3, i2 + 1) = "盘口"
        sheet1.Cells(3, i2 + 2) = "贴水"
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "澳门彩票最新盘口评测"
        sheet1.Cells(4, i2) = "PANM_3"
        
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells(3, i2) = "贴水"
        sheet1.Cells(3, i2 + 1) = "盘口"
        sheet1.Cells(3, i2 + 2) = "贴水"
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "澳门彩票赛前8小时盘口评测"
        sheet1.Cells(4, i2) = "PANM_2"
        
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells(3, i2) = "贴水"
        sheet1.Cells(3, i2 + 1) = "盘口"
        sheet1.Cells(3, i2 + 2) = "贴水"
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "澳门彩票初始盘口评测"
        sheet1.Cells(4, i2) = "PANM_1"
                
        MsgBox ("澳门彩票盘口程序更新完毕！")
    Else
        MsgBox ("澳门彩票盘口程序已更新！")
    End If
    
    
    
End Sub


Sub 程序升级20180813()

    Dim sheet1 As Worksheet
    Dim tmClBgCol As Long       '总排名交锋等级数据所在列

    Set sheet1 = ActiveWorkbook.Sheets("综合数据")
    Call 初始化一般字典(dataColDict, sheet1, 4, 0, 1, False)
    
    
    '处理Ok30
    tmClBgCol = dataColDict.Item("OK30_1")

    If tmClBgCol = 0 Then
        i2 = dataColDict.Item("BFW")
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "Ok30-标识"
        sheet1.Cells(3, i2) = "初始"
        sheet1.Cells(3, i2 + 1) = "即时一"
        sheet1.Cells(3, i2 + 2) = "即时二"
        sheet1.Cells(4, i2) = "OK30_1"
        
        sheet1.Range(Cells(2, i2 + 3), Cells(2, i2 + 4)).Merge
        sheet1.Cells(2, i2 + 3) = "Ok30-比较"
        sheet1.Cells(3, i2 + 3) = "即时一"
        sheet1.Cells(3, i2 + 4) = "即时二"

        sheet1.Cells(4, i2 + 3) = "OK30_2"
        
        MsgBox ("OK30分析程序更新完毕！")
    Else
        MsgBox ("OK30分析程序已更新！")
    End If
    
    
    '处理BF1
    tmClBgCol = dataColDict.Item("BF1_1")

    If tmClBgCol = 0 Then
        i2 = dataColDict.Item("OKBF1")
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "BF1-标识"
        sheet1.Cells(3, i2) = "初始"
        sheet1.Cells(3, i2 + 1) = "即时一"
        sheet1.Cells(3, i2 + 2) = "即时二"
        sheet1.Cells(4, i2) = "BF1_1"
        
        sheet1.Range(Cells(2, i2 + 3), Cells(2, i2 + 5)).Merge
        sheet1.Cells(2, i2 + 3) = "BF1-比较"
        sheet1.Cells(3, i2 + 3) = "初始"
        sheet1.Cells(3, i2 + 4) = "即时一"
        sheet1.Cells(3, i2 + 5) = "即时二"

        sheet1.Cells(4, i2 + 3) = "BF1_2"
        
        MsgBox ("BF1分析程序更新完毕！")
    Else
        MsgBox ("BF1分析程序已更新！")
    End If
    
    
    '处理威廉
    tmClBgCol = dataColDict.Item("DATAW_1")

    If tmClBgCol = 0 Then
        i2 = dataColDict.Item("DATAB")
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert

        
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "威廉-初始"
        sheet1.Cells(3, i2) = "胜"
        sheet1.Cells(3, i2 + 1) = "平"
        sheet1.Cells(3, i2 + 2) = "负"
        sheet1.Cells(4, i2) = "DATAW_1"
        
        sheet1.Range(Cells(2, i2 + 3), Cells(2, i2 + 5)).Merge
        sheet1.Cells(2, i2 + 3) = "威廉-即时一"
        sheet1.Cells(3, i2 + 3) = "胜"
        sheet1.Cells(3, i2 + 4) = "平"
        sheet1.Cells(3, i2 + 5) = "负"
        sheet1.Cells(4, i2 + 3) = "DATAW_2"

        sheet1.Range(Cells(2, i2 + 6), Cells(2, i2 + 8)).Merge
        sheet1.Cells(2, i2 + 6) = "威廉-即时二"
        sheet1.Cells(3, i2 + 6) = "胜"
        sheet1.Cells(3, i2 + 7) = "平"
        sheet1.Cells(3, i2 + 8) = "负"
        sheet1.Cells(4, i2 + 6) = "DATAW_3"

        
        MsgBox ("威廉分析程序更新完毕！")
    Else
        MsgBox ("威廉分析程序已更新！")
    End If

    '处理模式8
    tmClBgCol = dataColDict.Item("SCHEMA8_1")

    If tmClBgCol = 0 Then
        i2 = dataColDict.Item("DATAW")
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "模式八并排"
        sheet1.Cells(3, i2) = "初始"
        sheet1.Cells(3, i2 + 1) = "即时一"
        sheet1.Cells(3, i2 + 2) = "即时二"
        sheet1.Cells(4, i2) = "SCHEMA8_1"
        
        
        MsgBox ("SCHEMA8并排  程序更新完毕！")
    Else
        MsgBox ("SCHEMA8并排 程序已更新！")
    End If
    
    '处理模式7
    tmClBgCol = dataColDict.Item("SCHEMA7_1")

    If tmClBgCol = 0 Then
        i2 = dataColDict.Item("SCHEMA8")
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "模式七并排"
        sheet1.Cells(3, i2) = "初始"
        sheet1.Cells(3, i2 + 1) = "即时一"
        sheet1.Cells(3, i2 + 2) = "即时二"
        sheet1.Cells(4, i2) = "SCHEMA7_1"
        
        
        MsgBox ("SCHEMA7并排  程序更新完毕！")
    Else
        MsgBox ("SCHEMA7并排 程序已更新！")
    End If
    
    
    '处理模式6——基于bet365盘口
    tmClBgCol = dataColDict.Item("SCHEMA6_1")

    If tmClBgCol = 0 Then
        i2 = dataColDict.Item("SCHEMA7")
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        
        
        sheet1.Cells(2, i2) = "模式6-Bet365"
        sheet1.Cells(3, i2) = "模式6-Bet365"
        sheet1.Cells(4, i2) = "SCHEMA6_1"
        
        
        MsgBox ("SCHEMA6-Bet365盘口  程序更新完毕！")
    Else
        MsgBox ("SCHEMA6-Bet365盘口 程序已更新！")
    End If
    
    
End Sub

Sub 程序升级20180818()

    Dim sheet1 As Worksheet
    Dim tmClBgCol As Long       '总排名交锋等级数据所在列

    Set sheet1 = ActiveWorkbook.Sheets("综合数据")
    Call 初始化一般字典(dataColDict, sheet1, 4, 0, 1, False)
    
    '找到SCHEMA模式一对应的列，将模式2和模式3定义SCHEMA2,SCHEMA3
    tmClBgCol = dataColDict.Item("SCHEMA1")

    If tmClBgCol = 0 Then
        i2 = dataColDict.Item("SCHEMA")
        sheet1.Cells(4, i2) = "SCHEMA1"
        sheet1.Cells(4, i2 + 1) = "SCHEMA2"
        sheet1.Cells(4, i2 + 2) = "SCHEMA3"
        Call 初始化一般字典(dataColDict, sheet1, 4, 0, 1, False)
    End If
    
    
    '处理模式4
    tmClBgCol = dataColDict.Item("SCHEMA4_1")

    If tmClBgCol = 0 Then
        i2 = dataColDict.Item("SCHEMA5")
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "模式四并排"
        sheet1.Cells(3, i2) = "初始"
        sheet1.Cells(3, i2 + 1) = "即时一"
        sheet1.Cells(3, i2 + 2) = "即时二"
        sheet1.Cells(4, i2) = "SCHEMA4_1"
        
        
        MsgBox ("SCHEMA4并排  程序更新完毕！")
    Else
        MsgBox ("SCHEMA4并排 程序已更新！")
    End If
    
    '处理模式2
    tmClBgCol = dataColDict.Item("SCHEMA2_1")

    If tmClBgCol = 0 Then
        i2 = dataColDict.Item("SCHEMA3")
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "模式二并排"
        sheet1.Cells(3, i2) = "初始"
        sheet1.Cells(3, i2 + 1) = "即时一"
        sheet1.Cells(3, i2 + 2) = "即时二"
        sheet1.Cells(4, i2) = "SCHEMA2_1"
        
        
        MsgBox ("SCHEMA2并排  程序更新完毕！")
    Else
        MsgBox ("SCHEMA2并排 程序已更新！")
    End If
        
    '处理模式1
    tmClBgCol = dataColDict.Item("SCHEMA1_1")

    If tmClBgCol = 0 Then
        i2 = dataColDict.Item("SCHEMA2")
        '加入3列
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        sheet1.Cells.Columns(i2).Insert
        
        sheet1.Range(Cells(2, i2), Cells(2, i2 + 2)).Merge
        sheet1.Cells(2, i2) = "模式一并排"
        sheet1.Cells(3, i2) = "初始"
        sheet1.Cells(3, i2 + 1) = "即时一"
        sheet1.Cells(3, i2 + 2) = "即时二"
        sheet1.Cells(4, i2) = "SCHEMA1_1"
        
        
        MsgBox ("SCHEMA1并排  程序更新完毕！")
    Else
        MsgBox ("SCHEMA1并排 程序已更新！")
    End If
    
    
    
    
End Sub




Sub 网站数据导入测试()
Dim begindate As Date
Dim enddate As Date

    begindate = DateAdd("d", -1, Date)
    enddate = DateAdd("d", 2, Date)
    
    'Call 澳客网必发盈亏(begindate, enddate)
    'Call 澳客网胜负指数(begindate, enddate)
    'Call 澳客网盘口评测(begindate, enddate)
    'Call 澳客网凯利指数(begindate, enddate)
    Call 澳客网数据载入
    MsgBox ("导入完毕！")
End Sub
