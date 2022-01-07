; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_mutex.c_malloc_mutex_init.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_mutex.c_malloc_mutex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, %struct.TYPE_5__*, i32 }

@MALLOC_MUTEX_TYPE = common dso_local global i32 0, align 4
@config_debug = common dso_local global i64 0, align 8
@malloc_mutex_address_ordered = common dso_local global i64 0, align 8
@mutex_addr_comp = common dso_local global i32* null, align 8
@OS_UNFAIR_LOCK_INIT = common dso_local global i64 0, align 8
@_CRT_SPINCOUNT = common dso_local global i32 0, align 4
@bootstrap_calloc = common dso_local global i32 0, align 4
@postpone_init = common dso_local global i64 0, align 8
@postponed_mutexes = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malloc_mutex_init(%struct.TYPE_5__* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %13 = call i32 @mutex_prof_data_init(i32* %12)
  %14 = call i64 @pthread_mutexattr_init(i32* %10)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %53

17:                                               ; preds = %4
  %18 = load i32, i32* @MALLOC_MUTEX_TYPE, align 4
  %19 = call i32 @pthread_mutexattr_settype(i32* %10, i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = call i64 @pthread_mutex_init(i64* %21, i32* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @pthread_mutexattr_destroy(i32* %10)
  store i32 1, i32* %5, align 4
  br label %53

26:                                               ; preds = %17
  %27 = call i32 @pthread_mutexattr_destroy(i32* %10)
  %28 = load i64, i64* @config_debug, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @malloc_mutex_address_ordered, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32*, i32** @mutex_addr_comp, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = call i32 @witness_init(i32* %39, i8* %40, i32 %41, i32* %42, %struct.TYPE_5__* %43)
  br label %51

45:                                               ; preds = %30
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @witness_init(i32* %47, i8* %48, i32 %49, i32* null, %struct.TYPE_5__* null)
  br label %51

51:                                               ; preds = %45, %37
  br label %52

52:                                               ; preds = %51, %26
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %24, %16
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_prof_data_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i32 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i64*, i32*) #1

declare dso_local i32 @pthread_mutexattr_destroy(i32*) #1

declare dso_local i32 @witness_init(i32*, i8*, i32, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
