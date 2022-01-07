; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_cgroup_cpu_adjust_period_and_log.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_cgroup.c_cgroup_cpu_adjust_period_and_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@USEC_INFINITY = common dso_local global i64 0, align 8
@CGROUP_CPU_QUOTA_DEFAULT_PERIOD_USEC = common dso_local global i64 0, align 8
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Clamping CPU interval for cpu.max: period is now %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i64)* @cgroup_cpu_adjust_period_and_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cgroup_cpu_adjust_period_and_log(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @USEC_INFINITY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @CGROUP_CPU_QUOTA_DEFAULT_PERIOD_USEC, align 8
  store i64 %15, i64* %4, align 8
  br label %56

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @USEC_INFINITY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @CGROUP_CPU_QUOTA_DEFAULT_PERIOD_USEC, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @USEC_PER_MSEC, align 4
  %26 = load i32, i32* @USEC_PER_SEC, align 4
  %27 = call i64 @cgroup_cpu_adjust_period(i64 %23, i64 %24, i32 %25, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %22
  %32 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %9, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %10, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @LOG_DEBUG, align 4
  br label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @LOG_WARNING, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = trunc i64 %33 to i32
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @format_timespan(i8* %35, i32 %47, i64 %48, i32 1)
  %50 = call i32 @log_unit_full(%struct.TYPE_4__* %36, i32 %46, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %53)
  br label %54

54:                                               ; preds = %45, %22
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %54, %14
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i64 @cgroup_cpu_adjust_period(i64, i64, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @log_unit_full(%struct.TYPE_4__*, i32, i32, i8*, i32) #1

declare dso_local i32 @format_timespan(i8*, i32, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
