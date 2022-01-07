; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/seat/extr_cursor.c_handle_command.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/seat/extr_cursor.c_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, float }
%struct.cmd_results = type { i32 }
%struct.sway_cursor = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"move\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@expected_syntax = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@root = common dso_local global %struct.TYPE_2__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.sway_cursor*, i32, i8**)* @handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @handle_command(%struct.sway_cursor* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd_results*, align 8
  %5 = alloca %struct.sway_cursor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.cmd_results*, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strcasecmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @CMD_INVALID, align 4
  %23 = load i32*, i32** @expected_syntax, align 8
  %24 = call %struct.cmd_results* @cmd_results_new(i32 %22, i32* %23)
  store %struct.cmd_results* %24, %struct.cmd_results** %4, align 8
  br label %104

25:                                               ; preds = %18
  %26 = load i8**, i8*** %7, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strtol(i8* %28, i32* null, i32 10)
  store i32 %29, i32* %8, align 4
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strtol(i8* %32, i32* null, i32 10)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %35 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @wlr_cursor_move(i32 %36, i32* null, i32 %37, i32 %38)
  %40 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %41 = call i32 @cursor_rebase(%struct.sway_cursor* %40)
  br label %101

42:                                               ; preds = %3
  %43 = load i8**, i8*** %7, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcasecmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @CMD_INVALID, align 4
  %53 = load i32*, i32** @expected_syntax, align 8
  %54 = call %struct.cmd_results* @cmd_results_new(i32 %52, i32* %53)
  store %struct.cmd_results* %54, %struct.cmd_results** %4, align 8
  br label %104

55:                                               ; preds = %48
  %56 = load i8**, i8*** %7, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call float @strtof(i8* %58, i32* null)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load float, float* %61, align 4
  %63 = fdiv float %59, %62
  store float %63, float* %10, align 4
  %64 = load i8**, i8*** %7, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  %66 = load i8*, i8** %65, align 8
  %67 = call float @strtof(i8* %66, i32* null)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @root, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load float, float* %69, align 4
  %71 = fdiv float %67, %70
  store float %71, float* %11, align 4
  %72 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %73 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load float, float* %10, align 4
  %76 = load float, float* %11, align 4
  %77 = call i32 @wlr_cursor_warp_absolute(i32 %74, i32* null, float %75, float %76)
  %78 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %79 = call i32 @cursor_rebase(%struct.sway_cursor* %78)
  br label %100

80:                                               ; preds = %42
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 2
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* @CMD_INVALID, align 4
  %85 = load i32*, i32** @expected_syntax, align 8
  %86 = call %struct.cmd_results* @cmd_results_new(i32 %84, i32* %85)
  store %struct.cmd_results* %86, %struct.cmd_results** %4, align 8
  br label %104

87:                                               ; preds = %80
  store %struct.cmd_results* null, %struct.cmd_results** %12, align 8
  %88 = load %struct.sway_cursor*, %struct.sway_cursor** %5, align 8
  %89 = load i8**, i8*** %7, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i8**, i8*** %7, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  %94 = load i8*, i8** %93, align 8
  %95 = call %struct.cmd_results* @press_or_release(%struct.sway_cursor* %88, i8* %91, i8* %94)
  store %struct.cmd_results* %95, %struct.cmd_results** %12, align 8
  %96 = icmp ne %struct.cmd_results* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load %struct.cmd_results*, %struct.cmd_results** %12, align 8
  store %struct.cmd_results* %98, %struct.cmd_results** %4, align 8
  br label %104

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %55
  br label %101

101:                                              ; preds = %100, %25
  %102 = load i32, i32* @CMD_SUCCESS, align 4
  %103 = call %struct.cmd_results* @cmd_results_new(i32 %102, i32* null)
  store %struct.cmd_results* %103, %struct.cmd_results** %4, align 8
  br label %104

104:                                              ; preds = %101, %97, %83, %51, %21
  %105 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  ret %struct.cmd_results* %105
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @wlr_cursor_move(i32, i32*, i32, i32) #1

declare dso_local i32 @cursor_rebase(%struct.sway_cursor*) #1

declare dso_local float @strtof(i8*, i32*) #1

declare dso_local i32 @wlr_cursor_warp_absolute(i32, i32*, float, float) #1

declare dso_local %struct.cmd_results* @press_or_release(%struct.sway_cursor*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
