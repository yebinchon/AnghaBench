; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_vdev_initializing.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_vdev_initializing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@SCL_CONFIG = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, i32, i64*)* @spa_vdev_initializing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_vdev_initializing(%struct.TYPE_12__* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = call i32 @mutex_exit(i32* %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = load i32, i32* @SCL_CONFIG, align 4
  %16 = load i32, i32* @SCL_STATE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FTAG, align 4
  %19 = load i32, i32* @RW_READER, align 4
  %20 = call i32 @spa_config_enter(%struct.TYPE_12__* %14, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = call i32 @mutex_enter(i32* %22)
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @B_FALSE, align 4
  %30 = call %struct.TYPE_11__* @spa_lookup_by_guid(%struct.TYPE_12__* %27, i32 %28, i32 %29)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %10, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = icmp eq %struct.TYPE_11__* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = load i32, i32* @SCL_CONFIG, align 4
  %43 = load i32, i32* @SCL_STATE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FTAG, align 4
  %46 = call i32 @spa_config_exit(%struct.TYPE_12__* %41, i32 %44, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %5, align 4
  br label %63

48:                                               ; preds = %33
  br label %53

49:                                               ; preds = %4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %10, align 8
  br label %53

53:                                               ; preds = %49, %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = call i64 @spa_vdev_initializing_impl(%struct.TYPE_11__* %54)
  %56 = load i64*, i64** %9, align 8
  store i64 %55, i64* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = load i32, i32* @SCL_CONFIG, align 4
  %59 = load i32, i32* @SCL_STATE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @FTAG, align 4
  %62 = call i32 @spa_config_exit(%struct.TYPE_12__* %57, i32 %60, i32 %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %53, %40
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_11__* @spa_lookup_by_guid(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @spa_vdev_initializing_impl(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
