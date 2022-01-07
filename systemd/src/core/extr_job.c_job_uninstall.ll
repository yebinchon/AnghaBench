; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_job.c_job_uninstall.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_job.c_job_uninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }

@JOB_WAITING = common dso_local global i32 0, align 4
@JOB_NOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @job_uninstall(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = load i32, i32* @JOB_WAITING, align 4
  %10 = call i32 @job_set_state(%struct.TYPE_9__* %8, i32 %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @JOB_NOP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi %struct.TYPE_9__** [ %20, %16 ], [ %25, %21 ]
  store %struct.TYPE_9__** %27, %struct.TYPE_9__*** %3, align 8
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = icmp eq %struct.TYPE_9__* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = call i32 @MANAGER_IS_RELOADING(%struct.TYPE_11__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = call i32 @bus_job_send_removed_signal(%struct.TYPE_9__* %40)
  br label %42

42:                                               ; preds = %39, %26
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = call i32 @unit_add_to_gc_queue(%struct.TYPE_10__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = call i32 @unit_add_to_dbus_queue(%struct.TYPE_10__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @UINT32_TO_PTR(i32 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = call i32 @hashmap_remove_value(i32 %56, i32 %60, %struct.TYPE_9__* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @job_set_state(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @MANAGER_IS_RELOADING(%struct.TYPE_11__*) #1

declare dso_local i32 @bus_job_send_removed_signal(%struct.TYPE_9__*) #1

declare dso_local i32 @unit_add_to_gc_queue(%struct.TYPE_10__*) #1

declare dso_local i32 @unit_add_to_dbus_queue(%struct.TYPE_10__*) #1

declare dso_local i32 @hashmap_remove_value(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @UINT32_TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
