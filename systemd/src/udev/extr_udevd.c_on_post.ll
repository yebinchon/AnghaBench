; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_on_post.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_on_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i32, i32, i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@on_kill_workers_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"kill-workers-event\00", align 1
@SYSTEMD_CGROUP_CONTROLLER = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@CGROUP_IGNORE_SELF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @on_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_post(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = call i32 @assert(%struct.TYPE_4__* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @LIST_IS_EMPTY(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hashmap_isempty(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %30 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %31 = call i64 @now(i32 %30)
  %32 = load i32, i32* @USEC_PER_SEC, align 4
  %33 = mul nsw i32 3, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = load i32, i32* @USEC_PER_SEC, align 4
  %37 = load i32, i32* @on_kill_workers_event, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = call i32 @event_reset_time(i32 %26, i32* %28, i32 %29, i64 %35, i32 %36, i32 %37, %struct.TYPE_4__* %38, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 1, i32* %3, align 4
  br label %64

40:                                               ; preds = %17
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sd_event_exit(i32 %48, i32 0)
  store i32 %49, i32* %3, align 4
  br label %64

50:                                               ; preds = %40
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* @SYSTEMD_CGROUP_CONTROLLER, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @SIGKILL, align 4
  %61 = load i32, i32* @CGROUP_IGNORE_SELF, align 4
  %62 = call i32 @cg_kill(i32 %56, i64 %59, i32 %60, i32 %61, i32* null, i32* null, i32* null)
  br label %63

63:                                               ; preds = %55, %50
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %45, %23, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @LIST_IS_EMPTY(i32) #1

declare dso_local i32 @hashmap_isempty(i32) #1

declare dso_local i32 @event_reset_time(i32, i32*, i32, i64, i32, i32, %struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i64 @now(i32) #1

declare dso_local i32 @sd_event_exit(i32, i32) #1

declare dso_local i32 @cg_kill(i32, i64, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
