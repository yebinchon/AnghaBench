; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_watch_all_pids.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_unit_watch_all_pids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@SYSTEMD_CGROUP_CONTROLLER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_watch_all_pids(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_5__* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %16 = call i32 @cg_unified_controller(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %31

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @unit_watch_pids_in_path(%struct.TYPE_5__* %26, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %24, %19, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @cg_unified_controller(i32) #1

declare dso_local i32 @unit_watch_pids_in_path(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
