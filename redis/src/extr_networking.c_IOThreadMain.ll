; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_IOThreadMain.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_IOThreadMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@io_threads_pending = common dso_local global i64* null, align 8
@io_threads_mutex = common dso_local global i32* null, align 8
@tio_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"[%ld] %d to handle\0A\00", align 1
@io_threads_list = common dso_local global i32* null, align 8
@io_threads_op = common dso_local global i64 0, align 8
@IO_THREADS_OP_WRITE = common dso_local global i64 0, align 8
@IO_THREADS_OP_READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"io_threads_op value is unknown\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"[%ld] Done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @IOThreadMain(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %1, %31, %104
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %22, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 1000000
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i64*, i64** @io_threads_pending, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %25

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %11

25:                                               ; preds = %20, %11
  %26 = load i64*, i64** @io_threads_pending, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32*, i32** @io_threads_mutex, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i32 @pthread_mutex_lock(i32* %34)
  %36 = load i32*, i32** @io_threads_mutex, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @pthread_mutex_unlock(i32* %38)
  br label %10

40:                                               ; preds = %25
  %41 = load i64*, i64** @io_threads_pending, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @serverAssert(i32 %46)
  %48 = load i64, i64* @tio_debug, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load i64, i64* %3, align 8
  %52 = load i32*, i32** @io_threads_list, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @listLength(i32 %55)
  %57 = trunc i64 %56 to i32
  %58 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %57)
  br label %59

59:                                               ; preds = %50, %40
  %60 = load i32*, i32** @io_threads_list, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @listRewind(i32 %63, i32* %5)
  br label %65

65:                                               ; preds = %89, %59
  %66 = call i32* @listNext(i32* %5)
  store i32* %66, i32** %6, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i32*, i32** %6, align 8
  %70 = call %struct.TYPE_4__* @listNodeValue(i32* %69)
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %7, align 8
  %71 = load i64, i64* @io_threads_op, align 8
  %72 = load i64, i64* @IO_THREADS_OP_WRITE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = call i32 @writeToClient(%struct.TYPE_4__* %75, i32 0)
  br label %89

77:                                               ; preds = %68
  %78 = load i64, i64* @io_threads_op, align 8
  %79 = load i64, i64* @IO_THREADS_OP_READ, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @readQueryFromClient(i32 %84)
  br label %88

86:                                               ; preds = %77
  %87 = call i32 @serverPanic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %81
  br label %89

89:                                               ; preds = %88, %74
  br label %65

90:                                               ; preds = %65
  %91 = load i32*, i32** @io_threads_list, align 8
  %92 = load i64, i64* %3, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @listEmpty(i32 %94)
  %96 = load i64*, i64** @io_threads_pending, align 8
  %97 = load i64, i64* %3, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 0, i64* %98, align 8
  %99 = load i64, i64* @tio_debug, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load i64, i64* %3, align 8
  %103 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %101, %90
  br label %10
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local %struct.TYPE_4__* @listNodeValue(i32*) #1

declare dso_local i32 @writeToClient(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @readQueryFromClient(i32) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @listEmpty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
