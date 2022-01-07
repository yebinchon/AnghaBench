; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_reflow_move.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_reflow_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i32 }
%struct.grid_line = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grid_line* (%struct.grid*, %struct.grid_line*)* @grid_reflow_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grid_line* @grid_reflow_move(%struct.grid* %0, %struct.grid_line* %1) #0 {
  %3 = alloca %struct.grid*, align 8
  %4 = alloca %struct.grid_line*, align 8
  %5 = alloca %struct.grid_line*, align 8
  store %struct.grid* %0, %struct.grid** %3, align 8
  store %struct.grid_line* %1, %struct.grid_line** %4, align 8
  %6 = load %struct.grid*, %struct.grid** %3, align 8
  %7 = call %struct.grid_line* @grid_reflow_add(%struct.grid* %6, i32 1)
  store %struct.grid_line* %7, %struct.grid_line** %5, align 8
  %8 = load %struct.grid_line*, %struct.grid_line** %5, align 8
  %9 = load %struct.grid_line*, %struct.grid_line** %4, align 8
  %10 = call i32 @memcpy(%struct.grid_line* %8, %struct.grid_line* %9, i32 4)
  %11 = load %struct.grid_line*, %struct.grid_line** %4, align 8
  %12 = call i32 @grid_reflow_dead(%struct.grid_line* %11)
  %13 = load %struct.grid_line*, %struct.grid_line** %5, align 8
  ret %struct.grid_line* %13
}

declare dso_local %struct.grid_line* @grid_reflow_add(%struct.grid*, i32) #1

declare dso_local i32 @memcpy(%struct.grid_line*, %struct.grid_line*, i32) #1

declare dso_local i32 @grid_reflow_dead(%struct.grid_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
