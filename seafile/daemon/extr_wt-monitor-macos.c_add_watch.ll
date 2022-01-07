; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_add_watch.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_add_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.FSEventStreamContext = type { i32*, i32*, i32*, %struct.TYPE_12__*, i32 }

@G_NORMALIZE_NFD = common dso_local global i32 0, align 4
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@stream_callback = common dso_local global i32 0, align 4
@kFSEventStreamEventIdSinceNow = common dso_local global i32 0, align 4
@kFSEventStreamCreateFlagFileEvents = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[wt] Failed to create event stream.\0A\00", align 1
@kCFRunLoopDefaultMode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"[wt mon] Add repo %s watch success: %s.\0A\00", align 1
@WT_EVENT_SCAN_DIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i8*, i8*)* @add_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_watch(%struct.TYPE_12__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [1 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.FSEventStreamContext, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %8, align 8
  store double 2.500000e-01, double* %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @G_NORMALIZE_NFD, align 4
  %21 = call i8* @g_utf8_normalize(i8* %19, i32 -1, i32 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i32, i32* @kCFAllocatorDefault, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %25 = call i32 @CFStringCreateWithCString(i32 %22, i8* %23, i32 %24)
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @g_free(i8* %27)
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %30 = bitcast i32* %29 to i8**
  %31 = call i32 @CFArrayCreate(i32* null, i8** %30, i32 1, i32* null)
  store i32 %31, i32* %13, align 4
  %32 = getelementptr inbounds %struct.FSEventStreamContext, %struct.FSEventStreamContext* %15, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = getelementptr inbounds %struct.FSEventStreamContext, %struct.FSEventStreamContext* %15, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = bitcast %struct.TYPE_12__* %34 to i32*
  store i32* %35, i32** %33, align 8
  %36 = getelementptr inbounds %struct.FSEventStreamContext, %struct.FSEventStreamContext* %15, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.FSEventStreamContext, %struct.FSEventStreamContext* %15, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %37, align 8
  %38 = getelementptr inbounds %struct.FSEventStreamContext, %struct.FSEventStreamContext* %15, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = load i32, i32* @kCFAllocatorDefault, align 4
  %40 = load i32, i32* @stream_callback, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @kFSEventStreamEventIdSinceNow, align 4
  %43 = load double, double* %10, align 8
  %44 = load i32, i32* @kFSEventStreamCreateFlagFileEvents, align 4
  %45 = call i64 @FSEventStreamCreate(i32 %39, i32 %40, %struct.FSEventStreamContext* %15, i32 %41, i32 %42, double %43, i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @CFRelease(i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @CFRelease(i32 %49)
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %3
  %54 = call i32 @seaf_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %55 = load i64, i64* %14, align 8
  store i64 %55, i64* %4, align 8
  br label %96

56:                                               ; preds = %3
  %57 = load i64, i64* %14, align 8
  %58 = call i32 (...) @CFRunLoopGetCurrent()
  %59 = load i32, i32* @kCFRunLoopDefaultMode, align 4
  %60 = call i32 @FSEventStreamScheduleWithRunLoop(i64 %57, i32 %58, i32 %59)
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @FSEventStreamStart(i64 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @seaf_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = call i32 @pthread_mutex_lock(i32* %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = call %struct.TYPE_10__* @g_strdup(i8* %72)
  %74 = load i64, i64* %14, align 8
  %75 = inttoptr i64 %74 to %struct.TYPE_10__*
  %76 = call i32 @g_hash_table_insert(i32 %71, %struct.TYPE_10__* %73, %struct.TYPE_10__* %75)
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call %struct.TYPE_10__* @create_repo_watch_info(i8* %77, i8* %78)
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %9, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %14, align 8
  %84 = inttoptr i64 %83 to %struct.TYPE_10__*
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = call i32 @g_hash_table_insert(i32 %82, %struct.TYPE_10__* %84, %struct.TYPE_10__* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = call i32 @pthread_mutex_unlock(i32* %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @WT_EVENT_SCAN_DIR, align 4
  %94 = call i32 @add_event_to_queue(i32 %92, i32 %93, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %95 = load i64, i64* %14, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %56, %53
  %97 = load i64, i64* %4, align 8
  ret i64 %97
}

declare dso_local i8* @g_utf8_normalize(i8*, i32, i32) #1

declare dso_local i32 @CFStringCreateWithCString(i32, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @CFArrayCreate(i32*, i8**, i32, i32*) #1

declare dso_local i64 @FSEventStreamCreate(i32, i32, %struct.FSEventStreamContext*, i32, i32, double, i32) #1

declare dso_local i32 @CFRelease(i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @FSEventStreamScheduleWithRunLoop(i64, i32, i32) #1

declare dso_local i32 @CFRunLoopGetCurrent(...) #1

declare dso_local i32 @FSEventStreamStart(i64) #1

declare dso_local i32 @seaf_debug(i8*, i8*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @g_hash_table_insert(i32, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @g_strdup(i8*) #1

declare dso_local %struct.TYPE_10__* @create_repo_watch_info(i8*, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @add_event_to_queue(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
