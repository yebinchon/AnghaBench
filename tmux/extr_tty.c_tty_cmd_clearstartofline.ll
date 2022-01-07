; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_clearstartofline.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_clearstartofline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i32, i64, i32, %struct.window_pane* }
%struct.window_pane = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_clearstartofline(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  %5 = alloca %struct.window_pane*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %6 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %6, i32 0, i32 3
  %8 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  store %struct.window_pane* %8, %struct.window_pane** %5, align 8
  %9 = load %struct.tty*, %struct.tty** %3, align 8
  %10 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %11 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @tty_default_attributes(%struct.tty* %9, %struct.window_pane* %10, i32 %13)
  %15 = load %struct.tty*, %struct.tty** %3, align 8
  %16 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %17 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @tty_clear_pane_line(%struct.tty* %15, %struct.tty_ctx* %16, i32 %19, i32 0, i64 %23, i32 %26)
  ret void
}

declare dso_local i32 @tty_default_attributes(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i32 @tty_clear_pane_line(%struct.tty*, %struct.tty_ctx*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
