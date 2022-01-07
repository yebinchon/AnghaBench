; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/output/extr_subpixel.c_output_cmd_subpixel.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/output/extr_subpixel.c_output_cmd_subpixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.output_config* }
%struct.TYPE_4__ = type { i32, i8** }
%struct.output_config = type { i32 }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Missing output config\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Missing subpixel argument.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rgb\00", align 1
@WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"bgr\00", align 1
@WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"vrgb\00", align 1
@WL_OUTPUT_SUBPIXEL_VERTICAL_RGB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"vbgr\00", align 1
@WL_OUTPUT_SUBPIXEL_VERTICAL_BGR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@WL_OUTPUT_SUBPIXEL_NONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Invalid output subpixel.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @output_cmd_subpixel(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.output_config*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.output_config*, %struct.output_config** %10, align 8
  %12 = icmp ne %struct.output_config* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @CMD_FAILURE, align 4
  %15 = call %struct.cmd_results* @cmd_results_new(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %15, %struct.cmd_results** %3, align 8
  br label %84

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @CMD_INVALID, align 4
  %21 = call %struct.cmd_results* @cmd_results_new(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %21, %struct.cmd_results** %3, align 8
  br label %84

22:                                               ; preds = %16
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @WL_OUTPUT_SUBPIXEL_HORIZONTAL_RGB, align 4
  store i32 %28, i32* %6, align 4
  br label %64

29:                                               ; preds = %22
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @WL_OUTPUT_SUBPIXEL_HORIZONTAL_BGR, align 4
  store i32 %35, i32* %6, align 4
  br label %63

36:                                               ; preds = %29
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @WL_OUTPUT_SUBPIXEL_VERTICAL_RGB, align 4
  store i32 %42, i32* %6, align 4
  br label %62

43:                                               ; preds = %36
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @WL_OUTPUT_SUBPIXEL_VERTICAL_BGR, align 4
  store i32 %49, i32* %6, align 4
  br label %61

50:                                               ; preds = %43
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @WL_OUTPUT_SUBPIXEL_NONE, align 4
  store i32 %56, i32* %6, align 4
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @CMD_INVALID, align 4
  %59 = call %struct.cmd_results* @cmd_results_new(i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store %struct.cmd_results* %59, %struct.cmd_results** %3, align 8
  br label %84

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %48
  br label %62

62:                                               ; preds = %61, %41
  br label %63

63:                                               ; preds = %62, %34
  br label %64

64:                                               ; preds = %63, %27
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load %struct.output_config*, %struct.output_config** %67, align 8
  store %struct.output_config* %68, %struct.output_config** %7, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i8** %76, i8*** %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.output_config*, %struct.output_config** %7, align 8
  %83 = getelementptr inbounds %struct.output_config, %struct.output_config* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  store %struct.cmd_results* null, %struct.cmd_results** %3, align 8
  br label %84

84:                                               ; preds = %64, %57, %19, %13
  %85 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %85
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
