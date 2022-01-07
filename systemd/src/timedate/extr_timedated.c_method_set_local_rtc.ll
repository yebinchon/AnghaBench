; ModuleID = '/home/carl/AnghaBench/systemd/src/timedate/extr_timedated.c_method_set_local_rtc.c'
source_filename = "/home/carl/AnghaBench/systemd/src/timedate/extr_timedated.c_method_set_local_rtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.timespec = type { i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"bbb\00", align 1
@CAP_SYS_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"org.freedesktop.timedate1.set-local-rtc\00", align 1
@UID_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to set RTC to %s: %m\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Failed to tell kernel about timezone, ignoring: %m\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Failed to get hardware clock, ignoring: %m\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Failed to update system clock, ignoring: %m\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Failed to sync time to hardware clock, ignoring: %m\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"RTC configured to %s time.\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"/org/freedesktop/timedate1\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"org.freedesktop.timedate1\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"LocalRTC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32*)* @method_set_local_rtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @method_set_local_rtc(%struct.TYPE_10__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.timespec, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tm, align 4
  %15 = alloca %struct.tm, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %11, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = call i32 @assert(%struct.TYPE_10__* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %21 = call i32 @assert(%struct.TYPE_10__* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = call i32 @sd_bus_message_read(%struct.TYPE_10__* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9, i32* %10)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %4, align 4
  br label %161

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = call i32 @sd_bus_reply_method_return(%struct.TYPE_10__* %35, i32* null)
  store i32 %36, i32* %4, align 4
  br label %161

37:                                               ; preds = %28
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = load i32, i32* @CAP_SYS_TIME, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @UID_INVALID, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @bus_verify_polkit_async(%struct.TYPE_10__* %38, i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %40, i32 %41, i32* %43, i32* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %4, align 4
  br label %161

50:                                               ; preds = %37
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %161

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = call i32 @context_write_data_local_rtc(%struct.TYPE_10__* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %54
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %68 = call i32 @log_error_errno(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %75 = call i32 @sd_bus_error_set_errnof(i32* %69, i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  store i32 %75, i32* %4, align 4
  br label %161

76:                                               ; preds = %54
  %77 = call i32 @clock_set_timezone(i32* null)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @log_debug_errno(i32 %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* @CLOCK_REALTIME, align 4
  %85 = call i64 @clock_gettime(i32 %84, %struct.timespec* %12)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert_se(i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %129

91:                                               ; preds = %83
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %98 = call i32 @localtime_r(i32* %97, %struct.tm* %14)
  br label %102

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %101 = call i32 @gmtime_r(i32* %100, %struct.tm* %14)
  br label %102

102:                                              ; preds = %99, %96
  %103 = call i32 @clock_get_hwclock(%struct.tm* %14)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @log_debug_errno(i32 %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %128

109:                                              ; preds = %102
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = call i32 @mktime(%struct.tm* %14)
  %116 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  br label %120

117:                                              ; preds = %109
  %118 = call i32 @timegm(%struct.tm* %14)
  %119 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* @CLOCK_REALTIME, align 4
  %122 = call i64 @clock_settime(i32 %121, %struct.timespec* %12)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* @errno, align 4
  %126 = call i32 @log_debug_errno(i32 %125, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %120
  br label %128

128:                                              ; preds = %127, %106
  br label %148

129:                                              ; preds = %83
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %136 = call i32 @localtime_r(i32* %135, %struct.tm* %15)
  br label %140

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %139 = call i32 @gmtime_r(i32* %138, %struct.tm* %15)
  br label %140

140:                                              ; preds = %137, %134
  %141 = call i32 @clock_set_hwclock(%struct.tm* %15)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @log_debug_errno(i32 %145, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %140
  br label %148

148:                                              ; preds = %147, %128
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %155 = call i32 @log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %154)
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = call i32 @sd_bus_message_get_bus(%struct.TYPE_10__* %156)
  %158 = call i32 @sd_bus_emit_properties_changed(i32 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32* null)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %160 = call i32 @sd_bus_reply_method_return(%struct.TYPE_10__* %159, i32* null)
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %148, %62, %53, %48, %34, %26
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i32 @sd_bus_message_read(%struct.TYPE_10__*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @sd_bus_reply_method_return(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @bus_verify_polkit_async(%struct.TYPE_10__*, i32, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @context_write_data_local_rtc(%struct.TYPE_10__*) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @sd_bus_error_set_errnof(i32*, i32, i8*, i8*) #1

declare dso_local i32 @clock_set_timezone(i32*) #1

declare dso_local i32 @log_debug_errno(i32, i8*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @clock_get_hwclock(%struct.tm*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @timegm(%struct.tm*) #1

declare dso_local i64 @clock_settime(i32, %struct.timespec*) #1

declare dso_local i32 @clock_set_hwclock(%struct.tm*) #1

declare dso_local i32 @log_info(i8*, i8*) #1

declare dso_local i32 @sd_bus_emit_properties_changed(i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @sd_bus_message_get_bus(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
