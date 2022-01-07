; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search_rl.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search_rl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grid*, %struct.grid*, i32*, i32, i32, i32, i32)* @window_copy_search_rl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_search_rl(%struct.grid* %0, %struct.grid* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.grid*, align 8
  %10 = alloca %struct.grid*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.grid* %0, %struct.grid** %9, align 8
  store %struct.grid* %1, %struct.grid** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %14, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %16, align 4
  br label %22

22:                                               ; preds = %75, %7
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  %27 = load %struct.grid*, %struct.grid** %9, align 8
  %28 = getelementptr inbounds %struct.grid, %struct.grid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %16, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sub nsw i32 %29, %31
  %33 = load %struct.grid*, %struct.grid** %10, align 8
  %34 = getelementptr inbounds %struct.grid, %struct.grid* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %75

38:                                               ; preds = %26
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32, i32* %17, align 4
  %41 = load %struct.grid*, %struct.grid** %10, align 8
  %42 = getelementptr inbounds %struct.grid, %struct.grid* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load i32, i32* %16, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %18, align 4
  %50 = load %struct.grid*, %struct.grid** %9, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.grid*, %struct.grid** %10, align 8
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @window_copy_search_compare(%struct.grid* %50, i32 %51, i32 %52, %struct.grid* %53, i32 %54, i32 %55)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %45
  br label %64

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %17, align 4
  br label %39

64:                                               ; preds = %59, %39
  %65 = load i32, i32* %17, align 4
  %66 = load %struct.grid*, %struct.grid** %10, align 8
  %67 = getelementptr inbounds %struct.grid, %struct.grid* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %16, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  store i32 1, i32* %8, align 4
  br label %79

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %37
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %16, align 4
  br label %22

78:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @window_copy_search_compare(%struct.grid*, i32, i32, %struct.grid*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
