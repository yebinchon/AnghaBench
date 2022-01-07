; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_redraw_lines.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_redraw_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data*, %struct.window_pane* }
%struct.window_copy_mode_data = type { i32, i32 }
%struct.window_pane = type { i32 }
%struct.screen_write_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i64, i64)* @window_copy_redraw_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_redraw_lines(%struct.window_mode_entry* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca %struct.window_copy_mode_data*, align 8
  %9 = alloca %struct.screen_write_ctx, align 4
  %10 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %12 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %11, i32 0, i32 1
  %13 = load %struct.window_pane*, %struct.window_pane** %12, align 8
  store %struct.window_pane* %13, %struct.window_pane** %7, align 8
  %14 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %15 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %14, i32 0, i32 0
  %16 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %15, align 8
  store %struct.window_copy_mode_data* %16, %struct.window_copy_mode_data** %8, align 8
  %17 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %18 = call i32 @screen_write_start(%struct.screen_write_ctx* %9, %struct.window_pane* %17, i32* null)
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %30, %3
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %22, %23
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @window_copy_write_line(%struct.window_mode_entry* %27, %struct.screen_write_ctx* %9, i64 %28)
  br label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %10, align 8
  br label %20

33:                                               ; preds = %20
  %34 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %35 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %38 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %9, i32 %36, i32 %39, i32 0)
  %41 = call i32 @screen_write_stop(%struct.screen_write_ctx* %9)
  ret void
}

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, %struct.window_pane*, i32*) #1

declare dso_local i32 @window_copy_write_line(%struct.window_mode_entry*, %struct.screen_write_ctx*, i64) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i32, i32, i32) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
