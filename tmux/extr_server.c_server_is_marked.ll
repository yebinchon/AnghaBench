; ModuleID = '/home/carl/AnghaBench/tmux/extr_server.c_server_is_marked.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server.c_server_is_marked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.window_pane*, %struct.winlink*, %struct.session* }
%struct.window_pane = type { i32 }
%struct.winlink = type { i32 }
%struct.session = type { i32 }

@marked_pane = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_is_marked(%struct.session* %0, %struct.winlink* %1, %struct.window_pane* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.session*, align 8
  %6 = alloca %struct.winlink*, align 8
  %7 = alloca %struct.window_pane*, align 8
  store %struct.session* %0, %struct.session** %5, align 8
  store %struct.winlink* %1, %struct.winlink** %6, align 8
  store %struct.window_pane* %2, %struct.window_pane** %7, align 8
  %8 = load %struct.session*, %struct.session** %5, align 8
  %9 = icmp eq %struct.session* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load %struct.winlink*, %struct.winlink** %6, align 8
  %12 = icmp eq %struct.winlink* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %15 = icmp eq %struct.window_pane* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %33

17:                                               ; preds = %13
  %18 = load %struct.session*, %struct.session** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @marked_pane, i32 0, i32 2), align 8
  %19 = load %struct.session*, %struct.session** %5, align 8
  %20 = icmp ne %struct.session* %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.winlink*, %struct.winlink** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @marked_pane, i32 0, i32 1), align 8
  %23 = load %struct.winlink*, %struct.winlink** %6, align 8
  %24 = icmp ne %struct.winlink* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  store i32 0, i32* %4, align 4
  br label %33

26:                                               ; preds = %21
  %27 = load %struct.window_pane*, %struct.window_pane** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @marked_pane, i32 0, i32 0), align 8
  %28 = load %struct.window_pane*, %struct.window_pane** %7, align 8
  %29 = icmp ne %struct.window_pane* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %33

31:                                               ; preds = %26
  %32 = call i32 (...) @server_check_marked()
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %30, %25, %16
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @server_check_marked(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
