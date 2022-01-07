; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_reset.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { i32, i32, %struct.input_ctx* }
%struct.input_ctx = type { i32, i64, i32*, %struct.screen_write_ctx }
%struct.screen_write_ctx = type { i32 }

@input_state_ground = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_reset(%struct.window_pane* %0, i32 %1) #0 {
  %3 = alloca %struct.window_pane*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_ctx*, align 8
  %6 = alloca %struct.screen_write_ctx*, align 8
  store %struct.window_pane* %0, %struct.window_pane** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %8 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %7, i32 0, i32 2
  %9 = load %struct.input_ctx*, %struct.input_ctx** %8, align 8
  store %struct.input_ctx* %9, %struct.input_ctx** %5, align 8
  %10 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %10, i32 0, i32 3
  store %struct.screen_write_ctx* %11, %struct.screen_write_ctx** %6, align 8
  %12 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %13 = call i32 @input_reset_cell(%struct.input_ctx* %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %18 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %17, i32 0, i32 1
  %19 = call i64 @TAILQ_EMPTY(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %6, align 8
  %23 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %24 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %25 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %24, i32 0, i32 0
  %26 = call i32 @screen_write_start(%struct.screen_write_ctx* %22, %struct.window_pane* %23, i32* %25)
  br label %32

27:                                               ; preds = %16
  %28 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %6, align 8
  %29 = load %struct.window_pane*, %struct.window_pane** %3, align 8
  %30 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %29, i32 0, i32 0
  %31 = call i32 @screen_write_start(%struct.screen_write_ctx* %28, %struct.window_pane* null, i32* %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %6, align 8
  %34 = call i32 @screen_write_reset(%struct.screen_write_ctx* %33)
  %35 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %6, align 8
  %36 = call i32 @screen_write_stop(%struct.screen_write_ctx* %35)
  br label %37

37:                                               ; preds = %32, %2
  %38 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %39 = call i32 @input_clear(%struct.input_ctx* %38)
  %40 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  %42 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %42, i32 0, i32 2
  store i32* @input_state_ground, i32** %43, align 8
  %44 = load %struct.input_ctx*, %struct.input_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  ret void
}

declare dso_local i32 @input_reset_cell(%struct.input_ctx*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @screen_write_start(%struct.screen_write_ctx*, %struct.window_pane*, i32*) #1

declare dso_local i32 @screen_write_reset(%struct.screen_write_ctx*) #1

declare dso_local i32 @screen_write_stop(%struct.screen_write_ctx*) #1

declare dso_local i32 @input_clear(%struct.input_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
