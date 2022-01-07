; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_redshift.c_get_transition_progress_from_elevation.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_redshift.c_get_transition_progress_from_elevation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_3__*, double)* @get_transition_progress_from_elevation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_transition_progress_from_elevation(%struct.TYPE_3__* %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store double %1, double* %5, align 8
  %6 = load double, double* %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fcmp olt double %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %33

12:                                               ; preds = %2
  %13 = load double, double* %5, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = fcmp olt double %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = load double, double* %5, align 8
  %23 = fsub double %21, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = fsub double %26, %29
  %31 = fdiv double %23, %30
  store double %31, double* %3, align 8
  br label %33

32:                                               ; preds = %12
  store double 1.000000e+00, double* %3, align 8
  br label %33

33:                                               ; preds = %32, %18, %11
  %34 = load double, double* %3, align 8
  ret double %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
