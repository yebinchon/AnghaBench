; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@B_FALSE = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"force\00", align 1
@SCL_CONFIG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_pool_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_pool_sync(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i64, i64* @B_FALSE, align 8
  store i64 %11, i64* %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @FTAG, align 4
  %14 = call i32 @spa_open(i8* %12, %struct.TYPE_7__** %10, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @fnvlist_lookup_boolean_value(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = load i32, i32* @SCL_CONFIG, align 4
  %30 = load i32, i32* @FTAG, align 4
  %31 = load i32, i32* @RW_WRITER, align 4
  %32 = call i32 @spa_config_enter(%struct.TYPE_7__* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vdev_config_dirty(i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = load i32, i32* @SCL_CONFIG, align 4
  %39 = load i32, i32* @FTAG, align 4
  %40 = call i32 @spa_config_exit(%struct.TYPE_7__* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %27, %24
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = call i32 @spa_get_dsl(%struct.TYPE_7__* %42)
  %44 = call i32 @txg_wait_synced(i32 %43, i32 0)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = load i32, i32* @FTAG, align 4
  %47 = call i32 @spa_close(%struct.TYPE_7__* %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %41, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @spa_open(i8*, %struct.TYPE_7__**, i32) #1

declare dso_local i64 @fnvlist_lookup_boolean_value(i32*, i8*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @vdev_config_dirty(i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @spa_get_dsl(%struct.TYPE_7__*) #1

declare dso_local i32 @spa_close(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
