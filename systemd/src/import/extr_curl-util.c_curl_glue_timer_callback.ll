; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_curl-util.c_curl_glue_timer_callback.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_curl-util.c_curl_glue_timer_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@SD_EVENT_OFF = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@SD_EVENT_ONESHOT = common dso_local global i32 0, align 4
@curl_glue_on_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"curl-timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i8*)* @curl_glue_timer_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @curl_glue_timer_callback(%struct.TYPE_6__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = call i32 @assert(%struct.TYPE_6__* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %15 = call i32 @assert(%struct.TYPE_6__* %14)
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @SD_EVENT_OFF, align 4
  %28 = call i64 @sd_event_source_set_enabled(i64 %26, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %84

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %18
  store i32 0, i32* %4, align 4
  br label %84

33:                                               ; preds = %3
  %34 = call i32 (...) @clock_boottime_or_monotonic()
  %35 = call i32 @now(i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @USEC_PER_MSEC, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %35, %39
  %41 = load i32, i32* @USEC_PER_MSEC, align 4
  %42 = add nsw i32 %40, %41
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %33
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @sd_event_source_set_time(i64 %51, i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %84

56:                                               ; preds = %48
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @SD_EVENT_ONESHOT, align 4
  %61 = call i64 @sd_event_source_set_enabled(i64 %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %84

64:                                               ; preds = %56
  br label %83

65:                                               ; preds = %33
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 (...) @clock_boottime_or_monotonic()
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @curl_glue_on_timer, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %75 = call i64 @sd_event_add_time(i32 %68, i64* %70, i32 %71, i32 %72, i32 0, i32 %73, %struct.TYPE_6__* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %84

78:                                               ; preds = %65
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @sd_event_source_set_description(i64 %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %64
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %77, %63, %55, %32, %30
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i64 @sd_event_source_set_enabled(i64, i32) #1

declare dso_local i32 @now(i32) #1

declare dso_local i32 @clock_boottime_or_monotonic(...) #1

declare dso_local i64 @sd_event_source_set_time(i64, i32) #1

declare dso_local i64 @sd_event_add_time(i32, i64*, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @sd_event_source_set_description(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
