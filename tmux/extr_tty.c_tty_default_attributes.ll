; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_default_attributes.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_default_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_cell = type { i32 }
%struct.tty = type { i32 }
%struct.window_pane = type { i32 }

@tty_default_attributes.gc = internal global %struct.grid_cell zeroinitializer, align 4
@grid_default_cell = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.window_pane*, i32)* @tty_default_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_default_attributes(%struct.tty* %0, %struct.window_pane* %1, i32 %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.window_pane*, align 8
  %6 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.window_pane* %1, %struct.window_pane** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 @memcpy(%struct.grid_cell* @tty_default_attributes.gc, i32* @grid_default_cell, i32 4)
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.grid_cell, %struct.grid_cell* @tty_default_attributes.gc, i32 0, i32 0), align 4
  %9 = load %struct.tty*, %struct.tty** %4, align 8
  %10 = load %struct.window_pane*, %struct.window_pane** %5, align 8
  %11 = call i32 @tty_attributes(%struct.tty* %9, %struct.grid_cell* @tty_default_attributes.gc, %struct.window_pane* %10)
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @tty_attributes(%struct.tty*, %struct.grid_cell*, %struct.window_pane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
