; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_insert_tiling.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_insert_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i64, i32, i32 }
%struct.sway_container = type { i32, %struct.sway_workspace* }

@L_STACKED = common dso_local global i64 0, align 8
@L_TABBED = common dso_local global i64 0, align 8
@set_workspace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workspace_insert_tiling(%struct.sway_workspace* %0, %struct.sway_container* %1, i32 %2) #0 {
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca i32, align 4
  store %struct.sway_workspace* %0, %struct.sway_workspace** %4, align 8
  store %struct.sway_container* %1, %struct.sway_container** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %8 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %7, i32 0, i32 1
  %9 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %10 = icmp ne %struct.sway_workspace* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %13 = call i32 @container_detach(%struct.sway_container* %12)
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %16 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @L_STACKED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %22 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @L_TABBED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20, %14
  %27 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %28 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %29 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.sway_container* @container_split(%struct.sway_container* %27, i64 %30)
  store %struct.sway_container* %31, %struct.sway_container** %5, align 8
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %34 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %38 = call i32 @list_insert(i32 %35, i32 %36, %struct.sway_container* %37)
  %39 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %40 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %41 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %40, i32 0, i32 1
  store %struct.sway_workspace* %39, %struct.sway_workspace** %41, align 8
  %42 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %43 = load i32, i32* @set_workspace, align 4
  %44 = call i32 @container_for_each_child(%struct.sway_container* %42, i32 %43, i32* null)
  %45 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %46 = call i32 @container_handle_fullscreen_reparent(%struct.sway_container* %45)
  %47 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %48 = call i32 @workspace_update_representation(%struct.sway_workspace* %47)
  %49 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %50 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %49, i32 0, i32 1
  %51 = call i32 @node_set_dirty(i32* %50)
  %52 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 0
  %54 = call i32 @node_set_dirty(i32* %53)
  ret void
}

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local %struct.sway_container* @container_split(%struct.sway_container*, i64) #1

declare dso_local i32 @list_insert(i32, i32, %struct.sway_container*) #1

declare dso_local i32 @container_for_each_child(%struct.sway_container*, i32, i32*) #1

declare dso_local i32 @container_handle_fullscreen_reparent(%struct.sway_container*) #1

declare dso_local i32 @workspace_update_representation(%struct.sway_workspace*) #1

declare dso_local i32 @node_set_dirty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
