; ModuleID = '/home/carl/AnghaBench/zfs/lib/libtpool/extr_thread_pool.c_delete_pool.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libtpool/extr_thread_pool.c_delete_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@thread_pool_lock = common dso_local global i32 0, align 4
@thread_pools = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @delete_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_pool(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i1 [ false, %1 ], [ %12, %8 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = call i32 @pthread_mutex_lock(i32* @thread_pool_lock)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @thread_pools, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = icmp eq %struct.TYPE_8__* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** @thread_pools, align 8
  br label %25

25:                                               ; preds = %21, %13
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @thread_pools, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = icmp eq %struct.TYPE_8__* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @thread_pools, align 8
  br label %45

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %44, align 8
  br label %45

45:                                               ; preds = %30, %29
  %46 = call i32 @pthread_mutex_unlock(i32* @thread_pool_lock)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %3, align 8
  br label %50

50:                                               ; preds = %61, %45
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = call i32 @free(%struct.TYPE_8__* %59)
  br label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %3, align 8
  br label %50

65:                                               ; preds = %50
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = call i32 @pthread_attr_destroy(i32* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = call i32 @free(%struct.TYPE_8__* %69)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
