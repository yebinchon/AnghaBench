; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_process_debug_port.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_process_debug_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"debuggee\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DEBUG_PROCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"CreateProcess failed, last error %#x.\0A\00", align 1
@ProcessDebugPort = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Expected STATUS_INFO_LENGTH_MISMATCH, got %#x.\0A\00", align 1
@STATUS_INVALID_HANDLE = common dso_local global i64 0, align 8
@STATUS_ACCESS_VIOLATION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Expected STATUS_INVALID_HANDLE, got %#x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Expected STATUS_ACCESS_VIOLATION, got %#x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"NtQueryInformationProcess failed, status %#x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Expected port 0, got %#lx.\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Expected port %#lx, got %#lx.\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"WaitForDebugEvent failed, last error %#x.\0A\00", align 1
@EXIT_PROCESS_DEBUG_EVENT = common dso_local global i64 0, align 8
@DBG_CONTINUE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"ContinueDebugEvent failed, last error %#x.\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"CloseHandle failed, last error %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @test_query_process_debug_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_process_debug_port(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i64 3735928559, i64* %5, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 8, i32* %26, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32, i32* @DEBUG_PROCESS, align 4
  %29 = call i32 @CreateProcessA(i32* null, i8* %17, i32* null, i32* null, i32 %27, i32 %28, i32* null, i32* null, %struct.TYPE_7__* %9, %struct.TYPE_8__* %8)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 (...) @GetLastError()
  %32 = call i32 (i32, i8*, i64, ...) @ok(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %165

36:                                               ; preds = %2
  %37 = load i32, i32* @ProcessDebugPort, align 4
  %38 = call i64 @pNtQueryInformationProcess(i32* null, i32 %37, i64* null, i32 0, i32* null)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %10, align 8
  %44 = call i32 (i32, i8*, i64, ...) @ok(i32 %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @ProcessDebugPort, align 4
  %46 = call i64 @pNtQueryInformationProcess(i32* null, i32 %45, i64* null, i32 8, i32* null)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @STATUS_INVALID_HANDLE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %36
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %50, %36
  %55 = phi i1 [ true, %36 ], [ %53, %50 ]
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %10, align 8
  %58 = call i32 (i32, i8*, i64, ...) @ok(i32 %56, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %57)
  %59 = call i32* (...) @GetCurrentProcess()
  %60 = load i32, i32* @ProcessDebugPort, align 4
  %61 = call i64 @pNtQueryInformationProcess(i32* %59, i32 %60, i64* null, i32 8, i32* null)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %10, align 8
  %67 = call i32 (i32, i8*, i64, ...) @ok(i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* @ProcessDebugPort, align 4
  %69 = call i64 @pNtQueryInformationProcess(i32* null, i32 %68, i64* %5, i32 8, i32* null)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @STATUS_INVALID_HANDLE, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %10, align 8
  %75 = call i32 (i32, i8*, i64, ...) @ok(i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %74)
  %76 = call i32* (...) @GetCurrentProcess()
  %77 = load i32, i32* @ProcessDebugPort, align 4
  %78 = call i64 @pNtQueryInformationProcess(i32* %76, i32 %77, i64* %5, i32 7, i32* null)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %10, align 8
  %84 = call i32 (i32, i8*, i64, ...) @ok(i32 %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  %85 = call i32* (...) @GetCurrentProcess()
  %86 = load i32, i32* @ProcessDebugPort, align 4
  %87 = call i64 @pNtQueryInformationProcess(i32* %85, i32 %86, i64* %5, i32 9, i32* null)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %10, align 8
  %93 = call i32 (i32, i8*, i64, ...) @ok(i32 %91, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  %94 = call i32* (...) @GetCurrentProcess()
  %95 = load i32, i32* @ProcessDebugPort, align 4
  %96 = call i64 @pNtQueryInformationProcess(i32* %94, i32 %95, i64* %5, i32 8, i32* null)
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %10, align 8
  %102 = call i32 (i32, i8*, i64, ...) @ok(i32 %100, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %101)
  %103 = load i64, i64* %5, align 8
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %5, align 8
  %107 = call i32 (i32, i8*, i64, ...) @ok(i32 %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %106)
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @ProcessDebugPort, align 4
  %111 = call i64 @pNtQueryInformationProcess(i32* %109, i32 %110, i64* %5, i32 8, i32* null)
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* %10, align 8
  %113 = icmp ne i64 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load i64, i64* %10, align 8
  %117 = call i32 (i32, i8*, i64, ...) @ok(i32 %115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %116)
  %118 = load i64, i64* %5, align 8
  %119 = icmp eq i64 %118, -1
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %5, align 8
  %122 = call i32 (i32, i8*, i64, ...) @ok(i32 %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64 -1, i64 %121)
  br label %123

123:                                              ; preds = %151, %54
  %124 = load i32, i32* @INFINITE, align 4
  %125 = call i32 @WaitForDebugEvent(%struct.TYPE_9__* %13, i32 %124)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i64 (...) @GetLastError()
  %128 = call i32 (i32, i8*, i64, ...) @ok(i32 %126, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i64 %127)
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  br label %152

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @EXIT_PROCESS_DEBUG_EVENT, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %152

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @DBG_CONTINUE, align 4
  %144 = call i32 @ContinueDebugEvent(i32 %140, i32 %142, i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i64 (...) @GetLastError()
  %147 = call i32 (i32, i8*, i64, ...) @ok(i32 %145, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i64 %146)
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %138
  br label %152

151:                                              ; preds = %138
  br label %123

152:                                              ; preds = %150, %137, %131
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @CloseHandle(i32* %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i64 (...) @GetLastError()
  %158 = call i32 (i32, i8*, i64, ...) @ok(i32 %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i64 %157)
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @CloseHandle(i32* %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i64 (...) @GetLastError()
  %164 = call i32 (i32, i8*, i64, ...) @ok(i32 %162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i64 %163)
  store i32 0, i32* %12, align 4
  br label %165

165:                                              ; preds = %152, %35
  %166 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %12, align 4
  switch i32 %167, label %169 [
    i32 0, label %168
    i32 1, label %168
  ]

168:                                              ; preds = %165, %165
  ret void

169:                                              ; preds = %165
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #3

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_8__*) #3

declare dso_local i32 @ok(i32, i8*, i64, ...) #3

declare dso_local i64 @GetLastError(...) #3

declare dso_local i64 @pNtQueryInformationProcess(i32*, i32, i64*, i32, i32*) #3

declare dso_local i32* @GetCurrentProcess(...) #3

declare dso_local i32 @WaitForDebugEvent(%struct.TYPE_9__*, i32) #3

declare dso_local i32 @ContinueDebugEvent(i32, i32, i32) #3

declare dso_local i32 @CloseHandle(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
