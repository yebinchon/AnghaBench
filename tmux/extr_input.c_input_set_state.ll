; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_set_state.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { %struct.input_ctx* }
%struct.input_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.input_ctx*)*, i32 (%struct.input_ctx*)* }
%struct.input_transition = type { %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window_pane*, %struct.input_transition*)* @input_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_set_state(%struct.window_pane* %0, %struct.input_transition* %1) #0 {
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca %struct.input_transition*, align 8
  %5 = alloca %struct.input_ctx*, align 8
  store %struct.window_pane* %0, %struct.window_pane** %3, align 8
  store %struct.input_transition* %1, %struct.input_transition** %4, align 8
  %6 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %7 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %6, i32 0, i32 0
  %8 = load %struct.input_ctx*, %struct.input_ctx** %7, align 8
  store %struct.input_ctx* %8, %struct.input_ctx** %5, align 8
  %9 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (%struct.input_ctx*)*, i32 (%struct.input_ctx*)** %12, align 8
  %14 = icmp ne i32 (%struct.input_ctx*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (%struct.input_ctx*)*, i32 (%struct.input_ctx*)** %19, align 8
  %21 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %22 = call i32 %20(%struct.input_ctx* %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load %struct.input_transition*, %struct.input_transition** %4, align 8
  %25 = getelementptr inbounds %struct.input_transition, %struct.input_transition* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %27, i32 0, i32 0
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %28, align 8
  %29 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.input_ctx*)*, i32 (%struct.input_ctx*)** %32, align 8
  %34 = icmp ne i32 (%struct.input_ctx*)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %23
  %36 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.input_ctx*)*, i32 (%struct.input_ctx*)** %39, align 8
  %41 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %42 = call i32 %40(%struct.input_ctx* %41)
  br label %43

43:                                               ; preds = %35, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
