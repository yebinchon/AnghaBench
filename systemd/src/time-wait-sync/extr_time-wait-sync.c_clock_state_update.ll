; ModuleID = '/home/carl/AnghaBench/systemd/src/time-wait-sync/extr_time-wait-sync.c_clock_state_update.c'
source_filename = "/home/carl/AnghaBench/systemd/src/time-wait-sync/extr_time-wait-sync.c_clock_state_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.timex = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FORMAT_TIMESTAMP_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"unrepresentable\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to create timerfd: %m\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to read adjtimex state: %m\00", align 1
@STA_NANO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"adjtime state %d status %x time %s\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"/run/systemd/timesync/synchronized\00", align 1
@F_OK = common dso_local global i32 0, align 4
@TIME_ERROR = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@timerfd_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to create time change monitor source: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @clock_state_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clock_state_update(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timex, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @FORMAT_TIMESTAMP_MAX, align 4
  %12 = sext i32 %11 to i64
  %13 = call i32 @STRLEN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @MAX(i64 %12, i32 %13)
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = bitcast %struct.timex* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call i32 @clock_state_release_timerfd(%struct.TYPE_6__* %19)
  %21 = call i32 (...) @time_change_fd()
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @log_error_errno(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %106

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = call i32 @adjtimex(%struct.timex* %7)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @log_error_errno(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %106

37:                                               ; preds = %27
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.timex, %struct.timex* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @STA_NANO, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.timex, %struct.timex* %7, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 1000
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %37
  %52 = getelementptr inbounds %struct.timex, %struct.timex* %7, i32 0, i32 1
  %53 = call i32 @timeval_load(%struct.TYPE_7__* %52)
  store i32 %53, i32* %9, align 4
  %54 = trunc i64 %15 to i32
  %55 = load i32, i32* %9, align 4
  %56 = call i8* @format_timestamp_us_utc(i8* %17, i32 %54, i32 %55)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %51
  %60 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %51
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.timex, %struct.timex* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @log_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %66, i8* %67)
  %69 = load i32, i32* @F_OK, align 4
  %70 = call i64 @access(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = icmp sge i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %105

80:                                               ; preds = %61
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TIME_ERROR, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load i32*, i32** %4, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @EPOLLIN, align 4
  %94 = load i32, i32* @timerfd_handler, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %96 = call i32 @sd_event_add_io(i32* %87, i32* %89, i32 %92, i32 %93, i32 %94, %struct.TYPE_6__* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @log_error_errno(i32 %100, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %106

102:                                              ; preds = %86
  store i32 1, i32* %10, align 4
  br label %104

103:                                              ; preds = %80
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %103, %102
  br label %105

105:                                              ; preds = %104, %79
  br label %106

106:                                              ; preds = %105, %99, %34, %24
  %107 = load i32, i32* %10, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @sd_event_exit(i32* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* %10, align 4
  %115 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %115)
  ret i32 %114
}

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i32 @STRLEN(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @clock_state_release_timerfd(%struct.TYPE_6__*) #1

declare dso_local i32 @time_change_fd(...) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @adjtimex(%struct.timex*) #1

declare dso_local i32 @timeval_load(%struct.TYPE_7__*) #1

declare dso_local i8* @format_timestamp_us_utc(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @log_info(i8*, i32, i32, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @sd_event_add_io(i32*, i32*, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @sd_event_exit(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
