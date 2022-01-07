; ModuleID = '/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_pull_item.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window-tree.c_window_tree_pull_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_tree_itemdata = type { i64, i32, i32, i32 }
%struct.session = type { i32, %struct.winlink* }
%struct.winlink = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.window_pane* }
%struct.window_pane = type { i32 }

@WINDOW_TREE_SESSION = common dso_local global i64 0, align 8
@WINDOW_TREE_WINDOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_tree_itemdata*, %struct.session**, %struct.winlink**, %struct.window_pane**)* @window_tree_pull_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_tree_pull_item(%struct.window_tree_itemdata* %0, %struct.session** %1, %struct.winlink** %2, %struct.window_pane** %3) #0 {
  %5 = alloca %struct.window_tree_itemdata*, align 8
  %6 = alloca %struct.session**, align 8
  %7 = alloca %struct.winlink**, align 8
  %8 = alloca %struct.window_pane**, align 8
  store %struct.window_tree_itemdata* %0, %struct.window_tree_itemdata** %5, align 8
  store %struct.session** %1, %struct.session*** %6, align 8
  store %struct.winlink** %2, %struct.winlink*** %7, align 8
  store %struct.window_pane** %3, %struct.window_pane*** %8, align 8
  %9 = load %struct.window_pane**, %struct.window_pane*** %8, align 8
  store %struct.window_pane* null, %struct.window_pane** %9, align 8
  %10 = load %struct.winlink**, %struct.winlink*** %7, align 8
  store %struct.winlink* null, %struct.winlink** %10, align 8
  %11 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %5, align 8
  %12 = getelementptr inbounds %struct.window_tree_itemdata, %struct.window_tree_itemdata* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.session* @session_find_by_id(i32 %13)
  %15 = load %struct.session**, %struct.session*** %6, align 8
  store %struct.session* %14, %struct.session** %15, align 8
  %16 = load %struct.session**, %struct.session*** %6, align 8
  %17 = load %struct.session*, %struct.session** %16, align 8
  %18 = icmp eq %struct.session* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %90

20:                                               ; preds = %4
  %21 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %5, align 8
  %22 = getelementptr inbounds %struct.window_tree_itemdata, %struct.window_tree_itemdata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WINDOW_TREE_SESSION, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.session**, %struct.session*** %6, align 8
  %28 = load %struct.session*, %struct.session** %27, align 8
  %29 = getelementptr inbounds %struct.session, %struct.session* %28, i32 0, i32 1
  %30 = load %struct.winlink*, %struct.winlink** %29, align 8
  %31 = load %struct.winlink**, %struct.winlink*** %7, align 8
  store %struct.winlink* %30, %struct.winlink** %31, align 8
  %32 = load %struct.winlink**, %struct.winlink*** %7, align 8
  %33 = load %struct.winlink*, %struct.winlink** %32, align 8
  %34 = getelementptr inbounds %struct.winlink, %struct.winlink* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.window_pane*, %struct.window_pane** %36, align 8
  %38 = load %struct.window_pane**, %struct.window_pane*** %8, align 8
  store %struct.window_pane* %37, %struct.window_pane** %38, align 8
  br label %90

39:                                               ; preds = %20
  %40 = load %struct.session**, %struct.session*** %6, align 8
  %41 = load %struct.session*, %struct.session** %40, align 8
  %42 = getelementptr inbounds %struct.session, %struct.session* %41, i32 0, i32 0
  %43 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %5, align 8
  %44 = getelementptr inbounds %struct.window_tree_itemdata, %struct.window_tree_itemdata* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.winlink* @winlink_find_by_index(i32* %42, i32 %45)
  %47 = load %struct.winlink**, %struct.winlink*** %7, align 8
  store %struct.winlink* %46, %struct.winlink** %47, align 8
  %48 = load %struct.winlink**, %struct.winlink*** %7, align 8
  %49 = load %struct.winlink*, %struct.winlink** %48, align 8
  %50 = icmp eq %struct.winlink* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load %struct.session**, %struct.session*** %6, align 8
  store %struct.session* null, %struct.session** %52, align 8
  br label %90

53:                                               ; preds = %39
  %54 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %5, align 8
  %55 = getelementptr inbounds %struct.window_tree_itemdata, %struct.window_tree_itemdata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WINDOW_TREE_WINDOW, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.winlink**, %struct.winlink*** %7, align 8
  %61 = load %struct.winlink*, %struct.winlink** %60, align 8
  %62 = getelementptr inbounds %struct.winlink, %struct.winlink* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.window_pane*, %struct.window_pane** %64, align 8
  %66 = load %struct.window_pane**, %struct.window_pane*** %8, align 8
  store %struct.window_pane* %65, %struct.window_pane** %66, align 8
  br label %90

67:                                               ; preds = %53
  %68 = load %struct.window_tree_itemdata*, %struct.window_tree_itemdata** %5, align 8
  %69 = getelementptr inbounds %struct.window_tree_itemdata, %struct.window_tree_itemdata* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.window_pane* @window_pane_find_by_id(i32 %70)
  %72 = load %struct.window_pane**, %struct.window_pane*** %8, align 8
  store %struct.window_pane* %71, %struct.window_pane** %72, align 8
  %73 = load %struct.winlink**, %struct.winlink*** %7, align 8
  %74 = load %struct.winlink*, %struct.winlink** %73, align 8
  %75 = getelementptr inbounds %struct.winlink, %struct.winlink* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load %struct.window_pane**, %struct.window_pane*** %8, align 8
  %78 = load %struct.window_pane*, %struct.window_pane** %77, align 8
  %79 = call i32 @window_has_pane(%struct.TYPE_2__* %76, %struct.window_pane* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %67
  %82 = load %struct.window_pane**, %struct.window_pane*** %8, align 8
  store %struct.window_pane* null, %struct.window_pane** %82, align 8
  br label %83

83:                                               ; preds = %81, %67
  %84 = load %struct.window_pane**, %struct.window_pane*** %8, align 8
  %85 = load %struct.window_pane*, %struct.window_pane** %84, align 8
  %86 = icmp eq %struct.window_pane* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.session**, %struct.session*** %6, align 8
  store %struct.session* null, %struct.session** %88, align 8
  %89 = load %struct.winlink**, %struct.winlink*** %7, align 8
  store %struct.winlink* null, %struct.winlink** %89, align 8
  br label %90

90:                                               ; preds = %19, %26, %51, %59, %87, %83
  ret void
}

declare dso_local %struct.session* @session_find_by_id(i32) #1

declare dso_local %struct.winlink* @winlink_find_by_index(i32*, i32) #1

declare dso_local %struct.window_pane* @window_pane_find_by_id(i32) #1

declare dso_local i32 @window_has_pane(%struct.TYPE_2__*, %struct.window_pane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
