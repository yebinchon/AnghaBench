; ModuleID = '/home/carl/AnghaBench/redis/src/extr_latency.c_latencyCommandGenSparkeline.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_latency.c_latencyCommandGenSparkeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.latencyTimeSeries = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sequence = type { i64 }

@LATENCY_TS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ds\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%dh\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%dd\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"%s - high %lu ms, low %lu ms (all time high %lu ms)\0A\00", align 1
@LATENCY_GRAPH_COLS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SPARKLINE_FILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @latencyCommandGenSparkeline(i8* %0, %struct.latencyTimeSeries* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.latencyTimeSeries*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sequence*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store %struct.latencyTimeSeries* %1, %struct.latencyTimeSeries** %4, align 8
  %13 = call %struct.sequence* (...) @createSparklineSequence()
  store %struct.sequence* %13, %struct.sequence** %6, align 8
  %14 = call i32 (...) @sdsempty()
  store i32 %14, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %146, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @LATENCY_TS_LEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %149

19:                                               ; preds = %15
  %20 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %21 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @LATENCY_TS_LEN, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %28 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  br label %146

37:                                               ; preds = %19
  %38 = load %struct.sequence*, %struct.sequence** %6, align 8
  %39 = getelementptr inbounds %struct.sequence, %struct.sequence* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %44 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  store i64 %50, i64* %8, align 8
  br label %92

51:                                               ; preds = %37
  %52 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %53 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %51
  %63 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %64 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %62, %51
  %72 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %73 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %71
  %83 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %84 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %8, align 8
  br label %91

91:                                               ; preds = %82, %71
  br label %92

92:                                               ; preds = %91, %42
  %93 = call i32 @time(i32* null)
  %94 = sext i32 %93 to i64
  %95 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %96 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %94, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %105, 60
  br i1 %106, label %107, label %111

107:                                              ; preds = %92
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @snprintf(i8* %108, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %134

111:                                              ; preds = %92
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %112, 3600
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %116 = load i32, i32* %11, align 4
  %117 = sdiv i32 %116, 60
  %118 = call i32 @snprintf(i8* %115, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %133

119:                                              ; preds = %111
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %120, 86400
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %124 = load i32, i32* %11, align 4
  %125 = sdiv i32 %124, 3600
  %126 = call i32 @snprintf(i8* %123, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  br label %132

127:                                              ; preds = %119
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %129 = load i32, i32* %11, align 4
  %130 = sdiv i32 %129, 86400
  %131 = call i32 @snprintf(i8* %128, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %127, %122
  br label %133

133:                                              ; preds = %132, %114
  br label %134

134:                                              ; preds = %133, %107
  %135 = load %struct.sequence*, %struct.sequence** %6, align 8
  %136 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %137 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %136, i32 0, i32 2
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %145 = call i32 @sparklineSequenceAddSample(%struct.sequence* %135, i64 %143, i8* %144)
  br label %146

146:                                              ; preds = %134, %36
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %15

149:                                              ; preds = %15
  %150 = load i32, i32* %7, align 4
  %151 = load i8*, i8** %3, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %8, align 8
  %154 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %155 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @sdscatprintf(i32 %150, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %151, i64 %152, i64 %153, i64 %156)
  store i32 %157, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %165, %149
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @LATENCY_GRAPH_COLS, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @sdscatlen(i32 %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %158

168:                                              ; preds = %158
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @sdscatlen(i32 %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.sequence*, %struct.sequence** %6, align 8
  %173 = load i32, i32* @LATENCY_GRAPH_COLS, align 4
  %174 = load i32, i32* @SPARKLINE_FILL, align 4
  %175 = call i32 @sparklineRender(i32 %171, %struct.sequence* %172, i32 %173, i32 4, i32 %174)
  store i32 %175, i32* %7, align 4
  %176 = load %struct.sequence*, %struct.sequence** %6, align 8
  %177 = call i32 @freeSparklineSequence(%struct.sequence* %176)
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local %struct.sequence* @createSparklineSequence(...) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sparklineSequenceAddSample(%struct.sequence*, i64, i8*) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @sparklineRender(i32, %struct.sequence*, i32, i32, i32) #1

declare dso_local i32 @freeSparklineSequence(%struct.sequence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
