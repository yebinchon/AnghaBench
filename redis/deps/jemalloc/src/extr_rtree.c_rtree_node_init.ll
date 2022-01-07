; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_rtree.c_rtree_node_init.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_rtree.c_rtree_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ATOMIC_RELAXED = common dso_local global i32 0, align 4
@rtree_levels = common dso_local global %struct.TYPE_6__* null, align 8
@ATOMIC_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*, i32, i32*)* @rtree_node_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rtree_node_init(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @malloc_mutex_lock(i32* %11, i32* %13)
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* @ATOMIC_RELAXED, align 4
  %17 = call i32* @atomic_load_p(i32* %15, i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = call i32 @ZU(i32 1)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rtree_levels, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %23, %29
  %31 = call i32* @rtree_node_alloc(i32* %21, %struct.TYPE_5__* %22, i32 %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @malloc_mutex_unlock(i32* %35, i32* %37)
  store i32* null, i32** %5, align 8
  br label %50

39:                                               ; preds = %20
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* @ATOMIC_RELEASE, align 4
  %43 = call i32 @atomic_store_p(i32* %40, i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %4
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @malloc_mutex_unlock(i32* %45, i32* %47)
  %49 = load i32*, i32** %10, align 8
  store i32* %49, i32** %5, align 8
  br label %50

50:                                               ; preds = %44, %34
  %51 = load i32*, i32** %5, align 8
  ret i32* %51
}

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i32* @atomic_load_p(i32*, i32) #1

declare dso_local i32* @rtree_node_alloc(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ZU(i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i32 @atomic_store_p(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
