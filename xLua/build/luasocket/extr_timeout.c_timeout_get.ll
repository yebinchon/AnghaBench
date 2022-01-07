; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_timeout.c_timeout_get.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_timeout.c_timeout_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @timeout_get(%struct.TYPE_3__* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = fcmp olt double %8, 0.000000e+00
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fcmp olt double %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store double -1.000000e+00, double* %2, align 8
  br label %58

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = fcmp olt double %19, 0.000000e+00
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = call double (...) @timeout_gettime()
  %26 = fsub double %24, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load double, double* %28, align 8
  %30 = fadd double %26, %29
  store double %30, double* %4, align 8
  %31 = load double, double* %4, align 8
  %32 = call double @MAX(double %31, double 0.000000e+00)
  store double %32, double* %2, align 8
  br label %58

33:                                               ; preds = %16
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = fcmp olt double %36, 0.000000e+00
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  store double %41, double* %2, align 8
  br label %58

42:                                               ; preds = %33
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = call double (...) @timeout_gettime()
  %47 = fsub double %45, %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load double, double* %49, align 8
  %51 = fadd double %47, %50
  store double %51, double* %5, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = load double, double* %5, align 8
  %56 = call double @MAX(double %55, double 0.000000e+00)
  %57 = call double @MIN(double %54, double %56)
  store double %57, double* %2, align 8
  br label %58

58:                                               ; preds = %42, %38, %21, %15
  %59 = load double, double* %2, align 8
  ret double %59
}

declare dso_local double @timeout_gettime(...) #1

declare dso_local double @MAX(double, double) #1

declare dso_local double @MIN(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
