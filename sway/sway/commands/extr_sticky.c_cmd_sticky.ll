; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_sticky.c_cmd_sticky.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_sticky.c_cmd_sticky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container* }
%struct.sway_container = type { %struct.sway_workspace*, i64 }
%struct.sway_workspace = type { i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"sticky\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No current container\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Expected output to have a workspace\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_sticky(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_workspace*, align 8
  %9 = alloca %struct.sway_workspace*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %12 = call %struct.cmd_results* @checkarg(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1)
  store %struct.cmd_results* %12, %struct.cmd_results** %6, align 8
  %13 = icmp ne %struct.cmd_results* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %15, %struct.cmd_results** %3, align 8
  br label %86

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.sway_container*, %struct.sway_container** %19, align 8
  store %struct.sway_container* %20, %struct.sway_container** %7, align 8
  %21 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %22 = icmp eq %struct.sway_container* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @CMD_FAILURE, align 4
  %25 = call %struct.cmd_results* @cmd_results_new(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %25, %struct.cmd_results** %3, align 8
  br label %86

26:                                               ; preds = %16
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %31 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @parse_boolean(i8* %29, i64 %32)
  %34 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %35 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %37 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %26
  %41 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %42 = call i64 @container_is_floating_or_child(%struct.sway_container* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %40
  %45 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %46 = call i32 @container_is_scratchpad_hidden(%struct.sway_container* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %83, label %48

48:                                               ; preds = %44
  %49 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %50 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %49, i32 0, i32 0
  %51 = load %struct.sway_workspace*, %struct.sway_workspace** %50, align 8
  %52 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.sway_workspace* @output_get_active_workspace(i32 %53)
  store %struct.sway_workspace* %54, %struct.sway_workspace** %8, align 8
  %55 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %56 = call i32 @sway_assert(%struct.sway_workspace* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @CMD_FAILURE, align 4
  %60 = call %struct.cmd_results* @cmd_results_new(i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %60, %struct.cmd_results** %3, align 8
  br label %86

61:                                               ; preds = %48
  %62 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %63 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %62, i32 0, i32 0
  %64 = load %struct.sway_workspace*, %struct.sway_workspace** %63, align 8
  %65 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %66 = icmp ne %struct.sway_workspace* %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %69 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %68, i32 0, i32 0
  %70 = load %struct.sway_workspace*, %struct.sway_workspace** %69, align 8
  store %struct.sway_workspace* %70, %struct.sway_workspace** %9, align 8
  %71 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %72 = call i32 @container_detach(%struct.sway_container* %71)
  %73 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %74 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %75 = call i32 @workspace_add_floating(%struct.sway_workspace* %73, %struct.sway_container* %74)
  %76 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %77 = call i32 @container_handle_fullscreen_reparent(%struct.sway_container* %76)
  %78 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %79 = call i32 @arrange_workspace(%struct.sway_workspace* %78)
  %80 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %81 = call i32 @workspace_consider_destroy(%struct.sway_workspace* %80)
  br label %82

82:                                               ; preds = %67, %61
  br label %83

83:                                               ; preds = %82, %44, %40, %26
  %84 = load i32, i32* @CMD_SUCCESS, align 4
  %85 = call %struct.cmd_results* @cmd_results_new(i32 %84, i8* null)
  store %struct.cmd_results* %85, %struct.cmd_results** %3, align 8
  br label %86

86:                                               ; preds = %83, %58, %23, %14
  %87 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %87
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @parse_boolean(i8*, i64) #1

declare dso_local i64 @container_is_floating_or_child(%struct.sway_container*) #1

declare dso_local i32 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(i32) #1

declare dso_local i32 @sway_assert(%struct.sway_workspace*, i8*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @workspace_add_floating(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i32 @container_handle_fullscreen_reparent(%struct.sway_container*) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

declare dso_local i32 @workspace_consider_destroy(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
