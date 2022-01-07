; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_key_table.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_key_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_pane* }
%struct.window_pane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"mode-keys\00", align 1
@MODEKEY_VI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"copy-mode-vi\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"copy-mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.window_mode_entry*)* @window_copy_key_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @window_copy_key_table(%struct.window_mode_entry* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.window_mode_entry*, align 8
  %4 = alloca %struct.window_pane*, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %3, align 8
  %5 = load %struct.window_mode_entry*, %struct.window_mode_entry** %3, align 8
  %6 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %5, i32 0, i32 0
  %7 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  store %struct.window_pane* %7, %struct.window_pane** %4, align 8
  %8 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %9 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @options_get_number(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @MODEKEY_VI, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %18

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local i64 @options_get_number(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
