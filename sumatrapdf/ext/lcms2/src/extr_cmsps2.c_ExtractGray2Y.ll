; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_ExtractGray2Y.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_ExtractGray2Y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { double }

@TYPE_GRAY_8 = common dso_local global i32 0, align 4
@TYPE_XYZ_DBL = common dso_local global i32 0, align 4
@cmsFLAGS_NOOPTIMIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, i64, i32)* @ExtractGray2Y to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @ExtractGray2Y(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.TYPE_6__* @cmsBuildTabulatedToneCurve16(i32 %13, i32 256, i32* null)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @cmsCreateXYZProfile(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @TYPE_GRAY_8, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @TYPE_XYZ_DBL, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @cmsFLAGS_NOOPTIMIZE, align 4
  %24 = call i32* @cmsCreateTransform(i32 %17, i64 %18, i32 %19, i64 %20, i32 %21, i32 %22, i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %3
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @cmsDoTransform(i32 %36, i32* %37, i32* %11, %struct.TYPE_7__* %12, i32 1)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = fmul double %40, 6.553500e+04
  %42 = call i32 @_cmsQuickSaturateWord(double %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %31

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52, %27, %3
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @cmsDeleteTransform(i32 %57, i32* %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @cmsCloseProfile(i32 %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %68
}

declare dso_local %struct.TYPE_6__* @cmsBuildTabulatedToneCurve16(i32, i32, i32*) #1

declare dso_local i64 @cmsCreateXYZProfile(i32) #1

declare dso_local i32* @cmsCreateTransform(i32, i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @cmsDoTransform(i32, i32*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @_cmsQuickSaturateWord(double) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #1

declare dso_local i32 @cmsCloseProfile(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
