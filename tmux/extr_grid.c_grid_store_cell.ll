; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_store_cell.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_store_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_cell_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.grid_cell = type { i32, i32, i32, i32 }

@GRID_FLAG_CLEARED = common dso_local global i32 0, align 4
@COLOUR_FLAG_256 = common dso_local global i32 0, align 4
@GRID_FLAG_FG256 = common dso_local global i32 0, align 4
@GRID_FLAG_BG256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grid_cell_entry*, %struct.grid_cell*, i32)* @grid_store_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grid_store_cell(%struct.grid_cell_entry* %0, %struct.grid_cell* %1, i32 %2) #0 {
  %4 = alloca %struct.grid_cell_entry*, align 8
  %5 = alloca %struct.grid_cell*, align 8
  %6 = alloca i32, align 4
  store %struct.grid_cell_entry* %0, %struct.grid_cell_entry** %4, align 8
  store %struct.grid_cell* %1, %struct.grid_cell** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %8 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GRID_FLAG_CLEARED, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %4, align 8
  %14 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %16 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  %19 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %4, align 8
  %20 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %23 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @COLOUR_FLAG_256, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i32, i32* @GRID_FLAG_FG256, align 4
  %30 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %4, align 8
  %31 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %3
  %35 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %36 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  %39 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %4, align 8
  %40 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %43 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @COLOUR_FLAG_256, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load i32, i32* @GRID_FLAG_BG256, align 4
  %50 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %4, align 8
  %51 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %34
  %55 = load %struct.grid_cell*, %struct.grid_cell** %5, align 8
  %56 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %4, align 8
  %59 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %4, align 8
  %63 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
