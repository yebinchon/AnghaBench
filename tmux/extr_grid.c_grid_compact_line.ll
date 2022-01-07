; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_compact_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_compact_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_line = type { i32, i64, %struct.grid_cell*, %struct.grid_cell_entry* }
%struct.grid_cell = type { i32 }
%struct.grid_cell_entry = type { i32, i64 }

@GRID_FLAG_EXTENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grid_line*)* @grid_compact_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grid_compact_line(%struct.grid_line* %0) #0 {
  %2 = alloca %struct.grid_line*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.grid_cell*, align 8
  %5 = alloca %struct.grid_cell_entry*, align 8
  %6 = alloca %struct.grid_cell*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.grid_line* %0, %struct.grid_line** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %10 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %105

14:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %37, %14
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %18 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %23 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %22, i32 0, i32 3
  %24 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %24, i64 %25
  store %struct.grid_cell_entry* %26, %struct.grid_cell_entry** %5, align 8
  %27 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %5, align 8
  %28 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @GRID_FLAG_EXTENDED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %21
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %15

40:                                               ; preds = %15
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %45 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %44, i32 0, i32 2
  %46 = load %struct.grid_cell*, %struct.grid_cell** %45, align 8
  %47 = call i32 @free(%struct.grid_cell* %46)
  %48 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %49 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %48, i32 0, i32 2
  store %struct.grid_cell* null, %struct.grid_cell** %49, align 8
  %50 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %51 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %105

52:                                               ; preds = %40
  %53 = load i32, i32* %3, align 4
  %54 = call %struct.grid_cell* @xreallocarray(i32* null, i32 %53, i32 4)
  store %struct.grid_cell* %54, %struct.grid_cell** %4, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %55

55:                                               ; preds = %91, %52
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %58 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %55
  %62 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %63 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %62, i32 0, i32 3
  %64 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %64, i64 %65
  store %struct.grid_cell_entry* %66, %struct.grid_cell_entry** %5, align 8
  %67 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %5, align 8
  %68 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @GRID_FLAG_EXTENDED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %61
  %74 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %75 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %74, i32 0, i32 2
  %76 = load %struct.grid_cell*, %struct.grid_cell** %75, align 8
  %77 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %5, align 8
  %78 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %76, i64 %79
  store %struct.grid_cell* %80, %struct.grid_cell** %6, align 8
  %81 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %81, i64 %82
  %84 = load %struct.grid_cell*, %struct.grid_cell** %6, align 8
  %85 = call i32 @memcpy(%struct.grid_cell* %83, %struct.grid_cell* %84, i32 4)
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  %88 = load %struct.grid_cell_entry*, %struct.grid_cell_entry** %5, align 8
  %89 = getelementptr inbounds %struct.grid_cell_entry, %struct.grid_cell_entry* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  br label %90

90:                                               ; preds = %73, %61
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %7, align 8
  br label %55

94:                                               ; preds = %55
  %95 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %96 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %95, i32 0, i32 2
  %97 = load %struct.grid_cell*, %struct.grid_cell** %96, align 8
  %98 = call i32 @free(%struct.grid_cell* %97)
  %99 = load %struct.grid_cell*, %struct.grid_cell** %4, align 8
  %100 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %101 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %100, i32 0, i32 2
  store %struct.grid_cell* %99, %struct.grid_cell** %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.grid_line*, %struct.grid_line** %2, align 8
  %104 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %94, %43, %13
  ret void
}

declare dso_local i32 @free(%struct.grid_cell*) #1

declare dso_local %struct.grid_cell* @xreallocarray(i32*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.grid_cell*, %struct.grid_cell*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
