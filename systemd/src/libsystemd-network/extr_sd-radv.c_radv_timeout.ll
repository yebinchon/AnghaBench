; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-radv.c_radv_timeout.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-radv.c_radv_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, %struct.TYPE_11__* }

@SD_RADV_DEFAULT_MIN_TIMEOUT_USEC = common dso_local global i32 0, align 4
@SD_RADV_DEFAULT_MAX_TIMEOUT_USEC = common dso_local global i32 0, align 4
@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to send Router Advertisement: %m\00", align 1
@SD_RADV_MAX_INITIAL_RTR_ADVERTISEMENTS = common dso_local global i64 0, align 8
@SD_RADV_MAX_INITIAL_RTR_ADVERT_INTERVAL_USEC = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Next Router Advertisement in %s\00", align 1
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"radv-timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i8*)* @radv_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radv_timeout(%struct.TYPE_11__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %9, align 8
  %19 = load i32, i32* @SD_RADV_DEFAULT_MIN_TIMEOUT_USEC, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @SD_RADV_DEFAULT_MAX_TIMEOUT_USEC, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = call i32 @assert(%struct.TYPE_11__* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = call i32 @assert(%struct.TYPE_11__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = call i32 @assert(%struct.TYPE_11__* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = call i32 (...) @clock_boottime_or_monotonic()
  %37 = call i32 @sd_event_now(%struct.TYPE_11__* %35, i32 %36, i32* %12)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  br label %115

41:                                               ; preds = %3
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @radv_send(%struct.TYPE_11__* %42, i32* null, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @log_radv_errno(i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SD_RADV_MAX_INITIAL_RTR_ADVERTISEMENTS, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @SD_RADV_MAX_INITIAL_RTR_ADVERT_INTERVAL_USEC, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @SD_RADV_MAX_INITIAL_RTR_ADVERT_INTERVAL_USEC, align 4
  %61 = sdiv i32 %60, 3
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @USEC_PER_SEC, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %67
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @USEC_PER_SEC, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sdiv i32 %81, 3
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %75, %67, %62
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @radv_compute_timeout(i32 %84, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @USEC_PER_SEC, align 4
  %90 = call i32 @format_timespan(i8* %24, i32 %87, i32 %88, i32 %89)
  %91 = call i32 @log_radv(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = call i32 (...) @clock_boottime_or_monotonic()
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* @MSEC_PER_SEC, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @event_reset_time(%struct.TYPE_11__* %94, i32* %96, i32 %97, i32 %100, i32 %101, i32 (%struct.TYPE_11__*, i32, i8*)* @radv_timeout, %struct.TYPE_11__* %102, i32 %105, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %83
  br label %115

110:                                              ; preds = %83
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %118

115:                                              ; preds = %109, %40
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %117 = call i32 @sd_radv_stop(%struct.TYPE_11__* %116)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(%struct.TYPE_11__*) #2

declare dso_local i32 @sd_event_now(%struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @clock_boottime_or_monotonic(...) #2

declare dso_local i32 @radv_send(%struct.TYPE_11__*, i32*, i32) #2

declare dso_local i32 @log_radv_errno(i32, i8*) #2

declare dso_local i32 @radv_compute_timeout(i32, i32) #2

declare dso_local i32 @log_radv(i8*, i32) #2

declare dso_local i32 @format_timespan(i8*, i32, i32, i32) #2

declare dso_local i32 @event_reset_time(%struct.TYPE_11__*, i32*, i32, i32, i32, i32 (%struct.TYPE_11__*, i32, i8*)*, %struct.TYPE_11__*, i32, i8*, i32) #2

declare dso_local i32 @sd_radv_stop(%struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
