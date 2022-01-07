; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelTryConnectionSharing.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelTryConnectionSharing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__*, i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }

@SRI_SENTINEL = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@sentinel = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sentinelTryConnectionSharing(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SRI_SENTINEL, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @serverAssert(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @C_ERR, align 4
  store i32 %19, i32* %2, align 4
  br label %82

20:                                               ; preds = %1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @C_ERR, align 4
  store i32 %28, i32* %2, align 4
  br label %82

29:                                               ; preds = %20
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sentinel, i32 0, i32 0), align 4
  %31 = call i32* @dictGetIterator(i32 %30)
  store i32* %31, i32** %4, align 8
  br label %32

32:                                               ; preds = %60, %55, %44, %29
  %33 = load i32*, i32** %4, align 8
  %34 = call i32* @dictNext(i32* %33)
  store i32* %34, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %78

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = call %struct.TYPE_7__* @dictGetVal(i32* %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp eq %struct.TYPE_7__* %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %32

45:                                               ; preds = %36
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call %struct.TYPE_7__* @getSentinelRedisInstanceByAddrAndRunID(i32 %48, i32* null, i32 0, i32* %51)
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %7, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = icmp eq %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %32

56:                                               ; preds = %45
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = icmp eq %struct.TYPE_7__* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %32

61:                                               ; preds = %56
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = call i32 @releaseInstanceLink(%struct.TYPE_9__* %64, i32* null)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @C_OK, align 4
  store i32 %77, i32* %2, align 4
  br label %82

78:                                               ; preds = %32
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @dictReleaseIterator(i32* %79)
  %81 = load i32, i32* @C_ERR, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %61, %27, %18
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_7__* @dictGetVal(i32*) #1

declare dso_local %struct.TYPE_7__* @getSentinelRedisInstanceByAddrAndRunID(i32, i32*, i32, i32*) #1

declare dso_local i32 @releaseInstanceLink(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
