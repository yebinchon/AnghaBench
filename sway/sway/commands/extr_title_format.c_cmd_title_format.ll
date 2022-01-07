; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_title_format.c_cmd_title_format.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_title_format.c_cmd_title_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container* }
%struct.sway_container = type { %struct.sway_view* }
%struct.sway_view = type { i8* }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"title_format\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Only views can have a title_format\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_title_format(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_view*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %12 = call %struct.cmd_results* @checkarg(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1)
  store %struct.cmd_results* %12, %struct.cmd_results** %6, align 8
  %13 = icmp ne %struct.cmd_results* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %15, %struct.cmd_results** %3, align 8
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.sway_container*, %struct.sway_container** %19, align 8
  store %struct.sway_container* %20, %struct.sway_container** %7, align 8
  %21 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %22 = icmp ne %struct.sway_container* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %25 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %24, i32 0, i32 0
  %26 = load %struct.sway_view*, %struct.sway_view** %25, align 8
  %27 = icmp ne %struct.sway_view* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %16
  %29 = load i32, i32* @CMD_INVALID, align 4
  %30 = call %struct.cmd_results* @cmd_results_new(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %30, %struct.cmd_results** %3, align 8
  br label %56

31:                                               ; preds = %23
  %32 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 0
  %34 = load %struct.sway_view*, %struct.sway_view** %33, align 8
  store %struct.sway_view* %34, %struct.sway_view** %8, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i8* @join_args(i8** %35, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %39 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %44 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @free(i8* %45)
  br label %47

47:                                               ; preds = %42, %31
  %48 = load i8*, i8** %9, align 8
  %49 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %50 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %52 = call i32 @view_update_title(%struct.sway_view* %51, i32 1)
  %53 = call i32 @config_update_font_height(i32 1)
  %54 = load i32, i32* @CMD_SUCCESS, align 4
  %55 = call %struct.cmd_results* @cmd_results_new(i32 %54, i8* null)
  store %struct.cmd_results* %55, %struct.cmd_results** %3, align 8
  br label %56

56:                                               ; preds = %47, %28, %14
  %57 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %57
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i8* @join_args(i8**, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @view_update_title(%struct.sway_view*, i32) #1

declare dso_local i32 @config_update_font_height(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
