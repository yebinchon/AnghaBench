; ModuleID = '/home/carl/AnghaBench/tmux/extr_alerts.c_alerts_reset.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_alerts.c_alerts_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32, i32, i32, i32 }
%struct.timeval = type { i64 }

@alerts_timer = common dso_local global i32 0, align 4
@WINDOW_SILENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"monitor-silence\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"@%u alerts timer reset %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.window*)* @alerts_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alerts_reset(%struct.window* %0) #0 {
  %2 = alloca %struct.window*, align 8
  %3 = alloca %struct.timeval, align 8
  store %struct.window* %0, %struct.window** %2, align 8
  %4 = load %struct.window*, %struct.window** %2, align 8
  %5 = getelementptr inbounds %struct.window, %struct.window* %4, i32 0, i32 0
  %6 = call i32 @event_initialized(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.window*, %struct.window** %2, align 8
  %10 = getelementptr inbounds %struct.window, %struct.window* %9, i32 0, i32 0
  %11 = load i32, i32* @alerts_timer, align 4
  %12 = load %struct.window*, %struct.window** %2, align 8
  %13 = call i32 @evtimer_set(i32* %10, i32 %11, %struct.window* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @WINDOW_SILENCE, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.window*, %struct.window** %2, align 8
  %18 = getelementptr inbounds %struct.window, %struct.window* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.window*, %struct.window** %2, align 8
  %22 = getelementptr inbounds %struct.window, %struct.window* %21, i32 0, i32 0
  %23 = call i32 @event_del(i32* %22)
  %24 = call i32 @timerclear(%struct.timeval* %3)
  %25 = load %struct.window*, %struct.window** %2, align 8
  %26 = getelementptr inbounds %struct.window, %struct.window* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @options_get_number(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load %struct.window*, %struct.window** %2, align 8
  %31 = getelementptr inbounds %struct.window, %struct.window* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35)
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %14
  %41 = load %struct.window*, %struct.window** %2, align 8
  %42 = getelementptr inbounds %struct.window, %struct.window* %41, i32 0, i32 0
  %43 = call i32 @event_add(i32* %42, %struct.timeval* %3)
  br label %44

44:                                               ; preds = %40, %14
  ret void
}

declare dso_local i32 @event_initialized(i32*) #1

declare dso_local i32 @evtimer_set(i32*, i32, %struct.window*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @timerclear(%struct.timeval*) #1

declare dso_local i64 @options_get_number(i32, i8*) #1

declare dso_local i32 @log_debug(i8*, i32, i32) #1

declare dso_local i32 @event_add(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
