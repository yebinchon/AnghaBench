; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/input/extr_scroll_method.c_input_cmd_scroll_method.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/input/extr_scroll_method.c_input_cmd_scroll_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.input_config* }
%struct.input_config = type { i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"scroll_method\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"No input device defined.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@LIBINPUT_CONFIG_SCROLL_NO_SCROLL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"two_finger\00", align 1
@LIBINPUT_CONFIG_SCROLL_2FG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@LIBINPUT_CONFIG_SCROLL_EDGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"on_button_down\00", align 1
@LIBINPUT_CONFIG_SCROLL_ON_BUTTON_DOWN = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [63 x i8] c"Expected 'scroll_method <none|two_finger|edge|on_button_down>'\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @input_cmd_scroll_method(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.input_config*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %10 = call %struct.cmd_results* @checkarg(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %9, i32 1)
  store %struct.cmd_results* %10, %struct.cmd_results** %6, align 8
  %11 = icmp ne %struct.cmd_results* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %13, %struct.cmd_results** %3, align 8
  br label %73

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.input_config*, %struct.input_config** %17, align 8
  store %struct.input_config* %18, %struct.input_config** %7, align 8
  %19 = load %struct.input_config*, %struct.input_config** %7, align 8
  %20 = icmp ne %struct.input_config* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @CMD_FAILURE, align 4
  %23 = call %struct.cmd_results* @cmd_results_new(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %23, %struct.cmd_results** %3, align 8
  br label %73

24:                                               ; preds = %14
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcasecmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @LIBINPUT_CONFIG_SCROLL_NO_SCROLL, align 4
  %32 = load %struct.input_config*, %struct.input_config** %7, align 8
  %33 = getelementptr inbounds %struct.input_config, %struct.input_config* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %70

34:                                               ; preds = %24
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @LIBINPUT_CONFIG_SCROLL_2FG, align 4
  %42 = load %struct.input_config*, %struct.input_config** %7, align 8
  %43 = getelementptr inbounds %struct.input_config, %struct.input_config* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %69

44:                                               ; preds = %34
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcasecmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @LIBINPUT_CONFIG_SCROLL_EDGE, align 4
  %52 = load %struct.input_config*, %struct.input_config** %7, align 8
  %53 = getelementptr inbounds %struct.input_config, %struct.input_config* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %68

54:                                               ; preds = %44
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* @LIBINPUT_CONFIG_SCROLL_ON_BUTTON_DOWN, align 4
  %62 = load %struct.input_config*, %struct.input_config** %7, align 8
  %63 = getelementptr inbounds %struct.input_config, %struct.input_config* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @CMD_INVALID, align 4
  %66 = call %struct.cmd_results* @cmd_results_new(i32 %65, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0))
  store %struct.cmd_results* %66, %struct.cmd_results** %3, align 8
  br label %73

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %50
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69, %30
  %71 = load i32, i32* @CMD_SUCCESS, align 4
  %72 = call %struct.cmd_results* @cmd_results_new(i32 %71, i8* null)
  store %struct.cmd_results* %72, %struct.cmd_results** %3, align 8
  br label %73

73:                                               ; preds = %70, %64, %21, %12
  %74 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %74
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
