; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_mmp_enable_disable.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_mmp_enable_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }

@ztest_opts = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ztest_spa = common dso_local global %struct.TYPE_13__* null, align 8
@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@zfs_multihost_fail_intervals = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_mmp_enable_disable(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_12__* @ztest_opts, %struct.TYPE_12__** %5, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ztest_spa, align 8
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %6, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %76

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = call i64 @spa_suspended(%struct.TYPE_13__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %76

18:                                               ; preds = %13
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = load i32, i32* @SCL_CONFIG, align 4
  %21 = load i32, i32* @FTAG, align 4
  %22 = load i32, i32* @RW_READER, align 4
  %23 = call i32 @spa_config_enter(%struct.TYPE_13__* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = call i32 @mutex_enter(i32* %25)
  store i64 0, i64* @zfs_multihost_fail_intervals, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = call i64 @spa_multihost(%struct.TYPE_13__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @B_TRUE, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = call i32 @mmp_thread_start(%struct.TYPE_13__* %34)
  br label %36

36:                                               ; preds = %30, %18
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = call i32 @mutex_exit(i32* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = load i32, i32* @SCL_CONFIG, align 4
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @spa_config_exit(%struct.TYPE_13__* %40, i32 %41, i32 %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = call i32 @spa_get_dsl(%struct.TYPE_13__* %44)
  %46 = call i32 @txg_wait_synced(i32 %45, i32 0)
  %47 = call i32 (...) @mmp_signal_all_threads()
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = call i32 @spa_get_dsl(%struct.TYPE_13__* %48)
  %50 = call i32 @txg_wait_synced(i32 %49, i32 0)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = load i32, i32* @SCL_CONFIG, align 4
  %53 = load i32, i32* @FTAG, align 4
  %54 = load i32, i32* @RW_READER, align 4
  %55 = call i32 @spa_config_enter(%struct.TYPE_13__* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = call i32 @mutex_enter(i32* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = call i64 @spa_multihost(%struct.TYPE_13__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %36
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = call i32 @mmp_thread_stop(%struct.TYPE_13__* %63)
  %65 = load i32, i32* @B_FALSE, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %36
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = call i32 @mutex_exit(i32* %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = load i32, i32* @SCL_CONFIG, align 4
  %74 = load i32, i32* @FTAG, align 4
  %75 = call i32 @spa_config_exit(%struct.TYPE_13__* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %17, %12
  ret void
}

declare dso_local i64 @spa_suspended(%struct.TYPE_13__*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @spa_multihost(%struct.TYPE_13__*) #1

declare dso_local i32 @mmp_thread_start(%struct.TYPE_13__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @spa_get_dsl(%struct.TYPE_13__*) #1

declare dso_local i32 @mmp_signal_all_threads(...) #1

declare dso_local i32 @mmp_thread_stop(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
