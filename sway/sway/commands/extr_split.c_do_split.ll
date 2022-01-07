; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_split.c_do_split.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_split.c_do_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sway_workspace*, %struct.sway_container* }
%struct.sway_workspace = type { i32 }
%struct.sway_container = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_8__* null, align 8
@FULLSCREEN_GLOBAL = common dso_local global i64 0, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Cannot split a hidden scratchpad container\00", align 1
@root = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32)* @do_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @do_split(i32 %0) #0 {
  %2 = alloca %struct.cmd_results*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_workspace*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  store %struct.sway_container* %9, %struct.sway_container** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.sway_workspace*, %struct.sway_workspace** %12, align 8
  store %struct.sway_workspace* %13, %struct.sway_workspace** %5, align 8
  %14 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %15 = icmp ne %struct.sway_container* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %18 = call i64 @container_is_scratchpad_hidden(%struct.sway_container* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %22 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FULLSCREEN_GLOBAL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @CMD_FAILURE, align 4
  %28 = call %struct.cmd_results* @cmd_results_new(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %28, %struct.cmd_results** %2, align 8
  br label %72

29:                                               ; preds = %20, %16
  %30 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @container_split(%struct.sway_container* %30, i32 %31)
  br label %37

33:                                               ; preds = %1
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @workspace_split(%struct.sway_workspace* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %39 = icmp ne %struct.sway_container* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %42 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %47 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %54 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @container_flatten(i64 %57)
  br label %59

59:                                               ; preds = %52, %45, %40, %37
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 (...) @arrange_root()
  br label %69

66:                                               ; preds = %59
  %67 = load %struct.sway_workspace*, %struct.sway_workspace** %5, align 8
  %68 = call i32 @arrange_workspace(%struct.sway_workspace* %67)
  br label %69

69:                                               ; preds = %66, %64
  %70 = load i32, i32* @CMD_SUCCESS, align 4
  %71 = call %struct.cmd_results* @cmd_results_new(i32 %70, i8* null)
  store %struct.cmd_results* %71, %struct.cmd_results** %2, align 8
  br label %72

72:                                               ; preds = %69, %26
  %73 = load %struct.cmd_results*, %struct.cmd_results** %2, align 8
  ret %struct.cmd_results* %73
}

declare dso_local i64 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i32 @container_split(%struct.sway_container*, i32) #1

declare dso_local i32 @workspace_split(%struct.sway_workspace*, i32) #1

declare dso_local i32 @container_flatten(i64) #1

declare dso_local i32 @arrange_root(...) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
