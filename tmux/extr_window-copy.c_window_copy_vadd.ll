; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_vadd.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_vadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { %struct.screen, i32 }
%struct.screen = type { i32 }
%struct.window_mode_entry = type { %struct.window_copy_mode_data* }
%struct.window_copy_mode_data = type { i32, %struct.screen*, %struct.screen, i32 }
%struct.screen_write_ctx = type { i32 }
%struct.grid_cell = type { i32 }

@grid_default_cell = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @window_copy_vadd(%struct.window_pane* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.window_pane*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.window_mode_entry*, align 8
  %8 = alloca %struct.window_copy_mode_data*, align 8
  %9 = alloca %struct.screen*, align 8
  %10 = alloca %struct.screen_write_ctx, align 4
  %11 = alloca %struct.screen_write_ctx, align 4
  %12 = alloca %struct.grid_cell, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.window_pane* %0, %struct.window_pane** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %16 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %15, i32 0, i32 1
  %17 = call %struct.window_mode_entry* @TAILQ_FIRST(i32* %16)
  store %struct.window_mode_entry* %17, %struct.window_mode_entry** %7, align 8
  %18 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  %19 = getelementptr inbounds %struct.window_mode_entry, %struct.window_mode_entry* %18, i32 0, i32 0
  %20 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %19, align 8
  store %struct.window_copy_mode_data* %20, %struct.window_copy_mode_data** %8, align 8
  %21 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %22 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %21, i32 0, i32 1
  %23 = load %struct.screen*, %struct.screen** %22, align 8
  store %struct.screen* %23, %struct.screen** %9, align 8
  %24 = load %struct.screen*, %struct.screen** %9, align 8
  %25 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %26 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %25, i32 0, i32 0
  %27 = icmp eq %struct.screen* %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %88

29:                                               ; preds = %3
  %30 = call i32 @memcpy(%struct.grid_cell* %12, i32* @grid_default_cell, i32 4)
  %31 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %32 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %31, i32 0, i32 1
  %33 = load %struct.screen*, %struct.screen** %32, align 8
  %34 = call i32 @screen_hsize(%struct.screen* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.screen*, %struct.screen** %9, align 8
  %36 = call i32 @screen_write_start(%struct.screen_write_ctx* %10, %struct.window_pane* null, %struct.screen* %35)
  %37 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %38 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = call i32 @screen_write_carriagereturn(%struct.screen_write_ctx* %10)
  %43 = call i32 @screen_write_linefeed(%struct.screen_write_ctx* %10, i32 0, i32 8)
  br label %47

44:                                               ; preds = %29
  %45 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %46 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.screen*, %struct.screen** %9, align 8
  %49 = getelementptr inbounds %struct.screen, %struct.screen* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @screen_write_vnputs(%struct.screen_write_ctx* %10, i32 0, %struct.grid_cell* %12, i8* %51, i32 %52)
  %54 = call i32 @screen_write_stop(%struct.screen_write_ctx* %10)
  %55 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %56 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %55, i32 0, i32 1
  %57 = load %struct.screen*, %struct.screen** %56, align 8
  %58 = call i32 @screen_hsize(%struct.screen* %57)
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %62 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %66 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %67 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %66, i32 0, i32 2
  %68 = call i32 @screen_write_start(%struct.screen_write_ctx* %11, %struct.window_pane* %65, %struct.screen* %67)
  %69 = load %struct.window_copy_mode_data*, %struct.window_copy_mode_data** %8, align 8
  %70 = getelementptr inbounds %struct.window_copy_mode_data, %struct.window_copy_mode_data* %69, i32 0, i32 1
  %71 = load %struct.screen*, %struct.screen** %70, align 8
  %72 = call i32 @screen_hsize(%struct.screen* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %47
  %75 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  %76 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %75, i32 0, i32 1)
  br label %77

77:                                               ; preds = %74, %47
  %78 = load %struct.window_mode_entry*, %struct.window_mode_entry** %7, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.screen*, %struct.screen** %9, align 8
  %81 = getelementptr inbounds %struct.screen, %struct.screen* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sub nsw i32 %82, %83
  %85 = add nsw i32 %84, 1
  %86 = call i32 @window_copy_redraw_lines(%struct.window_mode_entry* %78, i32 %79, i32 %85)
  %87 = call i32 @screen_write_stop(%struct.screen_write_ctx* %11)
  br label %88

88:                                               ; preds = %77, %28
  ret void
}

declare dso_local %struct.window_mode_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @screen_hsize(%struct.screen*) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, %struct.window_pane*, %struct.screen*) #1

declare dso_local i32 @screen_write_carriagereturn(%struct.screen_write_ctx*) #1

declare dso_local i32 @screen_write_linefeed(%struct.screen_write_ctx*, i32, i32) #1

declare dso_local i32 @screen_write_vnputs(%struct.screen_write_ctx*, i32, %struct.grid_cell*, i8*, i32) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @window_copy_redraw_lines(%struct.window_mode_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
