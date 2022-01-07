; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_force_focus_wrapping.c_cmd_force_focus_wrapping.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_force_focus_wrapping.c_cmd_force_focus_wrapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.cmd_results = type { i32 }

@SWAY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Warning: force_focus_wrapping is deprecated. Use focus_wrapping instead.\00", align 1
@config = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"force_focus_wrapping is deprecated. Use focus_wrapping instead.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"force_focus_wrapping\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@WRAP_FORCE = common dso_local global i64 0, align 8
@WRAP_YES = common dso_local global i64 0, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_force_focus_wrapping(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @SWAY_INFO, align 4
  %8 = call i32 @sway_log(i32 %7, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @config_add_swaynag_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %18 = call %struct.cmd_results* @checkarg(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 1)
  store %struct.cmd_results* %18, %struct.cmd_results** %6, align 8
  %19 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  %20 = icmp ne %struct.cmd_results* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %22, %struct.cmd_results** %3, align 8
  br label %46

23:                                               ; preds = %15
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WRAP_FORCE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @parse_boolean(i8* %26, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i64, i64* @WRAP_FORCE, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %43

39:                                               ; preds = %23
  %40 = load i64, i64* @WRAP_YES, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @CMD_SUCCESS, align 4
  %45 = call %struct.cmd_results* @cmd_results_new(i32 %44, i32* null)
  store %struct.cmd_results* %45, %struct.cmd_results** %3, align 8
  br label %46

46:                                               ; preds = %43, %21
  %47 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %47
}

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @config_add_swaynag_warning(i8*) #1

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @parse_boolean(i8*, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
