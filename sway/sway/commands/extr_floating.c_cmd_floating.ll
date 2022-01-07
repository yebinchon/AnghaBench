; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_floating.c_cmd_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_floating.c_cmd_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.sway_workspace*, %struct.sway_container* }
%struct.sway_workspace = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.sway_container = type { i64, %struct.sway_container* }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"floating\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_9__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@config = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Can't float an empty workspace\00", align 1
@L_HORIZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Can't change floating on hidden scratchpad container\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_floating(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_workspace*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %12 = call %struct.cmd_results* @checkarg(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1)
  store %struct.cmd_results* %12, %struct.cmd_results** %6, align 8
  %13 = icmp ne %struct.cmd_results* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %15, %struct.cmd_results** %3, align 8
  br label %106

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @CMD_INVALID, align 4
  %25 = call %struct.cmd_results* @cmd_results_new(i32 %24, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %25, %struct.cmd_results** %3, align 8
  br label %106

26:                                               ; preds = %16
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load %struct.sway_container*, %struct.sway_container** %29, align 8
  store %struct.sway_container* %30, %struct.sway_container** %7, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.sway_workspace*, %struct.sway_workspace** %33, align 8
  store %struct.sway_workspace* %34, %struct.sway_workspace** %8, align 8
  %35 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %36 = icmp ne %struct.sway_container* %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %26
  %38 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %39 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @CMD_INVALID, align 4
  %46 = call %struct.cmd_results* @cmd_results_new(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %46, %struct.cmd_results** %3, align 8
  br label %106

47:                                               ; preds = %37, %26
  %48 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %49 = icmp ne %struct.sway_container* %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %47
  %51 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %52 = call %struct.sway_container* @workspace_wrap_children(%struct.sway_workspace* %51)
  store %struct.sway_container* %52, %struct.sway_container** %7, align 8
  %53 = load i32, i32* @L_HORIZ, align 4
  %54 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %55 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %61 = call i32 @seat_set_focus_container(i32 %59, %struct.sway_container* %60)
  br label %62

62:                                               ; preds = %50, %47
  %63 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %64 = call i64 @container_is_scratchpad_hidden(%struct.sway_container* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @CMD_INVALID, align 4
  %68 = call %struct.cmd_results* @cmd_results_new(i32 %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cmd_results* %68, %struct.cmd_results** %3, align 8
  br label %106

69:                                               ; preds = %62
  %70 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %71 = call i64 @container_is_floating_or_child(%struct.sway_container* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %79, %73
  %75 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %76 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %75, i32 0, i32 1
  %77 = load %struct.sway_container*, %struct.sway_container** %76, align 8
  %78 = icmp ne %struct.sway_container* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %81 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %80, i32 0, i32 1
  %82 = load %struct.sway_container*, %struct.sway_container** %81, align 8
  store %struct.sway_container* %82, %struct.sway_container** %7, align 8
  br label %74

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %89 = call i32 @container_is_floating(%struct.sway_container* %88)
  %90 = call i32 @parse_boolean(i8* %87, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @container_set_floating(%struct.sway_container* %91, i32 %92)
  %94 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %95 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %84
  %99 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %100 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @arrange_workspace(i64 %101)
  br label %103

103:                                              ; preds = %98, %84
  %104 = load i32, i32* @CMD_SUCCESS, align 4
  %105 = call %struct.cmd_results* @cmd_results_new(i32 %104, i8* null)
  store %struct.cmd_results* %105, %struct.cmd_results** %3, align 8
  br label %106

106:                                              ; preds = %103, %66, %44, %23, %14
  %107 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %107
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local %struct.sway_container* @workspace_wrap_children(%struct.sway_workspace*) #1

declare dso_local i32 @seat_set_focus_container(i32, %struct.sway_container*) #1

declare dso_local i64 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local i64 @container_is_floating_or_child(%struct.sway_container*) #1

declare dso_local i32 @parse_boolean(i8*, i32) #1

declare dso_local i32 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @container_set_floating(%struct.sway_container*, i32) #1

declare dso_local i32 @arrange_workspace(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
