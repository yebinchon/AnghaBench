; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOneLab.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckOneLab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, double }

@MaxDE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [41 x i8] c"dE=%f Lab1=(%f, %f, %f)\0A\09Lab2=(%f %f %f)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double, double, double)* @CheckOneLab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckOneLab(i32 %0, double %1, double %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %13 = load double, double* %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store double %13, double* %14, align 8
  %15 = load double, double* %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store double %15, double* %16, align 8
  %17 = load double, double* %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store double %17, double* %18, align 8
  %19 = call i32 (...) @DbgThread()
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @cmsDoTransform(i32 %19, i32 %20, %struct.TYPE_6__* %10, %struct.TYPE_6__* %11, i32 1)
  %22 = call i32 (...) @DbgThread()
  %23 = call double @cmsDeltaE(i32 %22, %struct.TYPE_6__* %10, %struct.TYPE_6__* %11)
  store double %23, double* %12, align 8
  %24 = load double, double* %12, align 8
  %25 = load double, double* @MaxDE, align 8
  %26 = fcmp ogt double %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load double, double* %12, align 8
  store double %28, double* @MaxDE, align 8
  br label %29

29:                                               ; preds = %27, %4
  %30 = load double, double* @MaxDE, align 8
  %31 = fcmp ogt double %30, 3.000000e-03
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load double, double* @MaxDE, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %39 = load double, double* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %45 = load double, double* %44, align 8
  %46 = call i32 @Fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), double %33, double %35, double %37, double %39, double %41, double %43, double %45)
  %47 = call i32 (...) @DbgThread()
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @cmsDoTransform(i32 %47, i32 %48, %struct.TYPE_6__* %10, %struct.TYPE_6__* %11, i32 1)
  store i32 0, i32* %5, align 4
  br label %51

50:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @cmsDoTransform(i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local double @cmsDeltaE(i32, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @Fail(i8*, double, double, double, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
