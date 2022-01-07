; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_scroll_history.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_scroll_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i32*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_scroll_history(%struct.grid* %0, i64 %1) #0 {
  %3 = alloca %struct.grid*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.grid* %0, %struct.grid** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.grid*, %struct.grid** %3, align 8
  %7 = getelementptr inbounds %struct.grid, %struct.grid* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.grid*, %struct.grid** %3, align 8
  %10 = getelementptr inbounds %struct.grid, %struct.grid* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load %struct.grid*, %struct.grid** %3, align 8
  %14 = getelementptr inbounds %struct.grid, %struct.grid* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i32* @xreallocarray(i32* %15, i64 %17, i32 4)
  %19 = load %struct.grid*, %struct.grid** %3, align 8
  %20 = getelementptr inbounds %struct.grid, %struct.grid* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.grid*, %struct.grid** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @grid_empty_line(%struct.grid* %21, i64 %22, i64 %23)
  %25 = load %struct.grid*, %struct.grid** %3, align 8
  %26 = getelementptr inbounds %struct.grid, %struct.grid* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.grid*, %struct.grid** %3, align 8
  %30 = getelementptr inbounds %struct.grid, %struct.grid* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.grid*, %struct.grid** %3, align 8
  %33 = getelementptr inbounds %struct.grid, %struct.grid* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = call i32 @grid_compact_line(i32* %35)
  %37 = load %struct.grid*, %struct.grid** %3, align 8
  %38 = getelementptr inbounds %struct.grid, %struct.grid* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  ret void
}

declare dso_local i32* @xreallocarray(i32*, i64, i32) #1

declare dso_local i32 @grid_empty_line(%struct.grid*, i64, i64) #1

declare dso_local i32 @grid_compact_line(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
