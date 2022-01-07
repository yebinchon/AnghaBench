; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_clearendofscreen.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_cmd_clearendofscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.tty_ctx = type { i32, i64, i64, %struct.window_pane* }
%struct.window_pane = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_cmd_clearendofscreen(%struct.tty* %0, %struct.tty_ctx* %1) #0 {
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
  %33 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %7, align 8
  %37 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %38 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @screen_size_y(i32 %39)
  %41 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = sub nsw i64 %44, 1
  store i64 %45, i64* %9, align 8
  %46 = load %struct.tty*, %struct.tty** %3, align 8
  %47 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @tty_clear_pane_area(%struct.tty* %46, %struct.tty_ctx* %47, i64 %48, i64 %49, i64 %50, i64 %51, i32 %54)
  %56 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %6, align 8
  %59 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %60 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @screen_size_x(i32 %61)
  %63 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  store i64 %66, i64* %8, align 8
  %67 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %7, align 8
  %70 = load %struct.tty*, %struct.tty** %3, align 8
  %71 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.tty_ctx*, %struct.tty_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @tty_clear_pane_line(%struct.tty* %70, %struct.tty_ctx* %71, i64 %72, i64 %73, i64 %74, i32 %77)
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
