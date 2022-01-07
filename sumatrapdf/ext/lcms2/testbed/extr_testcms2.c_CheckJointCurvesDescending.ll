; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckJointCurvesDescending.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckJointCurvesDescending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i64* }
%struct.TYPE_11__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckJointCurvesDescending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckJointCurvesDescending() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @DbgThread()
  %7 = call %struct.TYPE_12__* @cmsBuildGamma(i32 %6, double 2.200000e+00)
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %1, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %0
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 4096
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 65535, %18
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 %19, i64* %25, align 8
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = call i32 (...) @DbgThread()
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %37 = call %struct.TYPE_12__* @cmsReverseToneCurve(i32 %35, %struct.TYPE_12__* %36)
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %2, align 8
  %38 = call i32 (...) @DbgThread()
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = call %struct.TYPE_12__* @cmsJoinToneCurve(i32 %38, %struct.TYPE_12__* %39, %struct.TYPE_12__* %40, i32 256)
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %3, align 8
  %42 = call i32 (...) @DbgThread()
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %44 = call i32 @cmsFreeToneCurve(i32 %42, %struct.TYPE_12__* %43)
  %45 = call i32 (...) @DbgThread()
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = call i32 @cmsFreeToneCurve(i32 %45, %struct.TYPE_12__* %46)
  %48 = call i32 (...) @DbgThread()
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = call i32 @cmsIsToneCurveLinear(i32 %48, %struct.TYPE_12__* %49)
  store i32 %50, i32* %5, align 4
  %51 = call i32 (...) @DbgThread()
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = call i32 @cmsFreeToneCurve(i32 %51, %struct.TYPE_12__* %52)
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_12__* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local %struct.TYPE_12__* @cmsReverseToneCurve(i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @cmsJoinToneCurve(i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @cmsFreeToneCurve(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @cmsIsToneCurveLinear(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
