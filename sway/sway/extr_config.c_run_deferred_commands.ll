; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_config.c_run_deferred_commands.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_config.c_run_deferred_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8**, i64 }
%struct.TYPE_6__ = type { i32, %struct.cmd_results** }
%struct.cmd_results = type { i64, i32 }

@config = common dso_local global %struct.TYPE_8__* null, align 8
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Running deferred commands\00", align 1
@CMD_SUCCESS = common dso_local global i64 0, align 8
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Error on line '%s': %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_deferred_commands() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd_results*, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %73

12:                                               ; preds = %0
  %13 = load i32, i32* @SWAY_DEBUG, align 4
  %14 = call i32 (i32, i8*, ...) @sway_log(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %64, %12
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %1, align 8
  %30 = load i8*, i8** %1, align 8
  %31 = call %struct.TYPE_6__* @execute_command(i8* %30, i32* null, i32* null)
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %61, %22
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.cmd_results**, %struct.cmd_results*** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cmd_results*, %struct.cmd_results** %41, i64 %43
  %45 = load %struct.cmd_results*, %struct.cmd_results** %44, align 8
  store %struct.cmd_results* %45, %struct.cmd_results** %4, align 8
  %46 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  %47 = getelementptr inbounds %struct.cmd_results, %struct.cmd_results* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CMD_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %38
  %52 = load i32, i32* @SWAY_ERROR, align 4
  %53 = load i8*, i8** %1, align 8
  %54 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  %55 = getelementptr inbounds %struct.cmd_results, %struct.cmd_results* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @sway_log(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %53, i32 %56)
  br label %58

58:                                               ; preds = %51, %38
  %59 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  %60 = call i32 @free_cmd_results(%struct.cmd_results* %59)
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %32

64:                                               ; preds = %32
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i32 @list_del(%struct.TYPE_7__* %67, i32 0)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = call i32 @list_free(%struct.TYPE_6__* %69)
  %71 = load i8*, i8** %1, align 8
  %72 = call i32 @free(i8* %71)
  br label %15

73:                                               ; preds = %11, %15
  ret void
}

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @execute_command(i8*, i32*, i32*) #1

declare dso_local i32 @free_cmd_results(%struct.cmd_results*) #1

declare dso_local i32 @list_del(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @list_free(%struct.TYPE_6__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
