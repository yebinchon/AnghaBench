; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_filter_pane.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_filter_pane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32 }
%struct.winlink = type { i32 }
%struct.window_pane = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.session*, %struct.winlink*, %struct.window_pane*, i8*)* @window_tree_filter_pane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_tree_filter_pane(%struct.session* %0, %struct.winlink* %1, %struct.window_pane* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.session*, align 8
  %7 = alloca %struct.winlink*, align 8
  %8 = alloca %struct.window_pane*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.session* %0, %struct.session** %6, align 8
  store %struct.winlink* %1, %struct.winlink** %7, align 8
  store %struct.window_pane* %2, %struct.window_pane** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %26

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = load %struct.session*, %struct.session** %6, align 8
  %18 = load %struct.winlink*, %struct.winlink** %7, align 8
  %19 = load %struct.window_pane*, %struct.window_pane** %8, align 8
  %20 = call i8* @format_single(i32* null, i8* %16, i32* null, %struct.session* %17, %struct.winlink* %18, %struct.window_pane* %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @format_true(i8* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %15, %14
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i8* @format_single(i32*, i8*, i32*, %struct.session*, %struct.winlink*, %struct.window_pane*) #1

declare dso_local i32 @format_true(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
