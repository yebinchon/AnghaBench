; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_pane_destroy_ready.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_pane_destroy_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FIONREAD = common dso_local global i32 0, align 4
@PANE_EXITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @window_pane_destroy_ready(%struct.window_pane* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca i32, align 4
  store %struct.window_pane* %0, %struct.window_pane** %3, align 8
  %5 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %6 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %11 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @EVBUFFER_LENGTH(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %40

18:                                               ; preds = %9
  %19 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %20 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FIONREAD, align 4
  %23 = call i32 @ioctl(i32 %21, i32 %22, i32* %4)
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %40

29:                                               ; preds = %25, %18
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %32 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* @PANE_EXITED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %28, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @EVBUFFER_LENGTH(i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
