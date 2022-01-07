; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_with_graph.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_with_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.view_column = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@opt_commit_order = common dso_local global i64 0, align 8
@COMMIT_ORDER_REVERSE = common dso_local global i64 0, align 8
@opt_log_follow = common dso_local global i32 0, align 4
@GRAPH_DISPLAY_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.view_column*, i32)* @main_with_graph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @main_with_graph(%struct.view* %0, %struct.view_column* %1, i32 %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.view_column*, align 8
  %6 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.view_column* %1, %struct.view_column** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.view_column*, %struct.view_column** %5, align 8
  %8 = icmp ne %struct.view_column* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = load i64, i64* @opt_commit_order, align 8
  %11 = load i64, i64* @COMMIT_ORDER_REVERSE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @open_in_pager_mode(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @opt_log_follow, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load %struct.view_column*, %struct.view_column** %5, align 8
  %22 = getelementptr inbounds %struct.view_column, %struct.view_column* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %28

26:                                               ; preds = %17, %13, %9, %3
  %27 = load i32, i32* @GRAPH_DISPLAY_NO, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i32 [ %25, %20 ], [ %27, %26 ]
  ret i32 %29
}

declare dso_local i32 @open_in_pager_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
