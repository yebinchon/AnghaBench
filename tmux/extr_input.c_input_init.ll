; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_init.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { %struct.input_ctx* }
%struct.input_ctx = type { i32, i32*, i32, i32 }

@INPUT_BUF_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@input_timer_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_init(%struct.window_pane* %0) #0 {
  %2 = alloca %struct.window_pane*, align 8
  %3 = alloca %struct.input_ctx*, align 8
  store %struct.window_pane* %0, %struct.window_pane** %2, align 8
  %4 = call %struct.input_ctx* @xcalloc(i32 1, i32 24)
  %5 = load %struct.window_pane*, %struct.window_pane** %2, align 8
  %6 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %5, i32 0, i32 0
  store %struct.input_ctx* %4, %struct.input_ctx** %6, align 8
  store %struct.input_ctx* %4, %struct.input_ctx** %3, align 8
  %7 = load i32, i32* @INPUT_BUF_START, align 4
  %8 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @INPUT_BUF_START, align 4
  %11 = call i32 @xmalloc(i32 %10)
  %12 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = call i32* (...) @evbuffer_new()
  %15 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @fatalx(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %1
  %24 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* @input_timer_callback, align 4
  %27 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %28 = call i32 @evtimer_set(i32* %25, i32 %26, %struct.input_ctx* %27)
  %29 = load %struct.window_pane*, %struct.window_pane** %2, align 8
  %30 = call i32 @input_reset(%struct.window_pane* %29, i32 0)
  ret void
}

declare dso_local %struct.input_ctx* @xcalloc(i32, i32) #1

declare dso_local i32 @xmalloc(i32) #1

declare dso_local i32* @evbuffer_new(...) #1

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i32 @evtimer_set(i32*, i32, %struct.input_ctx*) #1

declare dso_local i32 @input_reset(%struct.window_pane*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
