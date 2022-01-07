; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_scratchpad_hide.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_scratchpad_hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sway_container = type { i64, %struct.sway_node, %struct.sway_workspace* }
%struct.sway_node = type { i32 }
%struct.sway_workspace = type { i32 }
%struct.sway_seat = type { i32 }

@root = common dso_local global %struct.TYPE_2__* null, align 8
@FULLSCREEN_GLOBAL = common dso_local global i64 0, align 8
@FULLSCREEN_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"move\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @root_scratchpad_hide(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.sway_seat*, align 8
  %4 = alloca %struct.sway_node*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %6 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %6, %struct.sway_seat** %3, align 8
  %7 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %7, i32* %9)
  store %struct.sway_node* %10, %struct.sway_node** %4, align 8
  %11 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 2
  %13 = load %struct.sway_workspace*, %struct.sway_workspace** %12, align 8
  store %struct.sway_workspace* %13, %struct.sway_workspace** %5, align 8
  %14 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %15 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %21 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %20, i32 0, i32 2
  %22 = load %struct.sway_workspace*, %struct.sway_workspace** %21, align 8
  %23 = icmp ne %struct.sway_workspace* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %64

25:                                               ; preds = %19, %1
  %26 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %27 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FULLSCREEN_NONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %33 = call i32 @container_fullscreen_disable(%struct.sway_container* %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %36 = call i32 @container_detach(%struct.sway_container* %35)
  %37 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %38 = call i32 @arrange_workspace(%struct.sway_workspace* %37)
  %39 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %40 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %39, i32 0, i32 1
  %41 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %42 = icmp eq %struct.sway_node* %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %34
  %44 = load %struct.sway_node*, %struct.sway_node** %4, align 8
  %45 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %46 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %45, i32 0, i32 1
  %47 = call i64 @node_has_ancestor(%struct.sway_node* %44, %struct.sway_node* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43, %34
  %50 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %51 = load %struct.sway_seat*, %struct.sway_seat** %3, align 8
  %52 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %53 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %52, i32 0, i32 0
  %54 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %51, i32* %53)
  %55 = call i32 @seat_set_focus(%struct.sway_seat* %50, %struct.sway_node* %54)
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %61 = call i32 @list_move_to_end(i32 %59, %struct.sway_container* %60)
  %62 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %63 = call i32 @ipc_event_window(%struct.sway_container* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %56, %24
  ret void
}

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @container_fullscreen_disable(%struct.sway_container*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

declare dso_local i64 @node_has_ancestor(%struct.sway_node*, %struct.sway_node*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @list_move_to_end(i32, %struct.sway_container*) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
