; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_reset.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.grid_cell, %struct.grid_cell }
%struct.grid_cell = type { i32 }

@grid_default_cell = common dso_local global i32 0, align 4
@GRID_ATTR_CHARSET = common dso_local global i32 0, align 4
@TTYC_RMACS = common dso_local global i32 0, align 4
@TTYC_SGR0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_reset(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.grid_cell*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = getelementptr inbounds %struct.tty, %struct.tty* %4, i32 0, i32 2
  store %struct.grid_cell* %5, %struct.grid_cell** %3, align 8
  %6 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %7 = call i32 @grid_cells_equal(%struct.grid_cell* %6, i32* @grid_default_cell)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %11 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GRID_ATTR_CHARSET, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load %struct.tty*, %struct.tty** %2, align 8
  %18 = call i64 @tty_acs_needed(%struct.tty* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.tty*, %struct.tty** %2, align 8
  %22 = load i32, i32* @TTYC_RMACS, align 4
  %23 = call i32 @tty_putcode(%struct.tty* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %16, %9
  %25 = load %struct.tty*, %struct.tty** %2, align 8
  %26 = load i32, i32* @TTYC_SGR0, align 4
  %27 = call i32 @tty_putcode(%struct.tty* %25, i32 %26)
  %28 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %29 = call i32 @memcpy(%struct.grid_cell* %28, i32* @grid_default_cell, i32 4)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.tty*, %struct.tty** %2, align 8
  %32 = getelementptr inbounds %struct.tty, %struct.tty* %31, i32 0, i32 1
  %33 = call i32 @memcpy(%struct.grid_cell* %32, i32* @grid_default_cell, i32 4)
  %34 = load %struct.tty*, %struct.tty** %2, align 8
  %35 = getelementptr inbounds %struct.tty, %struct.tty* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 4
  ret void
}

declare dso_local i32 @grid_cells_equal(%struct.grid_cell*, i32*) #1

declare dso_local i64 @tty_acs_needed(%struct.tty*) #1

declare dso_local i32 @tty_putcode(%struct.tty*, i32) #1

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
