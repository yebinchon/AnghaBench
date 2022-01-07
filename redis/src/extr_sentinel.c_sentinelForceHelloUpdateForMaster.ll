; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelForceHelloUpdateForMaster.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelForceHelloUpdateForMaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@SRI_MASTER = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@SENTINEL_PUBLISH_PERIOD = common dso_local global i64 0, align 8
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sentinelForceHelloUpdateForMaster(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SRI_MASTER, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @C_ERR, align 4
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SENTINEL_PUBLISH_PERIOD, align 8
  %17 = add nsw i64 %16, 1
  %18 = icmp sge i64 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load i64, i64* @SENTINEL_PUBLISH_PERIOD, align 8
  %21 = add nsw i64 %20, 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %19, %12
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sentinelForceHelloUpdateDictOfRedisInstances(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sentinelForceHelloUpdateDictOfRedisInstances(i32 %33)
  %35 = load i32, i32* @C_OK, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %26, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @sentinelForceHelloUpdateDictOfRedisInstances(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
