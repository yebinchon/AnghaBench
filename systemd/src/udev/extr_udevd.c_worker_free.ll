; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_worker_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_worker_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker*)* @worker_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @worker_free(%struct.worker* %0) #0 {
  %2 = alloca %struct.worker*, align 8
  store %struct.worker* %0, %struct.worker** %2, align 8
  %3 = load %struct.worker*, %struct.worker** %2, align 8
  %4 = icmp ne %struct.worker* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load %struct.worker*, %struct.worker** %2, align 8
  %8 = getelementptr inbounds %struct.worker, %struct.worker* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @assert(%struct.TYPE_2__* %9)
  %11 = load %struct.worker*, %struct.worker** %2, align 8
  %12 = getelementptr inbounds %struct.worker, %struct.worker* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.worker*, %struct.worker** %2, align 8
  %17 = getelementptr inbounds %struct.worker, %struct.worker* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @PID_TO_PTR(i32 %18)
  %20 = call i32 @hashmap_remove(i32 %15, i32 %19)
  %21 = load %struct.worker*, %struct.worker** %2, align 8
  %22 = getelementptr inbounds %struct.worker, %struct.worker* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sd_device_monitor_unref(i32 %23)
  %25 = load %struct.worker*, %struct.worker** %2, align 8
  %26 = getelementptr inbounds %struct.worker, %struct.worker* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @event_free(i32 %27)
  %29 = load %struct.worker*, %struct.worker** %2, align 8
  %30 = call i32 @free(%struct.worker* %29)
  br label %31

31:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_2__*) #1

declare dso_local i32 @hashmap_remove(i32, i32) #1

declare dso_local i32 @PID_TO_PTR(i32) #1

declare dso_local i32 @sd_device_monitor_unref(i32) #1

declare dso_local i32 @event_free(i32) #1

declare dso_local i32 @free(%struct.worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
