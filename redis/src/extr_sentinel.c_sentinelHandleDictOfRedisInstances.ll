; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelHandleDictOfRedisInstances.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelHandleDictOfRedisInstances.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32*, i32* }

@SRI_MASTER = common dso_local global i32 0, align 4
@SENTINEL_FAILOVER_STATE_UPDATE_CONFIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sentinelHandleDictOfRedisInstances(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32* @dictGetIterator(i32* %7)
  store i32* %8, i32** %3, align 8
  br label %9

9:                                                ; preds = %39, %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @dictNext(i32* %10)
  store i32* %11, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_5__* @dictGetVal(i32* %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = call i32 @sentinelHandleRedisInstance(%struct.TYPE_5__* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SRI_MASTER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %13
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  call void @sentinelHandleDictOfRedisInstances(i32* %27)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  call void @sentinelHandleDictOfRedisInstances(i32* %30)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SENTINEL_FAILOVER_STATE_UPDATE_CONFIG, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %5, align 8
  br label %38

38:                                               ; preds = %36, %24
  br label %39

39:                                               ; preds = %38, %13
  br label %9

40:                                               ; preds = %9
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = call i32 @sentinelFailoverSwitchToPromotedSlave(%struct.TYPE_5__* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @dictReleaseIterator(i32* %47)
  ret void
}

declare dso_local i32* @dictGetIterator(i32*) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_5__* @dictGetVal(i32*) #1

declare dso_local i32 @sentinelHandleRedisInstance(%struct.TYPE_5__*) #1

declare dso_local i32 @sentinelFailoverSwitchToPromotedSlave(%struct.TYPE_5__*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
