; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_search.c_search_file_worker.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_search.c_search_file_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [18 x i8] c"Worker %i started\00", align 1
@TRUE = common dso_local global i64 0, align 8
@work_queue_mtx = common dso_local global i32 0, align 4
@work_queue = common dso_local global %struct.TYPE_5__* null, align 8
@done_adding_files = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Worker %i finished.\00", align 1
@files_ready = common dso_local global i32 0, align 4
@work_queue_tail = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @search_file_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @log_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %37, %1
  %12 = load i64, i64* @TRUE, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = call i32 @pthread_mutex_lock(i32* @work_queue_mtx)
  br label %16

16:                                               ; preds = %27, %14
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @work_queue, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i64, i64* @done_adding_files, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = call i32 @pthread_mutex_unlock(i32* @work_queue_mtx)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = call i32 @pthread_exit(i32* null)
  br label %27

27:                                               ; preds = %22, %19
  %28 = call i32 @pthread_cond_wait(i32* @files_ready, i32* @work_queue_mtx)
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @work_queue, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %4, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @work_queue, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** @work_queue, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @work_queue, align 8
  %35 = icmp eq %struct.TYPE_5__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32* null, i32** @work_queue_tail, align 8
  br label %37

37:                                               ; preds = %36, %29
  %38 = call i32 @pthread_mutex_unlock(i32* @work_queue_mtx)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @search_file(%struct.TYPE_5__* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @free(%struct.TYPE_5__* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = call i32 @free(%struct.TYPE_5__* %47)
  br label %11

49:                                               ; preds = %11
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_exit(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @search_file(%struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
