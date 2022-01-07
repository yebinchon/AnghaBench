; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_scan.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@SCL_ALL = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@POOL_SCAN_FUNCS = common dso_local global i64 0, align 8
@POOL_SCAN_NONE = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@POOL_SCAN_RESILVER = common dso_local global i64 0, align 8
@SPA_FEATURE_RESILVER_DEFER = common dso_local global i32 0, align 4
@SPA_ASYNC_RESILVER_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_scan(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = load i32, i32* @SCL_ALL, align 4
  %8 = load i32, i32* @RW_WRITER, align 4
  %9 = call i64 @spa_config_held(%struct.TYPE_6__* %6, i32 %7, i32 %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @POOL_SCAN_FUNCS, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @POOL_SCAN_NONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @ENOTSUP, align 4
  %22 = call i32 @SET_ERROR(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %55

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = load i32, i32* @SPA_FEATURE_RESILVER_DEFER, align 4
  %30 = call i32 @spa_feature_is_enabled(%struct.TYPE_6__* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOTSUP, align 4
  %34 = call i32 @SET_ERROR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %55

35:                                               ; preds = %27, %23
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @vdev_resilver_needed(i32 %42, i32* null, i32* null)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = load i32, i32* @SPA_ASYNC_RESILVER_DONE, align 4
  %48 = call i32 @spa_async_request(%struct.TYPE_6__* %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %55

49:                                               ; preds = %39, %35
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @dsl_scan(i32 %52, i64 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %45, %32, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @spa_feature_is_enabled(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @vdev_resilver_needed(i32, i32*, i32*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dsl_scan(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
