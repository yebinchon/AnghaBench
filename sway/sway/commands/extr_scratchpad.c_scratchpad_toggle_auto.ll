; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_scratchpad.c_scratchpad_toggle_auto.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_scratchpad.c_scratchpad_toggle_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i32, %struct.sway_container*, i64 }
%struct.sway_seat = type { i32 }
%struct.sway_workspace = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sway_container** }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"No focused workspace to toggle scratchpad windows on\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Focus is a scratchpad window - hiding %s\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Focusing other scratchpad window (%s) in this workspace\00", align 1
@root = common dso_local global %struct.TYPE_6__* null, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"Moving a visible scratchpad window (%s) to this workspace\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Scratchpad is empty\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Showing %s from list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scratchpad_toggle_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scratchpad_toggle_auto() #0 {
  %1 = alloca %struct.sway_seat*, align 8
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_container*, align 8
  %8 = alloca %struct.sway_container*, align 8
  %9 = call %struct.sway_seat* (...) @input_manager_current_seat()
  store %struct.sway_seat* %9, %struct.sway_seat** %1, align 8
  %10 = load %struct.sway_seat*, %struct.sway_seat** %1, align 8
  %11 = call %struct.sway_container* @seat_get_focused_container(%struct.sway_seat* %10)
  store %struct.sway_container* %11, %struct.sway_container** %2, align 8
  %12 = load %struct.sway_seat*, %struct.sway_seat** %1, align 8
  %13 = call %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat* %12)
  store %struct.sway_workspace* %13, %struct.sway_workspace** %3, align 8
  %14 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %15 = icmp ne %struct.sway_workspace* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* @SWAY_DEBUG, align 4
  %18 = call i32 (i32, i8*, ...) @sway_log(i32 %17, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %155

19:                                               ; preds = %0
  %20 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %21 = icmp ne %struct.sway_container* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %24 = call i64 @container_is_floating_or_child(%struct.sway_container* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %32, %26
  %28 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %29 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %28, i32 0, i32 1
  %30 = load %struct.sway_container*, %struct.sway_container** %29, align 8
  %31 = icmp ne %struct.sway_container* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %34 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %33, i32 0, i32 1
  %35 = load %struct.sway_container*, %struct.sway_container** %34, align 8
  store %struct.sway_container* %35, %struct.sway_container** %2, align 8
  br label %27

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %22, %19
  %38 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %39 = icmp ne %struct.sway_container* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %42 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* @SWAY_DEBUG, align 4
  %47 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %48 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @sway_log(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %52 = call i32 @root_scratchpad_hide(%struct.sway_container* %51)
  br label %155

53:                                               ; preds = %40, %37
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %89, %53
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %57 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %55, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %54
  %63 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %64 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.sway_container**, %struct.sway_container*** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %67, i64 %69
  %71 = load %struct.sway_container*, %struct.sway_container** %70, align 8
  store %struct.sway_container* %71, %struct.sway_container** %5, align 8
  %72 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %73 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %62
  %77 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %78 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %79 = icmp ne %struct.sway_container* %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, i32* @SWAY_DEBUG, align 4
  %82 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %83 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, ...) @sway_log(i32 %81, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %87 = call i32 @root_scratchpad_show(%struct.sway_container* %86)
  br label %155

88:                                               ; preds = %76, %62
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %54

92:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %126, %92
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %94, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %93
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load %struct.sway_container**, %struct.sway_container*** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %106, i64 %108
  %110 = load %struct.sway_container*, %struct.sway_container** %109, align 8
  store %struct.sway_container* %110, %struct.sway_container** %7, align 8
  %111 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %112 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %111, i32 0, i32 1
  %113 = load %struct.sway_container*, %struct.sway_container** %112, align 8
  %114 = icmp ne %struct.sway_container* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %101
  %116 = load i32, i32* @SWAY_DEBUG, align 4
  %117 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %118 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @sway_log(i32 %116, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %122 = call i32 @root_scratchpad_show(%struct.sway_container* %121)
  %123 = load %struct.sway_container*, %struct.sway_container** %7, align 8
  %124 = call i32 @ipc_event_window(%struct.sway_container* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %155

125:                                              ; preds = %101
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %93

129:                                              ; preds = %93
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @sway_assert(i32 %134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %129
  br label %155

138:                                              ; preds = %129
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load %struct.sway_container**, %struct.sway_container*** %142, align 8
  %144 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %143, i64 0
  %145 = load %struct.sway_container*, %struct.sway_container** %144, align 8
  store %struct.sway_container* %145, %struct.sway_container** %8, align 8
  %146 = load i32, i32* @SWAY_DEBUG, align 4
  %147 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %148 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, i8*, ...) @sway_log(i32 %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %149)
  %151 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %152 = call i32 @root_scratchpad_show(%struct.sway_container* %151)
  %153 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %154 = call i32 @ipc_event_window(%struct.sway_container* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %155

155:                                              ; preds = %138, %137, %115, %80, %45, %16
  ret void
}

declare dso_local %struct.sway_seat* @input_manager_current_seat(...) #1

declare dso_local %struct.sway_container* @seat_get_focused_container(%struct.sway_seat*) #1

declare dso_local %struct.sway_workspace* @seat_get_focused_workspace(%struct.sway_seat*) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i64 @container_is_floating_or_child(%struct.sway_container*) #1

declare dso_local i32 @root_scratchpad_hide(%struct.sway_container*) #1

declare dso_local i32 @root_scratchpad_show(%struct.sway_container*) #1

declare dso_local i32 @ipc_event_window(%struct.sway_container*, i8*) #1

declare dso_local i32 @sway_assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
