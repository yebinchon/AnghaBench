; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid-view.c_grid_view_delete_lines_region.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid-view.c_grid_view_delete_lines_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_view_delete_lines_region(%struct.grid* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.grid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.grid* %0, %struct.grid** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.grid*, %struct.grid** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @grid_view_y(%struct.grid* %12, i64 %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.grid*, %struct.grid** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @grid_view_y(%struct.grid* %15, i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add nsw i64 %18, 1
  %20 = load i64, i64* %8, align 8
  %21 = sub nsw i64 %19, %20
  %22 = load i64, i64* %9, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %11, align 8
  %24 = load %struct.grid*, %struct.grid** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @grid_move_lines(%struct.grid* %24, i64 %25, i64 %28, i64 %29, i64 %30)
  %32 = load %struct.grid*, %struct.grid** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.grid*, %struct.grid** %6, align 8
  %37 = getelementptr inbounds %struct.grid, %struct.grid* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @grid_clear(%struct.grid* %32, i32 0, i64 %35, i32 %38, i64 %41, i64 %42)
  ret void
}

declare dso_local i64 @grid_view_y(%struct.grid*, i64) #1

declare dso_local i32 @grid_move_lines(%struct.grid*, i64, i64, i64, i64) #1

declare dso_local i32 @grid_clear(%struct.grid*, i32, i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
