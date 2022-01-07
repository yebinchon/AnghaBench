; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_compare.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i64, %struct.grid_line* }
%struct.grid_line = type { i64 }
%struct.grid_cell = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grid_compare(%struct.grid* %0, %struct.grid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grid*, align 8
  %5 = alloca %struct.grid*, align 8
  %6 = alloca %struct.grid_line*, align 8
  %7 = alloca %struct.grid_line*, align 8
  %8 = alloca %struct.grid_cell, align 4
  %9 = alloca %struct.grid_cell, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.grid* %0, %struct.grid** %4, align 8
  store %struct.grid* %1, %struct.grid** %5, align 8
  %12 = load %struct.grid*, %struct.grid** %4, align 8
  %13 = getelementptr inbounds %struct.grid, %struct.grid* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.grid*, %struct.grid** %5, align 8
  %16 = getelementptr inbounds %struct.grid, %struct.grid* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.grid*, %struct.grid** %4, align 8
  %21 = getelementptr inbounds %struct.grid, %struct.grid* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.grid*, %struct.grid** %5, align 8
  %24 = getelementptr inbounds %struct.grid, %struct.grid* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %2
  store i32 1, i32* %3, align 4
  br label %82

28:                                               ; preds = %19
  store i64 0, i64* %11, align 8
  br label %29

29:                                               ; preds = %78, %28
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.grid*, %struct.grid** %4, align 8
  %32 = getelementptr inbounds %struct.grid, %struct.grid* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %29
  %36 = load %struct.grid*, %struct.grid** %4, align 8
  %37 = getelementptr inbounds %struct.grid, %struct.grid* %36, i32 0, i32 2
  %38 = load %struct.grid_line*, %struct.grid_line** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %38, i64 %39
  store %struct.grid_line* %40, %struct.grid_line** %6, align 8
  %41 = load %struct.grid*, %struct.grid** %5, align 8
  %42 = getelementptr inbounds %struct.grid, %struct.grid* %41, i32 0, i32 2
  %43 = load %struct.grid_line*, %struct.grid_line** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %43, i64 %44
  store %struct.grid_line* %45, %struct.grid_line** %7, align 8
  %46 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %47 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.grid_line*, %struct.grid_line** %7, align 8
  %50 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %82

54:                                               ; preds = %35
  store i64 0, i64* %10, align 8
  br label %55

55:                                               ; preds = %74, %54
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.grid_line*, %struct.grid_line** %6, align 8
  %58 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.grid*, %struct.grid** %4, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @grid_get_cell(%struct.grid* %62, i64 %63, i64 %64, %struct.grid_cell* %8)
  %66 = load %struct.grid*, %struct.grid** %5, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @grid_get_cell(%struct.grid* %66, i64 %67, i64 %68, %struct.grid_cell* %9)
  %70 = call i32 @grid_cells_equal(%struct.grid_cell* %8, %struct.grid_cell* %9)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %82

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %55

77:                                               ; preds = %55
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %29

81:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %72, %53, %27
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @grid_get_cell(%struct.grid*, i64, i64, %struct.grid_cell*) #1

declare dso_local i32 @grid_cells_equal(%struct.grid_cell*, %struct.grid_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
