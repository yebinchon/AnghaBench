; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_scratchpad_show.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_scratchpad_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.sway_container = type { i32, i32, i32, i32, i32, %struct.sway_workspace* }
%struct.sway_workspace = type { i64 }
%struct.sway_seat = type { i32 }
%struct.wlr_box = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No focused workspace to show scratchpad on\00", align 1
@root = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @root_scratchpad_show(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.wlr_box, align 4
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %9 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %9, %struct.sway_seat** %3, align 8
  %10 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %11 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %10)
  store %struct.sway_workspace* %11, %struct.sway_workspace** %4, align 8
  %12 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %13 = icmp ne %struct.sway_workspace* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @SWAY_DEBUG, align 4
  %16 = call i32 @sway_log(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %86

17:                                               ; preds = %1
  %18 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %19 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %18, i32 0, i32 5
  %20 = load %struct.sway_workspace*, %struct.sway_workspace** %19, align 8
  store %struct.sway_workspace* %20, %struct.sway_workspace** %5, align 8
  %21 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %22 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %27 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @container_fullscreen_disable(i64 %28)
  br label %30

30:                                               ; preds = %25, %17
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @container_fullscreen_disable(i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %42 = icmp ne %struct.sway_workspace* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %45 = call i32 @container_detach(%struct.sway_container* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %48 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %49 = call i32 @workspace_add_floating(%struct.sway_workspace* %47, %struct.sway_container* %48)
  %50 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %54 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 2
  %57 = add nsw i32 %52, %56
  %58 = sitofp i32 %57 to double
  store double %58, double* %6, align 8
  %59 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %60 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %63 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 2
  %66 = add nsw i32 %61, %65
  %67 = sitofp i32 %66 to double
  store double %67, double* %7, align 8
  %68 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %69 = call i32 @workspace_get_box(%struct.sway_workspace* %68, %struct.wlr_box* %8)
  %70 = load double, double* %6, align 8
  %71 = load double, double* %7, align 8
  %72 = call i32 @wlr_box_contains_point(%struct.wlr_box* %8, double %70, double %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %46
  %75 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %76 = call i32 @container_floating_resize_and_center(%struct.sway_container* %75)
  br label %77

77:                                               ; preds = %74, %46
  %78 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %79 = call i32 @arrange_workspace(%struct.sway_workspace* %78)
  %80 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %81 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %82 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %83 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %82, i32 0, i32 4
  %84 = call i32 @seat_get_focus_inactive(%struct.sway_seat* %81, i32* %83)
  %85 = call i32 @seat_set_focus(%struct.sway_seat* %80, i32 %84)
  br label %86

86:                                               ; preds = %77, %14
  ret void
}

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @container_fullscreen_disable(i64) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @workspace_add_floating(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i32 @workspace_get_box(%struct.sway_workspace*, %struct.wlr_box*) #1

declare dso_local i32 @wlr_box_contains_point(%struct.wlr_box*, double, double) #1

declare dso_local i32 @container_floating_resize_and_center(%struct.sway_container*) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, i32) #1

declare dso_local i32 @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
