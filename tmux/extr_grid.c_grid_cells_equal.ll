; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_cells_equal.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_cells_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_cell = type { i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grid_cells_equal(%struct.grid_cell* %0, %struct.grid_cell* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grid_cell*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  store %struct.grid_cell* %0, %struct.grid_cell** %4, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %5, align 8
  %6 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %7 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %10 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %15 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %18 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %77

22:                                               ; preds = %13
  %23 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %24 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %27 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %32 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %35 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %22
  store i32 0, i32* %3, align 4
  br label %77

39:                                               ; preds = %30
  %40 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %41 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %45 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %77

50:                                               ; preds = %39
  %51 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %52 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %56 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %77

61:                                               ; preds = %50
  %62 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %63 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %67 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %71 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @memcmp(i32 %65, i32 %69, i64 %73)
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %61, %60, %49, %38, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
