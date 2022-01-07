; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_quit_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_quit_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.recvd_message = type { i32, i32, i32, i32, i32, i8* }

@PM_QS_SENDMESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"got %x message\0A\00", align 1
@PM_NOREMOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"PeekMessage failed with error %d\0A\00", align 1
@WM_QUIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Received message 0x%04x instead of WM_QUIT\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"wParam was 0x%lx instead of 0xbeef\0A\00", align 1
@WM_USER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"PostMessage failed with error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"GetMessage failed with error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Received message 0x%04x instead of WM_USER\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"GetMessage return %d with error %d instead of FALSE\0A\00", align 1
@PM_REMOVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Received WM_QUIT again\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"wParam was 0x%lx instead of 0xdead\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"TEST_EMPTY_DIALOG\00", align 1
@wm_quit_dlg_proc = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"expected 1, got %d\0A\00", align 1
@WmQuitDialogSeq = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"WmQuitDialogSeq\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"PeekMessage failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"wParam was 0x%lx instead of 0x1234\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"lParam was 0x%lx instead of 0\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"StopQuitClass\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Stop Quit Test\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@posted = common dso_local global i32 0, align 4
@wparam = common dso_local global i32 0, align 4
@lparam = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"stop/quit\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"The WM_QUIT hwnd was %p instead of NULL\0A\00", align 1
@WmStopQuitSeq = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"WmStopQuitSeq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_quit_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_quit_message() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.recvd_message, align 8
  %4 = call i32 (...) @flush_events()
  %5 = call i32 @PostQuitMessage(i32 48879)
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @PM_QS_SENDMESSAGE, align 4
  %8 = call i32 @PeekMessageA(%struct.TYPE_6__* %1, i32* null, i32 0, i32 0, i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @PM_NOREMOVE, align 4
  %17 = call i32 @PeekMessageA(%struct.TYPE_6__* %1, i32* null, i32 0, i32 0, i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (...) @GetLastError()
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WM_QUIT, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 48879
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = call i32 (...) @GetCurrentThreadId()
  %37 = load i32, i32* @WM_USER, align 4
  %38 = call i32 @PostThreadMessageA(i32 %36, i32 %37, i32 0, i32 0)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (...) @GetLastError()
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = call i32 @GetMessageA(%struct.TYPE_6__* %1, i32* null, i32 0, i32 0)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp sgt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WM_USER, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = call i32 @GetMessageA(%struct.TYPE_6__* %1, i32* null, i32 0, i32 0)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %2, align 4
  %62 = call i32 (...) @GetLastError()
  %63 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %61, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @WM_QUIT, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 48879
  %75 = zext i1 %74 to i32
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @PM_REMOVE, align 4
  %80 = call i32 @PeekMessageA(%struct.TYPE_6__* %1, i32* null, i32 0, i32 0, i32 %79)
  store i32 %80, i32* %2, align 4
  %81 = load i32, i32* %2, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @WM_QUIT, align 4
  %87 = icmp ne i32 %85, %86
  br label %88

88:                                               ; preds = %83, %0
  %89 = phi i1 [ true, %0 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %92 = call i32 (...) @GetCurrentThreadId()
  %93 = load i32, i32* @WM_QUIT, align 4
  %94 = call i32 @PostThreadMessageA(i32 %92, i32 %93, i32 57005, i32 0)
  %95 = load i32, i32* @PM_NOREMOVE, align 4
  %96 = call i32 @PeekMessageA(%struct.TYPE_6__* %1, i32* null, i32 0, i32 0, i32 %95)
  store i32 %96, i32* %2, align 4
  %97 = load i32, i32* %2, align 4
  %98 = call i32 (...) @GetLastError()
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @WM_QUIT, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 57005
  %111 = zext i1 %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %113)
  %115 = call i32 (...) @GetCurrentThreadId()
  %116 = load i32, i32* @WM_USER, align 4
  %117 = call i32 @PostThreadMessageA(i32 %115, i32 %116, i32 0, i32 0)
  store i32 %117, i32* %2, align 4
  %118 = load i32, i32* %2, align 4
  %119 = call i32 (...) @GetLastError()
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = call i32 @GetMessageA(%struct.TYPE_6__* %1, i32* null, i32 0, i32 0)
  store i32 %121, i32* %2, align 4
  %122 = load i32, i32* %2, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %2, align 4
  %127 = call i32 (...) @GetLastError()
  %128 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %126, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @WM_QUIT, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 57005
  %140 = zext i1 %139 to i32
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %142)
  %144 = call i32 @GetMessageA(%struct.TYPE_6__* %1, i32* null, i32 0, i32 0)
  store i32 %144, i32* %2, align 4
  %145 = load i32, i32* %2, align 4
  %146 = icmp sgt i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 (...) @GetLastError()
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @WM_USER, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  %158 = call i32 (...) @flush_events()
  %159 = call i32 (...) @flush_sequence()
  %160 = call i32 @GetModuleHandleA(i32* null)
  %161 = load i32, i32* @wm_quit_dlg_proc, align 4
  %162 = call i32 @DialogBoxParamA(i32 %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 %161, i32 0)
  store i32 %162, i32* %2, align 4
  %163 = load i32, i32* %2, align 4
  %164 = icmp eq i32 %163, 1
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %2, align 4
  %167 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @WmQuitDialogSeq, align 4
  %169 = load i32, i32* @FALSE, align 4
  %170 = call i32 @ok_sequence(i32 %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %169)
  %171 = call i32 @memset(%struct.TYPE_6__* %1, i32 171, i32 16)
  %172 = load i32, i32* @PM_REMOVE, align 4
  %173 = call i32 @PeekMessageA(%struct.TYPE_6__* %1, i32* null, i32 0, i32 0, i32 %172)
  store i32 %173, i32* %2, align 4
  %174 = load i32, i32* %2, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @WM_QUIT, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %182)
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 4660
  %187 = zext i1 %186 to i32
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 %189)
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 0
  %194 = zext i1 %193 to i32
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %199 = call i32 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %198, i32 0, i32 0, i32 100, i32 100, i32* null, i32* null, i32* null, i32* null)
  %200 = call i32 (...) @flush_sequence()
  br label %201

