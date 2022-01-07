; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_id.c_bar_cmd_id.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_id.c_bar_cmd_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.bar_config*, %struct.TYPE_3__* }
%struct.bar_config = type { i8* }
%struct.TYPE_3__ = type { i32, %struct.bar_config** }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_SUCCESS = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"id cannot be 'id'\00", align 1
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Id '%s' already defined for another bar. Id unchanged (%s).\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Renaming bar: '%s' to '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @bar_cmd_id(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bar_config*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %13 = call %struct.cmd_results* @checkarg(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12, i32 1)
  store %struct.cmd_results* %13, %struct.cmd_results** %6, align 8
  %14 = icmp ne %struct.cmd_results* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %16, %struct.cmd_results** %3, align 8
  br label %100

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.bar_config*, %struct.bar_config** %22, align 8
  %24 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strcmp(i8* %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* @CMD_SUCCESS, align 4
  %32 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %31, i8* null)
  store %struct.cmd_results* %32, %struct.cmd_results** %3, align 8
  br label %100

33:                                               ; preds = %17
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @CMD_INVALID, align 4
  %39 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %39, %struct.cmd_results** %3, align 8
  br label %100

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %78, %41
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %42
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load %struct.bar_config**, %struct.bar_config*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bar_config*, %struct.bar_config** %55, i64 %57
  %59 = load %struct.bar_config*, %struct.bar_config** %58, align 8
  store %struct.bar_config* %59, %struct.bar_config** %10, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.bar_config*, %struct.bar_config** %10, align 8
  %62 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %60, i8* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %50
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.bar_config*, %struct.bar_config** %68, align 8
  %70 = load %struct.bar_config*, %struct.bar_config** %10, align 8
  %71 = icmp ne %struct.bar_config* %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32, i32* @CMD_FAILURE, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %73, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %74, i8* %75)
  store %struct.cmd_results* %76, %struct.cmd_results** %3, align 8
  br label %100

77:                                               ; preds = %66, %50
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %42

81:                                               ; preds = %42
  %82 = load i32, i32* @SWAY_DEBUG, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @sway_log(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %83, i8* %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.bar_config*, %struct.bar_config** %87, align 8
  %89 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %7, align 8
  %93 = call i8* @strdup(i8* %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.bar_config*, %struct.bar_config** %95, align 8
  %97 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %96, i32 0, i32 0
  store i8* %93, i8** %97, align 8
  %98 = load i32, i32* @CMD_SUCCESS, align 4
  %99 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %98, i8* null)
  store %struct.cmd_results* %99, %struct.cmd_results** %3, align 8
  br label %100

100:                                              ; preds = %81, %72, %37, %30, %15
  %101 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %101
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
