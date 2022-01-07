; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_draw.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { i32 }
%struct.window_tree_itemdata = type { i32 }
%struct.session = type { i32 }
%struct.winlink = type { i32 }
%struct.window_pane = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.screen_write_ctx*, i32, i32)* @window_tree_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_tree_draw(i8* %0, i8* %1, %struct.screen_write_ctx* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.screen_write_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.window_tree_itemdata*, align 8
  %12 = alloca %struct.session*, align 8
  %13 = alloca %struct.winlink*, align 8
  %14 = alloca %struct.window_pane*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.screen_write_ctx* %2, %struct.screen_write_ctx** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.window_tree_itemdata*
  store %struct.window_tree_itemdata* %16, %struct.window_tree_itemdata** %11, align 8
  %17 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %11, align 8
  %18 = call i32 @window_tree_pull_item(%struct.window_tree_itemdata* %17, %struct.session** %12, %struct.winlink** %13, %struct.window_pane** %14)
  %19 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %20 = icmp eq %struct.window_pane* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %51

22:                                               ; preds = %5
  %23 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %11, align 8
  %24 = getelementptr inbounds %struct.window_tree_itemdata, %struct.window_tree_itemdata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %51 [
    i32 131, label %26
    i32 129, label %27
    i32 128, label %34
    i32 130, label %44
  ]

26:                                               ; preds = %22
  br label %51

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.session*, %struct.session** %12, align 8
  %30 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @window_tree_draw_session(i8* %28, %struct.session* %29, %struct.screen_write_ctx* %30, i32 %31, i32 %32)
  br label %51

34:                                               ; preds = %22
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.session*, %struct.session** %12, align 8
  %37 = load %struct.winlink*, %struct.winlink** %13, align 8
  %38 = getelementptr inbounds %struct.winlink, %struct.winlink* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @window_tree_draw_window(i8* %35, %struct.session* %36, i32 %39, %struct.screen_write_ctx* %40, i32 %41, i32 %42)
  br label %51

44:                                               ; preds = %22
  %45 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %8, align 8
  %46 = load %struct.window_pane*, %struct.window_pane** %14, align 8
  %47 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %46, i32 0, i32 0
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @screen_write_preview(%struct.screen_write_ctx* %45, i32* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %21, %22, %44, %34, %27, %26
  ret void
}

declare dso_local i32 @window_tree_pull_item(%struct.window_tree_itemdata*, %struct.session**, %struct.winlink**, %struct.window_pane**) #1

declare dso_local i32 @window_tree_draw_session(i8*, %struct.session*, %struct.screen_write_ctx*, i32, i32) #1

declare dso_local i32 @window_tree_draw_window(i8*, %struct.session*, i32, %struct.screen_write_ctx*, i32, i32) #1

declare dso_local i32 @screen_write_preview(%struct.screen_write_ctx*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
