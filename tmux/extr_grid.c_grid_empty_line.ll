; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_empty_line.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_empty_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grid*, i64, i64)* @grid_empty_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grid_empty_line(%struct.grid* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.grid*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.grid* %0, %struct.grid** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.grid*, %struct.grid** %4, align 8
  %8 = getelementptr inbounds %struct.grid, %struct.grid* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = call i32 @memset(i32* %11, i32 0, i32 4)
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @COLOUR_DEFAULT(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load %struct.grid*, %struct.grid** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.grid*, %struct.grid** %4, align 8
  %20 = getelementptr inbounds %struct.grid, %struct.grid* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @grid_expand_line(%struct.grid* %17, i64 %18, i32 %21, i64 %22)
  br label %24

24:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @COLOUR_DEFAULT(i64) #1

declare dso_local i32 @grid_expand_line(%struct.grid*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
