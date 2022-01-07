; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhAddCounterW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhAddCounterW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PdhOpenQueryW failed 0x%08x\0A\00", align 1
@percentage_processor_time = common dso_local global i32* null, align 8
@PDH_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"PdhAddCounterW failed 0x%08x\0A\00", align 1
@PDH_INVALID_HANDLE = common dso_local global i64 0, align 8
@nonexistent_counter = common dso_local global i32* null, align 8
@PDH_CSTATUS_NO_COUNTER = common dso_local global i64 0, align 8
@PDH_INVALID_PATH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"PdhAddCounterW failed %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"PdhCollectQueryData failed 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"PdhRemoveCounter failed 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"PdhCloseQuery failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhAddCounterW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhAddCounterW() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i64 @PdhOpenQueryW(i32* null, i32 0, i32** %2)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @ERROR_SUCCESS, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i32*, i32** @percentage_processor_time, align 8
  %12 = call i64 @PdhAddCounterW(i32* null, i32* %11, i32 0, i32** null)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** @percentage_processor_time, align 8
  %20 = call i64 @PdhAddCounterW(i32* null, i32* %19, i32 0, i32** %3)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i64 @PdhAddCounterW(i32* %27, i32* null, i32 0, i32** %3)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32*, i32** @percentage_processor_time, align 8
  %37 = call i64 @PdhAddCounterW(i32* %35, i32* %36, i32 0, i32** null)
  store i64 %37, i64* %1, align 8
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32*, i32** @nonexistent_counter, align 8
  %46 = call i64 @PdhAddCounterW(i32* %44, i32* %45, i32 0, i32** %3)
  store i64 %46, i64* %1, align 8
  %47 = load i64, i64* %1, align 8
  %48 = load i64, i64* @PDH_CSTATUS_NO_COUNTER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %0
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @PDH_INVALID_PATH, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @broken(i32 %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %50, %0
  %58 = phi i1 [ true, %0 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %1, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = icmp ne i32* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** %3, align 8
  %67 = ptrtoint i32* %66 to i64
  %68 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = load i32*, i32** @percentage_processor_time, align 8
  %71 = call i64 @PdhAddCounterW(i32* %69, i32* %70, i32 0, i32** %3)
  store i64 %71, i64* %1, align 8
  %72 = load i64, i64* %1, align 8
  %73 = load i64, i64* @ERROR_SUCCESS, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %1, align 8
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  %78 = call i64 @PdhCollectQueryData(i32* null)
  store i64 %78, i64* %1, align 8
  %79 = load i64, i64* %1, align 8
  %80 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %1, align 8
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i64 @PdhCollectQueryData(i32* %85)
  store i64 %86, i64* %1, align 8
  %87 = load i64, i64* %1, align 8
  %88 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %1, align 8
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %91)
  %93 = load i32*, i32** %2, align 8
  %94 = call i64 @PdhCollectQueryData(i32* %93)
  store i64 %94, i64* %1, align 8
  %95 = load i64, i64* %1, align 8
  %96 = load i64, i64* @ERROR_SUCCESS, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %1, align 8
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  %101 = call i64 @PdhRemoveCounter(i32* null)
  store i64 %101, i64* %1, align 8
  %102 = load i64, i64* %1, align 8
  %103 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %1, align 8
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i64 @PdhRemoveCounter(i32* %108)
  store i64 %109, i64* %1, align 8
  %110 = load i64, i64* %1, align 8
  %111 = load i64, i64* @ERROR_SUCCESS, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %1, align 8
  %115 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = call i64 @PdhCloseQuery(i32* %116)
  store i64 %117, i64* %1, align 8
  %118 = load i64, i64* %1, align 8
  %119 = load i64, i64* @ERROR_SUCCESS, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i64, i64* %1, align 8
  %123 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %122)
  ret void
}

declare dso_local i64 @PdhOpenQueryW(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @PdhAddCounterW(i32*, i32*, i32, i32**) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @PdhCollectQueryData(i32*) #1

declare dso_local i64 @PdhRemoveCounter(i32*) #1

declare dso_local i64 @PdhCloseQuery(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
