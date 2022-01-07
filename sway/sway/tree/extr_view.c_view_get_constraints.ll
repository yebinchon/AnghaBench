; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_get_constraints.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_get_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sway_view*, double*, double*, double*, double*)* }

@DBL_MIN = common dso_local global double 0.000000e+00, align 8
@DBL_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_get_constraints(%struct.sway_view* %0, double* %1, double* %2, double* %3, double* %4) #0 {
  %6 = alloca %struct.sway_view*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %6, align 8
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %11 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %12 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.sway_view*, double*, double*, double*, double*)*, i32 (%struct.sway_view*, double*, double*, double*, double*)** %14, align 8
  %16 = icmp ne i32 (%struct.sway_view*, double*, double*, double*, double*)* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %19 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.sway_view*, double*, double*, double*, double*)*, i32 (%struct.sway_view*, double*, double*, double*, double*)** %21, align 8
  %23 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %24 = load double*, double** %7, align 8
  %25 = load double*, double** %8, align 8
  %26 = load double*, double** %9, align 8
  %27 = load double*, double** %10, align 8
  %28 = call i32 %22(%struct.sway_view* %23, double* %24, double* %25, double* %26, double* %27)
  br label %38

29:                                               ; preds = %5
  %30 = load double, double* @DBL_MIN, align 8
  %31 = load double*, double** %7, align 8
  store double %30, double* %31, align 8
  %32 = load double, double* @DBL_MAX, align 8
  %33 = load double*, double** %8, align 8
  store double %32, double* %33, align 8
  %34 = load double, double* @DBL_MIN, align 8
  %35 = load double*, double** %9, align 8
  store double %34, double* %35, align 8
  %36 = load double, double* @DBL_MAX, align 8
  %37 = load double*, double** %10, align 8
  store double %36, double* %37, align 8
  br label %38

38:                                               ; preds = %29, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
