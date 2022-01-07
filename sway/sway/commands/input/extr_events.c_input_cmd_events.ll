; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/input/extr_events.c_input_cmd_events.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/input/extr_events.c_input_cmd_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.input_config* }
%struct.input_config = type { i32, i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"events\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"No input device defined.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@LIBINPUT_CONFIG_SEND_EVENTS_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@LIBINPUT_CONFIG_SEND_EVENTS_DISABLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"disabled_on_external_mouse\00", align 1
@LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE = common dso_local global i32 0, align 4
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"Expected 'events <enabled|disabled|disabled_on_external_mouse>'\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Invalid toggle mode %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [71 x i8] c"Expected 'events <enabled|disabled|disabled_on_external_mouse|toggle>'\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @input_cmd_events(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.input_config*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %11 = call %struct.cmd_results* @checkarg(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, i32 1)
  store %struct.cmd_results* %11, %struct.cmd_results** %6, align 8
  %12 = icmp ne %struct.cmd_results* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %14, %struct.cmd_results** %3, align 8
  br label %127

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.input_config*, %struct.input_config** %18, align 8
  store %struct.input_config* %19, %struct.input_config** %7, align 8
  %20 = load %struct.input_config*, %struct.input_config** %7, align 8
  %21 = icmp ne %struct.input_config* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @CMD_FAILURE, align 4
  %24 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %24, %struct.cmd_results** %3, align 8
  br label %127

25:                                               ; preds = %15
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @LIBINPUT_CONFIG_SEND_EVENTS_ENABLED, align 4
  %33 = load %struct.input_config*, %struct.input_config** %7, align 8
  %34 = getelementptr inbounds %struct.input_config, %struct.input_config* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %124

35:                                               ; preds = %25
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcasecmp(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @LIBINPUT_CONFIG_SEND_EVENTS_DISABLED, align 4
  %43 = load %struct.input_config*, %struct.input_config** %7, align 8
  %44 = getelementptr inbounds %struct.input_config, %struct.input_config* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %123

45:                                               ; preds = %35
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE, align 4
  %53 = load %struct.input_config*, %struct.input_config** %7, align 8
  %54 = getelementptr inbounds %struct.input_config, %struct.input_config* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %122

55:                                               ; preds = %45
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @CMD_INVALID, align 4
  %62 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %61, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  store %struct.cmd_results* %62, %struct.cmd_results** %3, align 8
  br label %127

63:                                               ; preds = %55
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcasecmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %117

69:                                               ; preds = %63
  store i32 1, i32* %8, align 4
  br label %70

70:                                               ; preds = %91, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @mode_for_name(i8* %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load i32, i32* @CMD_INVALID, align 4
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %88)
  store %struct.cmd_results* %89, %struct.cmd_results** %3, align 8
  br label %127

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %70

94:                                               ; preds = %70
  %95 = load %struct.input_config*, %struct.input_config** %7, align 8
  %96 = getelementptr inbounds %struct.input_config, %struct.input_config* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @strcmp(i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  %105 = call i32 @toggle_wildcard_send_events(i32 %102, i8** %104)
  %106 = load i32, i32* @INT_MIN, align 4
  %107 = load %struct.input_config*, %struct.input_config** %7, align 8
  %108 = getelementptr inbounds %struct.input_config, %struct.input_config* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %116

109:                                              ; preds = %94
  %110 = load %struct.input_config*, %struct.input_config** %7, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = call i32 @toggle_send_events(%struct.input_config* %110, i32 %112, i8** %114)
  br label %116

116:                                              ; preds = %109, %100
  br label %120

117:                                              ; preds = %63
  %118 = load i32, i32* @CMD_INVALID, align 4
  %119 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %118, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0))
  store %struct.cmd_results* %119, %struct.cmd_results** %3, align 8
  br label %127

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %51
  br label %123

123:                                              ; preds = %122, %41
  br label %124

124:                                              ; preds = %123, %31
  %125 = load i32, i32* @CMD_SUCCESS, align 4
  %126 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %125, i8* null)
  store %struct.cmd_results* %126, %struct.cmd_results** %3, align 8
  br label %127

127:                                              ; preds = %124, %117, %82, %60, %22, %13
  %128 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %128
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @mode_for_name(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @toggle_wildcard_send_events(i32, i8**) #1

declare dso_local i32 @toggle_send_events(%struct.input_config*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
