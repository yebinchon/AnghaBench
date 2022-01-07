; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelSelectSlave.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelSelectSlave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i64, i64, i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@SRI_S_DOWN = common dso_local global i32 0, align 4
@SRI_O_DOWN = common dso_local global i32 0, align 4
@SENTINEL_PING_PERIOD = common dso_local global i32 0, align 4
@SENTINEL_INFO_PERIOD = common dso_local global i32 0, align 4
@compareSlavesForPromotion = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @sentinelSelectSlave(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__**, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dictSize(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.TYPE_10__** @zmalloc(i32 %17)
  store %struct.TYPE_10__** %18, %struct.TYPE_10__*** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SRI_S_DOWN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = call i64 (...) @mstime()
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %25, %1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 10
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %8, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %8, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = call i32* @dictGetIterator(i32 %43)
  store i32* %44, i32** %6, align 8
  br label %45

45:                                               ; preds = %120, %119, %112, %88, %82, %68, %60, %33
  %46 = load i32*, i32** %6, align 8
  %47 = call i32* @dictNext(i32* %46)
  store i32* %47, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %127

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = call %struct.TYPE_10__* @dictGetVal(i32* %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %9, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SRI_S_DOWN, align 4
  %56 = load i32, i32* @SRI_O_DOWN, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %45

61:                                               ; preds = %49
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 6
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %45

69:                                               ; preds = %61
  %70 = call i64 (...) @mstime()
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 6
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %70, %76
  %78 = load i32, i32* @SENTINEL_PING_PERIOD, align 4
  %79 = mul nsw i32 %78, 5
  %80 = sext i32 %79 to i64
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %45

83:                                               ; preds = %69
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %45

89:                                               ; preds = %83
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SRI_S_DOWN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @SENTINEL_PING_PERIOD, align 4
  %98 = mul nsw i32 %97, 5
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %10, align 8
  br label %104

100:                                              ; preds = %89
  %101 = load i32, i32* @SENTINEL_INFO_PERIOD, align 4
  %102 = mul nsw i32 %101, 3
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %10, align 8
  br label %104

104:                                              ; preds = %100, %96
  %105 = call i64 (...) @mstime()
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = load i64, i64* %10, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %45

113:                                              ; preds = %104
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %8, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %45

120:                                              ; preds = %113
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %122 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %122, i64 %125
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %126, align 8
  br label %45

127:                                              ; preds = %45
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @dictReleaseIterator(i32* %128)
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @compareSlavesForPromotion, align 4
  %136 = call i32 @qsort(%struct.TYPE_10__** %133, i32 %134, i32 8, i32 %135)
  %137 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %137, i64 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  store %struct.TYPE_10__* %139, %struct.TYPE_10__** %4, align 8
  br label %140

140:                                              ; preds = %132, %127
  %141 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %142 = call i32 @zfree(%struct.TYPE_10__** %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %143
}

declare dso_local %struct.TYPE_10__** @zmalloc(i32) #1

declare dso_local i32 @dictSize(i32) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_10__* @dictGetVal(i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_10__**, i32, i32, i32) #1

declare dso_local i32 @zfree(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
