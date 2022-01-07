; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ctl.c_arena_reset_prepare_background_thread.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_ctl.c_arena_reset_prepare_background_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@have_background_thread = common dso_local global i64 0, align 8
@background_thread_lock = common dso_local global i32 0, align 4
@ncpus = common dso_local global i32 0, align 4
@background_thread_info = common dso_local global %struct.TYPE_3__* null, align 8
@background_thread_started = common dso_local global i64 0, align 8
@background_thread_paused = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @arena_reset_prepare_background_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_reset_prepare_background_thread(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @have_background_thread, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @tsd_tsdn(i32* %10)
  %12 = call i32 @malloc_mutex_lock(i32 %11, i32* @background_thread_lock)
  %13 = call i64 (...) @background_thread_enabled()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ncpus, align 4
  %18 = urem i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @background_thread_info, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %6, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @background_thread_started, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @tsd_tsdn(i32* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = call i32 @malloc_mutex_lock(i32 %31, i32* %33)
  %35 = load i64, i64* @background_thread_paused, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @tsd_tsdn(i32* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = call i32 @malloc_mutex_unlock(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %15, %9
  br label %44

44:                                               ; preds = %43, %2
  ret void
}

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i64 @background_thread_enabled(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
