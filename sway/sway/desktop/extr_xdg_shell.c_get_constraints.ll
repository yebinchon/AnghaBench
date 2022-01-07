; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_get_constraints.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_get_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wlr_xdg_toplevel_state }
%struct.wlr_xdg_toplevel_state = type { double, double, double, double }

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
  %11 = alloca %struct.wlr_xdg_toplevel_state*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %6, align 8
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %12 = load %struct.sway_view*, %struct.sway_view** %6, align 8
  %13 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.wlr_xdg_toplevel_state* %17, %struct.wlr_xdg_toplevel_state** %11, align 8
  %18 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %11, align 8
  %19 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fcmp ogt double %20, 0.000000e+00
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %11, align 8
  %24 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  br label %28

26:                                               ; preds = %5
  %27 = load double, double* @DBL_MIN, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi double [ %25, %22 ], [ %27, %26 ]
  %30 = load double*, double** %7, align 8
  store double %29, double* %30, align 8
  %31 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %11, align 8
  %32 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = fcmp ogt double %33, 0.000000e+00
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %11, align 8
  %37 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  br label %41

39:                                               ; preds = %28
  %40 = load double, double* @DBL_MAX, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi double [ %38, %35 ], [ %40, %39 ]
  %43 = load double*, double** %8, align 8
  store double %42, double* %43, align 8
  %44 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %11, align 8
  %45 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = fcmp ogt double %46, 0.000000e+00
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %11, align 8
  %50 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %49, i32 0, i32 2
  %51 = load double, double* %50, align 8
  br label %54

52:                                               ; preds = %41
  %53 = load double, double* @DBL_MIN, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi double [ %51, %48 ], [ %53, %52 ]
  %56 = load double*, double** %9, align 8
  store double %55, double* %56, align 8
  %57 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %11, align 8
  %58 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %57, i32 0, i32 3
  %59 = load double, double* %58, align 8
  %60 = fcmp ogt double %59, 0.000000e+00
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %11, align 8
  %63 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %62, i32 0, i32 3
  %64 = load double, double* %63, align 8
  br label %67

65:                                               ; preds = %54
  %66 = load double, double* @DBL_MAX, align 8
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi double [ %64, %61 ], [ %66, %65 ]
  %69 = load double*, double** %10, align 8
  store double %68, double* %69, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
