; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_at_tabbed.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_at_tabbed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32 }
%struct.sway_node = type { i32 }
%struct.wlr_surface = type { i32 }
%struct.wlr_box = type { double, double, i32, double }
%struct.sway_seat = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.sway_container** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_container* (%struct.sway_node*, double, double, %struct.wlr_surface**, double*, double*)* @container_at_tabbed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_container* @container_at_tabbed(%struct.sway_node* %0, double %1, double %2, %struct.wlr_surface** %3, double* %4, double* %5) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca %struct.sway_container*, align 8
  %21 = alloca %struct.sway_node*, align 8
  store %struct.sway_node* %0, %struct.sway_node** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store %struct.wlr_surface** %3, %struct.wlr_surface*** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  %22 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %23 = call i32 @node_get_box(%struct.sway_node* %22, %struct.wlr_box* %14)
  %24 = load double, double* %10, align 8
  %25 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %14, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = fcmp olt double %24, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %6
  %29 = load double, double* %10, align 8
  %30 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %14, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %14, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = fadd double %31, %33
  %35 = fcmp ogt double %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %6
  store %struct.sway_container* null, %struct.sway_container** %7, align 8
  br label %106

37:                                               ; preds = %28
  %38 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %38, %struct.sway_seat** %15, align 8
  %39 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %40 = call %struct.TYPE_3__* @node_get_children(%struct.sway_node* %39)
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %16, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store %struct.sway_container* null, %struct.sway_container** %7, align 8
  br label %106

46:                                               ; preds = %37
  %47 = call i32 (...) @container_titlebar_height()
  store i32 %47, i32* %17, align 4
  %48 = load double, double* %10, align 8
  %49 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %14, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sitofp i32 %51 to double
  %53 = fadd double %50, %52
  %54 = fcmp olt double %48, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %14, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %57, %60
  store i32 %61, i32* %18, align 4
  %62 = load double, double* %9, align 8
  %63 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %14, i32 0, i32 3
  %64 = load double, double* %63, align 8
  %65 = fsub double %62, %64
  %66 = load i32, i32* %18, align 4
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %65, %67
  %69 = fptosi double %68 to i32
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %55
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %19, align 4
  br label %80

80:                                               ; preds = %75, %55
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load %struct.sway_container**, %struct.sway_container*** %82, align 8
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %83, i64 %85
  %87 = load %struct.sway_container*, %struct.sway_container** %86, align 8
  store %struct.sway_container* %87, %struct.sway_container** %20, align 8
  %88 = load %struct.sway_container*, %struct.sway_container** %20, align 8
  store %struct.sway_container* %88, %struct.sway_container** %7, align 8
  br label %106

89:                                               ; preds = %46
  %90 = load %struct.sway_seat*, %struct.sway_seat** %15, align 8
  %91 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %92 = call %struct.sway_node* @seat_get_active_tiling_child(%struct.sway_seat* %90, %struct.sway_node* %91)
  store %struct.sway_node* %92, %struct.sway_node** %21, align 8
  %93 = load %struct.sway_node*, %struct.sway_node** %21, align 8
  %94 = icmp ne %struct.sway_node* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.sway_node*, %struct.sway_node** %21, align 8
  %97 = load double, double* %9, align 8
  %98 = load double, double* %10, align 8
  %99 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %100 = load double*, double** %12, align 8
  %101 = load double*, double** %13, align 8
  %102 = call %struct.sway_container* @tiling_container_at(%struct.sway_node* %96, double %97, double %98, %struct.wlr_surface** %99, double* %100, double* %101)
  br label %104

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %95
  %105 = phi %struct.sway_container* [ %102, %95 ], [ null, %103 ]
  store %struct.sway_container* %105, %struct.sway_container** %7, align 8
  br label %106

106:                                              ; preds = %104, %80, %45, %36
  %107 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  ret %struct.sway_container* %107
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
