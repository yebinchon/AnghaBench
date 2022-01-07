; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_cmd_move_to_scratchpad.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_cmd_move_to_scratchpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sway_workspace*, %struct.sway_container*, %struct.sway_node* }
%struct.sway_workspace = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sway_container = type { i64, i32, %struct.sway_container* }
%struct.sway_node = type { i64 }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@N_WORKSPACE = common dso_local global i64 0, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Can't move an empty workspace to the scratchpad\00", align 1
@L_HORIZ = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* ()* @cmd_move_to_scratchpad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @cmd_move_to_scratchpad() #0 {
  %1 = alloca %struct.cmd_results*, align 8
  %2 = alloca %struct.sway_node*, align 8
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %8 = load %struct.sway_node*, %struct.sway_node** %7, align 8
  store %struct.sway_node* %8, %struct.sway_node** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.sway_container*, %struct.sway_container** %11, align 8
  store %struct.sway_container* %12, %struct.sway_container** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.sway_workspace*, %struct.sway_workspace** %15, align 8
  store %struct.sway_workspace* %16, %struct.sway_workspace** %4, align 8
  %17 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %18 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @N_WORKSPACE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %0
  %23 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %24 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @CMD_INVALID, align 4
  %31 = call %struct.cmd_results* @cmd_results_new(i32 %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %31, %struct.cmd_results** %1, align 8
  br label %79

32:                                               ; preds = %22, %0
  %33 = load %struct.sway_node*, %struct.sway_node** %2, align 8
  %34 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @N_WORKSPACE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %40 = call %struct.sway_container* @workspace_wrap_children(%struct.sway_workspace* %39)
  store %struct.sway_container* %40, %struct.sway_container** %3, align 8
  %41 = load i32, i32* @L_HORIZ, align 4
  %42 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %43 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %46 = call i64 @container_is_floating_or_child(%struct.sway_container* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %54, %48
  %50 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 2
  %52 = load %struct.sway_container*, %struct.sway_container** %51, align 8
  %53 = icmp ne %struct.sway_container* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %56 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %55, i32 0, i32 2
  %57 = load %struct.sway_container*, %struct.sway_container** %56, align 8
  store %struct.sway_container* %57, %struct.sway_container** %3, align 8
  br label %49

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %61 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %66 = call i32 @root_scratchpad_add_container(%struct.sway_container* %65, i32* null)
  br label %76

67:                                               ; preds = %59
  %68 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %69 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %74 = call i32 @root_scratchpad_hide(%struct.sway_container* %73)
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %64
  %77 = load i32, i32* @CMD_SUCCESS, align 4
  %78 = call %struct.cmd_results* @cmd_results_new(i32 %77, i8* null)
  store %struct.cmd_results* %78, %struct.cmd_results** %1, align 8
  br label %79

79:                                               ; preds = %76, %29
  %80 = load %struct.cmd_results*, %struct.cmd_results** %1, align 8
  ret %struct.cmd_results* %80
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local %struct.sway_container* @workspace_wrap_children(%struct.sway_workspace*) #1

declare dso_local i64 @container_is_floating_or_child(%struct.sway_container*) #1

declare dso_local i32 @root_scratchpad_add_container(%struct.sway_container*, i32*) #1

declare dso_local i32 @root_scratchpad_hide(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
