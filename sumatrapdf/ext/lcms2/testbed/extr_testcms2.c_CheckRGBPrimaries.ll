; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckRGBPrimaries.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckRGBPrimaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@INTENT_ABSOLUTE_COLORIMETRIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xRed\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"yRed\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"xGreen\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"yGreen\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"xBlue\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"yBlue\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"One or more primaries are wrong.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckRGBPrimaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckRGBPrimaries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @DbgThread()
  %7 = call i32 @cmsSetAdaptationState(i32 %6, i32 0)
  %8 = call i32 (...) @DbgThread()
  %9 = call i32 @cmsCreate_sRGBProfile(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %76

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @INTENT_ABSOLUTE_COLORIMETRIC, align 4
  %16 = call i32 @GetProfileRGBPrimaries(i32 %14, %struct.TYPE_6__* %3, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = call i32 (...) @DbgThread()
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @cmsCloseProfile(i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %76

23:                                               ; preds = %13
  %24 = call i32 (...) @DbgThread()
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %27 = call i32 @cmsXYZ2xyY(i32 %24, %struct.TYPE_7__* %25, i32* %26)
  %28 = call i32 (...) @DbgThread()
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %31 = call i32 @cmsXYZ2xyY(i32 %28, %struct.TYPE_7__* %29, i32* %30)
  %32 = call i32 (...) @DbgThread()
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %35 = call i32 @cmsXYZ2xyY(i32 %32, %struct.TYPE_7__* %33, i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %38, double 6.400000e-01)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %44, double 3.300000e-01)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %50, double 3.000000e-01)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %56, double 6.000000e-01)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %62, double 1.500000e-01)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IsGoodFixed15_16(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %68, double 6.000000e-02)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65, %59, %53, %47, %41, %23
  %72 = call i32 @Fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %1, align 4
  br label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %1, align 4
  br label %76

76:                                               ; preds = %74, %71, %22, %12
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i32 @cmsSetAdaptationState(i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCreate_sRGBProfile(i32) #1

declare dso_local i32 @GetProfileRGBPrimaries(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @cmsXYZ2xyY(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @IsGoodFixed15_16(i8*, i32, double) #1

declare dso_local i32 @Fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
