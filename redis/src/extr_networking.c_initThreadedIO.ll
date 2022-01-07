; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_initThreadedIO.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_initThreadedIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@io_threads_active = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@IO_THREADS_MAX_NUM = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Fatal: too many I/O threads configured. The maximum number is %d.\00", align 1
@io_threads_mutex = common dso_local global i32* null, align 8
@io_threads_pending = common dso_local global i64* null, align 8
@io_threads_list = common dso_local global i32* null, align 8
@IOThreadMain = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Fatal: Can't initialize IO thread.\00", align 1
@io_threads = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initThreadedIO() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i64 0, i64* @io_threads_active, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %59

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %8 = load i32, i32* @IO_THREADS_MAX_NUM, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i32, i32* @LL_WARNING, align 4
  %12 = load i32, i32* @IO_THREADS_MAX_NUM, align 4
  %13 = call i32 (i32, i8*, ...) @serverLog(i32 %11, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %56, %15
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load i32*, i32** @io_threads_mutex, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @pthread_mutex_init(i32* %24, i32* null)
  %26 = load i64*, i64** @io_threads_pending, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 0, i64* %29, align 8
  %30 = call i32 (...) @listCreate()
  %31 = load i32*, i32** @io_threads_list, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32*, i32** @io_threads_mutex, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @pthread_mutex_lock(i32* %38)
  %40 = load i32, i32* @IOThreadMain, align 4
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i64 @pthread_create(i32* %2, i32* null, i32 %40, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %20
  %47 = load i32, i32* @LL_WARNING, align 4
  %48 = call i32 (i32, i8*, ...) @serverLog(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %20
  %51 = load i32, i32* %2, align 4
  %52 = load i32*, i32** @io_threads, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %16

59:                                               ; preds = %5, %16
  ret void
}

declare dso_local i32 @serverLog(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @listCreate(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
