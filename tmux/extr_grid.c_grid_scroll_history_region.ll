; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_scroll_history_region.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_scroll_history_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i64, i32, %struct.grid_line* }
%struct.grid_line = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_scroll_history_region(%struct.grid* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.grid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.grid_line*, align 8
  %10 = alloca %struct.grid_line*, align 8
  %11 = alloca i64, align 8
  store %struct.grid* %0, %struct.grid** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.grid*, %struct.grid** %5, align 8
  %13 = getelementptr inbounds %struct.grid, %struct.grid* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.grid*, %struct.grid** %5, align 8
  %16 = getelementptr inbounds %struct.grid, %struct.grid* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  store i64 %18, i64* %11, align 8
  %19 = load %struct.grid*, %struct.grid** %5, align 8
  %20 = getelementptr inbounds %struct.grid, %struct.grid* %19, i32 0, i32 3
  %21 = load %struct.grid_line*, %struct.grid_line** %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %22, 1
  %24 = call %struct.grid_line* @xreallocarray(%struct.grid_line* %21, i64 %23, i32 4)
  %25 = load %struct.grid*, %struct.grid** %5, align 8
  %26 = getelementptr inbounds %struct.grid, %struct.grid* %25, i32 0, i32 3
  store %struct.grid_line* %24, %struct.grid_line** %26, align 8
  %27 = load %struct.grid*, %struct.grid** %5, align 8
  %28 = getelementptr inbounds %struct.grid, %struct.grid* %27, i32 0, i32 3
  %29 = load %struct.grid_line*, %struct.grid_line** %28, align 8
  %30 = load %struct.grid*, %struct.grid** %5, align 8
  %31 = getelementptr inbounds %struct.grid, %struct.grid* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %29, i64 %32
  store %struct.grid_line* %33, %struct.grid_line** %9, align 8
  %34 = load %struct.grid_line*, %struct.grid_line** %9, align 8
  %35 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %34, i64 1
  %36 = load %struct.grid_line*, %struct.grid_line** %9, align 8
  %37 = load %struct.grid*, %struct.grid** %5, align 8
  %38 = getelementptr inbounds %struct.grid, %struct.grid* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %39, 4
  %41 = call i32 @memmove(%struct.grid_line* %35, %struct.grid_line* %36, i64 %40)
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %6, align 8
  %44 = load %struct.grid*, %struct.grid** %5, align 8
  %45 = getelementptr inbounds %struct.grid, %struct.grid* %44, i32 0, i32 3
  %46 = load %struct.grid_line*, %struct.grid_line** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %46, i64 %47
  store %struct.grid_line* %48, %struct.grid_line** %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  %51 = load %struct.grid_line*, %struct.grid_line** %9, align 8
  %52 = load %struct.grid_line*, %struct.grid_line** %10, align 8
  %53 = call i32 @memcpy(%struct.grid_line* %51, %struct.grid_line* %52, i32 4)
  %54 = load %struct.grid_line*, %struct.grid_line** %10, align 8
  %55 = load %struct.grid_line*, %struct.grid_line** %10, align 8
  %56 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %55, i64 1
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = sub i64 %57, %58
  %60 = mul i64 %59, 4
  %61 = call i32 @memmove(%struct.grid_line* %54, %struct.grid_line* %56, i64 %60)
  %62 = load %struct.grid*, %struct.grid** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @grid_empty_line(%struct.grid* %62, i64 %63, i64 %64)
  %66 = load %struct.grid*, %struct.grid** %5, align 8
  %67 = getelementptr inbounds %struct.grid, %struct.grid* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.grid*, %struct.grid** %5, align 8
  %71 = getelementptr inbounds %struct.grid, %struct.grid* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  ret void
}

declare dso_local %struct.grid_line* @xreallocarray(%struct.grid_line*, i64, i32) #1

declare dso_local i32 @memmove(%struct.grid_line*, %struct.grid_line*, i64) #1

declare dso_local i32 @memcpy(%struct.grid_line*, %struct.grid_line*, i32) #1

declare dso_local i32 @grid_empty_line(%struct.grid*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
