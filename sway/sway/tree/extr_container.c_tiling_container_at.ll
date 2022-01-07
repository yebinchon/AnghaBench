; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_tiling_container_at.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_tiling_container_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32 }
%struct.sway_node = type { %struct.sway_container* }
%struct.wlr_surface = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_container* @tiling_container_at(%struct.sway_node* %0, double %1, double %2, %struct.wlr_surface** %3, double* %4, double* %5) #0 {
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_node*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.wlr_surface**, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store %struct.wlr_surface** %3, %struct.wlr_surface*** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  %14 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %15 = call i64 @node_is_view(%struct.sway_node* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %6
  %18 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %19 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %18, i32 0, i32 0
  %20 = load %struct.sway_container*, %struct.sway_container** %19, align 8
  %21 = load double, double* %9, align 8
  %22 = load double, double* %10, align 8
  %23 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %24 = load double*, double** %12, align 8
  %25 = load double*, double** %13, align 8
  %26 = call i32 @surface_at_view(%struct.sway_container* %20, double %21, double %22, %struct.wlr_surface** %23, double* %24, double* %25)
  %27 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %28 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %27, i32 0, i32 0
  %29 = load %struct.sway_container*, %struct.sway_container** %28, align 8
  store %struct.sway_container* %29, %struct.sway_container** %7, align 8
  br label %64

30:                                               ; preds = %6
  %31 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %32 = call i32 @node_get_children(%struct.sway_node* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store %struct.sway_container* null, %struct.sway_container** %7, align 8
  br label %64

35:                                               ; preds = %30
  %36 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %37 = call i32 @node_get_layout(%struct.sway_node* %36)
  switch i32 %37, label %63 [
    i32 132, label %38
    i32 128, label %38
    i32 129, label %46
    i32 130, label %54
    i32 131, label %62
  ]

38:                                               ; preds = %35, %35
  %39 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %40 = load double, double* %9, align 8
  %41 = load double, double* %10, align 8
  %42 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %43 = load double*, double** %12, align 8
  %44 = load double*, double** %13, align 8
  %45 = call %struct.sway_container* @container_at_linear(%struct.sway_node* %39, double %40, double %41, %struct.wlr_surface** %42, double* %43, double* %44)
  store %struct.sway_container* %45, %struct.sway_container** %7, align 8
  br label %64

46:                                               ; preds = %35
  %47 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %48 = load double, double* %9, align 8
  %49 = load double, double* %10, align 8
  %50 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %51 = load double*, double** %12, align 8
  %52 = load double*, double** %13, align 8
  %53 = call %struct.sway_container* @container_at_tabbed(%struct.sway_node* %47, double %48, double %49, %struct.wlr_surface** %50, double* %51, double* %52)
  store %struct.sway_container* %53, %struct.sway_container** %7, align 8
  br label %64

54:                                               ; preds = %35
  %55 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %56 = load double, double* %9, align 8
  %57 = load double, double* %10, align 8
  %58 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %59 = load double*, double** %12, align 8
  %60 = load double*, double** %13, align 8
  %61 = call %struct.sway_container* @container_at_stacked(%struct.sway_node* %55, double %56, double %57, %struct.wlr_surface** %58, double* %59, double* %60)
  store %struct.sway_container* %61, %struct.sway_container** %7, align 8
  br label %64

62:                                               ; preds = %35
  store %struct.sway_container* null, %struct.sway_container** %7, align 8
  br label %64

63:                                               ; preds = %35
  store %struct.sway_container* null, %struct.sway_container** %7, align 8
  br label %64

64:                                               ; preds = %63, %62, %54, %46, %38, %34, %17
  %65 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  ret %struct.sway_container* %65
}

declare dso_local i64 @node_is_view(%struct.sway_node*) #1

declare dso_local i32 @surface_at_view(%struct.sway_container*, double, double, %struct.wlr_surface**, double*, double*) #1

declare dso_local i32 @node_get_children(%struct.sway_node*) #1

declare dso_local i32 @node_get_layout(%struct.sway_node*) #1

declare dso_local %struct.sway_container* @container_at_linear(%struct.sway_node*, double, double, %struct.wlr_surface**, double*, double*) #1

declare dso_local %struct.sway_container* @container_at_tabbed(%struct.sway_node*, double, double, %struct.wlr_surface**, double*, double*) #1

declare dso_local %struct.sway_container* @container_at_stacked(%struct.sway_node*, double, double, %struct.wlr_surface**, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
