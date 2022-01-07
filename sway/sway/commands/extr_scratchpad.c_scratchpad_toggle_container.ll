; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_scratchpad.c_scratchpad_toggle_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_scratchpad.c_scratchpad_toggle_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.sway_workspace*, i32 }
%struct.sway_workspace = type { i32 }
%struct.sway_seat = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Container isn't in the scratchpad\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*)* @scratchpad_toggle_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scratchpad_toggle_container(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %5 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %6 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @sway_assert(i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %12, %struct.sway_seat** %3, align 8
  %13 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %14 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %13)
  store %struct.sway_workspace* %14, %struct.sway_workspace** %4, align 8
  %15 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %16 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %15, i32 0, i32 0
  %17 = load %struct.sway_workspace*, %struct.sway_workspace** %16, align 8
  %18 = icmp ne %struct.sway_workspace* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %21 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %22 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %21, i32 0, i32 0
  %23 = load %struct.sway_workspace*, %struct.sway_workspace** %22, align 8
  %24 = icmp eq %struct.sway_workspace* %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %27 = call i32 @root_scratchpad_hide(%struct.sway_container* %26)
  br label %33

28:                                               ; preds = %19, %11
  %29 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %30 = call i32 @root_scratchpad_show(%struct.sway_container* %29)
  %31 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %32 = call i32 @ipc_event_window(%struct.sway_container* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %25, %10
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local i32 @root_scratchpad_hide(%struct.sway_container*) #1

declare dso_local i32 @root_scratchpad_show(%struct.sway_container*) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
