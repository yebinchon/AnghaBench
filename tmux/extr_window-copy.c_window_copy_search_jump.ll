; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search_jump.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-copy.c_window_copy_search_jump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_mode_entry = type { i32 }
%struct.grid = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window_mode_entry*, %struct.grid*, %struct.grid*, i64, i64, i64, i32, i32, i32)* @window_copy_search_jump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_copy_search_jump(%struct.window_mode_entry* %0, %struct.grid* %1, %struct.grid* %2, i64 %3, i64 %4, i64 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.window_mode_entry*, align 8
  %12 = alloca %struct.grid*, align 8
  %13 = alloca %struct.grid*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.window_mode_entry* %0, %struct.window_mode_entry** %11, align 8
  store %struct.grid* %1, %struct.grid** %12, align 8
  store %struct.grid* %2, %struct.grid** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %19, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %9
  %26 = load i64, i64* %15, align 8
  store i64 %26, i64* %20, align 8
  br label %27

27:                                               ; preds = %45, %25
  %28 = load i64, i64* %20, align 8
  %29 = load i64, i64* %16, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load %struct.grid*, %struct.grid** %12, align 8
  %33 = load %struct.grid*, %struct.grid** %13, align 8
  %34 = load i64, i64* %20, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load %struct.grid*, %struct.grid** %12, align 8
  %37 = getelementptr inbounds %struct.grid, %struct.grid* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @window_copy_search_lr(%struct.grid* %32, %struct.grid* %33, i64* %21, i64 %34, i64 %35, i64 %38, i32 %39)
  store i32 %40, i32* %22, align 4
  %41 = load i32, i32* %22, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %48

44:                                               ; preds = %31
  store i64 0, i64* %14, align 8
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %20, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %20, align 8
  br label %27

48:                                               ; preds = %43, %27
  br label %77

49:                                               ; preds = %9
  %50 = load i64, i64* %15, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %20, align 8
  br label %52

52:                                               ; preds = %73, %49
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %20, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load %struct.grid*, %struct.grid** %12, align 8
  %58 = load %struct.grid*, %struct.grid** %13, align 8
  %59 = load i64, i64* %20, align 8
  %60 = sub nsw i64 %59, 1
  %61 = load i64, i64* %14, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @window_copy_search_rl(%struct.grid* %57, %struct.grid* %58, i64* %21, i64 %60, i32 0, i64 %61, i32 %62)
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %22, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i64, i64* %20, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %20, align 8
  br label %76

69:                                               ; preds = %56
  %70 = load %struct.grid*, %struct.grid** %12, align 8
  %71 = getelementptr inbounds %struct.grid, %struct.grid* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %14, align 8
  br label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %20, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %20, align 8
  br label %52

76:                                               ; preds = %66, %52
  br label %77

77:                                               ; preds = %76, %48
  %78 = load i32, i32* %22, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.window_mode_entry*, %struct.window_mode_entry** %11, align 8
  %82 = load i64, i64* %21, align 8
  %83 = load i64, i64* %20, align 8
  %84 = call i32 @window_copy_scroll_to(%struct.window_mode_entry* %81, i64 %82, i64 %83)
  store i32 1, i32* %10, align 4
  br label %122

85:                                               ; preds = %77
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %121

88:                                               ; preds = %85
  %89 = load %struct.window_mode_entry*, %struct.window_mode_entry** %11, align 8
  %90 = load %struct.grid*, %struct.grid** %12, align 8
  %91 = load %struct.grid*, %struct.grid** %13, align 8
  %92 = load i32, i32* %19, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %100

95:                                               ; preds = %88
  %96 = load %struct.grid*, %struct.grid** %12, align 8
  %97 = getelementptr inbounds %struct.grid, %struct.grid* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %98, 1
  br label %100

100:                                              ; preds = %95, %94
  %101 = phi i64 [ 0, %94 ], [ %99, %95 ]
  %102 = load i32, i32* %19, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %114

105:                                              ; preds = %100
  %106 = load %struct.grid*, %struct.grid** %12, align 8
  %107 = getelementptr inbounds %struct.grid, %struct.grid* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.grid*, %struct.grid** %12, align 8
  %110 = getelementptr inbounds %struct.grid, %struct.grid* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %108, %111
  %113 = sub nsw i32 %112, 1
  br label %114

114:                                              ; preds = %105, %104
  %115 = phi i32 [ 0, %104 ], [ %113, %105 ]
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %15, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @window_copy_search_jump(%struct.window_mode_entry* %89, %struct.grid* %90, %struct.grid* %91, i64 %101, i64 %116, i64 %117, i32 %118, i32 0, i32 %119)
  store i32 %120, i32* %10, align 4
  br label %122

121:                                              ; preds = %85
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %121, %114, %80
  %123 = load i32, i32* %10, align 4
  ret i32 %123
}

declare dso_local i32 @window_copy_search_lr(%struct.grid*, %struct.grid*, i64*, i64, i64, i64, i32) #1

declare dso_local i32 @window_copy_search_rl(%struct.grid*, %struct.grid*, i64*, i64, i32, i64, i32) #1

declare dso_local i32 @window_copy_scroll_to(%struct.window_mode_entry*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
