; ModuleID = '/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_message_stop_action.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/loader/extr_bgw_launcher.c_message_stop_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@ACK_SUCCESS = common dso_local global i32 0, align 4
@ACK_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @message_stop_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_stop_action(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_8__* @db_hash_entry_create_if_not_exists(i32* %6, i32 %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %32 [
    i32 129, label %14
    i32 131, label %17
    i32 128, label %20
    i32 130, label %31
  ]

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = call i32 @scheduler_state_trans_enabled_to_disabled(%struct.TYPE_8__* %15)
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = call i32 @scheduler_state_trans_allocated_to_disabled(%struct.TYPE_8__* %18)
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @terminate_background_worker(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wait_for_background_worker_shutdown(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = call i32 @scheduler_state_trans_started_to_disabled(%struct.TYPE_8__* %29)
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %2, %31, %20, %17, %14
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 130
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @ACK_SUCCESS, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @ACK_FAILURE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  ret i32 %42
}

declare dso_local %struct.TYPE_8__* @db_hash_entry_create_if_not_exists(i32*, i32) #1

declare dso_local i32 @scheduler_state_trans_enabled_to_disabled(%struct.TYPE_8__*) #1

declare dso_local i32 @scheduler_state_trans_allocated_to_disabled(%struct.TYPE_8__*) #1

declare dso_local i32 @terminate_background_worker(i32) #1

declare dso_local i32 @wait_for_background_worker_shutdown(i32) #1

declare dso_local i32 @scheduler_state_trans_started_to_disabled(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
