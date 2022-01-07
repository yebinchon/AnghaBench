; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_at_linear.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_at_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32, i32, i32, i32, i32 }
%struct.sway_node = type { i32 }
%struct.wlr_surface = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.sway_container** }
%struct.wlr_box = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_container* (%struct.sway_node*, double, double, %struct.wlr_surface**, double*, double*)* @container_at_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_container* @container_at_linear(%struct.sway_node* %0, double %1, double %2, %struct.wlr_surface** %3, double* %4, double* %5) #0 {
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_node*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.wlr_surface**, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sway_container*, align 8
  %17 = alloca %struct.wlr_box, align 4
  store %struct.sway_node* %0, %struct.sway_node** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store %struct.wlr_surface** %3, %struct.wlr_surface*** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  %18 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %19 = call %struct.TYPE_3__* @node_get_children(%struct.sway_node* %18)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %64, %6
  %21 = load i32, i32* %15, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.sway_container**, %struct.sway_container*** %28, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %29, i64 %31
  %33 = load %struct.sway_container*, %struct.sway_container** %32, align 8
  store %struct.sway_container* %33, %struct.sway_container** %16, align 8
  %34 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %17, i32 0, i32 0
  %35 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %36 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %17, i32 0, i32 1
  %39 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %40 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %38, align 4
  %42 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %17, i32 0, i32 2
  %43 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %44 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 4
  %46 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %17, i32 0, i32 3
  %47 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %48 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %46, align 4
  %50 = load double, double* %9, align 8
  %51 = load double, double* %10, align 8
  %52 = call i64 @wlr_box_contains_point(%struct.wlr_box* %17, double %50, double %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %26
  %55 = load %struct.sway_container*, %struct.sway_container** %16, align 8
  %56 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %55, i32 0, i32 0
  %57 = load double, double* %9, align 8
  %58 = load double, double* %10, align 8
  %59 = load %struct.wlr_surface**, %struct.wlr_surface*** %11, align 8
  %60 = load double*, double** %12, align 8
  %61 = load double*, double** %13, align 8
  %62 = call %struct.sway_container* @tiling_container_at(i32* %56, double %57, double %58, %struct.wlr_surface** %59, double* %60, double* %61)
  store %struct.sway_container* %62, %struct.sway_container** %7, align 8
  br label %68

63:                                               ; preds = %26
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %20

67:                                               ; preds = %20
  store %struct.sway_container* null, %struct.sway_container** %7, align 8
  br label %68

68:                                               ; preds = %67, %54
  %69 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  ret %struct.sway_container* %69
}

declare dso_local %struct.TYPE_3__* @node_get_children(%struct.sway_node*) #1

declare dso_local i64 @wlr_box_contains_point(%struct.wlr_box*, double, double) #1

declare dso_local %struct.sway_container* @tiling_container_at(i32*, double, double, %struct.wlr_surface**, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
