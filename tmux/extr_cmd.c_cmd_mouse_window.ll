; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_mouse_window.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_mouse_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winlink = type { i32 }
%struct.mouse_event = type { i32, i32, i32 }
%struct.session = type { i32, %struct.winlink* }
%struct.window = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.winlink* @cmd_mouse_window(%struct.mouse_event* %0, %struct.session** %1) #0 {
  %3 = alloca %struct.winlink*, align 8
  %4 = alloca %struct.mouse_event*, align 8
  %5 = alloca %struct.session**, align 8
  %6 = alloca %struct.session*, align 8
  %7 = alloca %struct.window*, align 8
  %8 = alloca %struct.winlink*, align 8
  store %struct.mouse_event* %0, %struct.mouse_event** %4, align 8
  store %struct.session** %1, %struct.session*** %5, align 8
  %9 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %10 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.winlink* null, %struct.winlink** %3, align 8
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %16 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %21 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.session* @session_find_by_id(i32 %22)
  store %struct.session* %23, %struct.session** %6, align 8
  %24 = icmp eq %struct.session* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %14
  store %struct.winlink* null, %struct.winlink** %3, align 8
  br label %55

26:                                               ; preds = %19
  %27 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %28 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.session*, %struct.session** %6, align 8
  %33 = getelementptr inbounds %struct.session, %struct.session* %32, i32 0, i32 1
  %34 = load %struct.winlink*, %struct.winlink** %33, align 8
  store %struct.winlink* %34, %struct.winlink** %8, align 8
  br label %47

35:                                               ; preds = %26
  %36 = load %struct.mouse_event*, %struct.mouse_event** %4, align 8
  %37 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.window* @window_find_by_id(i32 %38)
  store %struct.window* %39, %struct.window** %7, align 8
  %40 = icmp eq %struct.window* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store %struct.winlink* null, %struct.winlink** %3, align 8
  br label %55

42:                                               ; preds = %35
  %43 = load %struct.session*, %struct.session** %6, align 8
  %44 = getelementptr inbounds %struct.session, %struct.session* %43, i32 0, i32 0
  %45 = load %struct.window*, %struct.window** %7, align 8
  %46 = call %struct.winlink* @winlink_find_by_window(i32* %44, %struct.window* %45)
  store %struct.winlink* %46, %struct.winlink** %8, align 8
  br label %47

47:                                               ; preds = %42, %31
  %48 = load %struct.session**, %struct.session*** %5, align 8
  %49 = icmp ne %struct.session** %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.session*, %struct.session** %6, align 8
  %52 = load %struct.session**, %struct.session*** %5, align 8
  store %struct.session* %51, %struct.session** %52, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.winlink*, %struct.winlink** %8, align 8
  store %struct.winlink* %54, %struct.winlink** %3, align 8
  br label %55

55:                                               ; preds = %53, %41, %25, %13
  %56 = load %struct.winlink*, %struct.winlink** %3, align 8
  ret %struct.winlink* %56
}

declare dso_local %struct.session* @session_find_by_id(i32) #1

declare dso_local %struct.window* @window_find_by_id(i32) #1

declare dso_local %struct.winlink* @winlink_find_by_window(i32*, %struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
