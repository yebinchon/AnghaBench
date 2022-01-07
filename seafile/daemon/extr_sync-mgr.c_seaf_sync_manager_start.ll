; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_seaf_sync_manager_start.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_seaf_sync_manager_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32, i8*, i8* }

@auto_sync_pulse = common dso_local global i32 0, align 4
@CHECK_SYNC_INTERVAL = common dso_local global i32 0, align 4
@update_tx_state = common dso_local global i32 0, align 4
@UPDATE_TX_STATE_INTERVAL = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"repo-http-fetched\00", align 1
@on_repo_http_fetched = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"repo-http-uploaded\00", align 1
@on_repo_http_uploaded = common dso_local global i64 0, align 8
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@update_cached_head_commit_ids = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Failed to create update cached head commit id thread.\0A\00", align 1
@STARTUP_REFRESH_WINDOWS_DELAY = common dso_local global i32 0, align 4
@refresh_all_windows_on_startup = common dso_local global i32 0, align 4
@refresh_windows_explorer_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_sync_manager_start(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load i32, i32* @auto_sync_pulse, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = load i32, i32* @CHECK_SYNC_INTERVAL, align 4
  %9 = call i8* @seaf_timer_new(i32 %6, %struct.TYPE_10__* %7, i32 %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store i8* %9, i8** %13, align 8
  %14 = load i32, i32* @update_tx_state, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = load i32, i32* @UPDATE_TX_STATE_INTERVAL, align 4
  %17 = call i8* @seaf_timer_new(i32 %14, %struct.TYPE_10__* %15, i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store i8* %17, i8** %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %23 = load i64, i64* @on_repo_http_fetched, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = call i32 @g_signal_connect(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24, %struct.TYPE_10__* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %28 = load i64, i64* @on_repo_http_uploaded, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = call i32 @g_signal_connect(%struct.TYPE_11__* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %29, %struct.TYPE_10__* %30)
  %32 = call i32 @pthread_attr_init(i32* %5)
  %33 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %34 = call i32 @pthread_attr_setdetachstate(i32* %5, i32 %33)
  %35 = load i32, i32* @update_cached_head_commit_ids, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = call i64 @pthread_create(i32* %4, i32* %5, i32 %35, %struct.TYPE_10__* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = call i32 @seaf_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %42

41:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i8* @seaf_timer_new(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @g_signal_connect(%struct.TYPE_11__*, i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @seaf_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
