; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_pane_get_palette.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_pane_get_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32* }

@COLOUR_FLAG_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @window_pane_get_palette(%struct.window_pane* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.window_pane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.window_pane* %0, %struct.window_pane** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %8 = icmp eq %struct.window_pane* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %11 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %66

15:                                               ; preds = %9
  store i32 -1, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %20 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  br label %60

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 90
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 97
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %34 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 8, %36
  %38 = sub nsw i32 %37, 90
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  br label %59

42:                                               ; preds = %29, %26
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @COLOUR_FLAG_256, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  %49 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @COLOUR_FLAG_256, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %47, %42
  br label %59

59:                                               ; preds = %58, %32
  br label %60

60:                                               ; preds = %59, %18
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 -1, i32* %3, align 4
  br label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %63, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
