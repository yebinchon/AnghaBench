; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_inhibit_idle.c_cmd_inhibit_idle.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_inhibit_idle.c_cmd_inhibit_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sway_container* }
%struct.sway_container = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.cmd_results = type { i32 }
%struct.sway_idle_inhibitor_v1 = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"inhibit_idle\00", align 1
@EXPECTED_EQUAL_TO = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_6__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Only views can have idle inhibitors\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"focus\00", align 1
@INHIBIT_IDLE_FOCUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@INHIBIT_IDLE_FULLSCREEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@INHIBIT_IDLE_OPEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@INHIBIT_IDLE_VISIBLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"Expected `inhibit_idle focus|fullscreen|open|none|visible`\00", align 1
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_inhibit_idle(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_idle_inhibitor_v1*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EXPECTED_EQUAL_TO, align 4
  %13 = call %struct.cmd_results* @checkarg(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12, i32 1)
  store %struct.cmd_results* %13, %struct.cmd_results** %6, align 8
  %14 = icmp ne %struct.cmd_results* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %16, %struct.cmd_results** %3, align 8
  br label %111

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.sway_container*, %struct.sway_container** %20, align 8
  store %struct.sway_container* %21, %struct.sway_container** %7, align 8
  %22 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %23 = icmp ne %struct.sway_container* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %17
  %30 = load i32, i32* @CMD_INVALID, align 4
  %31 = call %struct.cmd_results* @cmd_results_new(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %31, %struct.cmd_results** %3, align 8
  br label %111

32:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @INHIBIT_IDLE_FOCUS, align 4
  store i32 %39, i32* %9, align 4
  br label %78

40:                                               ; preds = %32
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @INHIBIT_IDLE_FULLSCREEN, align 4
  store i32 %47, i32* %9, align 4
  br label %77

48:                                               ; preds = %40
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @INHIBIT_IDLE_OPEN, align 4
  store i32 %55, i32* %9, align 4
  br label %76

56:                                               ; preds = %48
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  br label %75

63:                                               ; preds = %56
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @INHIBIT_IDLE_VISIBLE, align 4
  store i32 %70, i32* %9, align 4
  br label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @CMD_INVALID, align 4
  %73 = call %struct.cmd_results* @cmd_results_new(i32 %72, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  store %struct.cmd_results* %73, %struct.cmd_results** %3, align 8
  br label %111

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %62
  br label %76

76:                                               ; preds = %75, %54
  br label %77

77:                                               ; preds = %76, %46
  br label %78

78:                                               ; preds = %77, %38
  %79 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %80 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.sway_idle_inhibitor_v1* @sway_idle_inhibit_v1_user_inhibitor_for_view(i32 %81)
  store %struct.sway_idle_inhibitor_v1* %82, %struct.sway_idle_inhibitor_v1** %10, align 8
  %83 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %10, align 8
  %84 = icmp ne %struct.sway_idle_inhibitor_v1* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %10, align 8
  %90 = call i32 @sway_idle_inhibit_v1_user_inhibitor_destroy(%struct.sway_idle_inhibitor_v1* %89)
  br label %97

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.sway_idle_inhibitor_v1*, %struct.sway_idle_inhibitor_v1** %10, align 8
  %94 = getelementptr inbounds %struct.sway_idle_inhibitor_v1, %struct.sway_idle_inhibitor_v1* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %96 = call i32 @sway_idle_inhibit_v1_check_active(i32 %95)
  br label %97

97:                                               ; preds = %91, %88
  br label %108

98:                                               ; preds = %78
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %103 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @sway_idle_inhibit_v1_user_inhibitor_register(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %98
  br label %108

108:                                              ; preds = %107, %97
  %109 = load i32, i32* @CMD_SUCCESS, align 4
  %110 = call %struct.cmd_results* @cmd_results_new(i32 %109, i8* null)
  store %struct.cmd_results* %110, %struct.cmd_results** %3, align 8
  br label %111

111:                                              ; preds = %108, %71, %29, %15
  %112 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %112
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.sway_idle_inhibitor_v1* @sway_idle_inhibit_v1_user_inhibitor_for_view(i32) #1

declare dso_local i32 @sway_idle_inhibit_v1_user_inhibitor_destroy(%struct.sway_idle_inhibitor_v1*) #1

declare dso_local i32 @sway_idle_inhibit_v1_check_active(i32) #1

declare dso_local i32 @sway_idle_inhibit_v1_user_inhibitor_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
