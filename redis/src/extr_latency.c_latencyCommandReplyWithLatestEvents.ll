; ModuleID = '/home/carl/AnghaBench/redis/src/extr_latency.c_latencyCommandReplyWithLatestEvents.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_latency.c_latencyCommandReplyWithLatestEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.latencyTimeSeries = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@LATENCY_TS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @latencyCommandReplyWithLatestEvents(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.latencyTimeSeries*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 4
  %10 = call i32 @dictSize(i32 %9)
  %11 = call i32 @addReplyArrayLen(i32* %8, i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 4
  %13 = call i32* @dictGetIterator(i32 %12)
  store i32* %13, i32** %3, align 8
  br label %14

14:                                               ; preds = %18, %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @dictNext(i32* %15)
  store i32* %16, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i8* @dictGetKey(i32* %19)
  store i8* %20, i8** %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.latencyTimeSeries* @dictGetVal(i32* %21)
  store %struct.latencyTimeSeries* %22, %struct.latencyTimeSeries** %6, align 8
  %23 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %6, align 8
  %24 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LATENCY_TS_LEN, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* @LATENCY_TS_LEN, align 4
  %30 = srem i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @addReplyArrayLen(i32* %31, i32 4)
  %33 = load i32*, i32** %2, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @addReplyBulkCString(i32* %33, i8* %34)
  %36 = load i32*, i32** %2, align 8
  %37 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %6, align 8
  %38 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @addReplyLongLong(i32* %36, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %6, align 8
  %48 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @addReplyLongLong(i32* %46, i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %6, align 8
  %58 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @addReplyLongLong(i32* %56, i32 %59)
  br label %14

61:                                               ; preds = %14
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @dictReleaseIterator(i32* %62)
  ret void
}

declare dso_local i32 @addReplyArrayLen(i32*, i32) #1

declare dso_local i32 @dictSize(i32) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i8* @dictGetKey(i32*) #1

declare dso_local %struct.latencyTimeSeries* @dictGetVal(i32*) #1

declare dso_local i32 @addReplyBulkCString(i32*, i8*) #1

declare dso_local i32 @addReplyLongLong(i32*, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
