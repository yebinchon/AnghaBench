; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_message_queue.c_ts_bgw_message_send_and_wait.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_message_queue.c_ts_bgw_message_send_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"TimescaleDB background worker dynamic shared memory segment not mapped\00", align 1
@BGW_ACK_QUEUE_SIZE = common dso_local global i32 0, align 4
@MyProc = common dso_local global i32 0, align 4
@mq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_bgw_message_send_and_wait(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_5__* @bgw_message_create(i32 %10, i32 %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @dsm_find_mapping(i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @errmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @ereport(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @dsm_segment_address(i32* %24)
  %26 = load i32, i32* @BGW_ACK_QUEUE_SIZE, align 4
  %27 = call i32* @shm_mq_create(i32 %25, i32 %26)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @MyProc, align 4
  %30 = call i32 @shm_mq_set_receiver(i32* %28, i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @shm_mq_attach(i32* %31, i32* %32, i32* null)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load i32, i32* @mq, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @enqueue_message_wait_for_ack(i32 %37, %struct.TYPE_5__* %38, i32* %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %36, %23
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @dsm_detach(i32* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = call i32 @pfree(%struct.TYPE_5__* %44)
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_5__* @bgw_message_create(i32, i32) #1

declare dso_local i32* @dsm_find_mapping(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @shm_mq_create(i32, i32) #1

declare dso_local i32 @dsm_segment_address(i32*) #1

declare dso_local i32 @shm_mq_set_receiver(i32*, i32) #1

declare dso_local i32* @shm_mq_attach(i32*, i32*, i32*) #1

declare dso_local i32 @enqueue_message_wait_for_ack(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @dsm_detach(i32*) #1

declare dso_local i32 @pfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
