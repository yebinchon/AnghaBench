; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_get_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_line = type { i32 }
%struct.grid = type { %struct.grid_line* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.grid_line* @grid_get_line(%struct.grid* %0, i64 %1) #0 {
  %3 = alloca %struct.grid*, align 8
  %4 = alloca i64, align 8
  store %struct.grid* %0, %struct.grid** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.grid*, %struct.grid** %3, align 8
  %6 = getelementptr inbounds %struct.grid, %struct.grid* %5, i32 0, i32 0
  %7 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %7, i64 %8
  ret %struct.grid_line* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
