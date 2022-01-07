; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_container_move_to_workspace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_container_move_to_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i64, i64, i64, i64, i64, i32, %struct.sway_workspace* }
%struct.sway_workspace = type { %struct.sway_output* }
%struct.sway_output = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"move\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, %struct.sway_workspace*)* @container_move_to_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @container_move_to_workspace(%struct.sway_container* %0, %struct.sway_workspace* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  %6 = alloca %struct.sway_output*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store %struct.sway_workspace* %1, %struct.sway_workspace** %4, align 8
  %7 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %8 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %7, i32 0, i32 6
  %9 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %10 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %11 = icmp eq %struct.sway_workspace* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %78

13:                                               ; preds = %2
  %14 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %15 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %14, i32 0, i32 6
  %16 = load %struct.sway_workspace*, %struct.sway_workspace** %15, align 8
  store %struct.sway_workspace* %16, %struct.sway_workspace** %5, align 8
  %17 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %18 = call i64 @container_is_floating(%struct.sway_container* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %13
  %21 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %22 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %21, i32 0, i32 6
  %23 = load %struct.sway_workspace*, %struct.sway_workspace** %22, align 8
  %24 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %23, i32 0, i32 0
  %25 = load %struct.sway_output*, %struct.sway_output** %24, align 8
  store %struct.sway_output* %25, %struct.sway_output** %6, align 8
  %26 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %27 = call i32 @container_detach(%struct.sway_container* %26)
  %28 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %29 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %30 = call i32 @workspace_add_floating(%struct.sway_workspace* %28, %struct.sway_container* %29)
  %31 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %32 = call i32 @container_handle_fullscreen_reparent(%struct.sway_container* %31)
  %33 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %35 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %34, i32 0, i32 0
  %36 = load %struct.sway_output*, %struct.sway_output** %35, align 8
  %37 = icmp ne %struct.sway_output* %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %20
  %39 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %40 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %45 = call i32 @container_floating_move_to_center(%struct.sway_container* %44)
  br label %46

46:                                               ; preds = %43, %38, %20
  br label %63

47:                                               ; preds = %13
  %48 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %49 = call i32 @container_detach(%struct.sway_container* %48)
  %50 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %55 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %57 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %59 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %60 = call i32 @workspace_add_tiling(%struct.sway_workspace* %58, %struct.sway_container* %59)
  %61 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %62 = call i32 @container_update_representation(%struct.sway_container* %61)
  br label %63

63:                                               ; preds = %47, %46
  %64 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %65 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %70 = call i32 @ipc_event_window(%struct.sway_container* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %73 = call i32 @workspace_detect_urgent(%struct.sway_workspace* %72)
  %74 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %75 = call i32 @workspace_detect_urgent(%struct.sway_workspace* %74)
  %76 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %77 = call i32 @workspace_focus_fullscreen(%struct.sway_workspace* %76)
  br label %78

78:                                               ; preds = %71, %12
  ret void
}

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @workspace_add_floating(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i32 @container_handle_fullscreen_reparent(%struct.sway_container*) #1

declare dso_local i32 @container_floating_move_to_center(%struct.sway_container*) #1

declare dso_local i32 @workspace_add_tiling(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i32 @container_update_representation(%struct.sway_container*) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

declare dso_local i32 @workspace_detect_urgent(%struct.sway_workspace*) #1

declare dso_local i32 @workspace_focus_fullscreen(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
