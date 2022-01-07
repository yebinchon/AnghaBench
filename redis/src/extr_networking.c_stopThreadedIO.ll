; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_stopThreadedIO.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_stopThreadedIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@tio_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"E\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"--- STOPPING THREADED IO [R%d] [W%d] ---\0A\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@io_threads_active = common dso_local global i32 0, align 4
@io_threads_mutex = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stopThreadedIO() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @handleClientsWithPendingReadsUsingThreads()
  %3 = load i64, i64* @tio_debug, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @stdout, align 4
  %8 = call i32 @fflush(i32 %7)
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i64, i64* @tio_debug, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 4
  %14 = call i64 @listLength(i32 %13)
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %17 = call i64 @listLength(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %12, %9
  %21 = load i32, i32* @io_threads_active, align 4
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @serverAssert(i32 %23)
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %35, %20
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32*, i32** @io_threads_mutex, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @pthread_mutex_lock(i32* %33)
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %25

38:                                               ; preds = %25
  store i32 0, i32* @io_threads_active, align 4
  ret void
}

declare dso_local i32 @handleClientsWithPendingReadsUsingThreads(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
