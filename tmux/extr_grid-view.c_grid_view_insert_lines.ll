; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid-view.c_grid_view_insert_lines.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid-view.c_grid_view_insert_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_view_insert_lines(%struct.grid* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.grid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.grid* %0, %struct.grid** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.grid*, %struct.grid** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @grid_view_y(%struct.grid* %10, i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.grid*, %struct.grid** %5, align 8
  %14 = load %struct.grid*, %struct.grid** %5, align 8
  %15 = getelementptr inbounds %struct.grid, %struct.grid* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @grid_view_y(%struct.grid* %13, i64 %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.grid*, %struct.grid** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @grid_move_lines(%struct.grid* %18, i64 %21, i64 %22, i64 %27, i64 %28)
  ret void
}

declare dso_local i64 @grid_view_y(%struct.grid*, i64) #1

declare dso_local i32 @grid_move_lines(%struct.grid*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
