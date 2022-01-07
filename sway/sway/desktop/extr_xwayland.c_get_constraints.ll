; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_get_constraints.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_get_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.wlr_xwayland_surface* }
%struct.wlr_xwayland_surface = type { %struct.wlr_xwayland_surface_size_hints* }
%struct.wlr_xwayland_surface_size_hints = type { double, double, double, double }

@DBL_MIN = common dso_local global double 0.000000e+00, align 8
@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view*, double*, double*, double*, double*)* @get_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_constraints(%struct.sway_view* %0, double* %1, double* %2, double* %3, double* %4) #0 {
  %6 = alloca %struct.sway_view*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.wlr_xwayland_surface*, align 8
  %12 = alloca %struct.wlr_xwayland_surface_size_hints*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %6, align 8
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %13 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %14 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %13, i32 0, i32 0
  %15 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %14, align 8
  store %struct.wlr_xwayland_surface* %15, %struct.wlr_xwayland_surface** %11, align 8
  %16 = load %struct.wlr_xwayland_surface*, %struct.wlr_xwayland_surface** %11, align 8
  %17 = getelementptr inbounds %struct.wlr_xwayland_surface, %struct.wlr_xwayland_surface* %16, i32 0, i32 0
  %18 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %17, align 8
  store %struct.wlr_xwayland_surface_size_hints* %18, %struct.wlr_xwayland_surface_size_hints** %12, align 8
  %19 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %12, align 8
  %20 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = fcmp ogt double %21, 0.000000e+00
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %12, align 8
  %25 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  br label %29

27:                                               ; preds = %5
  %28 = load double, double* @DBL_MIN, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi double [ %26, %23 ], [ %28, %27 ]
  %31 = load double*, double** %7, align 8
  store double %30, double* %31, align 8
  %32 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %12, align 8
  %33 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %32, i32 0, i32 1
  %34 = load double, double* %33, align 8
  %35 = fcmp ogt double %34, 0.000000e+00
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %12, align 8
  %38 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %37, i32 0, i32 1
  %39 = load double, double* %38, align 8
  br label %42

40:                                               ; preds = %29
  %41 = load double, double* @DBL_MAX, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi double [ %39, %36 ], [ %41, %40 ]
  %44 = load double*, double** %8, align 8
  store double %43, double* %44, align 8
  %45 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %12, align 8
  %46 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %45, i32 0, i32 2
  %47 = load double, double* %46, align 8
  %48 = fcmp ogt double %47, 0.000000e+00
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %12, align 8
  %51 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %50, i32 0, i32 2
  %52 = load double, double* %51, align 8
  br label %55

53:                                               ; preds = %42
  %54 = load double, double* @DBL_MIN, align 8
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi double [ %52, %49 ], [ %54, %53 ]
  %57 = load double*, double** %9, align 8
  store double %56, double* %57, align 8
  %58 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %12, align 8
  %59 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %58, i32 0, i32 3
  %60 = load double, double* %59, align 8
  %61 = fcmp ogt double %60, 0.000000e+00
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.wlr_xwayland_surface_size_hints*, %struct.wlr_xwayland_surface_size_hints** %12, align 8
  %64 = getelementptr inbounds %struct.wlr_xwayland_surface_size_hints, %struct.wlr_xwayland_surface_size_hints* %63, i32 0, i32 3
  %65 = load double, double* %64, align 8
  br label %68

66:                                               ; preds = %55
  %67 = load double, double* @DBL_MAX, align 8
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi double [ %65, %62 ], [ %67, %66 ]
  %70 = load double*, double** %10, align 8
  store double %69, double* %70, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
