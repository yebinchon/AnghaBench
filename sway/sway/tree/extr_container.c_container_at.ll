; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_at.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64 }
%struct.sway_workspace = type { i32 }
%struct.wlr_surface = type { i32 }
%struct.sway_seat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_container* @container_at(%struct.sway_workspace* %0, double %1, double %2, %struct.wlr_surface** %3, double* %4, double* %5) #0 {
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_workspace*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.wlr_surface**, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca %struct.sway_container*, align 8
  %15 = alloca %struct.sway_seat*, align 8
  %16 = alloca %struct.sway_container*, align 8
  %17 = alloca i32, align 4
  store %struct.sway_workspace* %0, %struct.sway_workspace** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store %struct.wlr_surface** %3, %struct.wlr_surface*** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  %18 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %18, %struct.sway_seat** %15, align 8
  %19 = load %struct.sway_seat*, %struct.sway_seat** %15, align 8
  %20 = call %struct.sway_container* @seat_get_focused_container(%struct.sway_seat* %19)
  store %struct.sway_container* %20, %struct.sway_container** %16, align 8
  %21 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %22 = icmp ne %struct.sway_container* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %25 = call i64 @container_is_floating_or_child(%struct.sway_container* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %6
  %28 = phi i1 [ false, %6 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %17, align 4
  %30 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %31 = icmp ne %struct.sway_container* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %34 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %39 = load double, double* %9, align 8
  %40 = load double, double* %10, align 8
  %41 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %42 = load double*, double** %12, align 8
  %43 = load double*, double** %13, align 8
  %44 = call %struct.sway_container* @surface_at_view(%struct.sway_container* %38, double %39, double %40, %struct.wlr_surface** %41, double* %42, double* %43)
  store %struct.sway_container* %44, %struct.sway_container** %14, align 8
  %45 = load %struct.sway_container*, %struct.sway_container** %14, align 8
  %46 = icmp ne %struct.sway_container* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %49 = load %struct.wlr_surface*, %struct.wlr_surface** %48, align 8
  %50 = call i64 @surface_is_popup(%struct.wlr_surface* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load %struct.sway_container*, %struct.sway_container** %14, align 8
  store %struct.sway_container* %53, %struct.sway_container** %7, align 8
  br label %102

54:                                               ; preds = %47, %37
  %55 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  store %struct.wlr_surface* null, %struct.wlr_surface** %55, align 8
  br label %56

56:                                               ; preds = %54, %32, %27
  %57 = load double, double* %9, align 8
  %58 = load double, double* %10, align 8
  %59 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %60 = load double*, double** %12, align 8
  %61 = load double*, double** %13, align 8
  %62 = call %struct.sway_container* @floating_container_at(double %57, double %58, %struct.wlr_surface** %59, double* %60, double* %61)
  store %struct.sway_container* %62, %struct.sway_container** %14, align 8
  %63 = icmp ne %struct.sway_container* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load %struct.sway_container*, %struct.sway_container** %14, align 8
  store %struct.sway_container* %65, %struct.sway_container** %7, align 8
  br label %102

66:                                               ; preds = %56
  %67 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %68 = icmp ne %struct.sway_container* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %71 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %69
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %74
  %78 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %79 = load double, double* %9, align 8
  %80 = load double, double* %10, align 8
  %81 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %82 = load double*, double** %12, align 8
  %83 = load double*, double** %13, align 8
  %84 = call %struct.sway_container* @surface_at_view(%struct.sway_container* %78, double %79, double %80, %struct.wlr_surface** %81, double* %82, double* %83)
  store %struct.sway_container* %84, %struct.sway_container** %14, align 8
  %85 = icmp ne %struct.sway_container* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load %struct.sway_container*, %struct.sway_container** %14, align 8
  store %struct.sway_container* %87, %struct.sway_container** %7, align 8
  br label %102

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %74, %69, %66
  %90 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %91 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %90, i32 0, i32 0
  %92 = load double, double* %9, align 8
  %93 = load double, double* %10, align 8
  %94 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %95 = load double*, double** %12, align 8
  %96 = load double*, double** %13, align 8
  %97 = call %struct.sway_container* @tiling_container_at(i32* %91, double %92, double %93, %struct.wlr_surface** %94, double* %95, double* %96)
  store %struct.sway_container* %97, %struct.sway_container** %14, align 8
  %98 = icmp ne %struct.sway_container* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load %struct.sway_container*, %struct.sway_container** %14, align 8
  store %struct.sway_container* %100, %struct.sway_container** %7, align 8
  br label %102

101:                                              ; preds = %89
  store %struct.sway_container* null, %struct.sway_container** %7, align 8
  br label %102

102:                                              ; preds = %101, %99, %86, %64, %52
  %103 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  ret %struct.sway_container* %103
}

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_container* @seat_get_focused_container(%struct.sway_seat*) #1

declare dso_local i64 @container_is_floating_or_child(%struct.sway_container*) #1

declare dso_local %struct.sway_container* @surface_at_view(%struct.sway_container*, double, double, %struct.wlr_surface**, double*, double*) #1

declare dso_local i64 @surface_is_popup(%struct.wlr_surface*) #1

declare dso_local %struct.sway_container* @floating_container_at(double, double, %struct.wlr_surface**, double*, double*) #1

declare dso_local %struct.sway_container* @tiling_container_at(i32*, double, double, %struct.wlr_surface**, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
