; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_wtpt.c_ShowWhitePoint.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_wtpt.c_ShowWhitePoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { double, double, double }
%struct.TYPE_11__ = type { double, double, double }
%struct.TYPE_12__ = type { double, double, double }

@lShowXYZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"XYZ=(%3.1f, %3.1f, %3.1f)\0A\00", align 1
@lShowLab = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Lab=(%3.3f, %3.3f, %3.3f)\0A\00", align 1
@lShowLCh = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"LCh=(%3.3f, %3.3f, %3.3f)\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Sens = %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @ShowWhitePoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShowWhitePoint(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = call i32 @cmsXYZ2Lab(i32* null, %struct.TYPE_11__* %3, %struct.TYPE_10__* %7)
  %9 = call i32 @cmsLab2LCh(%struct.TYPE_12__* %4, %struct.TYPE_11__* %3)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = call i32 @cmsXYZ2xyY(i32* %5, %struct.TYPE_10__* %10)
  %12 = load i64, i64* @lShowXYZ, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load double, double* %22, align 8
  %24 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), double %17, double %20, double %23)
  br label %25

25:                                               ; preds = %14, %1
  %26 = load i64, i64* @lShowLab, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %34 = load double, double* %33, align 8
  %35 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), double %30, double %32, double %34)
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i64, i64* @lShowLCh, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %45 = load double, double* %44, align 8
  %46 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), double %41, double %43, double %45)
  br label %47

47:                                               ; preds = %39, %36
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fmul double %49, 1.000000e+02
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %52 = load double, double* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fmul double %52, %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %59 = load double, double* %58, align 8
  %60 = fmul double %57, %59
  %61 = fadd double %55, %60
  %62 = fptosi double %61 to i32
  %63 = call double @sqrt(i32 %62)
  %64 = fdiv double %50, %63
  store double %64, double* %6, align 8
  %65 = load double, double* %6, align 8
  %66 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %65)
  ret void
}

declare dso_local i32 @cmsXYZ2Lab(i32*, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @cmsLab2LCh(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @cmsXYZ2xyY(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @printf(i8*, double, ...) #1

declare dso_local double @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
