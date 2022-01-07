; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_set_default_size.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_set_default_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { double, double, double, double, i32, i32 }
%struct.wlr_box = type { double, double }

@.str = private unnamed_addr constant [36 x i8] c"Expected a container on a workspace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_floating_set_default_size(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wlr_box*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %10 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %11 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sway_assert(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %63

16:                                               ; preds = %1
  %17 = call i32 @floating_calculate_constraints(i32* %3, i32* %4, i32* %5, i32* %6)
  %18 = call %struct.wlr_box* @calloc(i32 1, i32 16)
  store %struct.wlr_box* %18, %struct.wlr_box** %7, align 8
  %19 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %20 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wlr_box*, %struct.wlr_box** %7, align 8
  %23 = call i32 @workspace_get_box(i32 %21, %struct.wlr_box* %22)
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.wlr_box*, %struct.wlr_box** %7, align 8
  %26 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = fmul double %27, 5.000000e-01
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @fmin(double %28, i32 %29)
  %31 = call double @fmax(i32 %24, i32 %30)
  store double %31, double* %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.wlr_box*, %struct.wlr_box** %7, align 8
  %34 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = fmul double %35, 7.500000e-01
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @fmin(double %36, i32 %37)
  %39 = call double @fmax(i32 %32, i32 %38)
  store double %39, double* %9, align 8
  %40 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %41 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %16
  %45 = load double, double* %8, align 8
  %46 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %47 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %46, i32 0, i32 0
  store double %45, double* %47, align 8
  %48 = load double, double* %9, align 8
  %49 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %50 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %49, i32 0, i32 1
  store double %48, double* %50, align 8
  br label %60

51:                                               ; preds = %16
  %52 = load double, double* %8, align 8
  %53 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %54 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %53, i32 0, i32 2
  store double %52, double* %54, align 8
  %55 = load double, double* %9, align 8
  %56 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %57 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %56, i32 0, i32 3
  store double %55, double* %57, align 8
  %58 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %59 = call i32 @container_set_geometry_from_content(%struct.sway_container* %58)
  br label %60

60:                                               ; preds = %51, %44
  %61 = load %struct.wlr_box*, %struct.wlr_box** %7, align 8
  %62 = call i32 @free(%struct.wlr_box* %61)
  br label %63

63:                                               ; preds = %60, %15
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @floating_calculate_constraints(i32*, i32*, i32*, i32*) #1

declare dso_local %struct.wlr_box* @calloc(i32, i32) #1

declare dso_local i32 @workspace_get_box(i32, %struct.wlr_box*) #1

declare dso_local double @fmax(i32, i32) #1

declare dso_local i32 @fmin(double, i32) #1

declare dso_local i32 @container_set_geometry_from_content(%struct.sway_container*) #1

declare dso_local i32 @free(%struct.wlr_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
