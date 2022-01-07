; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhAddEnglishCounterW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhAddEnglishCounterW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PdhOpenQueryW failed 0x%08x\0A\00", align 1
@PDH_NO_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"PdhCollectQueryData failed 0x%08x\0A\00", align 1
@system_uptime = common dso_local global i32* null, align 8
@PDH_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"PdhAddEnglishCounterW failed 0x%08x\0A\00", align 1
@nonexistent_counter = common dso_local global i32* null, align 8
@PDH_CSTATUS_NO_COUNTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"PdhAddEnglishCounterA failed %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"PdhRemoveCounter failed 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"PdhCloseQuery failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhAddEnglishCounterW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhAddEnglishCounterW() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = call i64 @PdhOpenQueryW(i32* null, i32 0, i32** %2)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @ERROR_SUCCESS, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @PdhCollectQueryData(i32* %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @PDH_NO_DATA, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** @system_uptime, align 8
  %20 = call i64 @pPdhAddEnglishCounterW(i32* null, i32* %19, i32 0, i64* null)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** @system_uptime, align 8
  %28 = call i64 @pPdhAddEnglishCounterW(i32* null, i32* %27, i32 0, i64* %3)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @pPdhAddEnglishCounterW(i32* %35, i32* null, i32 0, i64* %3)
  store i64 %36, i64* %1, align 8
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %1, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32*, i32** @system_uptime, align 8
  %45 = call i64 @pPdhAddEnglishCounterW(i32* %43, i32* %44, i32 0, i64* null)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %1, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = load i32*, i32** @nonexistent_counter, align 8
  %54 = call i64 @pPdhAddEnglishCounterW(i32* %52, i32* %53, i32 0, i64* %3)
  store i64 %54, i64* %1, align 8
  %55 = load i64, i64* %1, align 8
  %56 = load i64, i64* @PDH_CSTATUS_NO_COUNTER, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %1, align 8
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* %3, align 8
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = load i32*, i32** @system_uptime, align 8
  %69 = call i64 @pPdhAddEnglishCounterW(i32* %67, i32* %68, i32 0, i64* %3)
  store i64 %69, i64* %1, align 8
  %70 = load i64, i64* %1, align 8
  %71 = load i64, i64* @ERROR_SUCCESS, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %1, align 8
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i64 @PdhCollectQueryData(i32* %76)
  store i64 %77, i64* %1, align 8
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* @ERROR_SUCCESS, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %1, align 8
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* %3, align 8
  %85 = call i64 @PdhRemoveCounter(i64 %84)
  store i64 %85, i64* %1, align 8
  %86 = load i64, i64* %1, align 8
  %87 = load i64, i64* @ERROR_SUCCESS, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %1, align 8
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i64 @PdhCloseQuery(i32* %92)
  store i64 %93, i64* %1, align 8
  %94 = load i64, i64* %1, align 8
  %95 = load i64, i64* @ERROR_SUCCESS, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %1, align 8
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %98)
  ret void
}

declare dso_local i64 @PdhOpenQueryW(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @PdhCollectQueryData(i32*) #1

declare dso_local i64 @pPdhAddEnglishCounterW(i32*, i32*, i32, i64*) #1

declare dso_local i64 @PdhRemoveCounter(i64) #1

declare dso_local i64 @PdhCloseQuery(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
