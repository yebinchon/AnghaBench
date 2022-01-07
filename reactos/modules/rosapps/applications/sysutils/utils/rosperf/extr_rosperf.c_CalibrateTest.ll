; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_rosperf.c_CalibrateTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_rosperf.c_CalibrateTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i8**, %struct.TYPE_11__*, i32)*, i32 (i8*, %struct.TYPE_11__*)*, i32 (i8*, %struct.TYPE_11__*)*, i32 (i8*, %struct.TYPE_11__*, i32)* }
%struct.TYPE_11__ = type { i64 }

@ENOUGH = common dso_local global i64 0, align 8
@GOAL = common dso_local global double 0.000000e+00, align 8
@TICK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @CalibrateTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CalibrateTest(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %74, %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = call i32 @ClearWindow(%struct.TYPE_11__* %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32 (i8**, %struct.TYPE_11__*, i32)*, i32 (i8**, %struct.TYPE_11__*, i32)** %16, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 %17(i8** %9, %struct.TYPE_11__* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = call i32 (...) @ProcessMessages()
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 0, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %105

25:                                               ; preds = %12
  %26 = call i64 (...) @GetTickCount()
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i32 (i8*, %struct.TYPE_11__*, i32)*, i32 (i8*, %struct.TYPE_11__*, i32)** %28, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 %29(i8* %30, %struct.TYPE_11__* %31, i32 %32)
  %34 = call i64 (...) @GetTickCount()
  %35 = load i64, i64* %10, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %11, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32 (i8*, %struct.TYPE_11__*)*, i32 (i8*, %struct.TYPE_11__*)** %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = call i32 %39(i8* %40, %struct.TYPE_11__* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32 (i8*, %struct.TYPE_11__*)*, i32 (i8*, %struct.TYPE_11__*)** %44, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = call i32 %45(i8* %46, %struct.TYPE_11__* %47)
  %49 = call i32 (...) @ProcessMessages()
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %25
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %105

55:                                               ; preds = %25
  %56 = load i64, i64* %11, align 8
  %57 = icmp sle i64 2000, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %75

59:                                               ; preds = %55
  %60 = load i64, i64* %11, align 8
  %61 = icmp sle i64 %60, 10
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = mul i32 %63, 10
  store i32 %64, i32* %6, align 4
  br label %74

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = uitofp i32 %66 to double
  %68 = fmul double 2.500000e+03, %67
  %69 = load i64, i64* %11, align 8
  %70 = sitofp i64 %69 to double
  %71 = fdiv double %68, %70
  %72 = fptosi double %71 to i32
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %65, %62
  br label %12

75:                                               ; preds = %58
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sitofp i64 %78 to double
  %80 = fmul double %79, 1.000000e+03
  %81 = load i32, i32* %6, align 4
  %82 = uitofp i32 %81 to double
  %83 = fmul double %80, %82
  %84 = load i64, i64* %11, align 8
  %85 = sitofp i64 %84 to double
  %86 = fdiv double %83, %85
  %87 = fptosi double %86 to i32
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %91

91:                                               ; preds = %94, %75
  %92 = load i32, i32* %6, align 4
  %93 = icmp ult i32 9, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = udiv i32 %95, 10
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %8, align 4
  %98 = mul i32 %97, 10
  store i32 %98, i32* %8, align 4
  br label %91

99:                                               ; preds = %91
  %100 = load i32, i32* %6, align 4
  %101 = add i32 %100, 1
  %102 = load i32, i32* %8, align 4
  %103 = mul i32 %101, %102
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %99, %53, %24
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @ClearWindow(%struct.TYPE_11__*) #1

declare dso_local i32 @ProcessMessages(...) #1

declare dso_local i64 @GetTickCount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
