; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_destroy.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { %struct.grid*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_destroy(%struct.grid* %0) #0 {
  %2 = alloca %struct.grid*, align 8
  store %struct.grid* %0, %struct.grid** %2, align 8
  %3 = load %struct.grid*, %struct.grid** %2, align 8
  %4 = load %struct.grid*, %struct.grid** %2, align 8
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.grid*, %struct.grid** %2, align 8
  %8 = getelementptr inbounds %struct.grid, %struct.grid* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = call i32 @grid_free_lines(%struct.grid* %3, i32 0, i64 %10)
  %12 = load %struct.grid*, %struct.grid** %2, align 8
  %13 = getelementptr inbounds %struct.grid, %struct.grid* %12, i32 0, i32 0
  %14 = load %struct.grid*, %struct.grid** %13, align 8
  %15 = call i32 @free(%struct.grid* %14)
  %16 = load %struct.grid*, %struct.grid** %2, align 8
  %17 = call i32 @free(%struct.grid* %16)
  ret void
}

declare dso_local i32 @grid_free_lines(%struct.grid*, i32, i64) #1

declare dso_local i32 @free(%struct.grid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
