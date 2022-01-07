; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_dbus-job.c_bus_job_track_sender.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_dbus-job.c_bus_job_track_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_job_track_sender(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_13__* %7)
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_13__* %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = call i64 @sd_bus_message_get_bus(%struct.TYPE_13__* %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %12, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  store i32 0, i32* %3, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = call i32 @bus_job_allocate_bus_track(%struct.TYPE_13__* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = call i32 @sd_bus_track_add_sender(i32 %34, %struct.TYPE_13__* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %29, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i64 @sd_bus_message_get_bus(%struct.TYPE_13__*) #1

declare dso_local i32 @bus_job_allocate_bus_track(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_bus_track_add_sender(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
