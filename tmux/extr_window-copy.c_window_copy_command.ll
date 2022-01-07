; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_command.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 (%struct.window_copy_cmd_state*)*, i32 }
%struct.window_copy_cmd_state = type { %struct.winlink*, %struct.session*, %struct.client*, %struct.mouse_event*, %struct.args*, %struct.window_mode_entry* }
%struct.winlink = type { i32 }
%struct.session = type { i32 }
%struct.client = type { i32 }
%struct.mouse_event = type { i32, i64 }
%struct.args = type { i32, i8** }
%struct.window_mode_entry = type { i32, i32, %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i32, i32, i32* }

@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@window_copy_cmd_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"search-\00", align 1
@WINDOW_COPY_CMD_REDRAW = common dso_local global i32 0, align 4
@WINDOW_COPY_CMD_CANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, %struct.client*, %struct.session*, %struct.winlink*, %struct.args*, %struct.mouse_event*)* @window_copy_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_command(%struct.window_mode_entry* %0, %struct.client* %1, %struct.session* %2, %struct.winlink* %3, %struct.args* %4, %struct.mouse_event* %5) #0 {
  %7 = alloca %struct.window_mode_entry*, align 8
  %8 = alloca %struct.client*, align 8
  %9 = alloca %struct.session*, align 8
  %10 = alloca %struct.winlink*, align 8
  %11 = alloca %struct.args*, align 8
  %12 = alloca %struct.mouse_event*, align 8
  %13 = alloca %struct.window_copy_mode_data*, align 8
  %14 = alloca %struct.window_copy_cmd_state, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %7, align 8
  store %struct.client* %1, %struct.client** %8, align 8
  store %struct.session* %2, %struct.session** %9, align 8
  store %struct.winlink* %3, %struct.winlink** %10, align 8
  store %struct.args* %4, %struct.args** %11, align 8
  store %struct.mouse_event* %5, %struct.mouse_event** %12, align 8
  %18 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  %19 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %18, i32 0, i32 2
  %20 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %19, align 8
  store %struct.window_copy_mode_data* %20, %struct.window_copy_mode_data** %13, align 8
  %21 = load %struct.args*, %struct.args** %11, align 8
  %22 = getelementptr inbounds %struct.args, %struct.args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %151

26:                                               ; preds = %6
  %27 = load %struct.args*, %struct.args** %11, align 8
  %28 = getelementptr inbounds %struct.args, %struct.args* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %16, align 8
  %32 = load %struct.mouse_event*, %struct.mouse_event** %12, align 8
  %33 = icmp ne %struct.mouse_event* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %26
  %35 = load %struct.mouse_event*, %struct.mouse_event** %12, align 8
  %36 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.mouse_event*, %struct.mouse_event** %12, align 8
  %41 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @MOUSE_WHEEL(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load %struct.mouse_event*, %struct.mouse_event** %12, align 8
  %47 = call i32 @window_copy_move_mouse(%struct.mouse_event* %46)
  br label %48

48:                                               ; preds = %45, %39, %34, %26
  %49 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  %50 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %14, i32 0, i32 5
  store %struct.window_mode_entry* %49, %struct.window_mode_entry** %50, align 8
  %51 = load %struct.args*, %struct.args** %11, align 8
  %52 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %14, i32 0, i32 4
  store %struct.args* %51, %struct.args** %52, align 8
  %53 = load %struct.mouse_event*, %struct.mouse_event** %12, align 8
  %54 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %14, i32 0, i32 3
  store %struct.mouse_event* %53, %struct.mouse_event** %54, align 8
  %55 = load %struct.client*, %struct.client** %8, align 8
  %56 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %14, i32 0, i32 2
  store %struct.client* %55, %struct.client** %56, align 8
  %57 = load %struct.session*, %struct.session** %9, align 8
  %58 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %14, i32 0, i32 1
  store %struct.session* %57, %struct.session** %58, align 8
  %59 = load %struct.winlink*, %struct.winlink** %10, align 8
  %60 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %14, i32 0, i32 0
  store %struct.winlink* %59, %struct.winlink** %60, align 8
  %61 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  store i32 %61, i32* %15, align 4
  store i64 0, i64* %17, align 8
  br label %62

62:                                               ; preds = %107, %48
  %63 = load i64, i64* %17, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @window_copy_cmd_table, align 8
  %65 = call i64 @nitems(%struct.TYPE_3__* %64)
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %110

67:                                               ; preds = %62
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @window_copy_cmd_table, align 8
  %69 = load i64, i64* %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = call i64 @strcmp(i32 %72, i8* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %67
  %77 = load %struct.args*, %struct.args** %11, align 8
  %78 = getelementptr inbounds %struct.args, %struct.args* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @window_copy_cmd_table, align 8
  %82 = load i64, i64* %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %98, label %87

87:                                               ; preds = %76
  %88 = load %struct.args*, %struct.args** %11, align 8
  %89 = getelementptr inbounds %struct.args, %struct.args* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @window_copy_cmd_table, align 8
  %93 = load i64, i64* %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %91, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %87, %76
  br label %110

99:                                               ; preds = %87
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @window_copy_cmd_table, align 8
  %101 = load i64, i64* %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32 (%struct.window_copy_cmd_state*)*, i32 (%struct.window_copy_cmd_state*)** %103, align 8
  %105 = call i32 %104(%struct.window_copy_cmd_state* %14)
  store i32 %105, i32* %15, align 4
  br label %110

106:                                              ; preds = %67
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %17, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %17, align 8
  br label %62

110:                                              ; preds = %99, %98, %62
  %111 = load i8*, i8** %16, align 8
  %112 = call i64 @strncmp(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %110
  %115 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %13, align 8
  %116 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  %121 = call i32 @window_copy_clear_marks(%struct.window_mode_entry* %120)
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @WINDOW_COPY_CMD_REDRAW, align 4
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %125, %119
  %128 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %13, align 8
  %129 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %128, i32 0, i32 1
  store i32 -1, i32* %129, align 4
  %130 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %13, align 8
  %131 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %130, i32 0, i32 0
  store i32 -1, i32* %131, align 8
  br label %132

132:                                              ; preds = %127, %114, %110
  %133 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  %134 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* @WINDOW_COPY_CMD_CANCEL, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  %140 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @window_pane_reset_mode(i32 %141)
  br label %151

143:                                              ; preds = %132
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @WINDOW_COPY_CMD_REDRAW, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  %149 = call i32 @window_copy_redraw_screen(%struct.window_mode_entry* %148)
  br label %150

150:                                              ; preds = %147, %143
  br label %151

151:                                              ; preds = %25, %150, %138
  ret void
}

declare dso_local i32 @MOUSE_WHEEL(i32) #1

declare dso_local i32 @window_copy_move_mouse(%struct.mouse_event*) #1

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @window_copy_clear_marks(%struct.window_mode_entry*) #1

declare dso_local i32 @window_pane_reset_mode(i32) #1

declare dso_local i32 @window_copy_redraw_screen(%struct.window_mode_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
