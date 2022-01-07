; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid.c_grid_collect_history.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid.c_grid_collect_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_collect_history(%struct.grid* %0) #0 {
  %2 = alloca %struct.grid*, align 8
  %3 = alloca i32, align 4
  store %struct.grid* %0, %struct.grid** %2, align 8
  %4 = load %struct.grid*, %struct.grid** %2, align 8
  %5 = getelementptr inbounds %struct.grid, %struct.grid* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.grid*, %struct.grid** %2, align 8
  %10 = getelementptr inbounds %struct.grid, %struct.grid* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.grid*, %struct.grid** %2, align 8
  %13 = getelementptr inbounds %struct.grid, %struct.grid* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8, %1
  br label %57

17:                                               ; preds = %8
  %18 = load %struct.grid*, %struct.grid** %2, align 8
  %19 = getelementptr inbounds %struct.grid, %struct.grid* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 10
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.grid*, %struct.grid** %2, align 8
  %28 = getelementptr inbounds %struct.grid, %struct.grid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.grid*, %struct.grid** %2, align 8
  %33 = getelementptr inbounds %struct.grid, %struct.grid* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.grid*, %struct.grid** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @grid_trim_history(%struct.grid* %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.grid*, %struct.grid** %2, align 8
  %41 = getelementptr inbounds %struct.grid, %struct.grid* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.grid*, %struct.grid** %2, align 8
  %45 = getelementptr inbounds %struct.grid, %struct.grid* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.grid*, %struct.grid** %2, align 8
  %48 = getelementptr inbounds %struct.grid, %struct.grid* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %35
  %52 = load %struct.grid*, %struct.grid** %2, align 8
  %53 = getelementptr inbounds %struct.grid, %struct.grid* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.grid*, %struct.grid** %2, align 8
  %56 = getelementptr inbounds %struct.grid, %struct.grid* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %16, %51, %35
  ret void
}

declare dso_local i32 @grid_trim_history(%struct.grid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
