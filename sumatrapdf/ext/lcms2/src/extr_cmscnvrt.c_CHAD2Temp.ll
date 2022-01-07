; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_CHAD2Temp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscnvrt.c_CHAD2Temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@FALSE = common dso_local global double 0.000000e+00, align 8
@VX = common dso_local global i64 0, align 8
@VY = common dso_local global i64 0, align 8
@VZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, i32*)* @CHAD2Temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @CHAD2Temp(i32 %0, i32* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @_cmsMAT3inverse(i32 %15, i32* %11, i32* %12)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load double, double* @FALSE, align 8
  store double %19, double* %3, align 8
  br label %73

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.TYPE_9__* @cmsD50_XYZ(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @VX, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.TYPE_9__* @cmsD50_XYZ(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @VY, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call %struct.TYPE_9__* @cmsD50_XYZ(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @VZ, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @_cmsMAT3eval(i32 %45, %struct.TYPE_7__* %6, i32* %12, %struct.TYPE_7__* %7)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @VX, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @VY, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @VZ, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @cmsXYZ2xyY(i32 %65, i32* %9, %struct.TYPE_8__* %8)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @cmsTempFromWhitePoint(i32 %67, double* %10, i32* %9)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %20
  store double -1.000000e+00, double* %3, align 8
  br label %73

71:                                               ; preds = %20
  %72 = load double, double* %10, align 8
  store double %72, double* %3, align 8
  br label %73

73:                                               ; preds = %71, %70, %18
  %74 = load double, double* %3, align 8
  ret double %74
}

declare dso_local i32 @_cmsMAT3inverse(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @cmsD50_XYZ(i32) #1

declare dso_local i32 @_cmsMAT3eval(i32, %struct.TYPE_7__*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @cmsXYZ2xyY(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @cmsTempFromWhitePoint(i32, double*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
