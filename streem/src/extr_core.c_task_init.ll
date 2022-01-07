; ModuleID = '/home/carl/AnghaBench/streem/src/extr_core.c_task_init.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_core.c_task_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@workers = common dso_local global %struct.TYPE_4__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@strm_event_loop_started = common dso_local global i32 0, align 4
@queue = common dso_local global i8* null, align 8
@prod_queue = common dso_local global i8* null, align 8
@worker_max = common dso_local global i32 0, align 4
@task_loop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @task_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_init() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @workers, align 8
  %3 = icmp ne %struct.TYPE_4__* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %35

5:                                                ; preds = %0
  %6 = load i32, i32* @TRUE, align 4
  store i32 %6, i32* @strm_event_loop_started, align 4
  %7 = call i32 (...) @strm_init_io_loop()
  %8 = call i8* (...) @strm_queue_new()
  store i8* %8, i8** @queue, align 8
  %9 = call i8* (...) @strm_queue_new()
  store i8* %9, i8** @prod_queue, align 8
  %10 = call i32 (...) @worker_count()
  store i32 %10, i32* @worker_max, align 4
  %11 = load i32, i32* @worker_max, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = call %struct.TYPE_4__* @malloc(i32 %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** @workers, align 8
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %32, %5
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @worker_max, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @workers, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* @task_loop, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @workers, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = call i32 @pthread_create(i32* %25, i32* null, i32 %26, %struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %16

35:                                               ; preds = %4, %16
  ret void
}

declare dso_local i32 @strm_init_io_loop(...) #1

declare dso_local i8* @strm_queue_new(...) #1

declare dso_local i32 @worker_count(...) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
