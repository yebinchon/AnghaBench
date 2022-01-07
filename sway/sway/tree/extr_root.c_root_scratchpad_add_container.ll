; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_scratchpad_add_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_root.c_root_scratchpad_add_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sway_container = type { i32, i64, i32, %struct.sway_workspace*, %struct.sway_container* }
%struct.sway_workspace = type { i32 }
%struct.sway_seat = type { i32 }
%struct.sway_node = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Container is already in scratchpad\00", align 1
@FULLSCREEN_NONE = common dso_local global i64 0, align 8
@root = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"move\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @root_scratchpad_add_container(%struct.sway_container* %0, %struct.sway_workspace* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca %struct.sway_workspace*, align 8
  %7 = alloca %struct.sway_seat*, align 8
  %8 = alloca %struct.sway_node*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store %struct.sway_workspace* %1, %struct.sway_workspace** %4, align 8
  %9 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @sway_assert(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %91

18:                                               ; preds = %2
  %19 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %20 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %19, i32 0, i32 4
  %21 = load %struct.sway_container*, %struct.sway_container** %20, align 8
  store %struct.sway_container* %21, %struct.sway_container** %5, align 8
  %22 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %23 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %22, i32 0, i32 3
  %24 = load %struct.sway_workspace*, %struct.sway_workspace** %23, align 8
  store %struct.sway_workspace* %24, %struct.sway_workspace** %6, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FULLSCREEN_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %32 = call i32 @container_fullscreen_disable(%struct.sway_container* %31)
  br label %33

33:                                               ; preds = %30, %18
  %34 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %35 = call i32 @container_is_floating(%struct.sway_container* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %39 = call i32 @container_set_floating(%struct.sway_container* %38, i32 1)
  %40 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %41 = call i32 @container_floating_set_default_size(%struct.sway_container* %40)
  %42 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %43 = call i32 @container_floating_move_to_center(%struct.sway_container* %42)
  br label %44

44:                                               ; preds = %37, %33
  %45 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %46 = call i32 @container_detach(%struct.sway_container* %45)
  %47 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %48 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %53 = call i32 @list_add(i32 %51, %struct.sway_container* %52)
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %55 = icmp ne %struct.sway_workspace* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %58 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %59 = call i32 @workspace_add_floating(%struct.sway_workspace* %57, %struct.sway_container* %58)
  br label %60

60:                                               ; preds = %56, %44
  %61 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %62 = icmp ne %struct.sway_workspace* %61, null
  br i1 %62, label %88, label %63

63:                                               ; preds = %60
  %64 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %64, %struct.sway_seat** %7, align 8
  store %struct.sway_node* null, %struct.sway_node** %8, align 8
  %65 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %66 = icmp ne %struct.sway_container* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %69 = call i32 @arrange_container(%struct.sway_container* %68)
  %70 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %71 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %72 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %71, i32 0, i32 2
  %73 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %70, i32* %72)
  store %struct.sway_node* %73, %struct.sway_node** %8, align 8
  br label %74

74:                                               ; preds = %67, %63
  %75 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %76 = icmp ne %struct.sway_node* %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %79 = call i32 @arrange_workspace(%struct.sway_workspace* %78)
  %80 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %81 = load %struct.sway_workspace*, %struct.sway_workspace** %6, align 8
  %82 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %81, i32 0, i32 0
  %83 = call %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat* %80, i32* %82)
  store %struct.sway_node* %83, %struct.sway_node** %8, align 8
  br label %84

84:                                               ; preds = %77, %74
  %85 = load %struct.sway_seat*, %struct.sway_seat** %7, align 8
  %86 = load %struct.sway_node*, %struct.sway_node** %8, align 8
  %87 = call i32 @seat_set_focus(%struct.sway_seat* %85, %struct.sway_node* %86)
  br label %88

88:                                               ; preds = %84, %60
  %89 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %90 = call i32 @ipc_event_window(%struct.sway_container* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %17
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @container_fullscreen_disable(%struct.sway_container*) #1

declare dso_local i32 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @container_set_floating(%struct.sway_container*, i32) #1

declare dso_local i32 @container_floating_set_default_size(%struct.sway_container*) #1

declare dso_local i32 @container_floating_move_to_center(%struct.sway_container*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @list_add(i32, %struct.sway_container*) #1

declare dso_local i32 @workspace_add_floating(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local i32 @arrange_container(%struct.sway_container*) #1

declare dso_local %struct.sway_node* @seat_get_focus_inactive(%struct.sway_seat*, i32*) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

declare dso_local i32 @seat_set_focus(%struct.sway_seat*, %struct.sway_node*) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
