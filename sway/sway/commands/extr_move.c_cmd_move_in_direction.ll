; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_cmd_move_in_direction.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_cmd_move_in_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.sway_container* }
%struct.sway_container = type { double, double, i64, %struct.sway_workspace*, i64 }
%struct.sway_workspace = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"px\00", align 1
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid distance specified\00", align 1
@config = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot move workspaces in a direction\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Cannot move fullscreen floating container\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_5__* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"focus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i32, i8**)* @cmd_move_in_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @cmd_move_in_direction(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.cmd_results*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sway_container*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.sway_workspace*, align 8
  %14 = alloca %struct.sway_workspace*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 10, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = load i8**, i8*** %7, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strtol(i8* %20, i8** %9, i32 10)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @CMD_FAILURE, align 4
  %33 = call %struct.cmd_results* @cmd_results_new(i32 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %33, %struct.cmd_results** %4, align 8
  br label %161

34:                                               ; preds = %27, %17
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.sway_container*, %struct.sway_container** %38, align 8
  store %struct.sway_container* %39, %struct.sway_container** %10, align 8
  %40 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %41 = icmp ne %struct.sway_container* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @CMD_FAILURE, align 4
  %44 = call %struct.cmd_results* @cmd_results_new(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cmd_results* %44, %struct.cmd_results** %4, align 8
  br label %161

45:                                               ; preds = %35
  %46 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %47 = call i64 @container_is_floating(%struct.sway_container* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %45
  %50 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @CMD_FAILURE, align 4
  %56 = call %struct.cmd_results* @cmd_results_new(i32 %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store %struct.cmd_results* %56, %struct.cmd_results** %4, align 8
  br label %161

57:                                               ; preds = %49
  %58 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %59 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  store double %60, double* %11, align 8
  %61 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %62 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %61, i32 0, i32 1
  %63 = load double, double* %62, align 8
  store double %63, double* %12, align 8
  %64 = load i32, i32* %5, align 4
  switch i32 %64, label %85 [
    i32 130, label %65
    i32 129, label %70
    i32 128, label %75
    i32 131, label %80
  ]

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  %67 = sitofp i32 %66 to double
  %68 = load double, double* %11, align 8
  %69 = fsub double %68, %67
  store double %69, double* %11, align 8
  br label %85

70:                                               ; preds = %57
  %71 = load i32, i32* %8, align 4
  %72 = sitofp i32 %71 to double
  %73 = load double, double* %11, align 8
  %74 = fadd double %73, %72
  store double %74, double* %11, align 8
  br label %85

75:                                               ; preds = %57
  %76 = load i32, i32* %8, align 4
  %77 = sitofp i32 %76 to double
  %78 = load double, double* %12, align 8
  %79 = fsub double %78, %77
  store double %79, double* %12, align 8
  br label %85

80:                                               ; preds = %57
  %81 = load i32, i32* %8, align 4
  %82 = sitofp i32 %81 to double
  %83 = load double, double* %12, align 8
  %84 = fadd double %83, %82
  store double %84, double* %12, align 8
  br label %85

85:                                               ; preds = %57, %80, %75, %70, %65
  %86 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %87 = load double, double* %11, align 8
  %88 = load double, double* %12, align 8
  %89 = call i32 @container_floating_move_to(%struct.sway_container* %86, double %87, double %88)
  %90 = load i32, i32* @CMD_SUCCESS, align 4
  %91 = call %struct.cmd_results* @cmd_results_new(i32 %90, i8* null)
  store %struct.cmd_results* %91, %struct.cmd_results** %4, align 8
  br label %161

92:                                               ; preds = %45
  %93 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %94 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %93, i32 0, i32 3
  %95 = load %struct.sway_workspace*, %struct.sway_workspace** %94, align 8
  store %struct.sway_workspace* %95, %struct.sway_workspace** %13, align 8
  %96 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @container_move_in_direction(%struct.sway_container* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @CMD_SUCCESS, align 4
  %102 = call %struct.cmd_results* @cmd_results_new(i32 %101, i8* null)
  store %struct.cmd_results* %102, %struct.cmd_results** %4, align 8
  br label %161

103:                                              ; preds = %92
  %104 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %105 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %104, i32 0, i32 3
  %106 = load %struct.sway_workspace*, %struct.sway_workspace** %105, align 8
  store %struct.sway_workspace* %106, %struct.sway_workspace** %14, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @root, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = call i32 (...) @arrange_root()
  br label %123

113:                                              ; preds = %103
  %114 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %115 = call i32 @arrange_workspace(%struct.sway_workspace* %114)
  %116 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %117 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %118 = icmp ne %struct.sway_workspace* %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %121 = call i32 @arrange_workspace(%struct.sway_workspace* %120)
  br label %122

122:                                              ; preds = %119, %113
  br label %123

123:                                              ; preds = %122, %111
  %124 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %125 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %130 = call i32 @ipc_event_window(%struct.sway_container* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %123
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %137 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %136, i32 0, i32 0
  %138 = call i32 @seat_set_raw_focus(i32 %135, i32* %137)
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %144 = call i32 @seat_set_focus_container(i32 %142, %struct.sway_container* %143)
  %145 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %146 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %147 = icmp ne %struct.sway_workspace* %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %131
  %149 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %150 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %151 = call i32 @ipc_event_workspace(%struct.sway_workspace* %149, %struct.sway_workspace* %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %152 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  %153 = call i32 @workspace_detect_urgent(%struct.sway_workspace* %152)
  %154 = load %struct.sway_workspace*, %struct.sway_workspace** %14, align 8
  %155 = call i32 @workspace_detect_urgent(%struct.sway_workspace* %154)
  br label %156

156:                                              ; preds = %148, %131
  %157 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %158 = call i32 @container_end_mouse_operation(%struct.sway_container* %157)
  %159 = load i32, i32* @CMD_SUCCESS, align 4
  %160 = call %struct.cmd_results* @cmd_results_new(i32 %159, i8* null)
  store %struct.cmd_results* %160, %struct.cmd_results** %4, align 8
  br label %161

161:                                              ; preds = %156, %100, %85, %54, %42, %31
  %162 = load %struct.cmd_results*, %struct.cmd_results** %4, align 8
  ret %struct.cmd_results* %162
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @container_floating_move_to(%struct.sway_container*, double, double) #1

declare dso_local i32 @container_move_in_direction(%struct.sway_container*, i32) #1

declare dso_local i32 @arrange_root(...) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

declare dso_local i32 @seat_set_raw_focus(i32, i32*) #1

declare dso_local i32 @seat_set_focus_container(i32, %struct.sway_container*) #1

declare dso_local i32 @ipc_event_workspace(%struct.sway_workspace*, %struct.sway_workspace*, i8*) #1

declare dso_local i32 @workspace_detect_urgent(%struct.sway_workspace*) #1

declare dso_local i32 @container_end_mouse_operation(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
