; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_AssociateFocus.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_AssociateFocus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_tm = common dso_local global i32 0, align 4
@test_CurrentFocus = common dso_local global i32* null, align 8
@test_PrevFocus = common dso_local global i32* null, align 8
@SINK_OPTIONAL = common dso_local global i8* null, align 8
@test_OnSetFocus = common dso_local global i8* null, align 8
@test_ACP_GetStatus = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"ITfThreadMgr_SetFocus failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"OnSetFocus\00", align 1
@SINK_UNEXPECTED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"CreateDocumentMgr failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@WS_POPUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unable to create window 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Unable to create window 2\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Unable to create window 3\0A\00", align 1
@test_OnInitDocumentMgr = common dso_local global i8* null, align 8
@test_OnPushContext = common dso_local global i8* null, align 8
@FOCUS_IGNORE = common dso_local global i32* null, align 8
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"OnInitDocumentMgr\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"OnPushContext\00", align 1
@test_ACP_RequestLock = common dso_local global i8* null, align 8
@test_ACP_GetSelection = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@test_ShouldDeactivate = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"AssociateFocus failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Expected DocumentMgr not focused\0A\00", align 1
@FOCUS_SAVE = common dso_local global i8* null, align 8
@SINK_SAVE = common dso_local global i8* null, align 8
@SINK_IGNORE = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [36 x i8] c"incorrect old DocumentMgr returned\0A\00", align 1
@test_OnPopContext = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"OnPopContext\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AssociateFocus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AssociateFocus() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @g_tm, align 4
  %11 = call i32 @ITfThreadMgr_GetFocus(i32 %10, i32** %5)
  store i32* null, i32** @test_CurrentFocus, align 8
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** @test_PrevFocus, align 8
  %13 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %13, i8** @test_OnSetFocus, align 8
  %14 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %14, i8** @test_ACP_GetStatus, align 8
  %15 = load i32, i32* @g_tm, align 4
  %16 = call i32 @ITfThreadMgr_SetFocus(i32 %15, i32* null)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @SUCCEEDED(i32 %17)
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @sink_check_ok(i8** @test_OnSetFocus, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** @SINK_UNEXPECTED, align 8
  store i8* %21, i8** @test_ACP_GetStatus, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ITfDocumentMgr_Release(i32* %22)
  %24 = load i32, i32* @g_tm, align 4
  %25 = call i32 @ITfThreadMgr_CreateDocumentMgr(i32 %24, i32** %1)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @SUCCEEDED(i32 %26)
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @g_tm, align 4
  %30 = call i32 @ITfThreadMgr_CreateDocumentMgr(i32 %29, i32** %2)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @SUCCEEDED(i32 %31)
  %33 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @WS_POPUP, align 4
  %35 = call i32* @CreateWindowA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %34, i32 0, i32 0, i32 200, i32 60, i32* null, i32* null, i32* null, i32* null)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* @WS_POPUP, align 4
  %41 = call i32* @CreateWindowA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %40, i32 0, i32 65, i32 200, i32 60, i32* null, i32* null, i32* null, i32* null)
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32, i32* @WS_POPUP, align 4
  %47 = call i32* @CreateWindowA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %46, i32 0, i32 130, i32 200, i32 60, i32* null, i32* null, i32* null, i32* null)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i32 (...) @processPendingMessages()
  %53 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %53, i8** @test_OnInitDocumentMgr, align 8
  %54 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %54, i8** @test_OnPushContext, align 8
  %55 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %55, i8** @test_OnSetFocus, align 8
  store i32* null, i32** @test_PrevFocus, align 8
  %56 = load i32*, i32** @FOCUS_IGNORE, align 8
  store i32* %56, i32** @test_CurrentFocus, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @SW_SHOWNORMAL, align 4
  %59 = call i32 @ShowWindow(i32* %57, i32 %58)
  %60 = load i8*, i8** @SINK_UNEXPECTED, align 8
  store i8* %60, i8** @test_OnSetFocus, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @SetFocus(i32* %61)
  %63 = call i32 @sink_check_ok(i8** @test_OnInitDocumentMgr, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %64 = call i32 @sink_check_ok(i8** @test_OnPushContext, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %65 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %65, i8** @test_OnSetFocus, align 8
  %66 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %66, i8** @test_ACP_RequestLock, align 8
  %67 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %67, i8** @test_ACP_GetSelection, align 8
  %68 = load i32, i32* @g_tm, align 4
  %69 = call i32 @ITfThreadMgr_GetFocus(i32 %68, i32** @test_PrevFocus)
  %70 = load i32*, i32** @FOCUS_IGNORE, align 8
  store i32* %70, i32** @test_CurrentFocus, align 8
  %71 = call i32 (...) @processPendingMessages()
  %72 = call i32 @sink_check_ok(i8** @test_OnSetFocus, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i8*, i8** @SINK_UNEXPECTED, align 8
  store i8* %73, i8** @test_ACP_RequestLock, align 8
  %74 = load i8*, i8** @SINK_UNEXPECTED, align 8
  store i8* %74, i8** @test_ACP_GetSelection, align 8
  %75 = load i32*, i32** %1, align 8
  store i32* %75, i32** @test_CurrentFocus, align 8
  %76 = load i32*, i32** @FOCUS_IGNORE, align 8
  store i32* %76, i32** @test_PrevFocus, align 8
  %77 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %77, i8** @test_OnSetFocus, align 8
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* @test_ShouldDeactivate, align 4
  %79 = load i32, i32* @g_tm, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @ITfThreadMgr_AssociateFocus(i32 %79, i32* %80, i32* %81, i32** %3)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @SUCCEEDED(i32 %83)
  %85 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %86 = call i32 @sink_check_ok(i8** @test_OnSetFocus, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* @test_ShouldDeactivate, align 4
  %88 = call i32 (...) @processPendingMessages()
  %89 = load i32, i32* @g_tm, align 4
  %90 = call i32 @ITfThreadMgr_GetFocus(i32 %89, i32** %4)
  %91 = load i32*, i32** %4, align 8
  %92 = load i32*, i32** %1, align 8
  %93 = icmp eq i32* %91, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %0
  %95 = load i32*, i32** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = icmp eq i32* %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i64 @broken(i32 %98)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %94, %0
  %102 = phi i1 [ true, %0 ], [ %100, %94 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @ITfDocumentMgr_Release(i32* %105)
  %107 = load i32*, i32** %1, align 8
  store i32* %107, i32** @test_CurrentFocus, align 8
  %108 = load i32*, i32** @FOCUS_IGNORE, align 8
  store i32* %108, i32** @test_PrevFocus, align 8
  %109 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %109, i8** @test_OnSetFocus, align 8
  %110 = load i32, i32* @g_tm, align 4
  %111 = load i32*, i32** %1, align 8
  %112 = call i32 @ITfThreadMgr_SetFocus(i32 %110, i32* %111)
  %113 = call i32 @sink_check_ok(i8** @test_OnSetFocus, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @g_tm, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @ITfThreadMgr_AssociateFocus(i32 %114, i32* %115, i32* %116, i32** %3)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @SUCCEEDED(i32 %118)
  %120 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %121 = call i32 (...) @processPendingMessages()
  %122 = load i32, i32* @g_tm, align 4
  %123 = call i32 @ITfThreadMgr_GetFocus(i32 %122, i32** %4)
  %124 = load i32*, i32** %4, align 8
  %125 = load i32*, i32** %1, align 8
  %126 = icmp eq i32* %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @ok(i32 %127, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @ITfDocumentMgr_Release(i32* %129)
  %131 = load i32, i32* @g_tm, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 @ITfThreadMgr_AssociateFocus(i32 %131, i32* %132, i32* %133, i32** %3)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @SUCCEEDED(i32 %135)
  %137 = call i32 @ok(i32 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %138 = call i32 (...) @processPendingMessages()
  %139 = load i32, i32* @g_tm, align 4
  %140 = call i32 @ITfThreadMgr_GetFocus(i32 %139, i32** %4)
  %141 = load i32*, i32** %4, align 8
  %142 = load i32*, i32** %1, align 8
  %143 = icmp eq i32* %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @ok(i32 %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @ITfDocumentMgr_Release(i32* %146)
  %148 = load i8*, i8** @FOCUS_SAVE, align 8
  %149 = bitcast i8* %148 to i32*
  store i32* %149, i32** @test_CurrentFocus, align 8
  %150 = load i8*, i8** @FOCUS_SAVE, align 8
  %151 = bitcast i8* %150 to i32*
  store i32* %151, i32** @test_PrevFocus, align 8
  %152 = load i8*, i8** @SINK_SAVE, align 8
  store i8* %152, i8** @test_OnSetFocus, align 8
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* @test_ShouldDeactivate, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* @SW_SHOWNORMAL, align 4
  %156 = call i32 @ShowWindow(i32* %154, i32 %155)
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @SetFocus(i32* %157)
  %159 = load i32*, i32** %1, align 8
  %160 = load i32*, i32** %2, align 8
  %161 = call i32 @sink_check_saved(i8** @test_OnSetFocus, i32* %159, i32* %160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %162 = load i32*, i32** @FOCUS_IGNORE, align 8
  store i32* %162, i32** @test_CurrentFocus, align 8
  %163 = load i32*, i32** @FOCUS_IGNORE, align 8
  store i32* %163, i32** @test_PrevFocus, align 8
  %164 = load i8*, i8** @SINK_IGNORE, align 8
  store i8* %164, i8** @test_OnSetFocus, align 8
  %165 = load i32, i32* @FALSE, align 4
  store i32 %165, i32* @test_ShouldDeactivate, align 4
  %166 = call i32 (...) @processPendingMessages()
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* @SW_SHOWNORMAL, align 4
  %169 = call i32 @ShowWindow(i32* %167, i32 %168)
  %170 = load i32*, i32** %8, align 8
  %171 = call i32 @SetFocus(i32* %170)
  %172 = call i32 (...) @processPendingMessages()
  %173 = load i8*, i8** @FOCUS_SAVE, align 8
  %174 = bitcast i8* %173 to i32*
  store i32* %174, i32** @test_CurrentFocus, align 8
  %175 = load i8*, i8** @FOCUS_SAVE, align 8
  %176 = bitcast i8* %175 to i32*
  store i32* %176, i32** @test_PrevFocus, align 8
  %177 = load i8*, i8** @SINK_SAVE, align 8
  store i8* %177, i8** @test_OnSetFocus, align 8
  %178 = load i32*, i32** %6, align 8
  %179 = call i32 @SetFocus(i32* %178)
  %180 = call i32 (...) @processPendingMessages()
  %181 = load i32*, i32** %2, align 8
  %182 = load i32*, i32** %1, align 8
  %183 = call i32 @sink_check_saved(i8** @test_OnSetFocus, i32* %181, i32* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %184 = load i32, i32* @g_tm, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = call i32 @ITfThreadMgr_AssociateFocus(i32 %184, i32* %185, i32* null, i32** %3)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @SUCCEEDED(i32 %187)
  %189 = call i32 @ok(i32 %188, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %190 = load i32*, i32** %3, align 8
  %191 = load i32*, i32** %2, align 8
  %192 = icmp eq i32* %190, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @ok(i32 %193, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %195 = load i32*, i32** %3, align 8
  %196 = call i32 @ITfDocumentMgr_Release(i32* %195)
  %197 = load i32*, i32** %5, align 8
  store i32* %197, i32** @test_CurrentFocus, align 8
  %198 = load i32*, i32** %1, align 8
  store i32* %198, i32** @test_PrevFocus, align 8
  %199 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %199, i8** @test_OnSetFocus, align 8
  %200 = load i8*, i8** @SINK_IGNORE, align 8
  store i8* %200, i8** @test_ACP_GetStatus, align 8
  %201 = load i32, i32* @g_tm, align 4
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @ITfThreadMgr_SetFocus(i32 %201, i32* %202)
  %204 = call i32 @sink_check_ok(i8** @test_OnSetFocus, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %205 = load i8*, i8** @FOCUS_SAVE, align 8
  %206 = bitcast i8* %205 to i32*
  store i32* %206, i32** @test_CurrentFocus, align 8
  %207 = load i8*, i8** @FOCUS_SAVE, align 8
  %208 = bitcast i8* %207 to i32*
  store i32* %208, i32** @test_PrevFocus, align 8
  %209 = load i8*, i8** @SINK_SAVE, align 8
  store i8* %209, i8** @test_OnSetFocus, align 8
  %210 = load i32*, i32** %8, align 8
  %211 = call i32 @SetFocus(i32* %210)
  %212 = call i32 (...) @processPendingMessages()
  %213 = load i32*, i32** %5, align 8
  %214 = load i32*, i32** @FOCUS_IGNORE, align 8
  %215 = call i32 @sink_check_saved(i8** @test_OnSetFocus, i32* %213, i32* %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %216 = load i32, i32* @g_tm, align 4
  %217 = load i32*, i32** %7, align 8
  %218 = call i32 @ITfThreadMgr_AssociateFocus(i32 %216, i32* %217, i32* null, i32** %3)
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @SUCCEEDED(i32 %219)
  %221 = call i32 @ok(i32 %220, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %222 = load i32*, i32** %3, align 8
  %223 = load i32*, i32** %2, align 8
  %224 = icmp eq i32* %222, %223
  %225 = zext i1 %224 to i32
  %226 = call i32 @ok(i32 %225, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %227 = load i32*, i32** %3, align 8
  %228 = call i32 @ITfDocumentMgr_Release(i32* %227)
  %229 = load i32, i32* @g_tm, align 4
  %230 = load i32*, i32** %6, align 8
  %231 = call i32 @ITfThreadMgr_AssociateFocus(i32 %229, i32* %230, i32* null, i32** %3)
  store i32 %231, i32* %9, align 4
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @SUCCEEDED(i32 %232)
  %234 = call i32 @ok(i32 %233, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %235 = load i32*, i32** %3, align 8
  %236 = load i32*, i32** %1, align 8
  %237 = icmp eq i32* %235, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @ok(i32 %238, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %240 = load i32*, i32** %3, align 8
  %241 = call i32 @ITfDocumentMgr_Release(i32* %240)
  %242 = load i8*, i8** @SINK_IGNORE, align 8
  store i8* %242, i8** @test_OnSetFocus, align 8
  %243 = load i32*, i32** @FOCUS_IGNORE, align 8
  store i32* %243, i32** @test_CurrentFocus, align 8
  %244 = load i32*, i32** @FOCUS_IGNORE, align 8
  store i32* %244, i32** @test_PrevFocus, align 8
  %245 = load i32*, i32** %7, align 8
  %246 = call i32 @SetFocus(i32* %245)
  %247 = call i32 (...) @processPendingMessages()
  %248 = load i32*, i32** %6, align 8
  %249 = call i32 @SetFocus(i32* %248)
  %250 = call i32 (...) @processPendingMessages()
  %251 = load i8*, i8** @SINK_UNEXPECTED, align 8
  store i8* %251, i8** @test_OnSetFocus, align 8
  %252 = load i32*, i32** %1, align 8
  %253 = call i32 @ITfDocumentMgr_Release(i32* %252)
  %254 = load i32*, i32** %2, align 8
  %255 = call i32 @ITfDocumentMgr_Release(i32* %254)
  %256 = load i32*, i32** %5, align 8
  store i32* %256, i32** @test_CurrentFocus, align 8
  %257 = load i32*, i32** @FOCUS_IGNORE, align 8
  store i32* %257, i32** @test_PrevFocus, align 8
  %258 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %258, i8** @test_OnSetFocus, align 8
  %259 = load i8*, i8** @SINK_IGNORE, align 8
  store i8* %259, i8** @test_ACP_GetStatus, align 8
  %260 = load i32, i32* @g_tm, align 4
  %261 = load i32*, i32** %5, align 8
  %262 = call i32 @ITfThreadMgr_SetFocus(i32 %260, i32* %261)
  %263 = call i32 @sink_check_ok(i8** @test_OnSetFocus, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %264 = load i8*, i8** @SINK_IGNORE, align 8
  store i8* %264, i8** @test_OnSetFocus, align 8
  %265 = load i32*, i32** @FOCUS_IGNORE, align 8
  store i32* %265, i32** @test_CurrentFocus, align 8
  %266 = load i32*, i32** @FOCUS_IGNORE, align 8
  store i32* %266, i32** @test_PrevFocus, align 8
  %267 = load i32*, i32** %6, align 8
  %268 = call i32 @DestroyWindow(i32* %267)
  %269 = load i32*, i32** %7, align 8
  %270 = call i32 @DestroyWindow(i32* %269)
  %271 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %271, i8** @test_OnPopContext, align 8
  %272 = load i8*, i8** @SINK_OPTIONAL, align 8
  store i8* %272, i8** @test_OnSetFocus, align 8
  %273 = load i32, i32* @g_tm, align 4
  %274 = call i32 @ITfThreadMgr_GetFocus(i32 %273, i32** @test_PrevFocus)
  store i32* null, i32** @test_CurrentFocus, align 8
  %275 = load i32, i32* @TRUE, align 4
  store i32 %275, i32* @test_ShouldDeactivate, align 4
  %276 = load i32*, i32** %8, align 8
  %277 = call i32 @DestroyWindow(i32* %276)
  %278 = load i32, i32* @FALSE, align 4
  store i32 %278, i32* @test_ShouldDeactivate, align 4
  %279 = call i32 @sink_check_ok(i8** @test_OnSetFocus, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %280 = call i32 @sink_check_ok(i8** @test_OnPopContext, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ITfThreadMgr_GetFocus(i32, i32**) #1

declare dso_local i32 @ITfThreadMgr_SetFocus(i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @sink_check_ok(i8**, i8*) #1

declare dso_local i32 @ITfDocumentMgr_Release(i32*) #1

declare dso_local i32 @ITfThreadMgr_CreateDocumentMgr(i32, i32**) #1

declare dso_local i32* @CreateWindowA(i8*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @processPendingMessages(...) #1

declare dso_local i32 @ShowWindow(i32*, i32) #1

declare dso_local i32 @SetFocus(i32*) #1

declare dso_local i32 @ITfThreadMgr_AssociateFocus(i32, i32*, i32*, i32**) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @sink_check_saved(i8**, i32*, i32*, i8*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
