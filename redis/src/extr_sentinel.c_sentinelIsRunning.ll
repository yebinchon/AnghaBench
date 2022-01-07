; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelIsRunning.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelIsRunning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i64* }

@server = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Sentinel started without a config file. Exiting...\00", align 1
@W_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Sentinel config file %s is not writable: %s. Exiting...\00", align 1
@errno = common dso_local global i32 0, align 4
@CONFIG_RUN_ID_SIZE = common dso_local global i32 0, align 4
@sentinel = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Sentinel ID is %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelIsRunning() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @LL_WARNING, align 4
  %6 = call i32 (i32, i8*, ...) @serverLog(i32 %5, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @exit(i32 1) #3
  unreachable

8:                                                ; preds = %0
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %10 = load i32, i32* @W_OK, align 4
  %11 = call i32 @access(i32* %9, i32 %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load i32, i32* @LL_WARNING, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 (i32, i8*, ...) @serverLog(i32 %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32* %15, i32 %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @CONFIG_RUN_ID_SIZE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sentinel, i32 0, i32 0), align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %38

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %22

38:                                               ; preds = %33, %22
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @CONFIG_RUN_ID_SIZE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sentinel, i32 0, i32 0), align 8
  %44 = load i32, i32* @CONFIG_RUN_ID_SIZE, align 4
  %45 = call i32 @getRandomHexChars(i64* %43, i32 %44)
  %46 = call i32 (...) @sentinelFlushConfig()
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* @LL_WARNING, align 4
  %49 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sentinel, i32 0, i32 0), align 8
  %50 = call i32 (i32, i8*, ...) @serverLog(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64* %49)
  %51 = call i32 (...) @sentinelGenerateInitialMonitorEvents()
  ret void
}

declare dso_local i32 @serverLog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @access(i32*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @getRandomHexChars(i64*, i32) #1

declare dso_local i32 @sentinelFlushConfig(...) #1

declare dso_local i32 @sentinelGenerateInitialMonitorEvents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
