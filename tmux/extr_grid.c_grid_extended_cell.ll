; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_extended_cell.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_extended_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_line = type { i64, %struct.grid_cell*, i32 }
%struct.grid_cell_entry = type { i32, i64 }
%struct.grid_cell = type { i32 }

@GRID_FLAG_CLEARED = common dso_local global i32 0, align 4
@GRID_FLAG_EXTENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"offset too big\00", align 1
@GRID_LINE_EXTENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grid_cell* (%struct.grid_line*, %struct.grid_cell_entry*, %struct.grid_cell*)* @grid_extended_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grid_cell* @grid_extended_cell(%struct.grid_line* %0, %struct.grid_cell_entry* %1, %struct.grid_cell* %2) #0 {
  %4 = alloca %struct.grid_line*, align 8
  %5 = alloca %struct.grid_cell_entry*, align 8
  %6 = alloca %struct.grid_cell*, align 8
  %7 = alloca %struct.grid_cell*, align 8
  %8 = alloca i32, align 4
  store %struct.grid_line* %0, %struct.grid_line** %4, align 8
  store %struct.grid_cell_entry* %1, %struct.grid_cell_entry** %5, align 8
  store %struct.grid_cell* %2, %struct.grid_cell** %6, align 8
  %9 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %10 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GRID_FLAG_CLEARED, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %5, align 8
  %16 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @GRID_FLAG_EXTENDED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.grid_line*, %struct.grid_line** %4, align 8
  %24 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @grid_get_extended_cell(%struct.grid_line* %23, %struct.grid_cell_entry* %24, i32 %25)
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %5, align 8
  %29 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.grid_line*, %struct.grid_line** %4, align 8
  %32 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = call i32 @fatalx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %27
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* @GRID_LINE_EXTENDED, align 4
  %40 = load %struct.grid_line*, %struct.grid_line** %4, align 8
  %41 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.grid_line*, %struct.grid_line** %4, align 8
  %45 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %44, i32 0, i32 1
  %46 = load %struct.grid_cell*, %struct.grid_cell** %45, align 8
  %47 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %5, align 8
  %48 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %46, i64 %49
  store %struct.grid_cell* %50, %struct.grid_cell** %7, align 8
  %51 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %52 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %53 = call i32 @memcpy(%struct.grid_cell* %51, %struct.grid_cell* %52, i32 4)
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  %56 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.grid_cell*, %struct.grid_cell** %7, align 8
  ret %struct.grid_cell* %57
}

declare dso_local i32 @grid_get_extended_cell(%struct.grid_line*, %struct.grid_cell_entry*, i32) #1

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i32 @memcpy(%struct.grid_cell*, %struct.grid_cell*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
