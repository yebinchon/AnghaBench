; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-win32.c_add_watch.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-win32.c_add_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"failed to open handle for worktree of repo  %s\0A\00", align 1
@WT_EVENT_SCAN_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i8*, i8*)* @add_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_watch(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32* @wchar_from_utf8(i8* %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32* @get_handle_of_path(i32* %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @seaf_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @g_free(i32* %20)
  store i32* null, i32** %4, align 8
  br label %55

22:                                               ; preds = %3
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @g_free(i32* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call %struct.TYPE_9__* @g_strdup(i8* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = bitcast i32* %33 to %struct.TYPE_9__*
  %35 = call i32 @g_hash_table_insert(i32 %30, %struct.TYPE_9__* %32, %struct.TYPE_9__* %34)
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call %struct.TYPE_9__* @create_repo_watch_info(i8* %36, i8* %37)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %10, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = bitcast i32* %42 to %struct.TYPE_9__*
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = call i32 @g_hash_table_insert(i32 %41, %struct.TYPE_9__* %43, %struct.TYPE_9__* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = call i32 @pthread_mutex_unlock(i32* %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WT_EVENT_SCAN_DIR, align 4
  %53 = call i32 @add_event_to_queue(i32 %51, i32 %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %54 = load i32*, i32** %8, align 8
  store i32* %54, i32** %4, align 8
  br label %55

55:                                               ; preds = %22, %17
  %56 = load i32*, i32** %4, align 8
  ret i32* %56
}

declare dso_local i32* @wchar_from_utf8(i8*) #1

declare dso_local i32* @get_handle_of_path(i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @g_hash_table_insert(i32, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @g_strdup(i8*) #1

declare dso_local %struct.TYPE_9__* @create_repo_watch_info(i8*, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @add_event_to_queue(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
