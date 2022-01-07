; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search_lr.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search_lr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grid = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grid*, %struct.grid*, i64*, i64, i64, i64, i32)* @window_copy_search_lr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_search_lr(%struct.grid* %0, %struct.grid* %1, i64* %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.grid*, align 8
  %10 = alloca %struct.grid*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.grid* %0, %struct.grid** %9, align 8
  store %struct.grid* %1, %struct.grid** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i64, i64* %13, align 8
  store i64 %20, i64* %16, align 8
  br label %21

21:                                               ; preds = %71, %7
  %22 = load i64, i64* %16, align 8
  %23 = load i64, i64* %14, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  %26 = load i64, i64* %16, align 8
  %27 = load %struct.grid*, %struct.grid** %10, align 8
  %28 = getelementptr inbounds %struct.grid, %struct.grid* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.grid*, %struct.grid** %9, align 8
  %32 = getelementptr inbounds %struct.grid, %struct.grid* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %74

36:                                               ; preds = %25
  store i64 0, i64* %17, align 8
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i64, i64* %17, align 8
  %39 = load %struct.grid*, %struct.grid** %10, align 8
  %40 = getelementptr inbounds %struct.grid, %struct.grid* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %17, align 8
  %46 = add nsw i64 %44, %45
  store i64 %46, i64* %18, align 8
  %47 = load %struct.grid*, %struct.grid** %9, align 8
  %48 = load i64, i64* %18, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.grid*, %struct.grid** %10, align 8
  %51 = load i64, i64* %17, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @window_copy_search_compare(%struct.grid* %47, i64 %48, i64 %49, %struct.grid* %50, i64 %51, i32 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %61

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %17, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %17, align 8
  br label %37

61:                                               ; preds = %56, %37
  %62 = load i64, i64* %17, align 8
  %63 = load %struct.grid*, %struct.grid** %10, align 8
  %64 = getelementptr inbounds %struct.grid, %struct.grid* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i64, i64* %16, align 8
  %69 = load i64*, i64** %11, align 8
  store i64 %68, i64* %69, align 8
  store i32 1, i32* %8, align 4
  br label %75

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %16, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %16, align 8
  br label %21

74:                                               ; preds = %35, %21
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @window_copy_search_compare(%struct.grid*, i64, i64, %struct.grid*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
