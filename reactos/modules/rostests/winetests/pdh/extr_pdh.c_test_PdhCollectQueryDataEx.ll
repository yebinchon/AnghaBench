; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhCollectQueryDataEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhCollectQueryDataEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"PdhOpenQuery failed 0x%08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"CreateEvent failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\\System\\System Up Time\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"PdhAddCounterA failed 0x%08x\0A\00", align 1
@PDH_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"PdhCollectQueryDataEx failed 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"PdhCollectQueryData failed 0x%08x\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@PDH_FMT_LARGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"PdhGetFormattedCounterValue failed 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"uptime %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"CloseHandle failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"PdhCloseQuery failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhCollectQueryDataEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhCollectQueryDataEx() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__, align 4
  %9 = call i64 @PdhOpenQueryA(i32* null, i32 0, i32** %2)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %1, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32, i32* @FALSE, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i32* @CreateEventA(i32* null, i32 %16, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @PdhAddCounterA(i32* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* %3)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %1, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @PdhCollectQueryDataEx(i32* null, i32 1, i32* %31)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %1, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @PdhCollectQueryDataEx(i32* %39, i32 1, i32* null)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @ERROR_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %1, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @PdhCollectQueryDataEx(i32* %47, i32 1, i32* %48)
  store i64 %49, i64* %1, align 8
  %50 = load i64, i64* %1, align 8
  %51 = load i64, i64* @ERROR_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %1, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = call i64 @PdhCollectQueryData(i32* %56)
  store i64 %57, i64* %1, align 8
  %58 = load i64, i64* %1, align 8
  %59 = load i64, i64* @ERROR_SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %1, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %62)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %91, %0
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @INFINITE, align 4
  %70 = call i64 @WaitForSingleObject(i32* %68, i32 %69)
  %71 = load i64, i64* @WAIT_OBJECT_0, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @PDH_FMT_LARGE, align 4
  %76 = call i64 @PdhGetFormattedCounterValue(i32 %74, i32 %75, i32* null, i32* %7)
  store i64 %76, i64* %1, align 8
  %77 = load i64, i64* %1, align 8
  %78 = load i64, i64* @ERROR_SUCCESS, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %1, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @U(i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @wine_dbgstr_longlong(i32 %87)
  %89 = call i32 @trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %73, %67
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %64

94:                                               ; preds = %64
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @CloseHandle(i32* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %99 = load i32*, i32** %2, align 8
  %100 = call i64 @PdhCloseQuery(i32* %99)
  store i64 %100, i64* %1, align 8
  %101 = load i64, i64* %1, align 8
  %102 = load i64, i64* @ERROR_SUCCESS, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %1, align 8
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 %105)
  ret void
}

declare dso_local i64 @PdhOpenQueryA(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @CreateEventA(i32*, i32, i32, i8*) #1

declare dso_local i64 @PdhAddCounterA(i32*, i8*, i32, i32*) #1

declare dso_local i64 @PdhCollectQueryDataEx(i32*, i32, i32*) #1

declare dso_local i64 @PdhCollectQueryData(i32*) #1

declare dso_local i64 @WaitForSingleObject(i32*, i32) #1

declare dso_local i64 @PdhGetFormattedCounterValue(i32, i32, i32*, i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

declare dso_local i32 @U(i32) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i64 @PdhCloseQuery(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
