; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_kill.c_cmd_kill.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_kill.c_cmd_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sway_workspace*, %struct.sway_container* }
%struct.sway_workspace = type { i32 }
%struct.sway_container = type { i32 }
%struct.cmd_results = type { i32 }

@root = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@config = common dso_local global %struct.TYPE_8__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_kill(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca %struct.sway_workspace*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @CMD_INVALID, align 4
  %16 = call %struct.cmd_results* @cmd_results_new(i32 %15, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %16, %struct.cmd_results** %3, align 8
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.sway_container*, %struct.sway_container** %20, align 8
  store %struct.sway_container* %21, %struct.sway_container** %6, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.sway_workspace*, %struct.sway_workspace** %24, align 8
  store %struct.sway_workspace* %25, %struct.sway_workspace** %7, align 8
  %26 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %27 = icmp ne %struct.sway_container* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %30 = call i32 @close_container_iterator(%struct.sway_container* %29, i32* null)
  %31 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %32 = call i32 @container_for_each_child(%struct.sway_container* %31, i32 (%struct.sway_container*, i32*)* @close_container_iterator, i32* null)
  br label %36

33:                                               ; preds = %17
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %35 = call i32 @workspace_for_each_container(%struct.sway_workspace* %34, i32 (%struct.sway_container*, i32*)* @close_container_iterator, i32* null)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* @CMD_SUCCESS, align 4
  %38 = call %struct.cmd_results* @cmd_results_new(i32 %37, i8* null)
  store %struct.cmd_results* %38, %struct.cmd_results** %3, align 8
  br label %39

39:                                               ; preds = %36, %14
  %40 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %40
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i32 @close_container_iterator(%struct.sway_container*, i32*) #1

declare dso_local i32 @container_for_each_child(%struct.sway_container*, i32 (%struct.sway_container*, i32*)*, i32*) #1

declare dso_local i32 @workspace_for_each_container(%struct.sway_workspace*, i32 (%struct.sway_container*, i32*)*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
