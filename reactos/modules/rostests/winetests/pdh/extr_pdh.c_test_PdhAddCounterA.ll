; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhAddCounterA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhAddCounterA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PdhOpenQueryA failed 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\\System\\System Up Time\00", align 1
@PDH_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"PdhAddCounterA failed 0x%08x\0A\00", align 1
@PDH_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"\\System\\Nonexistent Counter\00", align 1
@PDH_CSTATUS_NO_COUNTER = common dso_local global i64 0, align 8
@PDH_INVALID_PATH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"PdhAddCounterA failed %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"PdhCollectQueryData failed 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"PdhRemoveCounter failed 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"PdhCloseQuery failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhAddCounterA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhAddCounterA() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i64 @PdhOpenQueryA(i32* null, i32 0, i32** %2)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @ERROR_SUCCESS, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = call i64 @PdhAddCounterA(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0, i32** null)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %16)
  %18 = call i64 @PdhAddCounterA(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0, i32** %3)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i64 @PdhAddCounterA(i32* %25, i8* null, i32 0, i32** %3)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i64 @PdhAddCounterA(i32* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0, i32** null)
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %1, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i64 @PdhAddCounterA(i32* %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 0, i32** %3)
  store i64 %42, i64* %1, align 8
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* @PDH_CSTATUS_NO_COUNTER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %0
  %47 = load i64, i64* %1, align 8
  %48 = load i64, i64* @PDH_INVALID_PATH, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @broken(i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %46, %0
  %54 = phi i1 [ true, %0 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %1, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = icmp ne i32* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %3, align 8
  %63 = ptrtoint i32* %62 to i64
  %64 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %2, align 8
  %66 = call i64 @PdhAddCounterA(i32* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0, i32** %3)
  store i64 %66, i64* %1, align 8
  %67 = load i64, i64* %1, align 8
  %68 = load i64, i64* @ERROR_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %1, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  %73 = call i64 @PdhCollectQueryData(i32* null)
  store i64 %73, i64* %1, align 8
  %74 = load i64, i64* %1, align 8
  %75 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %1, align 8
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call i64 @PdhCollectQueryData(i32* %80)
  store i64 %81, i64* %1, align 8
  %82 = load i64, i64* %1, align 8
  %83 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %1, align 8
  %87 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %86)
  %88 = load i32*, i32** %2, align 8
  %89 = call i64 @PdhCollectQueryData(i32* %88)
  store i64 %89, i64* %1, align 8
  %90 = load i64, i64* %1, align 8
  %91 = load i64, i64* @ERROR_SUCCESS, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %1, align 8
  %95 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %94)
  %96 = call i64 @PdhRemoveCounter(i32* null)
  store i64 %96, i64* %1, align 8
  %97 = load i64, i64* %1, align 8
  %98 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %1, align 8
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %3, align 8
  %104 = call i64 @PdhRemoveCounter(i32* %103)
  store i64 %104, i64* %1, align 8
  %105 = load i64, i64* %1, align 8
  %106 = load i64, i64* @ERROR_SUCCESS, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %1, align 8
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = call i64 @PdhCloseQuery(i32* %111)
  store i64 %112, i64* %1, align 8
  %113 = load i64, i64* %1, align 8
  %114 = load i64, i64* @ERROR_SUCCESS, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %1, align 8
  %118 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %117)
  ret void
}

declare dso_local i64 @PdhOpenQueryA(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @PdhAddCounterA(i32*, i8*, i32, i32**) #1

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
