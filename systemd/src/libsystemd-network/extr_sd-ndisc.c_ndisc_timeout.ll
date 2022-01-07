; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-ndisc.c_ndisc_timeout.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-ndisc.c_ndisc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__* }

@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@NDISC_ROUTER_SOLICITATION_INTERVAL = common dso_local global i32 0, align 4
@NDISC_MAX_ROUTER_SOLICITATION_INTERVAL = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ndisc-timeout-no-ra\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Error sending Router Solicitation: %m\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Sent Router Solicitation, next solicitation in %s\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i8*)* @ndisc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndisc_timeout(%struct.TYPE_10__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = call i32 @assert(%struct.TYPE_10__* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = call i32 @assert(%struct.TYPE_10__* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = call i32 @assert(%struct.TYPE_10__* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = call i32 (...) @clock_boottime_or_monotonic()
  %32 = call i64 @sd_event_now(%struct.TYPE_10__* %30, i32 %31, i64* %11)
  %33 = icmp sge i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert_se(i32 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* @NDISC_ROUTER_SOLICITATION_INTERVAL, align 4
  %42 = call i8* @ndisc_timeout_compute_random(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %71

46:                                               ; preds = %3
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NDISC_MAX_ROUTER_SOLICITATION_INTERVAL, align 4
  %51 = sdiv i32 %50, 2
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @NDISC_MAX_ROUTER_SOLICITATION_INTERVAL, align 4
  %55 = call i8* @ndisc_timeout_compute_random(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %70

59:                                               ; preds = %46
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @ndisc_timeout_compute_random(i32 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr i8, i8* %63, i64 %67
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %65, align 8
  br label %70

70:                                               ; preds = %59, %53
  br label %71

71:                                               ; preds = %70, %40
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = call i32 (...) @clock_boottime_or_monotonic()
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %78, %82
  %84 = load i32, i32* @USEC_PER_MSEC, align 4
  %85 = mul nsw i32 10, %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @event_reset_time(%struct.TYPE_10__* %74, i32* %76, i32 %77, i64 %83, i32 %85, i32 (%struct.TYPE_10__*, i32, i8*)* @ndisc_timeout, %struct.TYPE_10__* %86, i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %71
  br label %114

94:                                               ; preds = %71
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = call i32 @icmp6_send_router_solicitation(i32 %97, i32* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @log_ndisc_errno(i32 %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %114

106:                                              ; preds = %94
  %107 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @USEC_PER_SEC, align 4
  %112 = call i32 @format_timespan(i8* %17, i32 %107, i32 %110, i32 %111)
  %113 = call i32 @log_ndisc(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %117

114:                                              ; preds = %103, %93
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %116 = call i32 @sd_ndisc_stop(%struct.TYPE_10__* %115)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %117

117:                                              ; preds = %114, %106
  %118 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(%struct.TYPE_10__*) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @sd_event_now(%struct.TYPE_10__*, i32, i64*) #2

declare dso_local i32 @clock_boottime_or_monotonic(...) #2

declare dso_local i8* @ndisc_timeout_compute_random(i32) #2

declare dso_local i32 @event_reset_time(%struct.TYPE_10__*, i32*, i32, i64, i32, i32 (%struct.TYPE_10__*, i32, i8*)*, %struct.TYPE_10__*, i32, i8*, i32) #2

declare dso_local i32 @icmp6_send_router_solicitation(i32, i32*) #2

declare dso_local i32 @log_ndisc_errno(i32, i8*) #2

declare dso_local i32 @log_ndisc(i8*, i32) #2

declare dso_local i32 @format_timespan(i8*, i32, i32, i32) #2

declare dso_local i32 @sd_ndisc_stop(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
