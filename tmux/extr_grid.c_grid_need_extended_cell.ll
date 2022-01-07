; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_need_extended_cell.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_need_extended_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_cell_entry = type { i32 }
%struct.grid_cell = type { i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GRID_FLAG_EXTENDED = common dso_local global i32 0, align 4
@COLOUR_FLAG_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grid_cell_entry*, %struct.grid_cell*)* @grid_need_extended_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grid_need_extended_cell(%struct.grid_cell_entry* %0, %struct.grid_cell* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grid_cell_entry*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  store %struct.grid_cell_entry* %0, %struct.grid_cell_entry** %4, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %5, align 8
  %6 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %4, align 8
  %7 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GRID_FLAG_EXTENDED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %54

13:                                               ; preds = %2
  %14 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %15 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 255
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %54

19:                                               ; preds = %13
  %20 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %21 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %27 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19
  store i32 1, i32* %3, align 4
  br label %54

32:                                               ; preds = %25
  %33 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %34 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @COLOUR_FLAG_RGB, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %41 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @COLOUR_FLAG_RGB, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %32
  store i32 1, i32* %3, align 4
  br label %54

47:                                               ; preds = %39
  %48 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %49 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %54

53:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %46, %31, %18, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
