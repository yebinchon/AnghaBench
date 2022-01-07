; ModuleID = '/home/carl/AnghaBench/zfs/lib/libtpool/extr_thread_pool.c_tpool_create.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libtpool/extr_thread_pool.c_tpool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PTHREAD_STACK_MIN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@thread_pool_lock = common dso_local global i32 0, align 4
@thread_pools = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @tpool_create(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %4
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* @errno, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %131

23:                                               ; preds = %18
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @pthread_attr_getstack(i32* %27, i8** %11, i64* %12)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* @errno, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %131

32:                                               ; preds = %26
  %33 = load i64, i64* @PTHREAD_STACK_MIN, align 8
  store i64 %33, i64* %13, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %36
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* @errno, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %131

45:                                               ; preds = %40
  br label %56

46:                                               ; preds = %32
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* @errno, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %131

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %55, %45
  br label %57

57:                                               ; preds = %56, %23
  %58 = call %struct.TYPE_6__* @calloc(i32 1, i32 56)
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %10, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %60 = icmp eq %struct.TYPE_6__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* @errno, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %131

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 9
  %66 = call i32 @pthread_mutex_init(i32* %65, i32* null)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 8
  %69 = call i32 @pthread_cond_init(i32* %68, i32* null)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 7
  %72 = call i32 @pthread_cond_init(i32* %71, i32* null)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 6
  %75 = call i32 @pthread_cond_init(i32* %74, i32* null)
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 5
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @pthread_attr_clone(i32* %86, i32* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %63
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = call i32 @free(%struct.TYPE_6__* %92)
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* @errno, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %131

95:                                               ; preds = %63
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 5
  %98 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %99 = call i32 @pthread_attr_setdetachstate(i32* %97, i32 %98)
  %100 = call i32 @pthread_mutex_lock(i32* @thread_pool_lock)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thread_pools, align 8
  %102 = icmp eq %struct.TYPE_6__* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 4
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %106, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store %struct.TYPE_6__* %107, %struct.TYPE_6__** %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** @thread_pools, align 8
  br label %128

111:                                              ; preds = %95
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thread_pools, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %116, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thread_pools, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  store %struct.TYPE_6__* %117, %struct.TYPE_6__** %119, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thread_pools, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  store %struct.TYPE_6__* %122, %struct.TYPE_6__** %124, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @thread_pools, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  store %struct.TYPE_6__* %125, %struct.TYPE_6__** %127, align 8
  br label %128

128:                                              ; preds = %111, %103
  %129 = call i32 @pthread_mutex_unlock(i32* @thread_pool_lock)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %130, %struct.TYPE_6__** %5, align 8
  br label %131

131:                                              ; preds = %128, %91, %61, %53, %43, %30, %21
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %132
}

declare dso_local i64 @pthread_attr_getstack(i32*, i8**, i64*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @pthread_attr_clone(i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
