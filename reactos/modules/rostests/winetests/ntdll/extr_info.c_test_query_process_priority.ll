; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_process_priority.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_process_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ProcessPriorityClass = common dso_local global i32 0, align 4
@STATUS_ACCESS_VIOLATION = common dso_local global i64 0, align 8
@STATUS_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Expected STATUS_ACCESS_VIOLATION, got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected STATUS_INVALID_HANDLE, got %08x\0A\00", align 1
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\0A\00", align 1
@BELOW_NORMAL_PRIORITY_CLASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to set priority class: %u\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Expected STATUS_SUCCESS, got %08x\0A\00", align 1
@PROCESS_PRIOCLASS_BELOW_NORMAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"Expected PROCESS_PRIOCLASS_BELOW_NORMAL, got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to reset priority class: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_process_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_process_priority() #0 {
  %1 = alloca [2 x %struct.TYPE_3__], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @ProcessPriorityClass, align 4
  %7 = call i64 @pNtQueryInformationProcess(i32* null, i32 %6, %struct.TYPE_3__** null, i32 8, i32* null)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %0
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @STATUS_INVALID_HANDLE, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @broken(i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %11, %0
  %19 = phi i1 [ true, %0 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @ProcessPriorityClass, align 4
  %24 = bitcast [2 x %struct.TYPE_3__]* %1 to %struct.TYPE_3__**
  %25 = call i64 @pNtQueryInformationProcess(i32* null, i32 %23, %struct.TYPE_3__** %24, i32 8, i32* null)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @STATUS_INVALID_HANDLE, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = call i32* (...) @GetCurrentProcess()
  %33 = load i32, i32* @ProcessPriorityClass, align 4
  %34 = bitcast [2 x %struct.TYPE_3__]* %1 to %struct.TYPE_3__**
  %35 = call i64 @pNtQueryInformationProcess(i32* %32, i32 %33, %struct.TYPE_3__** %34, i32 1, i32* %2)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = call i32* (...) @GetCurrentProcess()
  %43 = load i32, i32* @ProcessPriorityClass, align 4
  %44 = bitcast [2 x %struct.TYPE_3__]* %1 to %struct.TYPE_3__**
  %45 = call i64 @pNtQueryInformationProcess(i32* %42, i32 %43, %struct.TYPE_3__** %44, i32 16, i32* %2)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = call i32* (...) @GetCurrentProcess()
  %53 = call i32 @GetPriorityClass(i32* %52)
  store i32 %53, i32* %3, align 4
  %54 = call i32* (...) @GetCurrentProcess()
  %55 = load i32, i32* @BELOW_NORMAL_PRIORITY_CLASS, align 4
  %56 = call i32 @SetPriorityClass(i32* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 (...) @GetLastError()
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = call i32* (...) @GetCurrentProcess()
  %61 = load i32, i32* @ProcessPriorityClass, align 4
  %62 = bitcast [2 x %struct.TYPE_3__]* %1 to %struct.TYPE_3__**
  %63 = call i64 @pNtQueryInformationProcess(i32* %60, i32 %61, %struct.TYPE_3__** %62, i32 8, i32* %2)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @STATUS_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  %70 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 16
  %73 = load i64, i64* @PROCESS_PRIOCLASS_BELOW_NORMAL, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %1, i64 0, i64 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 16
  %79 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %78)
  %80 = call i32* (...) @GetCurrentProcess()
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @SetPriorityClass(i32* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i64 (...) @GetLastError()
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %84)
  ret void
}

declare dso_local i64 @pNtQueryInformationProcess(i32*, i32, %struct.TYPE_3__**, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32* @GetCurrentProcess(...) #1

declare dso_local i32 @GetPriorityClass(i32*) #1

declare dso_local i32 @SetPriorityClass(i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
