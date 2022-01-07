; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_interthread_messages.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_interthread_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32 }
%struct.wnd_event = type { i64, i32*, i32*, i32* }

@.str = private unnamed_addr constant [47 x i8] c"skipping interthread message test under win9x\0A\00", align 1
@thread_proc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CreateThread failed, error %d\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"WaitForSingleObject failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"DestroyWindow succeeded\0A\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"wrong error code %d\0A\00", align 1
@GWLP_WNDPROC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"GetWindowLongPtrA(GWLP_WNDPROC) error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"window caption text\00", align 1
@WM_GETTEXT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"CallWindowProcA(WM_GETTEXT) error %d, len %d, expected len %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"window text mismatch\0A\00", align 1
@ERROR_MESSAGE_SYNC_ONLY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [83 x i8] c"DispatchMessageA(WM_GETTEXT) succeeded on another thread window: ret %d, error %d\0A\00", align 1
@WM_TIMER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [78 x i8] c"DispatchMessageA(WM_TIMER) failed on another thread window: ret %d, error %d\0A\00", align 1
@WM_QUIT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"PostMessageA(WM_QUIT) error %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"window should be destroyed on thread exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"TestParentClass\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"Test parent\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"Failed to create parent window\0A\00", align 1
@log_all_parent_messages = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@create_child_thread = common dso_local global i32 0, align 4
@QS_SENDMESSAGE = common dso_local global i32 0, align 4
@PM_REMOVE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"MsgWaitForMultipleObjects failed %x\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"WaitForSingleObject failed %x\0A\00", align 1
@WmExitThreadSeq = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"destroy child on thread exit\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"testdep1.manifest\00", align 1
@manifest_dep = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"main.manifest\00", align 1
@manifest_main = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"GetCurrentActCtx failed: %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"active context %p\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"activation failed: %u\0A\00", align 1
@WM_USER = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [27 x i8] c"thread window returned %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"DeactivateActCtx failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_interthread_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_interthread_messages() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wnd_event, align 8
  %13 = alloca i32, align 4
  %14 = call i8* @CreateEventW(i32* null, i32 0, i32 0, i32* null)
  %15 = bitcast i8* %14 to i32*
  %16 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 1
  store i32* %15, i32** %16, align 8
  %17 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %0
  %21 = call i32 @win_skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %365

