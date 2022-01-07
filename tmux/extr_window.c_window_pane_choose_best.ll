; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_pane_choose_best.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_pane_choose_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.window_pane* (%struct.window_pane**, i64)* @window_pane_choose_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.window_pane* @window_pane_choose_best(%struct.window_pane** %0, i64 %1) #0 {
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca %struct.window_pane**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.window_pane*, align 8
  %7 = alloca %struct.window_pane*, align 8
  %8 = alloca i64, align 8
  store %struct.window_pane** %0, %struct.window_pane*** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.window_pane* null, %struct.window_pane** %3, align 8
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.window_pane**, %struct.window_pane*** %4, align 8
  %14 = getelementptr inbounds %struct.window_pane*, %struct.window_pane** %13, i64 0
  %15 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  store %struct.window_pane* %15, %struct.window_pane** %7, align 8
  store i64 1, i64* %8, align 8
  br label %16

16:                                               ; preds = %35, %12
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.window_pane**, %struct.window_pane*** %4, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.window_pane*, %struct.window_pane** %21, i64 %22
  %24 = load %struct.window_pane*, %struct.window_pane** %23, align 8
  store %struct.window_pane* %24, %struct.window_pane** %6, align 8
  %25 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  %26 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %29 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load %struct.window_pane*, %struct.window_pane** %6, align 8
  store %struct.window_pane* %33, %struct.window_pane** %7, align 8
  br label %34

34:                                               ; preds = %32, %20
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %16

38:                                               ; preds = %16
  %39 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  store %struct.window_pane* %39, %struct.window_pane** %3, align 8
  br label %40

40:                                               ; preds = %38, %11
  %41 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  ret %struct.window_pane* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
