; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_history.c_spa_history_log_nvl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_history.c_spa_history_log_nvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SPA_VERSION_ZPOOL_HISTORY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ZPOOL_HIST_INPUT_NVL = common dso_local global i32 0, align 4
@ZPOOL_HIDDEN_ARGS = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_HIST_ZONE = common dso_local global i32 0, align 4
@ZPOOL_HIST_WHO = common dso_local global i32 0, align 4
@spa_history_log_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_history_log_nvl(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @spa_version(i32* %10)
  %12 = load i64, i64* @SPA_VERSION_ZPOOL_HISTORY, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @spa_writeable(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @SET_ERROR(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %74

21:                                               ; preds = %14
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @ZPOOL_HIST_INPUT_NVL, align 4
  %24 = call i32 @nvlist_lookup_nvlist(i32* %22, i32 %23, i32** %9)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* @ZPOOL_HIDDEN_ARGS, align 4
  %30 = call i32 @nvlist_remove_all(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32*, i32** %4, align 8
  %33 = call %struct.TYPE_3__* @spa_get_dsl(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @dmu_tx_create_dd(i32 %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @TXG_WAIT, align 4
  %39 = call i32 @dmu_tx_assign(i32* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @dmu_tx_abort(i32* %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %74

46:                                               ; preds = %31
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @KM_SLEEP, align 4
  %49 = call i32 @nvlist_dup(i32* %47, i32** %8, i32 %48)
  %50 = call i32 @VERIFY0(i32 %49)
  %51 = call i32* (...) @spa_history_zone()
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @ZPOOL_HIST_ZONE, align 4
  %56 = call i32* (...) @spa_history_zone()
  %57 = call i32 @fnvlist_add_string(i32* %54, i32 %55, i32* %56)
  br label %58

58:                                               ; preds = %53, %46
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* @ZPOOL_HIST_WHO, align 4
  %61 = call i32 (...) @CRED()
  %62 = call i32 @crgetruid(i32 %61)
  %63 = call i32 @fnvlist_add_uint64(i32* %59, i32 %60, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call %struct.TYPE_3__* @spa_get_dsl(i32* %64)
  %66 = load i32, i32* @spa_history_log_sync, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @ZFS_SPACE_CHECK_NONE, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @dsl_sync_task_nowait(%struct.TYPE_3__* %65, i32 %66, i32* %67, i32 0, i32 %68, i32* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @dmu_tx_commit(i32* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %58, %42, %18
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @spa_writeable(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @nvlist_remove_all(i32*, i32) #1

declare dso_local i32* @dmu_tx_create_dd(i32) #1

declare dso_local %struct.TYPE_3__* @spa_get_dsl(i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i32* @spa_history_zone(...) #1

declare dso_local i32 @fnvlist_add_string(i32*, i32, i32*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @crgetruid(i32) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @dsl_sync_task_nowait(%struct.TYPE_3__*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
