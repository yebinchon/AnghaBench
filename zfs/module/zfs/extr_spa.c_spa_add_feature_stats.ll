; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_add_feature_stats.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_add_feature_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@SCL_CONFIG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_FEATURE_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @spa_add_feature_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_add_feature_stats(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = load i32, i32* @SCL_CONFIG, align 4
  %8 = load i32, i32* @RW_READER, align 4
  %9 = call i32 @spa_config_held(%struct.TYPE_6__* %6, i32 %7, i32 %8)
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @mutex_enter(i32* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @spa_feature_stats_from_cache(%struct.TYPE_6__* %20, i32* %21)
  br label %34

23:                                               ; preds = %2
  %24 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %25 = load i32, i32* @KM_SLEEP, align 4
  %26 = call i32 @nvlist_alloc(i32** %5, i32 %24, i32 %25)
  %27 = call i32 @VERIFY0(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @spa_feature_stats_from_disk(%struct.TYPE_6__* %31, i32* %32)
  br label %34

34:                                               ; preds = %23, %19
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @ZPOOL_CONFIG_FEATURE_STATS, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @nvlist_add_nvlist(i32* %35, i32 %36, i32* %37)
  %39 = call i32 @VERIFY0(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @mutex_exit(i32* %41)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_config_held(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @spa_feature_stats_from_cache(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @spa_feature_stats_from_disk(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
