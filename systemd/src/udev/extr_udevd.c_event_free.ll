; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_event_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_event_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"/run/udev/queue\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to unlink /run/udev/queue: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event*)* @event_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_free(%struct.event* %0) #0 {
  %2 = alloca %struct.event*, align 8
  store %struct.event* %0, %struct.event** %2, align 8
  %3 = load %struct.event*, %struct.event** %2, align 8
  %4 = icmp ne %struct.event* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %70

6:                                                ; preds = %1
  %7 = load %struct.event*, %struct.event** %2, align 8
  %8 = getelementptr inbounds %struct.event, %struct.event* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = call i32 @assert(%struct.TYPE_4__* %9)
  %11 = load %struct.event*, %struct.event** %2, align 8
  %12 = load %struct.event*, %struct.event** %2, align 8
  %13 = getelementptr inbounds %struct.event, %struct.event* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.event*, %struct.event** %2, align 8
  %18 = call i32 @LIST_REMOVE(%struct.event* %11, i32 %16, %struct.event* %17)
  %19 = load %struct.event*, %struct.event** %2, align 8
  %20 = getelementptr inbounds %struct.event, %struct.event* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sd_device_unref(i32 %21)
  %23 = load %struct.event*, %struct.event** %2, align 8
  %24 = getelementptr inbounds %struct.event, %struct.event* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sd_device_unref(i32 %25)
  %27 = load %struct.event*, %struct.event** %2, align 8
  %28 = getelementptr inbounds %struct.event, %struct.event* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sd_event_source_unref(i32 %29)
  %31 = load %struct.event*, %struct.event** %2, align 8
  %32 = getelementptr inbounds %struct.event, %struct.event* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sd_event_source_unref(i32 %33)
  %35 = load %struct.event*, %struct.event** %2, align 8
  %36 = getelementptr inbounds %struct.event, %struct.event* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %6
  %40 = load %struct.event*, %struct.event** %2, align 8
  %41 = getelementptr inbounds %struct.event, %struct.event* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %39, %6
  %45 = load %struct.event*, %struct.event** %2, align 8
  %46 = getelementptr inbounds %struct.event, %struct.event* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @LIST_IS_EMPTY(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = load %struct.event*, %struct.event** %2, align 8
  %54 = getelementptr inbounds %struct.event, %struct.event* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 (...) @getpid_cached()
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = call i64 @unlink(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @errno, align 4
  %65 = call i32 @log_warning_errno(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %52, %44
  %68 = load %struct.event*, %struct.event** %2, align 8
  %69 = call i32 @free(%struct.event* %68)
  br label %70

70:                                               ; preds = %67, %5
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @LIST_REMOVE(%struct.event*, i32, %struct.event*) #1

declare dso_local i32 @sd_device_unref(i32) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i64 @LIST_IS_EMPTY(i32) #1

declare dso_local i64 @getpid_cached(...) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @free(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
