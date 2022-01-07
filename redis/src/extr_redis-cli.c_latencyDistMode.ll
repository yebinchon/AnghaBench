; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_latencyDistMode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_latencyDistMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.distsamples = type { i32, i8, i64, i32, i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LATENCY_DIST_DEFAULT_INTERVAL = common dso_local global i32 0, align 4
@__const.latencyDistMode.samples = private unnamed_addr constant [31 x %struct.distsamples] [%struct.distsamples { i32 10, i8 0, i64 46, i32 0, i32 0 }, %struct.distsamples { i32 125, i8 0, i64 45, i32 0, i32 0 }, %struct.distsamples { i32 250, i8 0, i64 42, i32 0, i32 0 }, %struct.distsamples { i32 500, i8 0, i64 35, i32 0, i32 0 }, %struct.distsamples { i32 1000, i8 0, i64 49, i32 0, i32 0 }, %struct.distsamples { i32 2000, i8 0, i64 50, i32 0, i32 0 }, %struct.distsamples { i32 3000, i8 0, i64 51, i32 0, i32 0 }, %struct.distsamples { i32 4000, i8 0, i64 52, i32 0, i32 0 }, %struct.distsamples { i32 5000, i8 0, i64 53, i32 0, i32 0 }, %struct.distsamples { i32 6000, i8 0, i64 54, i32 0, i32 0 }, %struct.distsamples { i32 7000, i8 0, i64 55, i32 0, i32 0 }, %struct.distsamples { i32 8000, i8 0, i64 56, i32 0, i32 0 }, %struct.distsamples { i32 9000, i8 0, i64 57, i32 0, i32 0 }, %struct.distsamples { i32 10000, i8 0, i64 65, i32 0, i32 0 }, %struct.distsamples { i32 20000, i8 0, i64 66, i32 0, i32 0 }, %struct.distsamples { i32 30000, i8 0, i64 67, i32 0, i32 0 }, %struct.distsamples { i32 40000, i8 0, i64 68, i32 0, i32 0 }, %struct.distsamples { i32 50000, i8 0, i64 69, i32 0, i32 0 }, %struct.distsamples { i32 100000, i8 0, i64 70, i32 0, i32 0 }, %struct.distsamples { i32 200000, i8 0, i64 71, i32 0, i32 0 }, %struct.distsamples { i32 300000, i8 0, i64 72, i32 0, i32 0 }, %struct.distsamples { i32 400000, i8 0, i64 73, i32 0, i32 0 }, %struct.distsamples { i32 500000, i8 0, i64 74, i32 0, i32 0 }, %struct.distsamples { i32 1000000, i8 0, i64 75, i32 0, i32 0 }, %struct.distsamples { i32 2000000, i8 0, i64 76, i32 0, i32 0 }, %struct.distsamples { i32 4000000, i8 0, i64 77, i32 0, i32 0 }, %struct.distsamples { i32 8000000, i8 0, i64 78, i32 0, i32 0 }, %struct.distsamples { i32 16000000, i8 0, i64 79, i32 0, i32 0 }, %struct.distsamples { i32 30000000, i8 0, i64 80, i32 0, i32 0 }, %struct.distsamples { i32 60000000, i8 0, i64 81, i32 0, i32 0 }, %struct.distsamples { i32 0, i8 0, i64 63, i32 0, i32 0 }], align 16
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\0AI/O error\0A\00", align 1
@LATENCY_SAMPLE_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @latencyDistMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @latencyDistMode() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [31 x %struct.distsamples], align 16
  store i64 0, i64* %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %14 = sdiv i32 %13, 1000
  br label %17

15:                                               ; preds = %0
  %16 = load i32, i32* @LATENCY_DIST_DEFAULT_INTERVAL, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ]
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = call i64 (...) @ustime()
  store i64 %20, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %21 = bitcast [31 x %struct.distsamples]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([31 x %struct.distsamples]* @__const.latencyDistMode.samples to i8*), i64 744, i1 false)
  %22 = load i32, i32* @context, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = call i32 @exit(i32 1) #4
  unreachable

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %93
  %28 = call i64 (...) @ustime()
  store i64 %28, i64* %2, align 8
  %29 = load i32, i32* @context, align 4
  %30 = call i32* @reconnectingRedisCommand(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %30, i32** %1, align 8
  %31 = load i32*, i32** %1, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @exit(i32 1) #4
  unreachable

37:                                               ; preds = %27
  %38 = call i64 (...) @ustime()
  %39 = load i64, i64* %2, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %3, align 8
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @freeReplyObject(i32* %41)
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %4, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %68, %37
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [31 x %struct.distsamples], [31 x %struct.distsamples]* %9, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.distsamples, %struct.distsamples* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [31 x %struct.distsamples], [31 x %struct.distsamples]* %9, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.distsamples, %struct.distsamples* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %53, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52, %45
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [31 x %struct.distsamples], [31 x %struct.distsamples]* %9, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.distsamples, %struct.distsamples* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %71

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %45

71:                                               ; preds = %60
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = call i64 (...) @ustime()
  %76 = load i64, i64* %6, align 8
  %77 = sub nsw i64 %75, %76
  %78 = sdiv i64 %77, 1000
  %79 = load i64, i64* %5, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = srem i32 %82, 20
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (...) @showLatencyDistLegend()
  br label %88

88:                                               ; preds = %86, %81
  %89 = getelementptr inbounds [31 x %struct.distsamples], [31 x %struct.distsamples]* %9, i64 0, i64 0
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @showLatencyDistSamples(%struct.distsamples* %89, i64 %90)
  %92 = call i64 (...) @ustime()
  store i64 %92, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %93

93:                                               ; preds = %88, %74, %71
  %94 = load i32, i32* @LATENCY_SAMPLE_RATE, align 4
  %95 = mul nsw i32 %94, 1000
  %96 = call i32 @usleep(i32 %95)
  br label %27
}

declare dso_local i64 @ustime(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @reconnectingRedisCommand(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @freeReplyObject(i32*) #1

declare dso_local i32 @showLatencyDistLegend(...) #1

declare dso_local i32 @showLatencyDistSamples(%struct.distsamples*, i64) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
