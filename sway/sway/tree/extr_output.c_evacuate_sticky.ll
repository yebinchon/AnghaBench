; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_evacuate_sticky.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_evacuate_sticky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sway_container**, i64 }
%struct.sway_container = type { i32 }
%struct.sway_output = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"New output does not have a workspace\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_workspace*, %struct.sway_output*)* @evacuate_sticky to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evacuate_sticky(%struct.sway_workspace* %0, %struct.sway_output* %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca %struct.sway_output*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  %6 = alloca %struct.sway_container*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %3, align 8
  store %struct.sway_output* %1, %struct.sway_output** %4, align 8
  %7 = load %struct.sway_output*, %struct.sway_output** %4, align 8
  %8 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %7)
  store %struct.sway_workspace* %8, %struct.sway_workspace** %5, align 8
  %9 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %10 = call i32 @sway_assert(%struct.sway_workspace* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %43

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %21, %13
  %15 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %16 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %14
  %22 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %23 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.sway_container**, %struct.sway_container*** %25, align 8
  %27 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %26, i64 0
  %28 = load %struct.sway_container*, %struct.sway_container** %27, align 8
  store %struct.sway_container* %28, %struct.sway_container** %6, align 8
  %29 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %30 = call i32 @container_detach(%struct.sway_container* %29)
  %31 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %32 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %33 = call i32 @workspace_add_floating(%struct.sway_workspace* %31, %struct.sway_container* %32)
  %34 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %35 = call i32 @container_handle_fullscreen_reparent(%struct.sway_container* %34)
  %36 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %37 = call i32 @container_floating_move_to_center(%struct.sway_container* %36)
  %38 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %39 = call i32 @ipc_event_window(%struct.sway_container* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %14

40:                                               ; preds = %14
  %41 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %42 = call i32 @workspace_detect_urgent(%struct.sway_workspace* %41)
  br label %43

43:                                               ; preds = %40, %12
  ret void
}

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local i32 @sway_assert(%struct.sway_workspace*, i8*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @workspace_add_floating(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i32 @container_handle_fullscreen_reparent(%struct.sway_container*) #1

declare dso_local i32 @container_floating_move_to_center(%struct.sway_container*) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

declare dso_local i32 @workspace_detect_urgent(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
