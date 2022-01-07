; ModuleID = '/home/carl/AnghaBench/tmux/extr_grid-view.c_grid_view_clear_history.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_grid-view.c_grid_view_clear_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64, i64, i32 }
%struct.grid_line = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grid_view_clear_history(%struct.grid* %0, i64 %1) #0 {
  %3 = alloca %struct.grid*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.grid_line*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.grid* %0, %struct.grid** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.grid*, %struct.grid** %3, align 8
  %11 = getelementptr inbounds %struct.grid, %struct.grid* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.grid*, %struct.grid** %3, align 8
  %16 = load %struct.grid*, %struct.grid** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @grid_view_y(%struct.grid* %16, i64 %17)
  %19 = call %struct.grid_line* @grid_get_line(%struct.grid* %15, i32 %18)
  store %struct.grid_line* %19, %struct.grid_line** %5, align 8
  %20 = load %struct.grid_line*, %struct.grid_line** %5, align 8
  %21 = getelementptr inbounds %struct.grid_line, %struct.grid_line* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %24, %14
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.grid*, %struct.grid** %3, align 8
  %36 = load %struct.grid*, %struct.grid** %3, align 8
  %37 = getelementptr inbounds %struct.grid, %struct.grid* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.grid*, %struct.grid** %3, align 8
  %40 = getelementptr inbounds %struct.grid, %struct.grid* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @grid_view_clear(%struct.grid* %35, i32 0, i32 0, i32 %38, i64 %41, i64 %42)
  br label %79

44:                                               ; preds = %31
  store i64 0, i64* %6, align 8
  br label %45

45:                                               ; preds = %55, %44
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.grid*, %struct.grid** %3, align 8
  %51 = call i32 @grid_collect_history(%struct.grid* %50)
  %52 = load %struct.grid*, %struct.grid** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @grid_scroll_history(%struct.grid* %52, i64 %53)
  br label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %45

58:                                               ; preds = %45
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.grid*, %struct.grid** %3, align 8
  %61 = getelementptr inbounds %struct.grid, %struct.grid* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.grid*, %struct.grid** %3, align 8
  %66 = load %struct.grid*, %struct.grid** %3, align 8
  %67 = getelementptr inbounds %struct.grid, %struct.grid* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.grid*, %struct.grid** %3, align 8
  %70 = getelementptr inbounds %struct.grid, %struct.grid* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @grid_view_clear(%struct.grid* %65, i32 0, i32 0, i32 %68, i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %64, %58
  %77 = load %struct.grid*, %struct.grid** %3, align 8
  %78 = getelementptr inbounds %struct.grid, %struct.grid* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %34
  ret void
}

declare dso_local %struct.grid_line* @grid_get_line(%struct.grid*, i32) #1

declare dso_local i32 @grid_view_y(%struct.grid*, i64) #1

declare dso_local i32 @grid_view_clear(%struct.grid*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @grid_collect_history(%struct.grid*) #1

declare dso_local i32 @grid_scroll_history(%struct.grid*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
