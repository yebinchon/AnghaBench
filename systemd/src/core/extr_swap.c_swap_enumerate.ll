; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_swap.c_swap_enumerate.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_swap.c_swap_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"/proc/swaps\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Not swap enabled, skipping enumeration.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to open /proc/swaps, ignoring: %m\00", align 1
@EPOLLPRI = common dso_local global i32 0, align 4
@swap_dispatch_io = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to watch /proc/swaps: %m\00", align 1
@SD_EVENT_PRIORITY_NORMAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to change /proc/swaps priority: %m\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"swap-proc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @swap_enumerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_enumerate(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_7__* %4)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %65, label %10

10:                                               ; preds = %1
  %11 = call i64 @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %10
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENOENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* @errno, align 8
  %24 = call i32 @log_debug_errno(i64 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %28

25:                                               ; preds = %18
  %26 = load i64, i64* @errno, align 8
  %27 = call i32 @log_warning_errno(i64 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22
  br label %75

29:                                               ; preds = %10
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @fileno(i64 %37)
  %39 = load i32, i32* @EPOLLPRI, align 4
  %40 = load i32, i32* @swap_dispatch_io, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = call i32 @sd_event_add_io(i32 %32, i32* %34, i32 %38, i32 %39, i32 %40, %struct.TYPE_7__* %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @log_error_errno(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %72

48:                                               ; preds = %29
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @SD_EVENT_PRIORITY_NORMAL, align 8
  %53 = sub nsw i64 %52, 10
  %54 = call i32 @sd_event_source_set_priority(i32 %51, i64 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @log_error_errno(i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %72

60:                                               ; preds = %48
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sd_event_source_set_description(i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = call i32 @swap_load_proc_swaps(%struct.TYPE_7__* %66, i32 0)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %72

71:                                               ; preds = %65
  br label %75

72:                                               ; preds = %70, %57, %45
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = call i32 @swap_shutdown(%struct.TYPE_7__* %73)
  br label %75

75:                                               ; preds = %72, %71, %28
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @log_debug_errno(i64, i8*) #1

declare dso_local i32 @log_warning_errno(i64, i8*) #1

declare dso_local i32 @sd_event_add_io(i32, i32*, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @fileno(i64) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @sd_event_source_set_priority(i32, i64) #1

declare dso_local i32 @sd_event_source_set_description(i32, i8*) #1

declare dso_local i32 @swap_load_proc_swaps(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @swap_shutdown(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
