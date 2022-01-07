; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_initialize.c_vdev_initialize_change_state.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_initialize.c_vdev_initialize_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@vdev_initialize_zap_update_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"vdev=%s activated\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"vdev=%s suspended\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"vdev=%s canceled\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"vdev=%s complete\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"invalid state %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @vdev_initialize_change_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_initialize_change_state(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  %10 = call i32 @MUTEX_HELD(i32* %9)
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %97

21:                                               ; preds = %2
  %22 = load i32, i32* @KM_SLEEP, align 4
  %23 = call i32* @kmem_zalloc(i32 4, i32 %22)
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 128
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = call i32 (...) @gethrestime_sec()
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %21
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call %struct.TYPE_6__* @spa_get_dsl(i32* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @dmu_tx_create_dd(i32 %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* @TXG_WAIT, align 4
  %47 = call i32 @dmu_tx_assign(i32* %45, i32 %46)
  %48 = call i32 @VERIFY0(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call %struct.TYPE_6__* @spa_get_dsl(i32* %49)
  %51 = load i32, i32* @vdev_initialize_zap_update_sync, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @ZFS_SPACE_CHECK_NONE, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @dsl_sync_task_nowait(%struct.TYPE_6__* %50, i32 %51, i32* %52, i32 2, i32 %53, i32* %54)
  %56 = load i32, i32* %4, align 4
  switch i32 %56, label %85 [
    i32 131, label %57
    i32 128, label %64
    i32 130, label %71
    i32 129, label %78
  ]

57:                                               ; preds = %36
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @spa_history_log_internal(i32* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %89

64:                                               ; preds = %36
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @spa_history_log_internal(i32* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %89

71:                                               ; preds = %36
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @spa_history_log_internal(i32* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %89

78:                                               ; preds = %36
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @spa_history_log_internal(i32* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %89

85:                                               ; preds = %36
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %85, %78, %71, %64, %57
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @dmu_tx_commit(i32* %90)
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 131
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @spa_notify_waiters(i32* %95)
  br label %97

97:                                               ; preds = %20, %94, %89
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @gethrestime_sec(...) #1

declare dso_local i32* @dmu_tx_create_dd(i32) #1

declare dso_local %struct.TYPE_6__* @spa_get_dsl(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dsl_sync_task_nowait(%struct.TYPE_6__*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @spa_history_log_internal(i32*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @spa_notify_waiters(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