22:                                               ; preds = %0
  %23 = load i32, i32* @thread_proc, align 4
  %24 = call i32* @CreateThread(i32* null, i32 0, i32 %23, %struct.wnd_event* %12, i32 0, i32* %6)
  store i32* %24, i32** %1, align 8
  %25 = load i32*, i32** %1, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @INFINITE, align 4
  %33 = call i32 @WaitForSingleObject(i32* %31, i32 %32)
  %34 = load i32, i32* @WAIT_OBJECT_0, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @CloseHandle(i32* %39)
  %41 = call i32 @SetLastError(i32 -559038737)
  %42 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @DestroyWindow(i64 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %49 = call i32 (...) @GetLastError()
  %50 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %22
  %53 = call i32 (...) @GetLastError()
  %54 = icmp eq i32 %53, -559038737
  br label %55

55:                                               ; preds = %52, %22
  %56 = phi i1 [ true, %22 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 (...) @GetLastError()
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @GWLP_WNDPROC, align 4
  %63 = call i64 @GetWindowLongPtrA(i64 %61, i32 %62)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 (...) @GetLastError()
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = call i32 @lstrlenA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 %70, i32* %11, align 4
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %72 = call i32 @memset(i8* %71, i32 0, i32 256)
  %73 = call i32 @SetLastError(i32 -559038737)
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @WM_GETTEXT, align 4
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %79 = ptrtoint i8* %78 to i64
  %80 = call i32 @CallWindowProcA(i32* %74, i64 %76, i32 %77, i32 256, i64 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 (...) @GetLastError()
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %85, i32 %86, i32 %87)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %90 = call i32 @lstrcmpA(i8* %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %95 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %96, i64* %97, align 8
  %98 = load i32, i32* @WM_GETTEXT, align 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 256, i32* %100, align 8
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %102 = ptrtoint i8* %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %105 = call i32 @memset(i8* %104, i32 0, i32 256)
  %106 = call i32 @SetLastError(i32 -559038737)
  %107 = call i32 @DispatchMessageA(%struct.TYPE_4__* %8)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %55
  %111 = call i32 (...) @GetLastError()
  %112 = load i32, i32* @ERROR_MESSAGE_SYNC_ONLY, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110, %55
  %115 = load i32, i32* %10, align 4
  %116 = call i64 @broken(i32 %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %114, %110
  %119 = phi i1 [ true, %110 ], [ %117, %114 ]
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %10, align 4
  %122 = call i32 (...) @GetLastError()
  %123 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %121, i32 %122)
  %124 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i64 %125, i64* %126, align 8
  %127 = load i32, i32* @WM_TIMER, align 4
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i32 %127, i32* %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 0, i32* %129, align 8
  %130 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @GWLP_WNDPROC, align 4
  %133 = call i64 @GetWindowLongPtrA(i64 %131, i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i64 %133, i64* %134, align 8
  %135 = call i32 @SetLastError(i32 -559038737)
  %136 = call i32 @DispatchMessageA(%struct.TYPE_4__* %8)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %118
  %140 = call i32 (...) @GetLastError()
  %141 = icmp eq i32 %140, -559038737
  br label %142

142:                                              ; preds = %139, %118
  %143 = phi i1 [ false, %118 ], [ %141, %139 ]
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (...) @GetLastError()
  %147 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0), i32 %145, i32 %146)
  %148 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @WM_QUIT, align 8
  %151 = call i32 @PostMessageA(i64 %149, i64 %150, i32 0, i64 0)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 (...) @GetLastError()
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %153)
  %155 = load i32*, i32** %1, align 8
  %156 = load i32, i32* @INFINITE, align 4
  %157 = call i32 @WaitForSingleObject(i32* %155, i32 %156)
  %158 = load i32, i32* @WAIT_OBJECT_0, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %162 = load i32*, i32** %1, align 8
  %163 = call i32 @CloseHandle(i32* %162)
  %164 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @IsWindow(i64 %165)
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %171 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %172 = load i32, i32* @WS_VISIBLE, align 4
  %173 = or i32 %171, %172
  %174 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %173, i32 100, i32 100, i32 200, i32 200, i32 0, i32 0, i32 0, i32* null)
  %175 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  store i64 %174, i64* %175, align 8
  %176 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %181 = call i32 (...) @flush_events()
  %182 = call i32 (...) @flush_sequence()
  %183 = load i32, i32* @log_all_parent_messages, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @log_all_parent_messages, align 4
  %185 = load i32, i32* @TRUE, align 4
  %186 = load i32, i32* @FALSE, align 4
  %187 = call i8* @CreateEventA(i32* null, i32 %185, i32 %186, i32* null)
  %188 = bitcast i8* %187 to i32*
  %189 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 1
  store i32* %188, i32** %189, align 8
  %190 = load i32, i32* @TRUE, align 4
  %191 = load i32, i32* @FALSE, align 4
  %192 = call i8* @CreateEventA(i32* null, i32 %190, i32 %191, i32* null)
  %193 = bitcast i8* %192 to i32*
  %194 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 2
  store i32* %193, i32** %194, align 8
  %195 = load i32, i32* @create_child_thread, align 4
  %196 = call i32* @CreateThread(i32* null, i32 0, i32 %195, %struct.wnd_event* %12, i32 0, i32* %6)
  store i32* %196, i32** %1, align 8
  br label %197

197:                                              ; preds = %212, %142
  %198 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 1
  %199 = load i32, i32* @FALSE, align 4
  %200 = load i32, i32* @QS_SENDMESSAGE, align 4
  %201 = call i32 @MsgWaitForMultipleObjects(i32 1, i32** %198, i32 %199, i32 1000, i32 %200)
  store i32 %201, i32* %13, align 4
  %202 = load i32, i32* %13, align 4
  %203 = icmp ne i32 %202, 1
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  br label %213

205:                                              ; preds = %197
  br label %206

