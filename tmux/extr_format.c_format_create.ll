; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_create.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode = type { i32*, i32 }
%struct.format_tree = type { i32, i32, i32, %struct.cmdq_item*, %struct.client*, i32 }
%struct.client = type { i32 }
%struct.cmdq_item = type { i32 }

@format_job_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VERSION = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@format_cb_host = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"host_short\00", align 1
@format_cb_host_short = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@format_cb_pid = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"socket_path\00", align 1
@socket_path = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"start_time\00", align 1
@start_time = common dso_local global i32 0, align 4
@all_window_modes = common dso_local global %struct.window_mode** null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"%s_format\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.format_tree* @format_create(%struct.client* %0, %struct.cmdq_item* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.cmdq_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.format_tree*, align 8
  %10 = alloca %struct.window_mode**, align 8
  %11 = alloca [64 x i8], align 16
  store %struct.client* %0, %struct.client** %5, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call i32 @event_initialized(i32* @format_job_event)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = call i32 @evtimer_set(i32* @format_job_event, i32 (i32, i32, i32*)* @format_job_timer, i32* null)
  %16 = call i32 @format_job_timer(i32 -1, i32 0, i32* null)
  br label %17

17:                                               ; preds = %14, %4
  %18 = call %struct.format_tree* @xcalloc(i32 1, i32 40)
  store %struct.format_tree* %18, %struct.format_tree** %9, align 8
  %19 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %20 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %19, i32 0, i32 5
  %21 = call i32 @RB_INIT(i32* %20)
  %22 = load %struct.client*, %struct.client** %5, align 8
  %23 = icmp ne %struct.client* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.client*, %struct.client** %5, align 8
  %26 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %27 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %26, i32 0, i32 4
  store %struct.client* %25, %struct.client** %27, align 8
  %28 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %29 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %28, i32 0, i32 4
  %30 = load %struct.client*, %struct.client** %29, align 8
  %31 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %24, %17
  %35 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %36 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %37 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %36, i32 0, i32 3
  store %struct.cmdq_item* %35, %struct.cmdq_item** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %40 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %43 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = call i32 @time(i32* null)
  %45 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %46 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %48 = load i32*, i32** @VERSION, align 8
  %49 = call i32 @format_add(%struct.format_tree* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %48)
  %50 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %51 = load i32, i32* @format_cb_host, align 4
  %52 = call i32 @format_add_cb(%struct.format_tree* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %54 = load i32, i32* @format_cb_host_short, align 4
  %55 = call i32 @format_add_cb(%struct.format_tree* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %57 = load i32, i32* @format_cb_pid, align 4
  %58 = call i32 @format_add_cb(%struct.format_tree* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %60 = load i32*, i32** @socket_path, align 8
  %61 = call i32 @format_add(%struct.format_tree* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %60)
  %62 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %63 = call i32 @format_add_tv(%struct.format_tree* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* @start_time)
  %64 = load %struct.window_mode**, %struct.window_mode*** @all_window_modes, align 8
  store %struct.window_mode** %64, %struct.window_mode*** %10, align 8
  br label %65

65:                                               ; preds = %93, %34
  %66 = load %struct.window_mode**, %struct.window_mode*** %10, align 8
  %67 = load %struct.window_mode*, %struct.window_mode** %66, align 8
  %68 = icmp ne %struct.window_mode* %67, null
  br i1 %68, label %69, label %96

69:                                               ; preds = %65
  %70 = load %struct.window_mode**, %struct.window_mode*** %10, align 8
  %71 = load %struct.window_mode*, %struct.window_mode** %70, align 8
  %72 = getelementptr inbounds %struct.window_mode, %struct.window_mode* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %77 = load %struct.window_mode**, %struct.window_mode*** %10, align 8
  %78 = load %struct.window_mode*, %struct.window_mode** %77, align 8
  %79 = getelementptr inbounds %struct.window_mode, %struct.window_mode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @xsnprintf(i8* %76, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %83 = call i64 @strcspn(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 %83
  store i8 95, i8* %84, align 1
  %85 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %87 = load %struct.window_mode**, %struct.window_mode*** %10, align 8
  %88 = load %struct.window_mode*, %struct.window_mode** %87, align 8
  %89 = getelementptr inbounds %struct.window_mode, %struct.window_mode* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @format_add(%struct.format_tree* %85, i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %90)
  br label %92

92:                                               ; preds = %75, %69
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.window_mode**, %struct.window_mode*** %10, align 8
  %95 = getelementptr inbounds %struct.window_mode*, %struct.window_mode** %94, i32 1
  store %struct.window_mode** %95, %struct.window_mode*** %10, align 8
  br label %65

96:                                               ; preds = %65
  %97 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %98 = icmp ne %struct.cmdq_item* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  %101 = load %struct.cmdq_item*, %struct.cmdq_item** %6, align 8
  %102 = call i32 @format_create_add_item(%struct.format_tree* %100, %struct.cmdq_item* %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load %struct.format_tree*, %struct.format_tree** %9, align 8
  ret %struct.format_tree* %104
}

declare dso_local i32 @event_initialized(i32*) #1

declare dso_local i32 @evtimer_set(i32*, i32 (i32, i32, i32*)*, i32*) #1

declare dso_local i32 @format_job_timer(i32, i32, i32*) #1

declare dso_local %struct.format_tree* @xcalloc(i32, i32) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @format_add(%struct.format_tree*, i8*, i8*, i32*) #1

declare dso_local i32 @format_add_cb(%struct.format_tree*, i8*, i32) #1

declare dso_local i32 @format_add_tv(%struct.format_tree*, i8*, i32*) #1

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @format_create_add_item(%struct.format_tree*, %struct.cmdq_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
