; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/output/extr_toggle.c_output_cmd_toggle.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/output/extr_toggle.c_output_cmd_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.output_config* }
%struct.TYPE_4__ = type { i32, i8** }
%struct.output_config = type { i64, i32 }
%struct.cmd_results = type { i32 }
%struct.sway_output = type { i32 }

@config = common dso_local global %struct.TYPE_6__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Missing output config\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot apply toggle to all outputs.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Cannot apply toggle to unknown output %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @output_cmd_toggle(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.output_config*, align 8
  %7 = alloca %struct.sway_output*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.output_config*, %struct.output_config** %10, align 8
  %12 = icmp ne %struct.output_config* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @CMD_FAILURE, align 4
  %15 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %15, %struct.cmd_results** %3, align 8
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.output_config*, %struct.output_config** %19, align 8
  store %struct.output_config* %20, %struct.output_config** %6, align 8
  %21 = load %struct.output_config*, %struct.output_config** %6, align 8
  %22 = getelementptr inbounds %struct.output_config, %struct.output_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @strcmp(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @CMD_INVALID, align 4
  %28 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %28, %struct.cmd_results** %3, align 8
  br label %77

29:                                               ; preds = %16
  %30 = load %struct.output_config*, %struct.output_config** %6, align 8
  %31 = getelementptr inbounds %struct.output_config, %struct.output_config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.sway_output* @all_output_by_name_or_id(i32 %32)
  store %struct.sway_output* %33, %struct.sway_output** %7, align 8
  %34 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %35 = icmp eq %struct.sway_output* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @CMD_FAILURE, align 4
  %38 = load %struct.output_config*, %struct.output_config** %6, align 8
  %39 = getelementptr inbounds %struct.output_config, %struct.output_config* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  store %struct.cmd_results* %41, %struct.cmd_results** %3, align 8
  br label %77

42:                                               ; preds = %29
  %43 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %44 = call %struct.output_config* @find_output_config(%struct.sway_output* %43)
  store %struct.output_config* %44, %struct.output_config** %6, align 8
  %45 = load %struct.output_config*, %struct.output_config** %6, align 8
  %46 = icmp ne %struct.output_config* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.output_config*, %struct.output_config** %6, align 8
  %49 = getelementptr inbounds %struct.output_config, %struct.output_config* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47, %42
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load %struct.output_config*, %struct.output_config** %55, align 8
  %57 = getelementptr inbounds %struct.output_config, %struct.output_config* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %64

58:                                               ; preds = %47
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.output_config*, %struct.output_config** %61, align 8
  %63 = getelementptr inbounds %struct.output_config, %struct.output_config* %62, i32 0, i32 0
  store i64 1, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.output_config*, %struct.output_config** %6, align 8
  %66 = call i32 @free(%struct.output_config* %65)
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i8** %72, i8*** %76, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %3, align 8
  br label %77

77:                                               ; preds = %64, %36, %26, %13
  %78 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %78
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.sway_output* @all_output_by_name_or_id(i32) #1

declare dso_local %struct.output_config* @find_output_config(%struct.sway_output*) #1

declare dso_local i32 @free(%struct.output_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
