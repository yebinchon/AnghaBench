; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_process.c_test_NtSuspendProcess.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_process.c_test_NtSuspendProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"NtResumeProcess failed: %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"wine_suspend_event\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to create event: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"%s tests/process.c dummy_process wine_suspend_event\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"CreateProcess failed with error %u\0A\00", align 1
@WAIT_OBJECT_0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Event was not signaled: %d\0A\00", align 1
@WAIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Expected timeout, got: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Expected count 1, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"NtSuspendThread failed: %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Expected count 0, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Failed to debug process: %d\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [43 x i8] c"WaitForDebugEvent failed, last error %#x.\0A\00", align 1
@OUTPUT_DEBUG_STRING_EVENT = common dso_local global i64 0, align 8
@DBG_CONTINUE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [44 x i8] c"ContinueDebugEvent failed, last error %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_NtSuspendProcess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_NtSuspendProcess(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = call i32 (...) @GetCurrentProcess()
  %17 = call i32 @pNtResumeProcess(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @STATUS_SUCCESS, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @TRUE, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @CreateEventA(i32* null, i32 %24, i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = call i32 @memset(%struct.TYPE_8__* %5, i32 0, i32 4)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 4, i32* %35, align 4
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @CreateProcessA(i32* null, i8* %15, i32* null, i32* null, i32 %38, i32 0, i32* null, i32* null, %struct.TYPE_8__* %5, %struct.TYPE_9__* %3)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @WaitForSingleObject(i32 %43, i32 500)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @WAIT_OBJECT_0, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pNtSuspendProcess(i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @STATUS_SUCCESS, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ResetEvent(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @WaitForSingleObject(i32 %62, i32 200)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @WAIT_TIMEOUT, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @NtResumeThread(i32 %71, i32* %10)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @STATUS_SUCCESS, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @WaitForSingleObject(i32 %84, i32 200)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @WAIT_OBJECT_0, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pNtResumeProcess(i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @STATUS_SUCCESS, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pNtSuspendThread(i32 %102, i32* %10)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @STATUS_SUCCESS, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @ResetEvent(i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @WaitForSingleObject(i32 %117, i32 200)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @WAIT_TIMEOUT, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @ok(i32 %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @pNtResumeProcess(i32 %126)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @STATUS_SUCCESS, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @WaitForSingleObject(i32 %134, i32 200)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @WAIT_OBJECT_0, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @ok(i32 %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @pNtSuspendThread(i32 %143, i32* %10)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @STATUS_SUCCESS, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @ok(i32 %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %10, align 4
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @ok(i32 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @pNtSuspendThread(i32 %157, i32* %10)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @STATUS_SUCCESS, align 4
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @ok(i32 %162, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* %10, align 4
  %166 = icmp eq i32 %165, 1
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @ok(i32 %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @ResetEvent(i32 %170)
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @WaitForSingleObject(i32 %172, i32 200)
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @WAIT_TIMEOUT, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @ok(i32 %177, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @pNtResumeProcess(i32 %181)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @STATUS_SUCCESS, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @ok(i32 %186, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @WaitForSingleObject(i32 %189, i32 200)
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @WAIT_TIMEOUT, align 4
  %193 = icmp eq i32 %191, %192
  %194 = zext i1 %193 to i32
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @ok(i32 %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %195)
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @pNtResumeProcess(i32 %198)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @STATUS_SUCCESS, align 4
  %202 = icmp eq i32 %200, %201
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %6, align 4
  %205 = call i32 @ok(i32 %203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @WaitForSingleObject(i32 %206, i32 200)
  store i32 %207, i32* %11, align 4
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* @WAIT_OBJECT_0, align 4
  %210 = icmp eq i32 %208, %209
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @ok(i32 %211, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %212)
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @DebugActiveProcess(i32 %215)
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %11, align 4
  %218 = call i32 (...) @GetLastError()
  %219 = call i32 @ok(i32 %217, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @ResetEvent(i32 %220)
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @WaitForSingleObject(i32 %222, i32 200)
  store i32 %223, i32* %11, align 4
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* @WAIT_TIMEOUT, align 4
  %226 = icmp eq i32 %224, %225
  %227 = zext i1 %226 to i32
  %228 = load i32, i32* %11, align 4
  %229 = call i32 @ok(i32 %227, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %258, %1
  %231 = load i32, i32* @INFINITE, align 4
  %232 = call i32 @WaitForDebugEvent(%struct.TYPE_10__* %4, i32 %231)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = call i32 (...) @GetLastError()
  %235 = call i32 @ok(i32 %233, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %230
  br label %259

239:                                              ; preds = %230
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @OUTPUT_DEBUG_STRING_EVENT, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %259

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @DBG_CONTINUE, align 4
  %251 = call i32 @ContinueDebugEvent(i32 %247, i32 %249, i32 %250)
  store i32 %251, i32* %11, align 4
  %252 = load i32, i32* %11, align 4
  %253 = call i32 (...) @GetLastError()
  %254 = call i32 @ok(i32 %252, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* %11, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %245
  br label %259

258:                                              ; preds = %245
  br label %230

259:                                              ; preds = %257, %244, %238
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @ResetEvent(i32 %260)
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @WaitForSingleObject(i32 %262, i32 200)
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* @WAIT_TIMEOUT, align 4
  %266 = icmp eq i32 %264, %265
  %267 = zext i1 %266 to i32
  %268 = load i32, i32* %11, align 4
  %269 = call i32 @ok(i32 %267, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %268)
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @pNtResumeProcess(i32 %271)
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* @STATUS_SUCCESS, align 4
  %275 = icmp eq i32 %273, %274
  %276 = zext i1 %275 to i32
  %277 = load i32, i32* %6, align 4
  %278 = call i32 @ok(i32 %276, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %277)
  %279 = load i32, i32* %7, align 4
  %280 = call i32 @WaitForSingleObject(i32 %279, i32 200)
  store i32 %280, i32* %11, align 4
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* @WAIT_TIMEOUT, align 4
  %283 = icmp eq i32 %281, %282
  %284 = zext i1 %283 to i32
  %285 = load i32, i32* %11, align 4
  %286 = call i32 @ok(i32 %284, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %285)
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @NtResumeThread(i32 %288, i32* %10)
  store i32 %289, i32* %6, align 4
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* @STATUS_SUCCESS, align 4
  %292 = icmp eq i32 %290, %291
  %293 = zext i1 %292 to i32
  %294 = load i32, i32* %6, align 4
  %295 = call i32 @ok(i32 %293, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %294)
  %296 = load i32, i32* %10, align 4
  %297 = icmp eq i32 %296, 0
  %298 = zext i1 %297 to i32
  %299 = load i32, i32* %10, align 4
  %300 = call i32 @ok(i32 %298, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %299)
  %301 = load i32, i32* %7, align 4
  %302 = call i32 @WaitForSingleObject(i32 %301, i32 200)
  store i32 %302, i32* %11, align 4
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* @WAIT_TIMEOUT, align 4
  %305 = icmp eq i32 %303, %304
  %306 = zext i1 %305 to i32
  %307 = load i32, i32* %11, align 4
  %308 = call i32 @ok(i32 %306, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %307)
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @DBG_CONTINUE, align 4
  %314 = call i32 @ContinueDebugEvent(i32 %310, i32 %312, i32 %313)
  store i32 %314, i32* %11, align 4
  %315 = load i32, i32* %11, align 4
  %316 = call i32 (...) @GetLastError()
  %317 = call i32 @ok(i32 %315, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i32 %316)
  %318 = load i32, i32* %7, align 4
  %319 = call i32 @WaitForSingleObject(i32 %318, i32 200)
  store i32 %319, i32* %11, align 4
  %320 = load i32, i32* %11, align 4
  %321 = load i32, i32* @WAIT_OBJECT_0, align 4
  %322 = icmp eq i32 %320, %321
  %323 = zext i1 %322 to i32
  %324 = load i32, i32* %11, align 4
  %325 = call i32 @ok(i32 %323, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %324)
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @TerminateProcess(i32 %327, i32 0)
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @CloseHandle(i32 %330)
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @CloseHandle(i32 %333)
  %335 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %335)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pNtResumeProcess(i32) #2

declare dso_local i32 @GetCurrentProcess(...) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @CreateEventA(i32*, i32, i32, i8*) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #2

declare dso_local i32 @WaitForSingleObject(i32, i32) #2

declare dso_local i32 @pNtSuspendProcess(i32) #2

declare dso_local i32 @ResetEvent(i32) #2

declare dso_local i32 @NtResumeThread(i32, i32*) #2

declare dso_local i32 @pNtSuspendThread(i32, i32*) #2

declare dso_local i32 @DebugActiveProcess(i32) #2

declare dso_local i32 @WaitForDebugEvent(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @ContinueDebugEvent(i32, i32, i32) #2

declare dso_local i32 @TerminateProcess(i32, i32) #2

declare dso_local i32 @CloseHandle(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
