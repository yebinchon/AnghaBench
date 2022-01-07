; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_timer_start.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_2__, %struct.session* }
%struct.TYPE_2__ = type { i32 }
%struct.session = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_timer_start(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca %struct.session*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %4 = load %struct.client*, %struct.client** %2, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 1
  %6 = load %struct.session*, %struct.session** %5, align 8
  store %struct.session* %6, %struct.session** %3, align 8
  %7 = load %struct.client*, %struct.client** %2, align 8
  %8 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i64 @event_initialized(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.client*, %struct.client** %2, align 8
  %14 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @evtimer_del(i32* %15)
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.client*, %struct.client** %2, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.client*, %struct.client** %2, align 8
  %22 = call i32 @evtimer_set(i32* %20, i32 (i32, i32, %struct.client*)* @status_timer_callback, %struct.client* %21)
  br label %23

23:                                               ; preds = %17, %12
  %24 = load %struct.session*, %struct.session** %3, align 8
  %25 = icmp ne %struct.session* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.session*, %struct.session** %3, align 8
  %28 = getelementptr inbounds %struct.session, %struct.session* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @options_get_number(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.client*, %struct.client** %2, align 8
  %34 = call i32 @status_timer_callback(i32 -1, i32 0, %struct.client* %33)
  br label %35

35:                                               ; preds = %32, %26, %23
  ret void
}

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @evtimer_set(i32*, i32 (i32, i32, %struct.client*)*, %struct.client*) #1

declare dso_local i32 @status_timer_callback(i32, i32, %struct.client*) #1

declare dso_local i64 @options_get_number(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
