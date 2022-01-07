; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_fake_bce.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_fake_bce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.window_pane = type { i32 }
%struct.grid_cell = type { i32 }

@TTYC_BCE = common dso_local global i32 0, align 4
@grid_default_cell = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, %struct.window_pane*, i32)* @tty_fake_bce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_fake_bce(%struct.tty* %0, %struct.window_pane* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca %struct.window_pane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.grid_cell, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store %struct.window_pane* %1, %struct.window_pane** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tty*, %struct.tty** %5, align 8
  %10 = getelementptr inbounds %struct.tty, %struct.tty* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TTYC_BCE, align 4
  %13 = call i64 @tty_term_flag(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = call i32 @memcpy(%struct.grid_cell* %8, i32* @grid_default_cell, i32 4)
  %18 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %19 = icmp ne %struct.window_pane* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %22 = call i32 @tty_default_colours(%struct.grid_cell* %8, %struct.window_pane* %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @COLOUR_DEFAULT(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @COLOUR_DEFAULT(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %23
  store i32 1, i32* %4, align 4
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @tty_term_flag(i32, i32) #1

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @tty_default_colours(%struct.grid_cell*, %struct.window_pane*) #1

declare dso_local i32 @COLOUR_DEFAULT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
