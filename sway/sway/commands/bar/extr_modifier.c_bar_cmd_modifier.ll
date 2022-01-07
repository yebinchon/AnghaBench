; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_modifier.c_bar_cmd_modifier.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_modifier.c_bar_cmd_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.cmd_results = type { i32 }
%struct.TYPE_7__ = type { i32, i8** }

@.str = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"none cannot be used along with other modifiers\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Unknown modifier '%s'\00", align 1
@config = common dso_local global %struct.TYPE_8__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Show/Hide the bar when pressing '%s' in hide mode.\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @bar_cmd_modifier(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %13 = call %struct.cmd_results* @checkarg(i32 %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12, i32 1)
  store %struct.cmd_results* %13, %struct.cmd_results** %6, align 8
  %14 = icmp ne %struct.cmd_results* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %16, %struct.cmd_results** %3, align 8
  br label %97

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call %struct.TYPE_7__* @split_string(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %78, %23
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @get_modifier_mask_by_name(i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %77

48:                                               ; preds = %34
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i32, i32* @CMD_INVALID, align 4
  %60 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cmd_results* %60, %struct.cmd_results** %6, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = call i32 @list_free_items_and_destroy(%struct.TYPE_7__* %61)
  %63 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %63, %struct.cmd_results** %3, align 8
  br label %97

64:                                               ; preds = %48
  %65 = load i32, i32* @CMD_INVALID, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  store %struct.cmd_results* %73, %struct.cmd_results** %6, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = call i32 @list_free_items_and_destroy(%struct.TYPE_7__* %74)
  %76 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %76, %struct.cmd_results** %3, align 8
  br label %97

77:                                               ; preds = %44
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %28

81:                                               ; preds = %28
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = call i32 @list_free_items_and_destroy(%struct.TYPE_7__* %82)
  br label %84

84:                                               ; preds = %81, %17
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* @SWAY_DEBUG, align 4
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @sway_log(i32 %90, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* @CMD_SUCCESS, align 4
  %96 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %95, i8* null)
  store %struct.cmd_results* %96, %struct.cmd_results** %3, align 8
  br label %97

97:                                               ; preds = %84, %64, %58, %15
  %98 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %98
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @split_string(i8*, i8*) #1

declare dso_local i32 @get_modifier_mask_by_name(i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i32 @list_free_items_and_destroy(%struct.TYPE_7__*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
