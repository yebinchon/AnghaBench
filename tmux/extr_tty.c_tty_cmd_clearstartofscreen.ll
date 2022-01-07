; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_clearstartofscreen.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_clearstartofscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i32, i64, i64, %struct.window_pane* }
%struct.window_pane = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_clearstartofscreen(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty_ctx*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.tty_ctx* %1, %struct.tty_ctx** %4, align 8
  %10 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %10, i32 0, i32 3
  %12 = load %struct.window_pane*, %struct.window_pane** %11, align 8
  store %struct.window_pane* %12, %struct.window_pane** %5, align 8
  %13 = load %struct.tty*, %struct.tty** %3, align 8
  %14 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %15 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @tty_default_attributes(%struct.tty* %13, %struct.window_pane* %14, i32 %17)
  %19 = load %struct.tty*, %struct.tty** %3, align 8
  %20 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %21 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %22 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @screen_size_y(i32 %23)
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @tty_region_pane(%struct.tty* %19, %struct.tty_ctx* %20, i32 0, i64 %25)
  %27 = load %struct.tty*, %struct.tty** %3, align 8
  %28 = call i32 @tty_margin_off(%struct.tty* %27)
  store i64 0, i64* %6, align 8
  %29 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %30 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @screen_size_x(i32 %31)
  store i64 %32, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %33 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load %struct.tty*, %struct.tty** %3, align 8
  %37 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @tty_clear_pane_area(%struct.tty* %36, %struct.tty_ctx* %37, i64 %38, i64 %39, i64 %40, i64 %41, i32 %44)
  store i64 0, i64* %6, align 8
  %46 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %8, align 8
  %50 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  %53 = load %struct.tty*, %struct.tty** %3, align 8
  %54 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @tty_clear_pane_line(%struct.tty* %53, %struct.tty_ctx* %54, i64 %55, i64 %56, i64 %57, i32 %60)
  ret void
}

declare dso_local i32 @tty_default_attributes(%struct.tty*, %struct.window_pane*, i32) #1

declare dso_local i32 @tty_region_pane(%struct.tty*, %struct.tty_ctx*, i32, i64) #1

declare dso_local i64 @screen_size_y(i32) #1

declare dso_local i32 @tty_margin_off(%struct.tty*) #1

declare dso_local i64 @screen_size_x(i32) #1

declare dso_local i32 @tty_clear_pane_area(%struct.tty*, %struct.tty_ctx*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @tty_clear_pane_line(%struct.tty*, %struct.tty_ctx*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
