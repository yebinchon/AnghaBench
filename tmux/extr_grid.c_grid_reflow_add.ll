; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_reflow_add.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_reflow_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid_line = type { i32 }
%struct.grid = type { i64, %struct.grid_line* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grid_line* (%struct.grid*, i32)* @grid_reflow_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grid_line* @grid_reflow_add(%struct.grid* %0, i32 %1) #0 {
  %3 = alloca %struct.grid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.grid_line*, align 8
  %6 = alloca i32, align 4
  store %struct.grid* %0, %struct.grid** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.grid*, %struct.grid** %3, align 8
  %8 = getelementptr inbounds %struct.grid, %struct.grid* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %9, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.grid*, %struct.grid** %3, align 8
  %15 = getelementptr inbounds %struct.grid, %struct.grid* %14, i32 0, i32 1
  %16 = load %struct.grid_line*, %struct.grid_line** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.grid_line* @xreallocarray(%struct.grid_line* %16, i32 %17, i32 4)
  %19 = load %struct.grid*, %struct.grid** %3, align 8
  %20 = getelementptr inbounds %struct.grid, %struct.grid* %19, i32 0, i32 1
  store %struct.grid_line* %18, %struct.grid_line** %20, align 8
  %21 = load %struct.grid*, %struct.grid** %3, align 8
  %22 = getelementptr inbounds %struct.grid, %struct.grid* %21, i32 0, i32 1
  %23 = load %struct.grid_line*, %struct.grid_line** %22, align 8
  %24 = load %struct.grid*, %struct.grid** %3, align 8
  %25 = getelementptr inbounds %struct.grid, %struct.grid* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %23, i64 %26
  store %struct.grid_line* %27, %struct.grid_line** %5, align 8
  %28 = load %struct.grid_line*, %struct.grid_line** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(%struct.grid_line* %28, i32 0, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.grid*, %struct.grid** %3, align 8
  %37 = getelementptr inbounds %struct.grid, %struct.grid* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.grid_line*, %struct.grid_line** %5, align 8
  ret %struct.grid_line* %38
}

declare dso_local %struct.grid_line* @xreallocarray(%struct.grid_line*, i32, i32) #1

declare dso_local i32 @memset(%struct.grid_line*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
