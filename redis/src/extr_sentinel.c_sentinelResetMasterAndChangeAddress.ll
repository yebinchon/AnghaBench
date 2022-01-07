; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelResetMasterAndChangeAddress.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelResetMasterAndChangeAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i64, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i8*, i32 }

@C_ERR = common dso_local global i32 0, align 4
@SENTINEL_RESET_NO_SENTINELS = common dso_local global i32 0, align 4
@SRI_SLAVE = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"+slave\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%@\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sentinelResetMasterAndChangeAddress(%struct.TYPE_16__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_17__** null, %struct.TYPE_17__*** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.TYPE_17__* @createSentinelAddr(i8* %17, i32 %18)
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %9, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %21 = icmp eq %struct.TYPE_17__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @C_ERR, align 4
  store i32 %23, i32* %4, align 4
  br label %162

24:                                               ; preds = %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @dictGetIterator(i32 %27)
  store i32* %28, i32** %13, align 8
  br label %29

29:                                               ; preds = %43, %42, %24
  %30 = load i32*, i32** %13, align 8
  %31 = call i32* @dictNext(i32* %30)
  store i32* %31, i32** %14, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  %34 = load i32*, i32** %14, align 8
  %35 = call %struct.TYPE_16__* @dictGetVal(i32* %34)
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %15, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = call i64 @sentinelAddrIsEqual(%struct.TYPE_17__* %38, %struct.TYPE_17__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %29

43:                                               ; preds = %33
  %44 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 8, %47
  %49 = trunc i64 %48 to i32
  %50 = call %struct.TYPE_17__** @zrealloc(%struct.TYPE_17__** %44, i32 %49)
  store %struct.TYPE_17__** %50, %struct.TYPE_17__*** %10, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_17__* @createSentinelAddr(i8* %55, i32 %60)
  %62 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %62, i64 %65
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %66, align 8
  br label %29

67:                                               ; preds = %29
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @dictReleaseIterator(i32* %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = call i64 @sentinelAddrIsEqual(%struct.TYPE_17__* %70, %struct.TYPE_17__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %67
  %77 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = mul i64 8, %80
  %82 = trunc i64 %81 to i32
  %83 = call %struct.TYPE_17__** @zrealloc(%struct.TYPE_17__** %77, i32 %82)
  store %struct.TYPE_17__** %83, %struct.TYPE_17__*** %10, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.TYPE_17__* @createSentinelAddr(i8* %88, i32 %93)
  %95 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %95, i64 %98
  store %struct.TYPE_17__* %94, %struct.TYPE_17__** %99, align 8
  br label %100

100:                                              ; preds = %76, %67
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = load i32, i32* @SENTINEL_RESET_NO_SENTINELS, align 4
  %103 = call i32 @sentinelResetMaster(%struct.TYPE_16__* %101, i32 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  store %struct.TYPE_17__* %106, %struct.TYPE_17__** %8, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 3
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %152, %100
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %155

118:                                              ; preds = %114
  %119 = load i32, i32* @SRI_SLAVE, align 4
  %120 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %120, i64 %122
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %127, i64 %129
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = call %struct.TYPE_16__* @createSentinelRedisInstance(i32* null, i32 %119, i8* %126, i32 %133, i32 %136, %struct.TYPE_16__* %137)
  store %struct.TYPE_16__* %138, %struct.TYPE_16__** %16, align 8
  %139 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %139, i64 %141
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = call i32 @releaseSentinelAddr(%struct.TYPE_17__* %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %146 = icmp ne %struct.TYPE_16__* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %118
  %148 = load i32, i32* @LL_NOTICE, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %150 = call i32 @sentinelEvent(i32 %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %151

151:                                              ; preds = %147, %118
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  br label %114

155:                                              ; preds = %114
  %156 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %157 = call i32 @zfree(%struct.TYPE_17__** %156)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %159 = call i32 @releaseSentinelAddr(%struct.TYPE_17__* %158)
  %160 = call i32 (...) @sentinelFlushConfig()
  %161 = load i32, i32* @C_OK, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %155, %22
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local %struct.TYPE_17__* @createSentinelAddr(i8*, i32) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_16__* @dictGetVal(i32*) #1

declare dso_local i64 @sentinelAddrIsEqual(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__** @zrealloc(%struct.TYPE_17__**, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @sentinelResetMaster(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_16__* @createSentinelRedisInstance(i32*, i32, i8*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @releaseSentinelAddr(%struct.TYPE_17__*) #1

declare dso_local i32 @sentinelEvent(i32, i8*, %struct.TYPE_16__*, i8*) #1

declare dso_local i32 @zfree(%struct.TYPE_17__**) #1

declare dso_local i32 @sentinelFlushConfig(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
