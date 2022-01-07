; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_warp_to_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_warp_to_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sway_container = type { double, double, double, double }
%struct.wlr_box = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_warp_to_container(%struct.sway_cursor* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_cursor*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.wlr_box, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %8 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %9 = icmp ne %struct.sway_container* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %50

11:                                               ; preds = %2
  %12 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %13 = call i32 @container_get_box(%struct.sway_container* %12, %struct.wlr_box* %5)
  %14 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %15 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %20 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @wlr_box_contains_point(%struct.wlr_box* %5, i32 %18, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  br label %50

27:                                               ; preds = %11
  %28 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %29 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %32 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = fdiv double %33, 2.000000e+00
  %35 = fadd double %30, %34
  store double %35, double* %6, align 8
  %36 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %37 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %36, i32 0, i32 2
  %38 = load double, double* %37, align 8
  %39 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %40 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %39, i32 0, i32 3
  %41 = load double, double* %40, align 8
  %42 = fdiv double %41, 2.000000e+00
  %43 = fadd double %38, %42
  store double %43, double* %7, align 8
  %44 = load %struct.sway_cursor*, %struct.sway_cursor** %3, align 8
  %45 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load double, double* %6, align 8
  %48 = load double, double* %7, align 8
  %49 = call i32 @wlr_cursor_warp(%struct.TYPE_2__* %46, i32* null, double %47, double %48)
  br label %50

50:                                               ; preds = %27, %26, %10
  ret void
}

declare dso_local i32 @container_get_box(%struct.sway_container*, %struct.wlr_box*) #1

declare dso_local i64 @wlr_box_contains_point(%struct.wlr_box*, i32, i32) #1

declare dso_local i32 @wlr_cursor_warp(%struct.TYPE_2__*, i32*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
