; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_hidden_state.c_bar_set_hidden_state.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_hidden_state.c_bar_set_hidden_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cmd_results = type { i32 }
%struct.bar_config = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@config = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Invalid value %s\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Setting hidden_state: '%s' for bar: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.bar_config*, i8*)* @bar_set_hidden_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @bar_set_hidden_state(%struct.bar_config* %0, i8* %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca %struct.bar_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.bar_config* %0, %struct.bar_config** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %8 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strcasecmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %13
  %19 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %20 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %27 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %39

28:                                               ; preds = %18
  %29 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %30 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %37 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %24
  br label %62

40:                                               ; preds = %13, %2
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %47 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %61

48:                                               ; preds = %40
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %55 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @CMD_INVALID, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call %struct.cmd_results* @cmd_results_new(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  store %struct.cmd_results* %59, %struct.cmd_results** %3, align 8
  br label %89

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %65 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %63, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %62
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %76 = call i32 @ipc_event_barconfig_update(%struct.bar_config* %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* @SWAY_DEBUG, align 4
  %79 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %80 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %83 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sway_log(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %81, i32 %84)
  br label %86

86:                                               ; preds = %77, %62
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @free(i8* %87)
  store %struct.cmd_results* null, %struct.cmd_results** %3, align 8
  br label %89

89:                                               ; preds = %86, %56
  %90 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %90
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ipc_event_barconfig_update(%struct.bar_config*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
