; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_urgent.c_cmd_urgent.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_urgent.c_cmd_urgent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container* }
%struct.sway_container = type { %struct.sway_view* }
%struct.sway_view = type { i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"urgent\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No current container\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Only views can be urgent\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_urgent(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_view*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %11 = call %struct.cmd_results* @checkarg(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, i32 1)
  store %struct.cmd_results* %11, %struct.cmd_results** %6, align 8
  %12 = icmp ne %struct.cmd_results* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %14, %struct.cmd_results** %3, align 8
  br label %67

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.sway_container*, %struct.sway_container** %18, align 8
  store %struct.sway_container* %19, %struct.sway_container** %7, align 8
  %20 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %21 = icmp ne %struct.sway_container* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @CMD_FAILURE, align 4
  %24 = call %struct.cmd_results* @cmd_results_new(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %24, %struct.cmd_results** %3, align 8
  br label %67

25:                                               ; preds = %15
  %26 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %27 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %26, i32 0, i32 0
  %28 = load %struct.sway_view*, %struct.sway_view** %27, align 8
  %29 = icmp ne %struct.sway_view* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @CMD_INVALID, align 4
  %32 = call %struct.cmd_results* @cmd_results_new(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %32, %struct.cmd_results** %3, align 8
  br label %67

33:                                               ; preds = %25
  %34 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %35 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %34, i32 0, i32 0
  %36 = load %struct.sway_view*, %struct.sway_view** %35, align 8
  store %struct.sway_view* %36, %struct.sway_view** %8, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %44 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %64

45:                                               ; preds = %33
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %53 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %63

54:                                               ; preds = %45
  %55 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.sway_view*, %struct.sway_view** %8, align 8
  %60 = call i32 @view_is_urgent(%struct.sway_view* %59)
  %61 = call i32 @parse_boolean(i8* %58, i32 %60)
  %62 = call i32 @view_set_urgent(%struct.sway_view* %55, i32 %61)
  br label %63

63:                                               ; preds = %54, %51
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32, i32* @CMD_SUCCESS, align 4
  %66 = call %struct.cmd_results* @cmd_results_new(i32 %65, i8* null)
  store %struct.cmd_results* %66, %struct.cmd_results** %3, align 8
  br label %67

67:                                               ; preds = %64, %30, %22, %13
  %68 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %68
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @view_set_urgent(%struct.sway_view*, i32) #1

declare dso_local i32 @parse_boolean(i8*, i32) #1

declare dso_local i32 @view_is_urgent(%struct.sway_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
