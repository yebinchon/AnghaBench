; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_pool.c_dsl_pool_create_origin.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_pool.c_dsl_pool_create_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@RW_WRITER = common dso_local global i32 0, align 4
@ORIGIN_DIR_NAME = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4
@FTAG = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_pool_create_origin(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @dmu_tx_is_syncing(i32* %7)
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* @RW_WRITER, align 4
  %19 = call i32 @rrw_held(i32* %17, i32 %18)
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ORIGIN_DIR_NAME, align 4
  %25 = load i32, i32* @kcred, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @dsl_dataset_create_sync(i32 %23, i32 %24, i32* null, i32 0, i32 %25, i32* null, i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @FTAG, align 8
  %31 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_8__* %28, i32 %29, %struct.TYPE_8__* %30, i32** %6)
  %32 = call i32 @VERIFY0(i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @ORIGIN_DIR_NAME, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @dsl_dataset_snapshot_sync_impl(i32* %33, i32 %34, i32* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call %struct.TYPE_9__* @dsl_dataset_phys(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_8__* %37, i32 %41, %struct.TYPE_8__* %42, i32** %44)
  %46 = call i32 @VERIFY0(i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @FTAG, align 8
  %49 = call i32 @dsl_dataset_rele(i32* %47, %struct.TYPE_8__* %48)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32 @rrw_held(i32*, i32) #1

declare dso_local i32 @dsl_dataset_create_sync(i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32**) #1

declare dso_local i32 @dsl_dataset_snapshot_sync_impl(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @dsl_dataset_phys(i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
