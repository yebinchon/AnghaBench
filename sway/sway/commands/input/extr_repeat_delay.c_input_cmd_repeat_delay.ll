; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/input/extr_repeat_delay.c_input_cmd_repeat_delay.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/input/extr_repeat_delay.c_input_cmd_repeat_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.input_config* }
%struct.input_config = type { i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"repeat_delay\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"No input device defined.\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Repeat delay cannot be negative\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @input_cmd_repeat_delay(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.input_config*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %11 = call %struct.cmd_results* @checkarg(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %10, i32 1)
  store %struct.cmd_results* %11, %struct.cmd_results** %6, align 8
  %12 = icmp ne %struct.cmd_results* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %14, %struct.cmd_results** %3, align 8
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.input_config*, %struct.input_config** %18, align 8
  store %struct.input_config* %19, %struct.input_config** %7, align 8
  %20 = load %struct.input_config*, %struct.input_config** %7, align 8
  %21 = icmp ne %struct.input_config* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @CMD_FAILURE, align 4
  %24 = call %struct.cmd_results* @cmd_results_new(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %24, %struct.cmd_results** %3, align 8
  br label %41

25:                                               ; preds = %15
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @CMD_INVALID, align 4
  %34 = call %struct.cmd_results* @cmd_results_new(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %34, %struct.cmd_results** %3, align 8
  br label %41

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.input_config*, %struct.input_config** %7, align 8
  %38 = getelementptr inbounds %struct.input_config, %struct.input_config* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @CMD_SUCCESS, align 4
  %40 = call %struct.cmd_results* @cmd_results_new(i32 %39, i8* null)
  store %struct.cmd_results* %40, %struct.cmd_results** %3, align 8
  br label %41

41:                                               ; preds = %35, %32, %22, %13
  %42 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %42
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
