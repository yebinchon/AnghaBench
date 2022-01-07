; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_history.c_log_internal.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_history.c_log_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@ZPOOL_HIST_INT_STR = common dso_local global i32 0, align 4
@ZPOOL_HIST_INT_NAME = common dso_local global i32 0, align 4
@ZPOOL_HIST_TXG = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*, %struct.TYPE_7__*, i8*, i32)* @log_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_internal(i32* %0, i8* %1, i32* %2, %struct.TYPE_7__* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = call i64 @spa_is_initializing(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @spa_writeable(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %6
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @fnvlist_free(i32* %22)
  br label %58

24:                                               ; preds = %17
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i8* @kmem_vasprintf(i8* %25, i32 %26)
  store i8* %27, i8** %13, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @ZPOOL_HIST_INT_STR, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @fnvlist_add_string(i32* %28, i32 %29, i8* %30)
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @kmem_strfree(i8* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @ZPOOL_HIST_INT_NAME, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @fnvlist_add_string(i32* %34, i32 %35, i8* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @ZPOOL_HIST_TXG, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fnvlist_add_uint64(i32* %38, i32 %39, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %45 = call i64 @dmu_tx_is_syncing(%struct.TYPE_7__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %24
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = call i32 @spa_history_log_sync(i32* %48, %struct.TYPE_7__* %49)
  br label %58

51:                                               ; preds = %24
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @spa_get_dsl(i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @ZFS_SPACE_CHECK_NONE, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = call i32 @dsl_sync_task_nowait(i32 %53, i32 (i32*, %struct.TYPE_7__*)* @spa_history_log_sync, i32* %54, i32 0, i32 %55, %struct.TYPE_7__* %56)
  br label %58

58:                                               ; preds = %21, %51, %47
  ret void
}

declare dso_local i64 @spa_is_initializing(i32*) #1

declare dso_local i32 @spa_writeable(i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i8* @kmem_vasprintf(i8*, i32) #1

declare dso_local i32 @fnvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @kmem_strfree(i8*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i64 @dmu_tx_is_syncing(%struct.TYPE_7__*) #1

declare dso_local i32 @spa_history_log_sync(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @dsl_sync_task_nowait(i32, i32 (i32*, %struct.TYPE_7__*)*, i32*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @spa_get_dsl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
