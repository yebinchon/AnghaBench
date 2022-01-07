; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_for_window.c_cmd_for_window.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_for_window.c_cmd_for_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cmd_results = type { i32 }
%struct.criteria = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"for_window\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@CT_COMMAND = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"for_window already exists: '%s' -> '%s'\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"for_window: '%s' -> '%s' added\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_for_window(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.criteria*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %11 = call %struct.cmd_results* @checkarg(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10, i32 2)
  store %struct.cmd_results* %11, %struct.cmd_results** %6, align 8
  %12 = icmp ne %struct.cmd_results* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %14, %struct.cmd_results** %3, align 8
  br label %72

15:                                               ; preds = %2
  store i8* null, i8** %7, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call %struct.criteria* @criteria_parse(i8* %18, i8** %7)
  store %struct.criteria* %19, %struct.criteria** %8, align 8
  %20 = load %struct.criteria*, %struct.criteria** %8, align 8
  %21 = icmp ne %struct.criteria* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @CMD_INVALID, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.cmd_results* @cmd_results_new(i32 %23, i8* %24)
  store %struct.cmd_results* %25, %struct.cmd_results** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %28, %struct.cmd_results** %3, align 8
  br label %72

29:                                               ; preds = %15
  %30 = load i32, i32* @CT_COMMAND, align 4
  %31 = load %struct.criteria*, %struct.criteria** %8, align 8
  %32 = getelementptr inbounds %struct.criteria, %struct.criteria* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @join_args(i8** %34, i32 %36)
  %38 = load %struct.criteria*, %struct.criteria** %8, align 8
  %39 = getelementptr inbounds %struct.criteria, %struct.criteria* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.criteria*, %struct.criteria** %8, align 8
  %41 = call i64 @criteria_already_exists(%struct.criteria* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %29
  %44 = load i32, i32* @SWAY_DEBUG, align 4
  %45 = load %struct.criteria*, %struct.criteria** %8, align 8
  %46 = getelementptr inbounds %struct.criteria, %struct.criteria* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.criteria*, %struct.criteria** %8, align 8
  %49 = getelementptr inbounds %struct.criteria, %struct.criteria* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sway_log(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load %struct.criteria*, %struct.criteria** %8, align 8
  %53 = call i32 @criteria_destroy(%struct.criteria* %52)
  %54 = load i32, i32* @CMD_SUCCESS, align 4
  %55 = call %struct.cmd_results* @cmd_results_new(i32 %54, i8* null)
  store %struct.cmd_results* %55, %struct.cmd_results** %3, align 8
  br label %72

56:                                               ; preds = %29
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.criteria*, %struct.criteria** %8, align 8
  %61 = call i32 @list_add(i32 %59, %struct.criteria* %60)
  %62 = load i32, i32* @SWAY_DEBUG, align 4
  %63 = load %struct.criteria*, %struct.criteria** %8, align 8
  %64 = getelementptr inbounds %struct.criteria, %struct.criteria* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.criteria*, %struct.criteria** %8, align 8
  %67 = getelementptr inbounds %struct.criteria, %struct.criteria* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sway_log(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i32, i32* @CMD_SUCCESS, align 4
  %71 = call %struct.cmd_results* @cmd_results_new(i32 %70, i8* null)
  store %struct.cmd_results* %71, %struct.cmd_results** %3, align 8
  br label %72

72:                                               ; preds = %56, %43, %22, %13
  %73 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %73
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.criteria* @criteria_parse(i8*, i8**) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @join_args(i8**, i32) #1

declare dso_local i64 @criteria_already_exists(%struct.criteria*) #1

declare dso_local i32 @sway_log(i32, i8*, i32, i32) #1

declare dso_local i32 @criteria_destroy(%struct.criteria*) #1

declare dso_local i32 @list_add(i32, %struct.criteria*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
