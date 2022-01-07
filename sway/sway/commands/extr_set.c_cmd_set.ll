; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_set.c_cmd_set.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_set.c_cmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sway_variable** }
%struct.sway_variable = type { i32, i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"variable '%s' must start with $\00", align 1
@config = common dso_local global %struct.TYPE_5__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to allocate variable\00", align 1
@compare_set_qsort = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_set(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_variable*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %11 = call %struct.cmd_results* @checkarg(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10, i32 2)
  store %struct.cmd_results* %11, %struct.cmd_results** %6, align 8
  %12 = icmp ne %struct.cmd_results* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %14, %struct.cmd_results** %3, align 8
  br label %103

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 36
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i32, i32* @CMD_INVALID, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store %struct.cmd_results* %28, %struct.cmd_results** %3, align 8
  br label %103

29:                                               ; preds = %15
  store %struct.sway_variable* null, %struct.sway_variable** %7, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %30
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.sway_variable**, %struct.sway_variable*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sway_variable*, %struct.sway_variable** %43, i64 %45
  %47 = load %struct.sway_variable*, %struct.sway_variable** %46, align 8
  store %struct.sway_variable* %47, %struct.sway_variable** %7, align 8
  %48 = load %struct.sway_variable*, %struct.sway_variable** %7, align 8
  %49 = getelementptr inbounds %struct.sway_variable, %struct.sway_variable* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i32 %50, i8* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  br label %61

57:                                               ; preds = %38
  store %struct.sway_variable* null, %struct.sway_variable** %7, align 8
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %30

61:                                               ; preds = %56, %30
  %62 = load %struct.sway_variable*, %struct.sway_variable** %7, align 8
  %63 = icmp ne %struct.sway_variable* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.sway_variable*, %struct.sway_variable** %7, align 8
  %66 = getelementptr inbounds %struct.sway_variable, %struct.sway_variable* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @free(i32 %67)
  br label %93

69:                                               ; preds = %61
  %70 = call %struct.sway_variable* @malloc(i32 8)
  store %struct.sway_variable* %70, %struct.sway_variable** %7, align 8
  %71 = load %struct.sway_variable*, %struct.sway_variable** %7, align 8
  %72 = icmp ne %struct.sway_variable* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @CMD_FAILURE, align 4
  %75 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %75, %struct.cmd_results** %3, align 8
  br label %103

76:                                               ; preds = %69
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strdup(i8* %79)
  %81 = load %struct.sway_variable*, %struct.sway_variable** %7, align 8
  %82 = getelementptr inbounds %struct.sway_variable, %struct.sway_variable* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load %struct.sway_variable*, %struct.sway_variable** %7, align 8
  %87 = call i32 @list_add(%struct.TYPE_4__* %85, %struct.sway_variable* %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @config, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* @compare_set_qsort, align 4
  %92 = call i32 @list_qsort(%struct.TYPE_4__* %90, i32 %91)
  br label %93

93:                                               ; preds = %76, %64
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  %96 = load i32, i32* %4, align 4
  %97 = sub nsw i32 %96, 1
  %98 = call i32 @join_args(i8** %95, i32 %97)
  %99 = load %struct.sway_variable*, %struct.sway_variable** %7, align 8
  %100 = getelementptr inbounds %struct.sway_variable, %struct.sway_variable* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @CMD_SUCCESS, align 4
  %102 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %101, i8* null)
  store %struct.cmd_results* %102, %struct.cmd_results** %3, align 8
  br label %103

103:                                              ; preds = %93, %73, %23, %13
  %104 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %104
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local %struct.sway_variable* @malloc(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @list_add(%struct.TYPE_4__*, %struct.sway_variable*) #1

declare dso_local i32 @list_qsort(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @join_args(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
