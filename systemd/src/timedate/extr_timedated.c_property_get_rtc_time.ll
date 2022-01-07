; ModuleID = '/home/carl/AnghaBench/systemd/src/timedate/extr_timedated.c_property_get_rtc_time.c'
source_filename = "/home/carl/AnghaBench/systemd/src/timedate/extr_timedated.c_property_get_rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [119 x i8] c"/dev/rtc is busy. Is somebody keeping it open continuously? That's not a good idea... Returning a bogus RTC timestamp.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"/dev/rtc not found.\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to read RTC: %m\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32*, i8*, i32*)* @property_get_rtc_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_get_rtc_time(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.tm, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = bitcast %struct.tm* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  store i32 0, i32* %17, align 4
  %20 = call i32 @clock_get_hwclock(%struct.tm* %16)
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %18, align 4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = call i32 @log_warning(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str, i64 0, i64 0))
  br label %48

27:                                               ; preds = %7
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %47

34:                                               ; preds = %27
  %35 = load i32, i32* %18, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %18, align 4
  %40 = call i32 @sd_bus_error_set_errnof(i32* %38, i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %40, i32* %8, align 4
  br label %52

41:                                               ; preds = %34
  %42 = call i64 @timegm(%struct.tm* %16)
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @USEC_PER_SEC, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @sd_bus_message_append(i32* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %37
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @clock_get_hwclock(%struct.tm*) #2

declare dso_local i32 @log_warning(i8*) #2

declare dso_local i32 @log_debug(i8*) #2

declare dso_local i32 @sd_bus_error_set_errnof(i32*, i32, i8*) #2

declare dso_local i64 @timegm(%struct.tm*) #2

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