206:                                              ; preds = %210, %205
  %207 = load i32, i32* @PM_REMOVE, align 4
  %208 = call i64 @PeekMessageA(%struct.TYPE_4__* %8, i32 0, i32 0, i32 0, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = call i32 @DispatchMessageA(%struct.TYPE_4__* %8)
  br label %206

212:                                              ; preds = %206
  br label %197

213:                                              ; preds = %204
  %214 = load i32, i32* %13, align 4
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %13, align 4
  %219 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %218)
  %220 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @SetEvent(i32* %221)
  %223 = load i32*, i32** %1, align 8
  %224 = call i32 @WaitForSingleObject(i32* %223, i32 5000)
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %13, align 4
  %230 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %229)
  %231 = load i32*, i32** %1, align 8
  %232 = call i32 @CloseHandle(i32* %231)
  %233 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @WaitForSingleObject(i32* %234, i32 5000)
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp ne i32 %236, 0
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = load i32, i32* %13, align 4
  %241 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %240)
  %242 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @CloseHandle(i32* %243)
  %245 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = call i32 @CloseHandle(i32* %246)
  %248 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @CloseHandle(i32* %249)
  %251 = call i32 (...) @flush_events()
  %252 = load i32, i32* @WmExitThreadSeq, align 4
  %253 = load i32, i32* @FALSE, align 4
  %254 = call i32 @ok_sequence(i32 %252, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* @log_all_parent_messages, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* @log_all_parent_messages, align 4
  %257 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @DestroyWindow(i64 %258)
  %260 = load i32, i32* @manifest_dep, align 4
  %261 = call i32 @create_manifest_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* @manifest_main, align 4
  %263 = call i32 @create_manifest_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %262)
  %264 = call i32* @test_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  store i32* %264, i32** %2, align 8
  %265 = call i32 @DeleteFileA(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %266 = call i32 @DeleteFileA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %267 = call i32 @pGetCurrentActCtx(i32** %3)
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* %13, align 4
  %269 = call i32 (...) @GetLastError()
  %270 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %269)
  %271 = load i32*, i32** %3, align 8
  %272 = icmp eq i32* %271, null
  %273 = zext i1 %272 to i32
  %274 = load i32*, i32** %3, align 8
  %275 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32* %274)
  %276 = call i8* @CreateEventW(i32* null, i32 0, i32 0, i32* null)
  %277 = bitcast i8* %276 to i32*
  %278 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 1
  store i32* %277, i32** %278, align 8
  %279 = load i32, i32* @thread_proc, align 4
  %280 = call i32* @CreateThread(i32* null, i32 0, i32 %279, %struct.wnd_event* %12, i32 0, i32* %6)
  store i32* %280, i32** %1, align 8
  %281 = load i32*, i32** %1, align 8
  %282 = icmp ne i32* %281, null
  %283 = zext i1 %282 to i32
  %284 = call i32 (...) @GetLastError()
  %285 = call i32 (i32, i8*, ...) @ok(i32 %283, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %284)
  %286 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* @INFINITE, align 4
  %289 = call i32 @WaitForSingleObject(i32* %287, i32 %288)
  %290 = load i32, i32* @WAIT_OBJECT_0, align 4
  %291 = icmp eq i32 %289, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 (i32, i8*, ...) @ok(i32 %292, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %294 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @CloseHandle(i32* %295)
  %297 = load i32*, i32** %2, align 8
  %298 = call i32 @pActivateActCtx(i32* %297, i32* %5)
  store i32 %298, i32* %13, align 4
  %299 = load i32, i32* %13, align 4
  %300 = call i32 (...) @GetLastError()
  %301 = call i32 (i32, i8*, ...) @ok(i32 %299, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %300)
  store i32* null, i32** %3, align 8
  %302 = call i32 @pGetCurrentActCtx(i32** %3)
  store i32 %302, i32* %13, align 4
  %303 = load i32, i32* %13, align 4
  %304 = call i32 (...) @GetLastError()
  %305 = call i32 (i32, i8*, ...) @ok(i32 %303, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %304)
  %306 = load i32*, i32** %3, align 8
  %307 = icmp ne i32* %306, null
  %308 = zext i1 %307 to i32
  %309 = load i32*, i32** %3, align 8
  %310 = call i32 (i32, i8*, ...) @ok(i32 %308, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32* %309)
  %311 = load i32*, i32** %3, align 8
  %312 = call i32 @pReleaseActCtx(i32* %311)
  %313 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @WM_USER, align 8
  %316 = add nsw i64 %315, 10
  %317 = call i32 @SendMessageA(i64 %314, i64 %316, i32 0, i32 0)
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* %13, align 4
  %319 = load i32, i32* %13, align 4
  %320 = call i32 (i32, i8*, ...) @ok(i32 %318, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 %319)
  %321 = call i8* @CreateEventW(i32* null, i32 0, i32 0, i32* null)
  %322 = bitcast i8* %321 to i32*
  store i32* %322, i32** %4, align 8
  %323 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @WM_USER, align 8
  %326 = add nsw i64 %325, 10
  %327 = load i32*, i32** %4, align 8
  %328 = ptrtoint i32* %327 to i64
  %329 = call i32 @PostMessageA(i64 %324, i64 %326, i32 0, i64 %328)
  store i32 %329, i32* %13, align 4
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* %13, align 4
  %332 = call i32 (i32, i8*, ...) @ok(i32 %330, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 %331)
  %333 = load i32*, i32** %4, align 8
  %334 = load i32, i32* @INFINITE, align 4
  %335 = call i32 @WaitForSingleObject(i32* %333, i32 %334)
  %336 = load i32, i32* @WAIT_OBJECT_0, align 4
  %337 = icmp eq i32 %335, %336
  %338 = zext i1 %337 to i32
  %339 = call i32 (i32, i8*, ...) @ok(i32 %338, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %340 = load i32*, i32** %4, align 8
  %341 = call i32 @CloseHandle(i32* %340)
  %342 = getelementptr inbounds %struct.wnd_event, %struct.wnd_event* %12, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @WM_QUIT, align 8
  %345 = call i32 @PostMessageA(i64 %343, i64 %344, i32 0, i64 0)
  store i32 %345, i32* %13, align 4
  %346 = load i32, i32* %13, align 4
  %347 = call i32 (...) @GetLastError()
  %348 = call i32 (i32, i8*, ...) @ok(i32 %346, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %347)
  %349 = load i32*, i32** %1, align 8
  %350 = load i32, i32* @INFINITE, align 4
  %351 = call i32 @WaitForSingleObject(i32* %349, i32 %350)
  %352 = load i32, i32* @WAIT_OBJECT_0, align 4
  %353 = icmp eq i32 %351, %352
  %354 = zext i1 %353 to i32
  %355 = call i32 (i32, i8*, ...) @ok(i32 %354, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %356 = load i32*, i32** %1, align 8
  %357 = call i32 @CloseHandle(i32* %356)
  %358 = load i32, i32* %5, align 4
  %359 = call i32 @pDeactivateActCtx(i32 0, i32 %358)
  store i32 %359, i32* %13, align 4
  %360 = load i32, i32* %13, align 4
  %361 = call i32 (...) @GetLastError()
  %362 = call i32 (i32, i8*, ...) @ok(i32 %360, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i32 %361)
  %363 = load i32*, i32** %2, align 8
  %364 = call i32 @pReleaseActCtx(i32* %363)
  br label %365

365:                                              ; preds = %213, %20
  ret void
}

declare dso_local i8* @CreateEventW(i32*, i32, i32, i32*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32* @CreateThread(i32*, i32, i32, %struct.wnd_event*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @WaitForSingleObject(i32*, i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i64 @GetWindowLongPtrA(i64, i32) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @CallWindowProcA(i32*, i64, i32, i32, i64) #1

declare dso_local i32 @lstrcmpA(i8*, i8*) #1

declare dso_local i32 @DispatchMessageA(%struct.TYPE_4__*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @PostMessageA(i64, i64, i32, i64) #1

declare dso_local i32 @IsWindow(i64) #1

declare dso_local i64 @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @flush_events(...) #1

declare dso_local i32 @flush_sequence(...) #1

declare dso_local i8* @CreateEventA(i32*, i32, i32, i32*) #1

declare dso_local i32 @MsgWaitForMultipleObjects(i32, i32**, i32, i32, i32) #1

declare dso_local i64 @PeekMessageA(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @SetEvent(i32*) #1

declare dso_local i32 @ok_sequence(i32, i8*, i32) #1

declare dso_local i32 @create_manifest_file(i8*, i32) #1

declare dso_local i32* @test_create(i8*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i32 @pGetCurrentActCtx(i32**) #1

declare dso_local i32 @pActivateActCtx(i32*, i32*) #1

declare dso_local i32 @pReleaseActCtx(i32*) #1

declare dso_local i32 @SendMessageA(i64, i64, i32, i32) #1

declare dso_local i32 @pDeactivateActCtx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
