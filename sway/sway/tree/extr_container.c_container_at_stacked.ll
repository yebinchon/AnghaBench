; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_at_stacked.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_at_stacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32 }
%struct.sway_node = type { i32 }
%struct.wlr_surface = type { i32 }
%struct.wlr_box = type { double, double }
%struct.sway_seat = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.sway_container** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_container* (%struct.sway_node*, double, double, %struct.wlr_surface**, double*, double*)* @container_at_stacked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_container* @container_at_stacked(%struct.sway_node* %0, double %1, double %2, %struct.wlr_surface** %3, double* %4, double* %5) #0 {
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_node*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.wlr_surface**, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca %struct.wlr_box, align 8
  %15 = alloca %struct.sway_seat*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.sway_container*, align 8
  %20 = alloca %struct.sway_node*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store %struct.wlr_surface** %3, %struct.wlr_surface*** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  %21 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %22 = call i32 @node_get_box(%struct.sway_node* %21, %struct.wlr_box* %14)
  %23 = load double, double* %10, align 8
  %24 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %14, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fcmp olt double %23, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %6
  %28 = load double, double* %10, align 8
  %29 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %14, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %14, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = fadd double %30, %32
  %34 = fcmp ogt double %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27, %6
  store %struct.sway_container* null, %struct.sway_container** %7, align 8
  br label %84

36:                                               ; preds = %27
  %37 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %37, %struct.sway_seat** %15, align 8
  %38 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %39 = call %struct.TYPE_3__* @node_get_children(%struct.sway_node* %38)
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %16, align 8
  %40 = call i32 (...) @container_titlebar_height()
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %36
  %44 = load double, double* %10, align 8
  %45 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %14, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = fsub double %44, %46
  %48 = load i32, i32* %17, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %47, %49
  %51 = fptosi double %50 to i32
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %43
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load %struct.sway_container**, %struct.sway_container*** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %60, i64 %62
  %64 = load %struct.sway_container*, %struct.sway_container** %63, align 8
  store %struct.sway_container* %64, %struct.sway_container** %19, align 8
  %65 = load %struct.sway_container*, %struct.sway_container** %19, align 8
  store %struct.sway_container* %65, %struct.sway_container** %7, align 8
  br label %84

66:                                               ; preds = %43
  br label %67

67:                                               ; preds = %66, %36
  %68 = load %struct.sway_seat*, %struct.sway_seat** %15, align 8
  %69 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %70 = call %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat* %68, %struct.sway_node* %69)
  store %struct.sway_node* %70, %struct.sway_node** %20, align 8
  %71 = load %struct.sway_node*, %struct.sway_node** %20, align 8
  %72 = icmp ne %struct.sway_node* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.sway_node*, %struct.sway_node** %20, align 8
  %75 = load double, double* %9, align 8
  %76 = load double, double* %10, align 8
  %77 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %78 = load double*, double** %12, align 8
  %79 = load double*, double** %13, align 8
  %80 = call %struct.sway_container* @tiling_container_at(%struct.sway_node* %74, double %75, double %76, %struct.wlr_surface** %77, double* %78, double* %79)
  br label %82

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %73
  %83 = phi %struct.sway_container* [ %80, %73 ], [ null, %81 ]
  store %struct.sway_container* %83, %struct.sway_container** %7, align 8
  br label %84

84:                                               ; preds = %82, %57, %35
  %85 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  ret %struct.sway_container* %85
}

declare dso_local i32 @node_get_box(%struct.sway_node*, %struct.wlr_box*) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.TYPE_3__* @node_get_children(%struct.sway_node*) #1

declare dso_local i32 @container_titlebar_height(...) #1

declare dso_local %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local %struct.sway_container* @tiling_container_at(%struct.sway_node*, double, double, %struct.wlr_surface**, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
