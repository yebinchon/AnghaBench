; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_timerqueue.c_queue_remove_timer.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_timerqueue.c_queue_remove_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_timer = type { i64, i32, i64, i32, %struct.timer_queue* }
%struct.timer_queue = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_timer*)* @queue_remove_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_remove_timer(%struct.queue_timer* %0) #0 {
  %2 = alloca %struct.queue_timer*, align 8
  %3 = alloca %struct.timer_queue*, align 8
  store %struct.queue_timer* %0, %struct.queue_timer** %2, align 8
  %4 = load %struct.queue_timer*, %struct.queue_timer** %2, align 8
  %5 = getelementptr inbounds %struct.queue_timer, %struct.queue_timer* %4, i32 0, i32 4
  %6 = load %struct.timer_queue*, %struct.timer_queue** %5, align 8
  store %struct.timer_queue* %6, %struct.timer_queue** %3, align 8
  %7 = load %struct.queue_timer*, %struct.queue_timer** %2, align 8
  %8 = getelementptr inbounds %struct.queue_timer, %struct.queue_timer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.queue_timer*, %struct.queue_timer** %2, align 8
  %14 = getelementptr inbounds %struct.queue_timer, %struct.queue_timer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.queue_timer*, %struct.queue_timer** %2, align 8
  %18 = getelementptr inbounds %struct.queue_timer, %struct.queue_timer* %17, i32 0, i32 3
  %19 = call i32 @list_remove(i32* %18)
  %20 = load %struct.queue_timer*, %struct.queue_timer** %2, align 8
  %21 = getelementptr inbounds %struct.queue_timer, %struct.queue_timer* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.queue_timer*, %struct.queue_timer** %2, align 8
  %26 = getelementptr inbounds %struct.queue_timer, %struct.queue_timer* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @NtSetEvent(i64 %27, i32* null)
  br label %29

29:                                               ; preds = %24, %1
  %30 = call i32 (...) @RtlGetProcessHeap()
  %31 = load %struct.queue_timer*, %struct.queue_timer** %2, align 8
  %32 = call i32 @RtlFreeHeap(i32 %30, i32 0, %struct.queue_timer* %31)
  %33 = load %struct.timer_queue*, %struct.timer_queue** %3, align 8
  %34 = getelementptr inbounds %struct.timer_queue, %struct.timer_queue* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %29
  %38 = load %struct.timer_queue*, %struct.timer_queue** %3, align 8
  %39 = getelementptr inbounds %struct.timer_queue, %struct.timer_queue* %38, i32 0, i32 1
  %40 = call i64 @list_empty(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.timer_queue*, %struct.timer_queue** %3, align 8
  %44 = getelementptr inbounds %struct.timer_queue, %struct.timer_queue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @NtSetEvent(i64 %45, i32* null)
  br label %47

47:                                               ; preds = %42, %37, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @NtSetEvent(i64, i32*) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, %struct.queue_timer*) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
