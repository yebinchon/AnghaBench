; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_goto_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_cmd_goto_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_copy_cmd_state = type { %struct.TYPE_2__*, %struct.window_mode_entry* }
%struct.TYPE_2__ = type { i8** }
%struct.window_mode_entry = type { i32 }

@WINDOW_COPY_CMD_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_copy_cmd_state*)* @window_copy_cmd_goto_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_cmd_goto_line(%struct.window_copy_cmd_state* %0) #0 {
  %2 = alloca %struct.window_copy_cmd_state*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca i8*, align 8
  store %struct.window_copy_cmd_state* %0, %struct.window_copy_cmd_state** %2, align 8
  %5 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %6 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %5, i32 0, i32 1
  %7 = load %struct.window_mode_entry*, %struct.window_mode_entry** %6, align 8
  store %struct.window_mode_entry* %7, %struct.window_mode_entry** %3, align 8
  %8 = load %struct.window_copy_cmd_state*, %struct.window_copy_cmd_state** %2, align 8
  %9 = getelementptr inbounds %struct.window_copy_cmd_state, %struct.window_copy_cmd_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @window_copy_goto_line(%struct.window_mode_entry* %20, i8* %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* @WINDOW_COPY_CMD_NOTHING, align 4
  ret i32 %24
}

declare dso_local i32 @window_copy_goto_line(%struct.window_mode_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
