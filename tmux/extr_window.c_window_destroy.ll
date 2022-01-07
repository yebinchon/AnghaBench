; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_window_destroy.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_window_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { %struct.window*, i32, i32, i32, i32, %struct.window*, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"window @%u destroyed (%d references)\00", align 1
@windows = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window*)* @window_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @window_destroy(%struct.window* %0) #0 {
  %2 = alloca %struct.window*, align 8
  store %struct.window* %0, %struct.window** %2, align 8
  %3 = load %struct.window*, %struct.window** %2, align 8
  %4 = getelementptr inbounds %struct.window, %struct.window* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.window*, %struct.window** %2, align 8
  %7 = getelementptr inbounds %struct.window, %struct.window* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @log_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8)
  %10 = load i32, i32* @windows, align 4
  %11 = load %struct.window*, %struct.window** %2, align 8
  %12 = call i32 @RB_REMOVE(i32 %10, i32* @windows, %struct.window* %11)
  %13 = load %struct.window*, %struct.window** %2, align 8
  %14 = getelementptr inbounds %struct.window, %struct.window* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.window*, %struct.window** %2, align 8
  %19 = getelementptr inbounds %struct.window, %struct.window* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @layout_free_cell(i32* %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.window*, %struct.window** %2, align 8
  %24 = getelementptr inbounds %struct.window, %struct.window* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.window*, %struct.window** %2, align 8
  %29 = getelementptr inbounds %struct.window, %struct.window* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @layout_free_cell(i32* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.window*, %struct.window** %2, align 8
  %34 = getelementptr inbounds %struct.window, %struct.window* %33, i32 0, i32 5
  %35 = load %struct.window*, %struct.window** %34, align 8
  %36 = call i32 @free(%struct.window* %35)
  %37 = load %struct.window*, %struct.window** %2, align 8
  %38 = call i32 @window_destroy_panes(%struct.window* %37)
  %39 = load %struct.window*, %struct.window** %2, align 8
  %40 = getelementptr inbounds %struct.window, %struct.window* %39, i32 0, i32 4
  %41 = call i64 @event_initialized(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.window*, %struct.window** %2, align 8
  %45 = getelementptr inbounds %struct.window, %struct.window* %44, i32 0, i32 4
  %46 = call i32 @evtimer_del(i32* %45)
  br label %47

47:                                               ; preds = %43, %32
  %48 = load %struct.window*, %struct.window** %2, align 8
  %49 = getelementptr inbounds %struct.window, %struct.window* %48, i32 0, i32 3
  %50 = call i64 @event_initialized(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.window*, %struct.window** %2, align 8
  %54 = getelementptr inbounds %struct.window, %struct.window* %53, i32 0, i32 3
  %55 = call i32 @evtimer_del(i32* %54)
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.window*, %struct.window** %2, align 8
  %58 = getelementptr inbounds %struct.window, %struct.window* %57, i32 0, i32 2
  %59 = call i64 @event_initialized(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.window*, %struct.window** %2, align 8
  %63 = getelementptr inbounds %struct.window, %struct.window* %62, i32 0, i32 2
  %64 = call i32 @event_del(i32* %63)
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.window*, %struct.window** %2, align 8
  %67 = getelementptr inbounds %struct.window, %struct.window* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @options_free(i32 %68)
  %70 = load %struct.window*, %struct.window** %2, align 8
  %71 = getelementptr inbounds %struct.window, %struct.window* %70, i32 0, i32 0
  %72 = load %struct.window*, %struct.window** %71, align 8
  %73 = call i32 @free(%struct.window* %72)
  %74 = load %struct.window*, %struct.window** %2, align 8
  %75 = call i32 @free(%struct.window* %74)
  ret void
}

declare dso_local i32 @log_debug(i8*, i32, i32) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.window*) #1

declare dso_local i32 @layout_free_cell(i32*) #1

declare dso_local i32 @free(%struct.window*) #1

declare dso_local i32 @window_destroy_panes(%struct.window*) #1

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @options_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
