; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_clearendofline.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_clearendofline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i32, i64, i32, %struct.window_pane* }
%struct.window_pane = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_clearendofline(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %7 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %7, i32 0, i32 3
  %9 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  store %struct.window_pane* %9, %struct.window_pane** %5, align 8
  %10 = load %struct.tty*, %struct.tty** %3, align 8
  %11 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %12 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @tty_default_attributes(%struct.tty* %10, %struct.window_pane* %11, i32 %14)
  %16 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %17 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @screen_size_x(i32 %18)
  %20 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %6, align 8
  %24 = load %struct.tty*, %struct.tty** %3, align 8
  %25 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %26 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @tty_clear_pane_line(%struct.tty* %24, %struct.tty_ctx* %25, i32 %28, i64 %31, i64 %32, i32 %35)
  ret void
}

declare dso_local i32 @tty_default_attributes(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i64 @screen_size_x(i32) #1

declare dso_local i32 @tty_clear_pane_line(%struct.tty*, %struct.tty_ctx*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
