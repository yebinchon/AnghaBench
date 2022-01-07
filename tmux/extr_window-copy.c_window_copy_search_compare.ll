; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search_compare.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i32 }
%struct.grid_cell = type { %struct.utf8_data }
%struct.utf8_data = type { i32, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grid*, i32, i32, %struct.grid*, i32, i32)* @window_copy_search_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_search_compare(%struct.grid* %0, i32 %1, i32 %2, %struct.grid* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.grid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.grid*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.grid_cell, align 8
  %15 = alloca %struct.grid_cell, align 8
  %16 = alloca %struct.utf8_data*, align 8
  %17 = alloca %struct.utf8_data*, align 8
  store %struct.grid* %0, %struct.grid** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.grid* %3, %struct.grid** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.grid*, %struct.grid** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @grid_get_cell(%struct.grid* %18, i32 %19, i32 %20, %struct.grid_cell* %14)
  %22 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %14, i32 0, i32 0
  store %struct.utf8_data* %22, %struct.utf8_data** %16, align 8
  %23 = load %struct.grid*, %struct.grid** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @grid_get_cell(%struct.grid* %23, i32 %24, i32 0, %struct.grid_cell* %15)
  %26 = getelementptr inbounds %struct.grid_cell, %struct.grid_cell* %15, i32 0, i32 0
  store %struct.utf8_data* %26, %struct.utf8_data** %17, align 8
  %27 = load %struct.utf8_data*, %struct.utf8_data** %16, align 8
  %28 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.utf8_data*, %struct.utf8_data** %17, align 8
  %31 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %6
  %35 = load %struct.utf8_data*, %struct.utf8_data** %16, align 8
  %36 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.utf8_data*, %struct.utf8_data** %17, align 8
  %39 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %6
  store i32 0, i32* %7, align 4
  br label %78

43:                                               ; preds = %34
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load %struct.utf8_data*, %struct.utf8_data** %16, align 8
  %48 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.utf8_data*, %struct.utf8_data** %16, align 8
  %53 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @tolower(i64 %56)
  %58 = load %struct.utf8_data*, %struct.utf8_data** %17, align 8
  %59 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %57, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %7, align 4
  br label %78

65:                                               ; preds = %46, %43
  %66 = load %struct.utf8_data*, %struct.utf8_data** %16, align 8
  %67 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.utf8_data*, %struct.utf8_data** %17, align 8
  %70 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.utf8_data*, %struct.utf8_data** %16, align 8
  %73 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @memcmp(i64* %68, i64* %71, i32 %74)
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %65, %51, %42
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @grid_get_cell(%struct.grid*, i32, i32, %struct.grid_cell*) #1

declare dso_local i64 @tolower(i64) #1

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
