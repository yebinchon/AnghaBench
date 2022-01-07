; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_update_cursor.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_update_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { %struct.window_copy_mode_data*, %struct.window_pane* }
%struct.window_copy_mode_data = type { i64, i64, %struct.screen }
%struct.screen = type { i32 }
%struct.window_pane = type { i32 }
%struct.screen_write_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_mode_entry*, i64, i64)* @window_copy_update_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_copy_update_cursor(%struct.window_mode_entry* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.window_mode_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca %struct.window_copy_mode_data*, align 8
  %9 = alloca %struct.screen*, align 8
  %10 = alloca %struct.screen_write_ctx, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %14 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %13, i32 0, i32 1
  %15 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  store %struct.window_pane* %15, %struct.window_pane** %7, align 8
  %16 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %17 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %16, i32 0, i32 0
  %18 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %17, align 8
  store %struct.window_copy_mode_data* %18, %struct.window_copy_mode_data** %8, align 8
  %19 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %20 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %19, i32 0, i32 2
  store %struct.screen* %20, %struct.screen** %9, align 8
  %21 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %22 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %25 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %29 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %32 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.screen*, %struct.screen** %9, align 8
  %35 = call i64 @screen_size_x(%struct.screen* %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %38, i64 %39, i32 1)
  br label %41

41:                                               ; preds = %37, %3
  %42 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %43 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.screen*, %struct.screen** %9, align 8
  %46 = call i64 @screen_size_x(%struct.screen* %45)
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.window_mode_entry*, %struct.window_mode_entry** %4, align 8
  %50 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %51 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %49, i64 %52, i32 1)
  br label %65

54:                                               ; preds = %41
  %55 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %56 = call i32 @screen_write_start(%struct.screen_write_ctx* %10, %struct.window_pane* %55, i32* null)
  %57 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %58 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %61 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @screen_write_cursormove(%struct.screen_write_ctx* %10, i64 %59, i64 %62, i32 0)
  %64 = call i32 @screen_write_stop(%struct.screen_write_ctx* %10)
  br label %65

65:                                               ; preds = %54, %48
  ret void
}

declare dso_local i64 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i64, i32) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, %struct.window_pane*, i32*) #1

declare dso_local i32 @screen_write_cursormove(%struct.screen_write_ctx*, i64, i64, i32) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
