; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_process_basic.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_process_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PROCESS_BASIC_INFORMATION_PRIVATE = type { i32, i32, i32, i32, i64, i64 }
%struct._PROCESS_BASIC_INFORMATION_PRIVATE.0 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"Check nonexistent info class\0A\00", align 1
@STATUS_INVALID_INFO_CLASS = common dso_local global i32 0, align 4
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Expected STATUS_INVALID_INFO_CLASS or STATUS_NOT_IMPLEMENTED, got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Check NULL handle and buffer and zero-length buffersize\0A\00", align 1
@ProcessBasicInformation = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Check NULL handle and buffer\0A\00", align 1
@STATUS_ACCESS_VIOLATION = common dso_local global i32 0, align 4
@STATUS_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [75 x i8] c"Expected STATUS_ACCESS_VIOLATION or STATUS_INVALID_HANDLE(W2K3), got %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Check NULL handle\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Expected STATUS_INVALID_HANDLE, got %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Check NULL handle and too large buffersize\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Check NULL ReturnLength\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"Expected STATUS_SUCCESS, got %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Check with correct parameters\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Inconsistent length %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Too large buffersize\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"ProcessID : %lx\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Expected a ProcessID > 0, got 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_process_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_process_basic() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._PROCESS_BASIC_INFORMATION_PRIVATE, align 8
  %4 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @pNtQueryInformationProcess(i32* null, i32 -1, %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0* null, i32 0, i32* null)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @STATUS_INVALID_INFO_CLASS, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  %12 = icmp eq i32 %10, %11
  br label %13

13:                                               ; preds = %9, %0
  %14 = phi i1 [ true, %0 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %1, align 4
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* @ProcessBasicInformation, align 4
  %20 = call i32 @pNtQueryInformationProcess(i32* null, i32 %19, %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0* null, i32 0, i32* null)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %1, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32, i32* @ProcessBasicInformation, align 4
  %29 = call i32 @pNtQueryInformationProcess(i32* null, i32 %28, %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0* null, i32 32, i32* null)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @STATUS_ACCESS_VIOLATION, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @STATUS_INVALID_HANDLE, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %13
  %38 = phi i1 [ true, %13 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %1, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32, i32* @ProcessBasicInformation, align 4
  %44 = bitcast %struct._PROCESS_BASIC_INFORMATION_PRIVATE* %3 to %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0*
  %45 = call i32 @pNtQueryInformationProcess(i32* null, i32 %43, %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0* %44, i32 32, i32* null)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @STATUS_INVALID_HANDLE, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %1, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %53 = load i32, i32* @ProcessBasicInformation, align 4
  %54 = bitcast %struct._PROCESS_BASIC_INFORMATION_PRIVATE* %3 to %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0*
  %55 = call i32 @pNtQueryInformationProcess(i32* null, i32 %53, %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0* %54, i32 64, i32* null)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %1, align 4
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %63 = call i32* (...) @GetCurrentProcess()
  %64 = load i32, i32* @ProcessBasicInformation, align 4
  %65 = bitcast %struct._PROCESS_BASIC_INFORMATION_PRIVATE* %3 to %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0*
  %66 = call i32 @pNtQueryInformationProcess(i32* %63, i32 %64, %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0* %65, i32 32, i32* null)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @STATUS_SUCCESS, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %1, align 4
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %71)
  %73 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %74 = call i32* (...) @GetCurrentProcess()
  %75 = load i32, i32* @ProcessBasicInformation, align 4
  %76 = bitcast %struct._PROCESS_BASIC_INFORMATION_PRIVATE* %3 to %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0*
  %77 = call i32 @pNtQueryInformationProcess(i32* %74, i32 %75, %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0* %76, i32 32, i32* %2)
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* @STATUS_SUCCESS, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %1, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp eq i64 32, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %2, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %88)
  %90 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %91 = call i32* (...) @GetCurrentProcess()
  %92 = load i32, i32* @ProcessBasicInformation, align 4
  %93 = bitcast %struct._PROCESS_BASIC_INFORMATION_PRIVATE* %3 to %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0*
  %94 = call i32 @pNtQueryInformationProcess(i32* %91, i32 %92, %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0* %93, i32 64, i32* %2)
  store i32 %94, i32* %1, align 4
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %1, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp eq i64 32, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %2, align 4
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %105)
  %107 = getelementptr inbounds %struct._PROCESS_BASIC_INFORMATION_PRIVATE, %struct._PROCESS_BASIC_INFORMATION_PRIVATE* %3, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i64 %108)
  %110 = getelementptr inbounds %struct._PROCESS_BASIC_INFORMATION_PRIVATE, %struct._PROCESS_BASIC_INFORMATION_PRIVATE* %3, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @pNtQueryInformationProcess(i32*, i32, %struct._PROCESS_BASIC_INFORMATION_PRIVATE.0*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @GetCurrentProcess(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
