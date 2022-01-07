; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_cmp_pane.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_cmp_pane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.window_pane = type { i32, i32 }

@window_tree_sort = common dso_local global %struct.TYPE_2__* null, align 8
@WINDOW_TREE_BY_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @window_tree_cmp_pane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_tree_cmp_pane(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.window_pane**, align 8
  %6 = alloca %struct.window_pane**, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.window_pane**
  store %struct.window_pane** %9, %struct.window_pane*** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.window_pane**
  store %struct.window_pane** %11, %struct.window_pane*** %6, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @window_tree_sort, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WINDOW_TREE_BY_TIME, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.window_pane**, %struct.window_pane*** %5, align 8
  %19 = load %struct.window_pane*, %struct.window_pane** %18, align 8
  %20 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.window_pane**, %struct.window_pane*** %6, align 8
  %23 = load %struct.window_pane*, %struct.window_pane** %22, align 8
  %24 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %21, %25
  store i32 %26, i32* %7, align 4
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.window_pane**, %struct.window_pane*** %5, align 8
  %29 = load %struct.window_pane*, %struct.window_pane** %28, align 8
  %30 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.window_pane**, %struct.window_pane*** %6, align 8
  %33 = load %struct.window_pane*, %struct.window_pane** %32, align 8
  %34 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %31, %35
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %27, %17
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @window_tree_sort, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
