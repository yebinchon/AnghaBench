; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid-view.c_grid_view_insert_cells.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid-view.c_grid_view_insert_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_view_insert_cells(%struct.grid* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.grid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.grid* %0, %struct.grid** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.grid*, %struct.grid** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @grid_view_x(%struct.grid* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.grid*, %struct.grid** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @grid_view_y(%struct.grid* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.grid*, %struct.grid** %6, align 8
  %19 = load %struct.grid*, %struct.grid** %6, align 8
  %20 = getelementptr inbounds %struct.grid, %struct.grid* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @grid_view_x(%struct.grid* %18, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp sge i32 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load %struct.grid*, %struct.grid** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @grid_clear(%struct.grid* %28, i32 %29, i32 %30, i32 1, i32 1, i32 %31)
  br label %47

33:                                               ; preds = %5
  %34 = load %struct.grid*, %struct.grid** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @grid_move_cells(%struct.grid* %34, i32 %37, i32 %38, i32 %39, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %33, %27
  ret void
}

declare dso_local i32 @grid_view_x(%struct.grid*, i32) #1

declare dso_local i32 @grid_view_y(%struct.grid*, i32) #1

declare dso_local i32 @grid_clear(%struct.grid*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @grid_move_cells(%struct.grid*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
