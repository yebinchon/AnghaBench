; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_create.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32, i64, i32, i64, i32, i8*, i8*, i32*, i32*, i32, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@global_w_options = common dso_local global i32 0, align 4
@next_window_id = common dso_local global i32 0, align 4
@windows = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.window* @window_create(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.window*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.window* @xcalloc(i32 1, i32 96)
  store %struct.window* %6, %struct.window** %5, align 8
  %7 = call i32 @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.window*, %struct.window** %5, align 8
  %9 = getelementptr inbounds %struct.window, %struct.window* %8, i32 0, i32 11
  store i32 %7, i32* %9, align 8
  %10 = load %struct.window*, %struct.window** %5, align 8
  %11 = getelementptr inbounds %struct.window, %struct.window* %10, i32 0, i32 10
  store i64 0, i64* %11, align 8
  %12 = load %struct.window*, %struct.window** %5, align 8
  %13 = getelementptr inbounds %struct.window, %struct.window* %12, i32 0, i32 9
  %14 = call i32 @TAILQ_INIT(i32* %13)
  %15 = load %struct.window*, %struct.window** %5, align 8
  %16 = getelementptr inbounds %struct.window, %struct.window* %15, i32 0, i32 8
  store i32* null, i32** %16, align 8
  %17 = load %struct.window*, %struct.window** %5, align 8
  %18 = getelementptr inbounds %struct.window, %struct.window* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 8
  %19 = load %struct.window*, %struct.window** %5, align 8
  %20 = getelementptr inbounds %struct.window, %struct.window* %19, i32 0, i32 7
  store i32* null, i32** %20, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.window*, %struct.window** %5, align 8
  %23 = getelementptr inbounds %struct.window, %struct.window* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.window*, %struct.window** %5, align 8
  %26 = getelementptr inbounds %struct.window, %struct.window* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @global_w_options, align 4
  %28 = call i32 @options_create(i32 %27)
  %29 = load %struct.window*, %struct.window** %5, align 8
  %30 = getelementptr inbounds %struct.window, %struct.window* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.window*, %struct.window** %5, align 8
  %32 = getelementptr inbounds %struct.window, %struct.window* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.window*, %struct.window** %5, align 8
  %34 = getelementptr inbounds %struct.window, %struct.window* %33, i32 0, i32 2
  %35 = call i32 @TAILQ_INIT(i32* %34)
  %36 = load i32, i32* @next_window_id, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @next_window_id, align 4
  %38 = sext i32 %36 to i64
  %39 = load %struct.window*, %struct.window** %5, align 8
  %40 = getelementptr inbounds %struct.window, %struct.window* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @windows, align 4
  %42 = load %struct.window*, %struct.window** %5, align 8
  %43 = call i32 @RB_INSERT(i32 %41, i32* @windows, %struct.window* %42)
  %44 = load %struct.window*, %struct.window** %5, align 8
  %45 = call i32 @window_update_activity(%struct.window* %44)
  %46 = load %struct.window*, %struct.window** %5, align 8
  ret %struct.window* %46
}

declare dso_local %struct.window* @xcalloc(i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @options_create(i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.window*) #1

declare dso_local i32 @window_update_activity(%struct.window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
