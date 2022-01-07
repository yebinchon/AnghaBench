; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelGetLeader.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelGetLeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_6__ = type { i32, i8*, i64, i64, i32* }

@SRI_O_DOWN = common dso_local global i32 0, align 4
@SRI_FAILOVER_IN_PROGRESS = common dso_local global i32 0, align 4
@leaderVotesDictType = common dso_local global i32 0, align 4
@sentinel = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sentinelGetLeader(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %11, align 8
  store i64 0, i64* %13, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SRI_O_DOWN, align 4
  %21 = load i32, i32* @SRI_FAILOVER_IN_PROGRESS, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = call i32 @serverAssert(i32 %23)
  %25 = call i32* @dictCreate(i32* @leaderVotesDictType, i32* null)
  store i32* %25, i32** %5, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @dictSize(i32* %28)
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @dictGetIterator(i32* %33)
  store i32* %34, i32** %6, align 8
  br label %35

35:                                               ; preds = %58, %2
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @dictNext(i32* %36)
  store i32* %37, i32** %7, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  %41 = call %struct.TYPE_6__* @dictGetVal(i32* %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %14, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sentinel, i32 0, i32 0), align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @sentinelLeaderIncr(i32* %53, i8* %56)
  br label %58

58:                                               ; preds = %52, %46, %39
  br label %35

59:                                               ; preds = %35
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @dictReleaseIterator(i32* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32* @dictGetIterator(i32* %62)
  store i32* %63, i32** %6, align 8
  br label %64

64:                                               ; preds = %78, %59
  %65 = load i32*, i32** %6, align 8
  %66 = call i32* @dictNext(i32* %65)
  store i32* %66, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = call i64 @dictGetUnsignedIntegerVal(i32* %69)
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %13, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, i64* %15, align 8
  store i64 %75, i64* %13, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i8* @dictGetKey(i32* %76)
  store i8* %77, i8** %11, align 8
  br label %78

78:                                               ; preds = %74, %68
  br label %64

79:                                               ; preds = %64
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @dictReleaseIterator(i32* %80)
  %82 = load i8*, i8** %11, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i8* @sentinelVoteLeader(%struct.TYPE_6__* %85, i64 %86, i8* %87, i64* %12)
  store i8* %88, i8** %10, align 8
  br label %94

89:                                               ; preds = %79
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sentinel, i32 0, i32 1), align 8
  %93 = call i8* @sentinelVoteLeader(%struct.TYPE_6__* %90, i64 %91, i8* %92, i64* %12)
  store i8* %93, i8** %10, align 8
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %4, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load i32*, i32** %5, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = call i64 @sentinelLeaderIncr(i32* %102, i8* %103)
  store i64 %104, i64* %16, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i64, i64* %16, align 8
  store i64 %109, i64* %13, align 8
  %110 = load i8*, i8** %10, align 8
  store i8* %110, i8** %11, align 8
  br label %111

111:                                              ; preds = %108, %101
  br label %112

112:                                              ; preds = %111, %97, %94
  %113 = load i32, i32* %8, align 4
  %114 = udiv i32 %113, 2
  %115 = add i32 %114, 1
  store i32 %115, i32* %9, align 4
  %116 = load i8*, i8** %11, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load i64, i64* %13, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = icmp slt i64 %119, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = load i64, i64* %13, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123, %118
  store i8* null, i8** %11, align 8
  br label %130

130:                                              ; preds = %129, %123, %112
  %131 = load i8*, i8** %11, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i8*, i8** %11, align 8
  %135 = call i8* @sdsnew(i8* %134)
  br label %137

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %133
  %138 = phi i8* [ %135, %133 ], [ null, %136 ]
  store i8* %138, i8** %11, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = call i32 @sdsfree(i8* %139)
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 @dictRelease(i32* %141)
  %143 = load i8*, i8** %11, align 8
  ret i8* %143
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32* @dictCreate(i32*, i32*) #1

declare dso_local i32 @dictSize(i32*) #1

declare dso_local i32* @dictGetIterator(i32*) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_6__* @dictGetVal(i32*) #1

declare dso_local i64 @sentinelLeaderIncr(i32*, i8*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i64 @dictGetUnsignedIntegerVal(i32*) #1

declare dso_local i8* @dictGetKey(i32*) #1

declare dso_local i8* @sentinelVoteLeader(%struct.TYPE_6__*, i64, i8*, i64*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @dictRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
