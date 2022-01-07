; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_automount.c_automount_start_expire.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_automount.c_automount_start_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@automount_dispatch_expire = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"automount-expire\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @automount_start_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @automount_start_expire(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = call i32 @assert(%struct.TYPE_9__* %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %15 = call i64 @now(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 3
  %20 = load i32, i32* @USEC_PER_SEC, align 4
  %21 = call i64 @MAX(i32 %19, i32 %20)
  %22 = add nsw i64 %15, %21
  store i64 %22, i64* %5, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %13
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @sd_event_source_set_time(i64 %30, i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %66

37:                                               ; preds = %27
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %42 = call i32 @sd_event_source_set_enabled(i64 %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %66

43:                                               ; preds = %13
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = call %struct.TYPE_10__* @UNIT(%struct.TYPE_9__* %44)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* @automount_dispatch_expire, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = call i32 @sd_event_add_time(i32 %49, i64* %51, i32 %52, i64 %53, i32 0, i32 %54, %struct.TYPE_9__* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %43
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %43
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @sd_event_source_set_description(i64 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %59, %37, %35, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i64 @now(i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @sd_event_source_set_time(i64, i64) #1

declare dso_local i32 @sd_event_source_set_enabled(i64, i32) #1

declare dso_local i32 @sd_event_add_time(i32, i64*, i32, i64, i32, i32, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @UNIT(%struct.TYPE_9__*) #1

declare dso_local i32 @sd_event_source_set_description(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
