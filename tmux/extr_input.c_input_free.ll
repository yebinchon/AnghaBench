; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_free.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window_pane = type { %struct.input_ctx* }
%struct.input_ctx = type { i64, i32, %struct.input_ctx*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.input_ctx* }

@INPUT_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_free(%struct.window_pane* %0) #0 {
  %2 = alloca %struct.window_pane*, align 8
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca i64, align 8
  store %struct.window_pane* %0, %struct.window_pane** %2, align 8
  %5 = load %struct.window_pane*, %struct.window_pane** %2, align 8
  %6 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %5, i32 0, i32 0
  %7 = load %struct.input_ctx*, %struct.input_ctx** %6, align 8
  store %struct.input_ctx* %7, %struct.input_ctx** %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %34, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INPUT_STRING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %14
  %25 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.input_ctx*, %struct.input_ctx** %30, align 8
  %32 = call i32 @free(%struct.input_ctx* %31)
  br label %33

33:                                               ; preds = %24, %14
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %8

37:                                               ; preds = %8
  %38 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %38, i32 0, i32 3
  %40 = call i32 @event_del(i32* %39)
  %41 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %41, i32 0, i32 2
  %43 = load %struct.input_ctx*, %struct.input_ctx** %42, align 8
  %44 = call i32 @free(%struct.input_ctx* %43)
  %45 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @evbuffer_free(i32 %47)
  %49 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %50 = call i32 @free(%struct.input_ctx* %49)
  %51 = load %struct.window_pane*, %struct.window_pane** %2, align 8
  %52 = getelementptr inbounds %struct.window_pane, %struct.window_pane* %51, i32 0, i32 0
  store %struct.input_ctx* null, %struct.input_ctx** %52, align 8
  ret void
}

declare dso_local i32 @free(%struct.input_ctx*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @evbuffer_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
