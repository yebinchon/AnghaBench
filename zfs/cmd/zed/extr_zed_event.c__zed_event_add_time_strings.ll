; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_add_time_strings.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_event.c__zed_event_add_time_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@ZEVENT_VAR_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"TIME_SECS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"TIME_NSECS\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to add %s%s for eid=%llu: %s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"TIME_STRING\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"localtime error\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%Y-%m-%d %H:%M:%S%z\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"strftime error\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64*)* @_zed_event_add_time_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_zed_event_add_time_strings(i32 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64*, i64** %6, align 8
  %14 = icmp ne i64* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ZEVENT_VAR_PREFIX, align 4
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i32, i32*, i32, i8*, i8*, ...) @_zed_event_add_var(i32 %17, i32* %18, i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @ZEVENT_VAR_PREFIX, align 4
  %27 = load i64*, i64** %6, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i32, i32*, i32, i8*, i8*, ...) @_zed_event_add_var(i32 %24, i32* %25, i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64*, i64** %6, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = bitcast i64* %32 to i32*
  %34 = call %struct.tm* @localtime(i32* %33)
  store %struct.tm* %34, %struct.tm** %7, align 8
  %35 = icmp ne %struct.tm* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @LOG_WARNING, align 4
  %38 = load i32, i32* @ZEVENT_VAR_PREFIX, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @zed_log_msg(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %58

41:                                               ; preds = %3
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %43 = load %struct.tm*, %struct.tm** %7, align 8
  %44 = call i32 @strftime(i8* %42, i32 32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), %struct.tm* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @LOG_WARNING, align 4
  %48 = load i32, i32* @ZEVENT_VAR_PREFIX, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @zed_log_msg(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %57

51:                                               ; preds = %41
  %52 = load i32, i32* %4, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @ZEVENT_VAR_PREFIX, align 4
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %56 = call i32 (i32, i32*, i32, i8*, i8*, ...) @_zed_event_add_var(i32 %52, i32* %53, i32 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %51, %46
  br label %58

58:                                               ; preds = %57, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_zed_event_add_var(i32, i32*, i32, i8*, i8*, ...) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @zed_log_msg(i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
