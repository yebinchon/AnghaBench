; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_copy_buffer.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_copy_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_pane* }
%struct.window_pane = type { i32 }
%struct.screen_write_ctx = type { i32 }

@global_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"set-clipboard\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pane-set-clipboard\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i8*, i8*, i64)* @window_copy_copy_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_copy_buffer(%struct.window_mode_entry* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.window_mode_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.window_pane*, align 8
  %10 = alloca %struct.screen_write_ctx, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.window_mode_entry*, %struct.window_mode_entry** %5, align 8
  %12 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %11, i32 0, i32 0
  %13 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  store %struct.window_pane* %13, %struct.window_pane** %9, align 8
  %14 = load i32, i32* @global_options, align 4
  %15 = call i64 @options_get_number(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %19 = call i32 @screen_write_start(%struct.screen_write_ctx* %10, %struct.window_pane* %18, i32* null)
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @screen_write_setselection(%struct.screen_write_ctx* %10, i8* %20, i64 %21)
  %23 = call i32 @screen_write_stop(%struct.screen_write_ctx* %10)
  %24 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %25 = call i32 @notify_pane(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.window_pane* %24)
  br label %26

26:                                               ; preds = %17, %4
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @paste_add(i8* %27, i8* %28, i64 %29)
  ret void
}

declare dso_local i64 @options_get_number(i32, i8*) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, %struct.window_pane*, i32*) #1

declare dso_local i32 @screen_write_setselection(%struct.screen_write_ctx*, i8*, i64) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @notify_pane(i8*, %struct.window_pane*) #1

declare dso_local i32 @paste_add(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
