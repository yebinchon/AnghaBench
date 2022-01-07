; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_add_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_add_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32, i32 }
%struct.sway_container = type { i32, %struct.sway_workspace* }

@set_workspace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workspace_add_floating(%struct.sway_workspace* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca %struct.sway_container*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %5 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %6 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %5, i32 0, i32 1
  %7 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %8 = icmp ne %struct.sway_workspace* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %11 = call i32 @container_detach(%struct.sway_container* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %14 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %17 = call i32 @list_add(i32 %15, %struct.sway_container* %16)
  %18 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %19 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %20 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %19, i32 0, i32 1
  store %struct.sway_workspace* %18, %struct.sway_workspace** %20, align 8
  %21 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %22 = load i32, i32* @set_workspace, align 4
  %23 = call i32 @container_for_each_child(%struct.sway_container* %21, i32 %22, i32* null)
  %24 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %25 = call i32 @container_handle_fullscreen_reparent(%struct.sway_container* %24)
  %26 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %27 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %26, i32 0, i32 0
  %28 = call i32 @node_set_dirty(i32* %27)
  %29 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %30 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %29, i32 0, i32 0
  %31 = call i32 @node_set_dirty(i32* %30)
  ret void
}

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @list_add(i32, %struct.sway_container*) #1

declare dso_local i32 @container_for_each_child(%struct.sway_container*, i32, i32*) #1

declare dso_local i32 @container_handle_fullscreen_reparent(%struct.sway_container*) #1

declare dso_local i32 @node_set_dirty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
