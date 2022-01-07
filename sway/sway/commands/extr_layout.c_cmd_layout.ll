; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_layout.c_cmd_layout.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_layout.c_cmd_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.sway_workspace*, %struct.sway_container* }
%struct.sway_workspace = type { i32, i32, i32 }
%struct.sway_container = type { i32, i32, %struct.TYPE_8__*, %struct.sway_container* }
%struct.TYPE_8__ = type { i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_9__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@config = common dso_local global %struct.TYPE_10__* null, align 8
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Unable to change layout of floating windows\00", align 1
@L_NONE = common dso_local global i32 0, align 4
@expected_syntax = common dso_local global i8* null, align 8
@L_TABBED = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_layout(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_workspace*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %13 = call %struct.cmd_results* @checkarg(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12, i32 1)
  store %struct.cmd_results* %13, %struct.cmd_results** %6, align 8
  %14 = icmp ne %struct.cmd_results* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %16, %struct.cmd_results** %3, align 8
  br label %156

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @CMD_INVALID, align 4
  %26 = call %struct.cmd_results* @cmd_results_new(i32 %25, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %26, %struct.cmd_results** %3, align 8
  br label %156

27:                                               ; preds = %17
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.sway_container*, %struct.sway_container** %30, align 8
  store %struct.sway_container* %31, %struct.sway_container** %7, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @config, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.sway_workspace*, %struct.sway_workspace** %34, align 8
  store %struct.sway_workspace* %35, %struct.sway_workspace** %8, align 8
  %36 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %37 = icmp ne %struct.sway_container* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %40 = call i64 @container_is_floating(%struct.sway_container* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @CMD_FAILURE, align 4
  %44 = call %struct.cmd_results* @cmd_results_new(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %44, %struct.cmd_results** %3, align 8
  br label %156

45:                                               ; preds = %38, %27
  %46 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %47 = icmp ne %struct.sway_container* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %50 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %49, i32 0, i32 3
  %51 = load %struct.sway_container*, %struct.sway_container** %50, align 8
  store %struct.sway_container* %51, %struct.sway_container** %7, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* @L_NONE, align 4
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @L_NONE, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %56 = icmp ne %struct.sway_container* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %59 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i8**, i8*** %5, align 8
  %63 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %64 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %67 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %70 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @get_layout(i32 %61, i8** %62, i32 %65, i32 %68, i32 %73)
  store i32 %74, i32* %9, align 4
  br label %91

75:                                               ; preds = %52
  %76 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %77 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %82 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %85 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %88 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @get_layout(i32 %79, i8** %80, i32 %83, i32 %86, i32 %89)
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %75, %57
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @L_NONE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* @CMD_INVALID, align 4
  %97 = load i8*, i8** @expected_syntax, align 8
  %98 = call %struct.cmd_results* @cmd_results_new(i32 %96, i8* %97)
  store %struct.cmd_results* %98, %struct.cmd_results** %3, align 8
  br label %156

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %153

103:                                              ; preds = %99
  %104 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %105 = icmp ne %struct.sway_container* %104, null
  br i1 %105, label %106, label %124

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @L_TABBED, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @L_STACKED, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %117 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %110, %106
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %121 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %123 = call i32 @container_update_representation(%struct.sway_container* %122)
  br label %142

124:                                              ; preds = %103
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @L_TABBED, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @L_STACKED, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %135 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %132, %128, %124
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %139 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %141 = call i32 @workspace_update_representation(%struct.sway_workspace* %140)
  br label %142

142:                                              ; preds = %136, %118
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** @root, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = call i32 (...) @arrange_root()
  br label %152

149:                                              ; preds = %142
  %150 = load %struct.sway_workspace*, %struct.sway_workspace** %8, align 8
  %151 = call i32 @arrange_workspace(%struct.sway_workspace* %150)
  br label %152

152:                                              ; preds = %149, %147
  br label %153

153:                                              ; preds = %152, %99
  %154 = load i32, i32* @CMD_SUCCESS, align 4
  %155 = call %struct.cmd_results* @cmd_results_new(i32 %154, i8* null)
  store %struct.cmd_results* %155, %struct.cmd_results** %3, align 8
  br label %156

156:                                              ; preds = %153, %95, %42, %24, %15
  %157 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %157
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @get_layout(i32, i8**, i32, i32, i32) #1

declare dso_local i32 @container_update_representation(%struct.sway_container*) #1

declare dso_local i32 @workspace_update_representation(%struct.sway_workspace*) #1

declare dso_local i32 @arrange_root(...) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
