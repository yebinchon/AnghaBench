; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_title_align.c_cmd_title_align.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_title_align.c_cmd_title_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sway_output** }
%struct.sway_output = type { i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"title_align\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@ALIGN_LEFT = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@ALIGN_CENTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@ALIGN_RIGHT = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Expected 'title_align left|center|right'\00", align 1
@root = common dso_local global %struct.TYPE_5__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_title_align(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_output*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %11 = call %struct.cmd_results* @checkarg(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %10, i32 1)
  store %struct.cmd_results* %11, %struct.cmd_results** %6, align 8
  %12 = icmp ne %struct.cmd_results* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %14, %struct.cmd_results** %3, align 8
  br label %77

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @ALIGN_LEFT, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %50

25:                                               ; preds = %15
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @ALIGN_CENTER, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %49

35:                                               ; preds = %25
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @ALIGN_RIGHT, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @CMD_INVALID, align 4
  %47 = call %struct.cmd_results* @cmd_results_new(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store %struct.cmd_results* %47, %struct.cmd_results** %3, align 8
  br label %77

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %31
  br label %50

50:                                               ; preds = %49, %21
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %51
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.sway_output**, %struct.sway_output*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sway_output*, %struct.sway_output** %64, i64 %66
  %68 = load %struct.sway_output*, %struct.sway_output** %67, align 8
  store %struct.sway_output* %68, %struct.sway_output** %8, align 8
  %69 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %70 = call i32 @output_damage_whole(%struct.sway_output* %69)
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %51

74:                                               ; preds = %51
  %75 = load i32, i32* @CMD_SUCCESS, align 4
  %76 = call %struct.cmd_results* @cmd_results_new(i32 %75, i8* null)
  store %struct.cmd_results* %76, %struct.cmd_results** %3, align 8
  br label %77

77:                                               ; preds = %74, %45, %13
  %78 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %78
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i32 @output_damage_whole(%struct.sway_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