201:                                              ; preds = %238, %88
  %202 = load i32, i32* @PM_REMOVE, align 4
  %203 = call i32 @PeekMessageA(%struct.TYPE_6__* %1, i32* null, i32 0, i32 0, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %241

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %3, i32 0, i32 0
  store i32 %207, i32* %208, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %3, i32 0, i32 1
  store i32 %210, i32* %211, align 4
  %212 = load i32, i32* @posted, align 4
  %213 = load i32, i32* @wparam, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @lparam, align 4
  %216 = or i32 %214, %215
  %217 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %3, i32 0, i32 2
  store i32 %216, i32* %217, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %3, i32 0, i32 3
  store i32 %219, i32* %220, align 4
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %3, i32 0, i32 4
  store i32 %222, i32* %223, align 8
  %224 = getelementptr inbounds %struct.recvd_message, %struct.recvd_message* %3, i32 0, i32 5
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %224, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @WM_QUIT, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %205
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %236)
  br label %238

238:                                              ; preds = %229, %205
  %239 = call i32 @add_message(%struct.recvd_message* %3)
  %240 = call i32 @DispatchMessageA(%struct.TYPE_6__* %1)
  br label %201

241:                                              ; preds = %201
  %242 = load i32, i32* @WmStopQuitSeq, align 4
  %243 = load i32, i32* @FALSE, align 4
  %244 = call i32 @ok_sequence(i32 %242, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %243)
  ret void
}

declare dso_local i32 @flush_events(...) #1

declare dso_local i32 @PostQuitMessage(i32) #1

declare dso_local i32 @PeekMessageA(%struct.TYPE_6__*, i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @PostThreadMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i32 @GetMessageA(%struct.TYPE_6__*, i32*, i32, i32) #1

declare dso_local i32 @flush_sequence(...) #1

declare dso_local i32 @DialogBoxParamA(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @ok_sequence(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @add_message(%struct.recvd_message*) #1

declare dso_local i32 @DispatchMessageA(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
