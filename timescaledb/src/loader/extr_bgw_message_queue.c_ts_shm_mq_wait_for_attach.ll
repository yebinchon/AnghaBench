; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_message_queue.c_ts_shm_mq_wait_for_attach.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_message_queue.c_ts_shm_mq_wait_for_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BGW_MQ_NUM_WAITS = common dso_local global i32 0, align 4
@SHM_MQ_SUCCESS = common dso_local global i32 0, align 4
@InvalidPid = common dso_local global i64 0, align 8
@SHM_MQ_DETACHED = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4
@WL_TIMEOUT = common dso_local global i32 0, align 4
@BGW_MQ_WAIT_INTERVAL = common dso_local global i32 0, align 4
@WAIT_EVENT_MQ_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @ts_shm_mq_wait_for_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts_shm_mq_wait_for_attach(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @BGW_MQ_NUM_WAITS, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @shm_mq_get_queue(i32* %13)
  %15 = call i32* @shm_mq_get_sender(i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @SHM_MQ_SUCCESS, align 4
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %12
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @queue_get_reader(i32* %21)
  %23 = load i64, i64* @InvalidPid, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @SHM_MQ_DETACHED, align 4
  store i32 %26, i32* %3, align 4
  br label %44

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @MyLatch, align 4
  %30 = load i32, i32* @WL_LATCH_SET, align 4
  %31 = load i32, i32* @WL_TIMEOUT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BGW_MQ_WAIT_INTERVAL, align 4
  %34 = load i32, i32* @WAIT_EVENT_MQ_INTERNAL, align 4
  %35 = call i32 (i32, i32, i32, ...) @WaitLatch(i32 %29, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @MyLatch, align 4
  %37 = call i32 @ResetLatch(i32 %36)
  %38 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %8

42:                                               ; preds = %8
  %43 = load i32, i32* @SHM_MQ_DETACHED, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %25, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32* @shm_mq_get_sender(i32) #1

declare dso_local i32 @shm_mq_get_queue(i32*) #1

declare dso_local i64 @queue_get_reader(i32*) #1

declare dso_local i32 @WaitLatch(i32, i32, i32, ...) #1

declare dso_local i32 @ResetLatch(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
