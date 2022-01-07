; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_NtGetCurrentProcessorNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_NtGetCurrentProcessorNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"dwNumberOfProcessors: %d, current processor: %d\0A\00", align 1
@ProcessBasicInformation = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"got 0x%x (expected STATUS_SUCCESS)\0A\00", align 1
@ThreadBasicInformation = common dso_local global i32 0, align 4
@ProcessAffinityMask = common dso_local global i32 0, align 4
@ThreadAffinityMask = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"%d: got 0x%x (expected STATUS_SUCCESS)\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"%d (new_mask 0x%lx): running on processor %d (AffinityMask: 0x%lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_NtGetCurrentProcessorNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_NtGetCurrentProcessorNumber() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @GetSystemInfo(%struct.TYPE_8__* %2)
  %11 = call i32 (...) @pNtGetCurrentProcessorNumber()
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @trace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = call i32 (...) @GetCurrentProcess()
  %17 = load i32, i32* @ProcessBasicInformation, align 4
  %18 = call i32 @pNtQueryInformationProcess(i32 %16, i32 %17, %struct.TYPE_9__* %3, i32 4, i32* null)
  store i32 %18, i32* %1, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @STATUS_SUCCESS, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %1, align 4
  %26 = call i32 (i32, i8*, i32, ...) @ok(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = call i32 (...) @GetCurrentThread()
  %28 = load i32, i32* @ThreadBasicInformation, align 4
  %29 = call i32 @pNtQueryInformationThread(i32 %27, i32 %28, %struct.TYPE_7__* %4, i32 4, i32* null)
  store i32 %29, i32* %1, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @STATUS_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %1, align 4
  %37 = call i32 (i32, i8*, i32, ...) @ok(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = call i32 (...) @GetCurrentProcess()
  %43 = load i32, i32* @ProcessAffinityMask, align 4
  %44 = call i32 @pNtSetInformationProcess(i32 %42, i32 %43, i32* %7, i32 4)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @STATUS_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %1, align 4
  %50 = call i32 (i32, i8*, i32, ...) @ok(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %90, %0
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = shl i32 1, %57
  store i32 %58, i32* %7, align 4
  %59 = call i32 (...) @GetCurrentThread()
  %60 = load i32, i32* @ThreadAffinityMask, align 4
  %61 = call i32 @pNtSetInformationThread(i32 %59, i32 %60, i32* %7, i32 4)
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %1, align 4
  %68 = call i32 (i32, i8*, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67)
  %69 = call i32 (...) @GetCurrentThread()
  %70 = load i32, i32* @ThreadBasicInformation, align 4
  %71 = call i32 @pNtQueryInformationThread(i32 %69, i32 %70, %struct.TYPE_7__* %4, i32 4, i32* null)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @STATUS_SUCCESS, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %1, align 4
  %78 = call i32 (i32, i8*, i32, ...) @ok(i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  %79 = call i32 (...) @pNtGetCurrentProcessorNumber()
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %85, i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %56
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %51

93:                                               ; preds = %51
  %94 = call i32 (...) @GetCurrentProcess()
  %95 = load i32, i32* @ProcessAffinityMask, align 4
  %96 = call i32 @pNtSetInformationProcess(i32 %94, i32 %95, i32* %5, i32 4)
  store i32 %96, i32* %1, align 4
  %97 = load i32, i32* %1, align 4
  %98 = load i32, i32* @STATUS_SUCCESS, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %1, align 4
  %102 = call i32 (i32, i8*, i32, ...) @ok(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = call i32 (...) @GetCurrentThread()
  %104 = load i32, i32* @ThreadAffinityMask, align 4
  %105 = call i32 @pNtSetInformationThread(i32 %103, i32 %104, i32* %6, i32 4)
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* @STATUS_SUCCESS, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %1, align 4
  %111 = call i32 (i32, i8*, i32, ...) @ok(i32 %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  ret void
}

declare dso_local i32 @GetSystemInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @pNtGetCurrentProcessorNumber(...) #1

declare dso_local i32 @trace(i8*, i32, i32) #1

declare dso_local i32 @pNtQueryInformationProcess(i32, i32, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @pNtQueryInformationThread(i32, i32, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @GetCurrentThread(...) #1

declare dso_local i32 @pNtSetInformationProcess(i32, i32, i32*, i32) #1

declare dso_local i32 @pNtSetInformationThread(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
