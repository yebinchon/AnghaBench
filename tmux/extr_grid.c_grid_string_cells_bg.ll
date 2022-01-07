; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_string_cells_bg.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_string_cells_bg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_cell = type { i32 }

@COLOUR_FLAG_256 = common dso_local global i32 0, align 4
@COLOUR_FLAG_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grid_cell*, i32*)* @grid_string_cells_bg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grid_string_cells_bg(%struct.grid_cell* %0, i32* %1) #0 {
  %3 = alloca %struct.grid_cell*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.grid_cell* %0, %struct.grid_cell** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %10 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @COLOUR_FLAG_256, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 48, i32* %19, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %5, align 8
  %23 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 5, i32* %23, align 4
  %24 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %25 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = load i32*, i32** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %31, align 4
  br label %96

32:                                               ; preds = %2
  %33 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %34 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @COLOUR_FLAG_RGB, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %32
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 48, i32* %43, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  %47 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 2, i32* %47, align 4
  %48 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %49 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @colour_split_rgb(i32 %50, i32* %6, i32* %7, i32* %8)
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  %61 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %5, align 8
  %66 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %62, i32* %66, align 4
  br label %95

67:                                               ; preds = %32
  %68 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %69 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %94 [
    i32 0, label %71
    i32 1, label %71
    i32 2, label %71
    i32 3, label %71
    i32 4, label %71
    i32 5, label %71
    i32 6, label %71
    i32 7, label %71
    i32 8, label %80
    i32 100, label %85
    i32 101, label %85
    i32 102, label %85
    i32 103, label %85
    i32 104, label %85
    i32 105, label %85
    i32 106, label %85
    i32 107, label %85
  ]

71:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67
  %72 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %73 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 40
  %76 = load i32*, i32** %4, align 8
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %5, align 8
  %79 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %75, i32* %79, align 4
  br label %94

80:                                               ; preds = %67
  %81 = load i32*, i32** %4, align 8
  %82 = load i64, i64* %5, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %5, align 8
  %84 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 49, i32* %84, align 4
  br label %94

85:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67
  %86 = load %struct.grid_cell*, %struct.grid_cell** %3, align 8
  %87 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 10
  %90 = load i32*, i32** %4, align 8
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %5, align 8
  %93 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %67, %85, %80, %71
  br label %95

95:                                               ; preds = %94, %39
  br label %96

96:                                               ; preds = %95, %15
  %97 = load i64, i64* %5, align 8
  ret i64 %97
}

declare dso_local i32 @colour_split_rgb(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
