; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_mouse_pane.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_mouse_pane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32 }
%struct.mouse_event = type { i32 }
%struct.session = type { i32 }
%struct.winlink = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.window_pane* @cmd_mouse_pane(%struct.mouse_event* %0, %struct.session** %1, %struct.winlink** %2) #0 {
  %4 = alloca %struct.window_pane*, align 8
  %5 = alloca %struct.mouse_event*, align 8
  %6 = alloca %struct.session**, align 8
  %7 = alloca %struct.winlink**, align 8
  %8 = alloca %struct.winlink*, align 8
  %9 = alloca %struct.window_pane*, align 8
  store %struct.mouse_event* %0, %struct.mouse_event** %5, align 8
  store %struct.session** %1, %struct.session*** %6, align 8
  store %struct.winlink** %2, %struct.winlink*** %7, align 8
  %10 = load %struct.mouse_event*, %struct.mouse_event** %5, align 8
  %11 = load %struct.session**, %struct.session*** %6, align 8
  %12 = call %struct.winlink* @cmd_mouse_window(%struct.mouse_event* %10, %struct.session** %11)
  store %struct.winlink* %12, %struct.winlink** %8, align 8
  %13 = icmp eq %struct.winlink* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.window_pane* null, %struct.window_pane** %4, align 8
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.mouse_event*, %struct.mouse_event** %5, align 8
  %17 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.window_pane* @window_pane_find_by_id(i32 %18)
  store %struct.window_pane* %19, %struct.window_pane** %9, align 8
  %20 = icmp eq %struct.window_pane* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store %struct.window_pane* null, %struct.window_pane** %4, align 8
  br label %38

22:                                               ; preds = %15
  %23 = load %struct.winlink*, %struct.winlink** %8, align 8
  %24 = getelementptr inbounds %struct.winlink, %struct.winlink* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  %27 = call i32 @window_has_pane(i32 %25, %struct.window_pane* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store %struct.window_pane* null, %struct.window_pane** %4, align 8
  br label %38

30:                                               ; preds = %22
  %31 = load %struct.winlink**, %struct.winlink*** %7, align 8
  %32 = icmp ne %struct.winlink** %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.winlink*, %struct.winlink** %8, align 8
  %35 = load %struct.winlink**, %struct.winlink*** %7, align 8
  store %struct.winlink* %34, %struct.winlink** %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.window_pane*, %struct.window_pane** %9, align 8
  store %struct.window_pane* %37, %struct.window_pane** %4, align 8
  br label %38

38:                                               ; preds = %36, %29, %21, %14
  %39 = load %struct.window_pane*, %struct.window_pane** %4, align 8
  ret %struct.window_pane* %39
}

declare dso_local %struct.winlink* @cmd_mouse_window(%struct.mouse_event*, %struct.session**) #1

declare dso_local %struct.window_pane* @window_pane_find_by_id(i32) #1

declare dso_local i32 @window_has_pane(i32, %struct.window_pane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
