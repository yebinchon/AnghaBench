; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-condvar.c_spl_io_schedule_timeout.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-condvar.c_spl_io_schedule_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spl_task_timer = type { i32, %struct.timer_list }
%struct.timer_list = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@__cv_wakeup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @spl_io_schedule_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spl_io_schedule_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.spl_task_timer, align 8
  %5 = alloca %struct.timer_list*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* %2, align 8
  %8 = add nsw i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = getelementptr inbounds %struct.spl_task_timer, %struct.spl_task_timer* %4, i32 0, i32 1
  store %struct.timer_list* %9, %struct.timer_list** %5, align 8
  %10 = load i32, i32* @current, align 4
  %11 = getelementptr inbounds %struct.spl_task_timer, %struct.spl_task_timer* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %13 = load i32, i32* @__cv_wakeup, align 4
  %14 = call i32 @timer_setup(%struct.timer_list* %12, i32 %13, i32 0)
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %17 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %19 = call i32 @add_timer(%struct.timer_list* %18)
  %20 = call i32 (...) @io_schedule()
  %21 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %22 = call i32 @del_timer_sync(%struct.timer_list* %21)
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @jiffies, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %2, align 8
  %26 = load i64, i64* %2, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %31

29:                                               ; preds = %1
  %30 = load i64, i64* %2, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i64 [ 0, %28 ], [ %30, %29 ]
  ret i64 %32
}

declare dso_local i32 @timer_setup(%struct.timer_list*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @del_timer_sync(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
