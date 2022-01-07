; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_get_cell1.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_get_cell1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_line = type { i64, i32*, %struct.grid_cell_entry* }
%struct.grid_cell_entry = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.grid_cell = type { i32, i32, i64, i32, i32, i32 }

@GRID_FLAG_EXTENDED = common dso_local global i32 0, align 4
@grid_default_cell = common dso_local global i32 0, align 4
@GRID_FLAG_FG256 = common dso_local global i32 0, align 4
@GRID_FLAG_BG256 = common dso_local global i32 0, align 4
@COLOUR_FLAG_256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grid_line*, i64, %struct.grid_cell*)* @grid_get_cell1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grid_get_cell1(%struct.grid_line* %0, i64 %1, %struct.grid_cell* %2) #0 {
  %4 = alloca %struct.grid_line*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.grid_cell*, align 8
  %7 = alloca %struct.grid_cell_entry*, align 8
  store %struct.grid_line* %0, %struct.grid_line** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.grid_cell* %2, %struct.grid_cell** %6, align 8
  %8 = load %struct.grid_line*, %struct.grid_line** %4, align 8
  %9 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %8, i32 0, i32 2
  %10 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %10, i64 %11
  store %struct.grid_cell_entry* %12, %struct.grid_cell_entry** %7, align 8
  %13 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %7, align 8
  %14 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GRID_FLAG_EXTENDED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %7, align 8
  %21 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.grid_line*, %struct.grid_line** %4, align 8
  %24 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %29 = call i32 @memcpy(%struct.grid_cell* %28, i32* @grid_default_cell, i32 32)
  br label %40

30:                                               ; preds = %19
  %31 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %32 = load %struct.grid_line*, %struct.grid_line** %4, align 8
  %33 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %7, align 8
  %36 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = call i32 @memcpy(%struct.grid_cell* %31, i32* %38, i32 32)
  br label %40

40:                                               ; preds = %30, %27
  br label %105

41:                                               ; preds = %3
  %42 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %7, align 8
  %43 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GRID_FLAG_FG256, align 4
  %46 = load i32, i32* @GRID_FLAG_BG256, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  %50 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %51 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %7, align 8
  %53 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %57 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %7, align 8
  %59 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %63 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %7, align 8
  %65 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GRID_FLAG_FG256, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %41
  %71 = load i32, i32* @COLOUR_FLAG_256, align 4
  %72 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %73 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %41
  %77 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %7, align 8
  %78 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %82 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %7, align 8
  %84 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @GRID_FLAG_BG256, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %76
  %90 = load i32, i32* @COLOUR_FLAG_256, align 4
  %91 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %92 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %76
  %96 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %97 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %99 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %98, i32 0, i32 1
  %100 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %7, align 8
  %101 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @utf8_set(i32* %99, i32 %103)
  br label %105

105:                                              ; preds = %95, %40
  ret void
}

declare dso_local i32 @memcpy(%struct.grid_cell*, i32*, i32) #1

declare dso_local i32 @utf8_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
