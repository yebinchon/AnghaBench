; ModuleID = '/home/carl/AnghaBench/redis/src/extr_latency.c_latencyAddSample.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_latency.c_latencyAddSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.latencyTimeSeries = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@server = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@LATENCY_TS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @latencyAddSample(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.latencyTimeSeries*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.latencyTimeSeries* @dictFetchValue(i32 %8, i8* %9)
  store %struct.latencyTimeSeries* %10, %struct.latencyTimeSeries** %5, align 8
  %11 = call i64 @time(i32* null)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %13 = icmp eq %struct.latencyTimeSeries* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = call %struct.latencyTimeSeries* @zmalloc(i32 24)
  store %struct.latencyTimeSeries* %15, %struct.latencyTimeSeries** %5, align 8
  %16 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %17 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %19 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %21 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @memset(%struct.TYPE_4__* %22, i32 0, i32 8)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @zstrdup(i8* %25)
  %27 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %28 = call i32 @dictAdd(i32 %24, i32 %26, %struct.latencyTimeSeries* %27)
  br label %29

29:                                               ; preds = %14, %2
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %32 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %38 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %41 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @LATENCY_TS_LEN, align 4
  %44 = add nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @LATENCY_TS_LEN, align 4
  %47 = srem i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %49 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %39
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %61 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %59, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %58
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %72 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i64 %70, i64* %77, align 8
  br label %78

78:                                               ; preds = %69, %58
  br label %112

79:                                               ; preds = %39
  %80 = call i64 @time(i32* null)
  %81 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %82 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %85 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i64 %80, i64* %89, align 8
  %90 = load i64, i64* %4, align 8
  %91 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %92 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %95 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i64 %90, i64* %99, align 8
  %100 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %101 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %105 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @LATENCY_TS_LEN, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %79
  %110 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %111 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %78, %109, %79
  ret void
}

declare dso_local %struct.latencyTimeSeries* @dictFetchValue(i32, i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.latencyTimeSeries* @zmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dictAdd(i32, i32, %struct.latencyTimeSeries*) #1

declare dso_local i32 @zstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
