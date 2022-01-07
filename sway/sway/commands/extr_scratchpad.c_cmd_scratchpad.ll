; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_scratchpad.c_cmd_scratchpad.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_scratchpad.c_cmd_scratchpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.sway_container*, i64 }
%struct.sway_container = type { i32, %struct.sway_container* }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"scratchpad\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Expected 'scratchpad show'\00", align 1
@root = common dso_local global %struct.TYPE_9__* null, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Scratchpad is empty\00", align 1
@config = common dso_local global %struct.TYPE_10__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_scratchpad(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %10 = call %struct.cmd_results* @checkarg(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9, i32 1)
  store %struct.cmd_results* %10, %struct.cmd_results** %6, align 8
  %11 = icmp ne %struct.cmd_results* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %13, %struct.cmd_results** %3, align 8
  br label %84

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @CMD_INVALID, align 4
  %22 = call %struct.cmd_results* @cmd_results_new(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %22, %struct.cmd_results** %3, align 8
  br label %84

23:                                               ; preds = %14
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @CMD_INVALID, align 4
  %32 = call %struct.cmd_results* @cmd_results_new(i32 %31, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cmd_results* %32, %struct.cmd_results** %3, align 8
  br label %84

33:                                               ; preds = %23
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @CMD_INVALID, align 4
  %42 = call %struct.cmd_results* @cmd_results_new(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store %struct.cmd_results* %42, %struct.cmd_results** %3, align 8
  br label %84

43:                                               ; preds = %33
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %43
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.sway_container*, %struct.sway_container** %52, align 8
  store %struct.sway_container* %53, %struct.sway_container** %7, align 8
  %54 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %55 = call i64 @container_is_floating_or_child(%struct.sway_container* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %63, %57
  %59 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %60 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %59, i32 0, i32 1
  %61 = load %struct.sway_container*, %struct.sway_container** %60, align 8
  %62 = icmp ne %struct.sway_container* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %65 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %64, i32 0, i32 1
  %66 = load %struct.sway_container*, %struct.sway_container** %65, align 8
  store %struct.sway_container* %66, %struct.sway_container** %7, align 8
  br label %58

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %49
  %69 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %70 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @CMD_SUCCESS, align 4
  %75 = call %struct.cmd_results* @cmd_results_new(i32 %74, i8* null)
  store %struct.cmd_results* %75, %struct.cmd_results** %3, align 8
  br label %84

76:                                               ; preds = %68
  %77 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %78 = call i32 @scratchpad_toggle_container(%struct.sway_container* %77)
  br label %81

79:                                               ; preds = %43
  %80 = call i32 (...) @scratchpad_toggle_auto()
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32, i32* @CMD_SUCCESS, align 4
  %83 = call %struct.cmd_results* @cmd_results_new(i32 %82, i8* null)
  store %struct.cmd_results* %83, %struct.cmd_results** %3, align 8
  br label %84

84:                                               ; preds = %81, %73, %40, %30, %20, %12
  %85 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %85
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @container_is_floating_or_child(%struct.sway_container*) #1

declare dso_local i32 @scratchpad_toggle_container(%struct.sway_container*) #1

declare dso_local i32 @scratchpad_toggle_auto(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
