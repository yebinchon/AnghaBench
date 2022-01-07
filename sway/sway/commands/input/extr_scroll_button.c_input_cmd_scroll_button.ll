; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/input/extr_scroll_button.c_input_cmd_scroll_button.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/input/extr_scroll_button.c_input_cmd_scroll_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.input_config* }
%struct.input_config = type { i64 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"scroll_button\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"No input device defined.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@SWAY_SCROLL_UP = common dso_local global i64 0, align 8
@SWAY_SCROLL_DOWN = common dso_local global i64 0, align 8
@SWAY_SCROLL_LEFT = common dso_local global i64 0, align 8
@SWAY_SCROLL_RIGHT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"X11 axis buttons are not supported for scroll_button\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Unknown button %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @input_cmd_scroll_button(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.input_config*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %12 = call %struct.cmd_results* @checkarg(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1)
  store %struct.cmd_results* %12, %struct.cmd_results** %6, align 8
  %13 = icmp ne %struct.cmd_results* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %15, %struct.cmd_results** %3, align 8
  br label %84

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.input_config*, %struct.input_config** %19, align 8
  store %struct.input_config* %20, %struct.input_config** %7, align 8
  %21 = load %struct.input_config*, %struct.input_config** %7, align 8
  %22 = icmp ne %struct.input_config* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @CMD_FAILURE, align 4
  %25 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %25, %struct.cmd_results** %3, align 8
  br label %84

26:                                               ; preds = %16
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.input_config*, %struct.input_config** %7, align 8
  %33 = getelementptr inbounds %struct.input_config, %struct.input_config* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @CMD_SUCCESS, align 4
  %35 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %34, i8* null)
  store %struct.cmd_results* %35, %struct.cmd_results** %3, align 8
  br label %84

36:                                               ; preds = %26
  store i8* null, i8** %8, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @get_mouse_button(i8* %38, i8** %8)
  store i64 %39, i64* %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @CMD_INVALID, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %43, i8* %44)
  store %struct.cmd_results* %45, %struct.cmd_results** %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %48, %struct.cmd_results** %3, align 8
  br label %84

49:                                               ; preds = %36
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @SWAY_SCROLL_UP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @SWAY_SCROLL_DOWN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @SWAY_SCROLL_LEFT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @SWAY_SCROLL_RIGHT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %57, %53, %49
  %66 = load i32, i32* @CMD_INVALID, align 4
  %67 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cmd_results* %67, %struct.cmd_results** %3, align 8
  br label %84

68:                                               ; preds = %61
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @CMD_INVALID, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  store %struct.cmd_results* %75, %struct.cmd_results** %3, align 8
  br label %84

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.input_config*, %struct.input_config** %7, align 8
  %81 = getelementptr inbounds %struct.input_config, %struct.input_config* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @CMD_SUCCESS, align 4
  %83 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %82, i8* null)
  store %struct.cmd_results* %83, %struct.cmd_results** %3, align 8
  br label %84

84:                                               ; preds = %78, %71, %65, %42, %31, %23, %14
  %85 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %85
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @get_mouse_button(i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
