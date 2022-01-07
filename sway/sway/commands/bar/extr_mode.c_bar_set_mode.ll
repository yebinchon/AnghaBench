; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_mode.c_bar_set_mode.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_mode.c_bar_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cmd_results = type { i32 }
%struct.bar_config = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@config = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"dock\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hide\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"invisible\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Invalid value %s\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Setting mode: '%s' for bar: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (%struct.bar_config*, i8*)* @bar_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @bar_set_mode(%struct.bar_config* %0, i8* %1) #0 {
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
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %33, label %18

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
  br label %32

28:                                               ; preds = %18
  %29 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %31 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %28, %24
  br label %73

33:                                               ; preds = %13, %2
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %40 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %72

41:                                               ; preds = %33
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strcasecmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %48 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %71

49:                                               ; preds = %41
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strcasecmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %56 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %70

57:                                               ; preds = %49
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @strcasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = call i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %63 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %64 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %69

65:                                               ; preds = %57
  %66 = load i32, i32* @CMD_INVALID, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call %struct.cmd_results* @cmd_results_new(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  store %struct.cmd_results* %68, %struct.cmd_results** %3, align 8
  br label %100

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70, %45
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72, %32
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %76 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strcmp(i8* %74, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %73
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %87 = call i32 @ipc_event_barconfig_update(%struct.bar_config* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* @SWAY_DEBUG, align 4
  %90 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %91 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.bar_config*, %struct.bar_config** %4, align 8
  %94 = getelementptr inbounds %struct.bar_config, %struct.bar_config* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @sway_log(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %92, i32 %95)
  br label %97

97:                                               ; preds = %88, %73
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @free(i8* %98)
  store %struct.cmd_results* null, %struct.cmd_results** %3, align 8
  br label %100

100:                                              ; preds = %97, %65
  %101 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %101
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
