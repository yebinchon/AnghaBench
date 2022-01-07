; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhGetFormattedCounterValue.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhGetFormattedCounterValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PdhOpenQueryA failed 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\\System\\System Up Time\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"PdhAddCounterA failed 0x%08x\0A\00", align 1
@PDH_FMT_LARGE = common dso_local global i32 0, align 4
@PDH_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"PdhGetFormattedCounterValue failed 0x%08x\0A\00", align 1
@PDH_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"PdhCollectQueryData failed 0x%08x\0A\00", align 1
@PDH_FMT_NOSCALE = common dso_local global i32 0, align 4
@PDH_FMT_NOCAP100 = common dso_local global i32 0, align 4
@PDH_FMT_1000 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"PdhSetCounterScaleFactor failed 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"PdhCloseQuery failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhGetFormattedCounterValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhGetFormattedCounterValue() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i64 @PdhOpenQueryA(i32* null, i32 0, i32* %2)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @ERROR_SUCCESS, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @PdhAddCounterA(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0, i32** %3)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @PDH_FMT_LARGE, align 4
  %21 = call i64 @PdhGetFormattedCounterValue(i32* null, i32 %20, i32* null, i32* null)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @PDH_FMT_LARGE, align 4
  %29 = call i64 @PdhGetFormattedCounterValue(i32* null, i32 %28, i32* null, i32* %4)
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @PDH_FMT_LARGE, align 4
  %38 = call i64 @PdhGetFormattedCounterValue(i32* %36, i32 %37, i32* null, i32* null)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %1, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @PDH_FMT_LARGE, align 4
  %47 = call i64 @PdhGetFormattedCounterValue(i32* %45, i32 %46, i32* null, i32* %4)
  store i64 %47, i64* %1, align 8
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %1, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @PdhCollectQueryData(i32 %54)
  store i64 %55, i64* %1, align 8
  %56 = load i64, i64* %1, align 8
  %57 = load i64, i64* @ERROR_SUCCESS, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %1, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @PDH_FMT_LARGE, align 4
  %64 = call i64 @PdhGetFormattedCounterValue(i32* %62, i32 %63, i32* null, i32* %4)
  store i64 %64, i64* %1, align 8
  %65 = load i64, i64* %1, align 8
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %1, align 8
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* @PDH_FMT_LARGE, align 4
  %73 = load i32, i32* @PDH_FMT_NOSCALE, align 4
  %74 = or i32 %72, %73
  %75 = call i64 @PdhGetFormattedCounterValue(i32* %71, i32 %74, i32* null, i32* %4)
  store i64 %75, i64* %1, align 8
  %76 = load i64, i64* %1, align 8
  %77 = load i64, i64* @ERROR_SUCCESS, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %1, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = load i32, i32* @PDH_FMT_LARGE, align 4
  %84 = load i32, i32* @PDH_FMT_NOCAP100, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @PdhGetFormattedCounterValue(i32* %82, i32 %85, i32* null, i32* %4)
  store i64 %86, i64* %1, align 8
  %87 = load i64, i64* %1, align 8
  %88 = load i64, i64* @ERROR_SUCCESS, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %1, align 8
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* @PDH_FMT_LARGE, align 4
  %95 = load i32, i32* @PDH_FMT_1000, align 4
  %96 = or i32 %94, %95
  %97 = call i64 @PdhGetFormattedCounterValue(i32* %93, i32 %96, i32* null, i32* %4)
  store i64 %97, i64* %1, align 8
  %98 = load i64, i64* %1, align 8
  %99 = load i64, i64* @ERROR_SUCCESS, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %1, align 8
  %103 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %102)
  %104 = load i32*, i32** %3, align 8
  %105 = call i64 @PdhSetCounterScaleFactor(i32* %104, i32 2)
  store i64 %105, i64* %1, align 8
  %106 = load i64, i64* %1, align 8
  %107 = load i64, i64* @ERROR_SUCCESS, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %1, align 8
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* @PDH_FMT_LARGE, align 4
  %114 = call i64 @PdhGetFormattedCounterValue(i32* %112, i32 %113, i32* null, i32* %4)
  store i64 %114, i64* %1, align 8
  %115 = load i64, i64* %1, align 8
  %116 = load i64, i64* @ERROR_SUCCESS, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i64, i64* %1, align 8
  %120 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %119)
  %121 = load i32, i32* %2, align 4
  %122 = call i64 @PdhCloseQuery(i32 %121)
  store i64 %122, i64* %1, align 8
  %123 = load i64, i64* %1, align 8
  %124 = load i64, i64* @ERROR_SUCCESS, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %1, align 8
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %127)
  ret void
}

declare dso_local i64 @PdhOpenQueryA(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @PdhAddCounterA(i32, i8*, i32, i32**) #1

declare dso_local i64 @PdhGetFormattedCounterValue(i32*, i32, i32*, i32*) #1

declare dso_local i64 @PdhCollectQueryData(i32) #1

declare dso_local i64 @PdhSetCounterScaleFactor(i32*, i32) #1

declare dso_local i64 @PdhCloseQuery(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
