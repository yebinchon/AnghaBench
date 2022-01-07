; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_workspace_buttons.c_bar_cmd_workspace_buttons.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_workspace_buttons.c_bar_cmd_workspace_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"workspace_buttons\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Enabling workspace buttons on bar: %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Disabling workspace buttons on bar: %s\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @bar_cmd_workspace_buttons(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %9 = call %struct.cmd_results* @checkarg(i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8, i32 1)
  store %struct.cmd_results* %9, %struct.cmd_results** %6, align 8
  %10 = icmp ne %struct.cmd_results* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %12, %struct.cmd_results** %3, align 8
  br label %52

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @parse_boolean(i8* %16, i64 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i64 %22, i64* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %13
  %34 = load i32, i32* @SWAY_DEBUG, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @sway_log(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %49

41:                                               ; preds = %13
  %42 = load i32, i32* @SWAY_DEBUG, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sway_log(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %41, %33
  %50 = load i32, i32* @CMD_SUCCESS, align 4
  %51 = call %struct.cmd_results* @cmd_results_new(i32 %50, i32* null)
  store %struct.cmd_results* %51, %struct.cmd_results** %3, align 8
  br label %52

52:                                               ; preds = %49, %11
  %53 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %53
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @parse_boolean(i8*, i64) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
