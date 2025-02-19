; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_scheduler_state_trans_automatic.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_scheduler_state_trans_automatic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@BGWH_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @scheduler_state_trans_automatic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scheduler_state_trans_automatic(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %32 [
    i32 129, label %6
    i32 131, label %17
    i32 128, label %20
    i32 130, label %31
  ]

6:                                                ; preds = %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = call i32 @scheduler_state_trans_enabled_to_allocated(%struct.TYPE_6__* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 131
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = call i32 @scheduler_state_trans_allocated_to_started(%struct.TYPE_6__* %14)
  br label %16

16:                                               ; preds = %13, %6
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = call i32 @scheduler_state_trans_allocated_to_started(%struct.TYPE_6__* %18)
  br label %32

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @get_background_worker_pid(i32 %23, i32* null)
  %25 = load i32, i32* @BGWH_STOPPED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = call i32 @scheduler_state_trans_started_to_disabled(%struct.TYPE_6__* %28)
  br label %30

30:                                               ; preds = %27, %20
  br label %32

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %1, %31, %30, %17, %16
  ret void
}

declare dso_local i32 @scheduler_state_trans_enabled_to_allocated(%struct.TYPE_6__*) #1

declare dso_local i32 @scheduler_state_trans_allocated_to_started(%struct.TYPE_6__*) #1

declare dso_local i32 @get_background_worker_pid(i32, i32*) #1

declare dso_local i32 @scheduler_state_trans_started_to_disabled(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
