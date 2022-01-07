; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_grid_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_grid_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64 }
%struct.grid_cell = type { i32, i32 }
%struct.utf8_data = type { i64 }

@GRID_FLAG_PADDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_grid_line(%struct.grid* %0, i64 %1) #0 {
  %3 = alloca %struct.grid*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.grid_cell, align 4
  %6 = alloca %struct.utf8_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.grid* %0, %struct.grid** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.utf8_data* null, %struct.utf8_data** %6, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load %struct.grid*, %struct.grid** %3, align 8
  %11 = getelementptr inbounds %struct.grid, %struct.grid* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %4, align 8
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %43, %2
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.grid*, %struct.grid** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @grid_line_length(%struct.grid* %17, i64 %18)
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load %struct.grid*, %struct.grid** %3, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @grid_get_cell(%struct.grid* %22, i64 %23, i64 %24, %struct.grid_cell* %5)
  %26 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GRID_FLAG_PADDING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %46

32:                                               ; preds = %21
  %33 = load %struct.utf8_data*, %struct.utf8_data** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 2
  %36 = call %struct.utf8_data* @xreallocarray(%struct.utf8_data* %33, i64 %35, i32 8)
  store %struct.utf8_data* %36, %struct.utf8_data** %6, align 8
  %37 = load %struct.utf8_data*, %struct.utf8_data** %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %8, align 8
  %40 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %37, i64 %38
  %41 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %5, i32 0, i32 1
  %42 = call i32 @memcpy(%struct.utf8_data* %40, i32* %41, i32 8)
  br label %43

43:                                               ; preds = %32
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %15

46:                                               ; preds = %31, %15
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.utf8_data*, %struct.utf8_data** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %50, i64 %51
  %53 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.utf8_data*, %struct.utf8_data** %6, align 8
  %55 = call i8* @utf8_tocstr(%struct.utf8_data* %54)
  store i8* %55, i8** %9, align 8
  %56 = load %struct.utf8_data*, %struct.utf8_data** %6, align 8
  %57 = call i32 @free(%struct.utf8_data* %56)
  br label %58

58:                                               ; preds = %49, %46
  %59 = load i8*, i8** %9, align 8
  ret i8* %59
}

declare dso_local i64 @grid_line_length(%struct.grid*, i64) #1

declare dso_local i32 @grid_get_cell(%struct.grid*, i64, i64, %struct.grid_cell*) #1

declare dso_local %struct.utf8_data* @xreallocarray(%struct.utf8_data*, i64, i32) #1

declare dso_local i32 @memcpy(%struct.utf8_data*, i32*, i32) #1

declare dso_local i8* @utf8_tocstr(%struct.utf8_data*) #1

declare dso_local i32 @free(%struct.utf8_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
