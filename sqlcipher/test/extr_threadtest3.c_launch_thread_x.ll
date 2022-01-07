; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_launch_thread_x.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest3.c_launch_thread_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8* (i32, i8*)*, %struct.TYPE_10__*, i32, i8* }

@SQLITE_OK = common dso_local global i64 0, align 8
@launch_thread_main = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_9__*, i8* (i32, i8*)*, i8*)* @launch_thread_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @launch_thread_x(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, i8* (i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8* (i32, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* (i32, i8*)* %2, i8* (i32, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SQLITE_OK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  store i32 %21, i32* %9, align 4
  %22 = call i64 @sqlite3_malloc(i32 40)
  %23 = inttoptr i64 %22 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %10, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = call i32 @memset(%struct.TYPE_10__* %24, i32 0, i32 40)
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load i8* (i32, i8*)*, i8* (i32, i8*)** %7, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i8* (i32, i8*)* %32, i8* (i32, i8*)** %34, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  %37 = load i32, i32* @launch_thread_main, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = bitcast %struct.TYPE_10__* %38 to i8*
  %40 = call i32 @pthread_create(i32* %36, i32* null, i32 %37, i8* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %17
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @system_error(%struct.TYPE_11__* %44, i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = call i32 @sqlite3_free(%struct.TYPE_10__* %47)
  br label %58

49:                                               ; preds = %17
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %57, align 8
  br label %58

58:                                               ; preds = %49, %43
  br label %59

59:                                               ; preds = %58, %4
  ret void
}

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @system_error(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
