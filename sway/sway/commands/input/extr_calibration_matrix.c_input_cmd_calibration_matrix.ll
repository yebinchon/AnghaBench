; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/input/extr_calibration_matrix.c_input_cmd_calibration_matrix.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/input/extr_calibration_matrix.c_input_cmd_calibration_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.input_config* }
%struct.input_config = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"calibration_matrix\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_6__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"No input device defined.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"calibration_matrix: unable to parse float: %s\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @input_cmd_calibration_matrix(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.input_config*, align 8
  %8 = alloca [6 x float], align 16
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %14 = call %struct.cmd_results* @checkarg(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13, i32 6)
  store %struct.cmd_results* %14, %struct.cmd_results** %6, align 8
  %15 = icmp ne %struct.cmd_results* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %17, %struct.cmd_results** %3, align 8
  br label %68

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.input_config*, %struct.input_config** %21, align 8
  store %struct.input_config* %22, %struct.input_config** %7, align 8
  %23 = load %struct.input_config*, %struct.input_config** %7, align 8
  %24 = icmp ne %struct.input_config* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @CMD_FAILURE, align 4
  %27 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %27, %struct.cmd_results** %3, align 8
  br label %68

28:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call float @parse_float(i8* %39)
  store float %40, float* %11, align 4
  %41 = load float, float* %11, align 4
  %42 = call i64 @isnan(float %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* @CMD_FAILURE, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  store %struct.cmd_results* %47, %struct.cmd_results** %3, align 8
  br label %68

48:                                               ; preds = %33
  %49 = load float, float* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 %51
  store float %49, float* %52, align 4
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %29

56:                                               ; preds = %29
  %57 = load %struct.input_config*, %struct.input_config** %7, align 8
  %58 = getelementptr inbounds %struct.input_config, %struct.input_config* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.input_config*, %struct.input_config** %7, align 8
  %61 = getelementptr inbounds %struct.input_config, %struct.input_config* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [6 x float], [6 x float]* %8, i64 0, i64 0
  %65 = call i32 @memcpy(i32 %63, float* %64, i32 4)
  %66 = load i32, i32* @CMD_SUCCESS, align 4
  %67 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %66, i8* null)
  store %struct.cmd_results* %67, %struct.cmd_results** %3, align 8
  br label %68

68:                                               ; preds = %56, %44, %25, %16
  %69 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %69
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local float @parse_float(i8*) #1

declare dso_local i64 @isnan(float) #1

declare dso_local i32 @memcpy(i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
