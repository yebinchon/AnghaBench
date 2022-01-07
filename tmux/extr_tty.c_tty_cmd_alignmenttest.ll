; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_alignmenttest.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_alignmenttest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i64, %struct.window_pane* }
%struct.window_pane = type { i32, %struct.screen* }
%struct.screen = type { i32 }

@PANE_REDRAW = common dso_local global i32 0, align 4
@grid_default_cell = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_alignmenttest(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca %struct.screen*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %9 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %9, i32 0, i32 1
  %11 = load %struct.window_pane*, %struct.window_pane** %10, align 8
  store %struct.window_pane* %11, %struct.window_pane** %5, align 8
  %12 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %13 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %12, i32 0, i32 1
  %14 = load %struct.screen*, %struct.screen** %13, align 8
  store %struct.screen* %14, %struct.screen** %6, align 8
  %15 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @PANE_REDRAW, align 4
  %21 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %22 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %62

25:                                               ; preds = %2
  %26 = load %struct.tty*, %struct.tty** %3, align 8
  %27 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %28 = call i32 @tty_attributes(%struct.tty* %26, i32* @grid_default_cell, %struct.window_pane* %27)
  %29 = load %struct.tty*, %struct.tty** %3, align 8
  %30 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %31 = load %struct.screen*, %struct.screen** %6, align 8
  %32 = call i64 @screen_size_y(%struct.screen* %31)
  %33 = sub nsw i64 %32, 1
  %34 = call i32 @tty_region_pane(%struct.tty* %29, %struct.tty_ctx* %30, i32 0, i64 %33)
  %35 = load %struct.tty*, %struct.tty** %3, align 8
  %36 = call i32 @tty_margin_off(%struct.tty* %35)
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %59, %25
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.screen*, %struct.screen** %6, align 8
  %40 = call i64 @screen_size_y(%struct.screen* %39)
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load %struct.tty*, %struct.tty** %3, align 8
  %44 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @tty_cursor_pane(%struct.tty* %43, %struct.tty_ctx* %44, i32 0, i64 %45)
  store i64 0, i64* %7, align 8
  br label %47

47:                                               ; preds = %55, %42
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.screen*, %struct.screen** %6, align 8
  %50 = call i64 @screen_size_x(%struct.screen* %49)
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.tty*, %struct.tty** %3, align 8
  %54 = call i32 @tty_putc(%struct.tty* %53, i8 signext 69)
  br label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %7, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %47

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %37

62:                                               ; preds = %19, %37
  ret void
}

declare dso_local i32 @tty_attributes(%struct.tty*, i32*, %struct.window_pane*) #1

declare dso_local i32 @tty_region_pane(%struct.tty*, %struct.tty_ctx*, i32, i64) #1

declare dso_local i64 @screen_size_y(%struct.screen*) #1

declare dso_local i32 @tty_margin_off(%struct.tty*) #1

declare dso_local i32 @tty_cursor_pane(%struct.tty*, %struct.tty_ctx*, i32, i64) #1

declare dso_local i64 @screen_size_x(%struct.screen*) #1

declare dso_local i32 @tty_putc(%struct.tty*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
