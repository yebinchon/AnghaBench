; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_surface_at_view.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_surface_at_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { double, double, %struct.sway_view* }
%struct.sway_view = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double, double }
%struct.wlr_surface = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Expected a view\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_container* (%struct.sway_container*, double, double, %struct.wlr_surface**, double*, double*)* @surface_at_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_container* @surface_at_view(%struct.sway_container* %0, double %1, double %2, %struct.wlr_surface** %3, double* %4, double* %5) #0 {
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.wlr_surface**, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca %struct.sway_view*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca %struct.wlr_surface*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store %struct.wlr_surface** %3, %struct.wlr_surface*** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  %20 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %21 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %20, i32 0, i32 2
  %22 = load %struct.sway_view*, %struct.sway_view** %21, align 8
  %23 = call i32 @sway_assert(%struct.sway_view* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  store %struct.sway_container* null, %struct.sway_container** %7, align 8
  br label %72

26:                                               ; preds = %6
  %27 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 2
  %29 = load %struct.sway_view*, %struct.sway_view** %28, align 8
  store %struct.sway_view* %29, %struct.sway_view** %14, align 8
  %30 = load double, double* %9, align 8
  %31 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %32 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = fsub double %30, %33
  %35 = load %struct.sway_view*, %struct.sway_view** %14, align 8
  %36 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fadd double %34, %38
  store double %39, double* %15, align 8
  %40 = load double, double* %10, align 8
  %41 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %42 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = fsub double %40, %43
  %45 = load %struct.sway_view*, %struct.sway_view** %14, align 8
  %46 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load double, double* %47, align 8
  %49 = fadd double %44, %48
  store double %49, double* %16, align 8
  store %struct.wlr_surface* null, %struct.wlr_surface** %19, align 8
  %50 = load %struct.sway_view*, %struct.sway_view** %14, align 8
  %51 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %60 [
    i32 129, label %53
  ]

53:                                               ; preds = %26
  %54 = load %struct.sway_view*, %struct.sway_view** %14, align 8
  %55 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load double, double* %15, align 8
  %58 = load double, double* %16, align 8
  %59 = call %struct.wlr_surface* @wlr_xdg_surface_surface_at(i32 %56, double %57, double %58, double* %17, double* %18)
  store %struct.wlr_surface* %59, %struct.wlr_surface** %19, align 8
  br label %60

60:                                               ; preds = %26, %53
  %61 = load %struct.wlr_surface*, %struct.wlr_surface** %19, align 8
  %62 = icmp ne %struct.wlr_surface* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load double, double* %17, align 8
  %65 = load double*, double** %12, align 8
  store double %64, double* %65, align 8
  %66 = load double, double* %18, align 8
  %67 = load double*, double** %13, align 8
  store double %66, double* %67, align 8
  %68 = load %struct.wlr_surface*, %struct.wlr_surface** %19, align 8
  %69 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  store %struct.wlr_surface* %68, %struct.wlr_surface** %69, align 8
  %70 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  store %struct.sway_container* %70, %struct.sway_container** %7, align 8
  br label %72

71:                                               ; preds = %60
  store %struct.sway_container* null, %struct.sway_container** %7, align 8
  br label %72

72:                                               ; preds = %71, %63, %25
  %73 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  ret %struct.sway_container* %73
}

declare dso_local i32 @sway_assert(%struct.sway_view*, i8*) #1

declare dso_local %struct.wlr_surface* @wlr_xdg_surface_surface_at(i32, double, double, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
