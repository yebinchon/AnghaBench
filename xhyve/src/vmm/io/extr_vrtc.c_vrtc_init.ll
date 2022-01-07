; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vrtc.c_vrtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vrtc = type { i32, i32, %struct.rtcdev, i32, i32, %struct.vm* }
%struct.rtcdev = type { i32, i32, i64, i32 }
%struct.vm = type { i32 }

@CALENDAR_CLOCK = common dso_local global i32 0, align 4
@mach_clock = common dso_local global i32 0, align 4
@RTCSB_24HR = common dso_local global i32 0, align 4
@RTCSD_PWR = common dso_local global i32 0, align 4
@RTC_STATUSD = common dso_local global i32 0, align 4
@VRTC_BROKEN_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vrtc* @vrtc_init(%struct.vm* %0) #0 {
  %2 = alloca %struct.vm*, align 8
  %3 = alloca %struct.vrtc*, align 8
  %4 = alloca %struct.rtcdev*, align 8
  %5 = alloca i64, align 8
  store %struct.vm* %0, %struct.vm** %2, align 8
  %6 = call %struct.vrtc* @malloc(i32 48)
  store %struct.vrtc* %6, %struct.vrtc** %3, align 8
  %7 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %8 = call i32 @assert(%struct.vrtc* %7)
  %9 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %10 = call i32 @bzero(%struct.vrtc* %9, i32 48)
  %11 = load %struct.vm*, %struct.vm** %2, align 8
  %12 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %13 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %12, i32 0, i32 5
  store %struct.vm* %11, %struct.vm** %13, align 8
  %14 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %15 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %14, i32 0, i32 4
  %16 = call i32 @pthread_mutex_init(i32* %15, i32* null)
  %17 = call i32 (...) @mach_host_self()
  %18 = load i32, i32* @CALENDAR_CLOCK, align 4
  %19 = call i32 @host_get_clock_service(i32 %17, i32 %18, i32* @mach_clock)
  %20 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %21 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %20, i32 0, i32 3
  %22 = call i32 @callout_init(i32* %21, i32 1)
  %23 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %24 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %23, i32 0, i32 2
  store %struct.rtcdev* %24, %struct.rtcdev** %4, align 8
  %25 = load %struct.rtcdev*, %struct.rtcdev** %4, align 8
  %26 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %25, i32 0, i32 0
  store i32 32, i32* %26, align 8
  %27 = load i32, i32* @RTCSB_24HR, align 4
  %28 = load %struct.rtcdev*, %struct.rtcdev** %4, align 8
  %29 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.rtcdev*, %struct.rtcdev** %4, align 8
  %31 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @RTCSD_PWR, align 4
  %33 = load %struct.rtcdev*, %struct.rtcdev** %4, align 8
  %34 = getelementptr inbounds %struct.rtcdev, %struct.rtcdev* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @RTC_STATUSD, align 4
  %36 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %37 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  store i64 0, i64* %5, align 8
  %38 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %39 = call i32 @VRTC_LOCK(%struct.vrtc* %38)
  %40 = load i32, i32* @VRTC_BROKEN_TIME, align 4
  %41 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %42 = getelementptr inbounds %struct.vrtc, %struct.vrtc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 (...) @sbinuptime()
  %46 = call i32 @vrtc_time_update(%struct.vrtc* %43, i64 %44, i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %49 = call i32 @secs_to_rtc(i64 %47, %struct.vrtc* %48, i32 0)
  %50 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  %51 = call i32 @VRTC_UNLOCK(%struct.vrtc* %50)
  %52 = load %struct.vrtc*, %struct.vrtc** %3, align 8
  ret %struct.vrtc* %52
}

declare dso_local %struct.vrtc* @malloc(i32) #1

declare dso_local i32 @assert(%struct.vrtc*) #1

declare dso_local i32 @bzero(%struct.vrtc*, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @host_get_clock_service(i32, i32, i32*) #1

declare dso_local i32 @mach_host_self(...) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @VRTC_LOCK(%struct.vrtc*) #1

declare dso_local i32 @vrtc_time_update(%struct.vrtc*, i64, i32) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @secs_to_rtc(i64, %struct.vrtc*, i32) #1

declare dso_local i32 @VRTC_UNLOCK(%struct.vrtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
