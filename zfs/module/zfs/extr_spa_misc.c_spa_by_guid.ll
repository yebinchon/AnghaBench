; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_by_guid.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_by_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, i32* }

@spa_namespace_avl = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@POOL_STATE_UNINITIALIZED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @spa_by_guid(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* @spa_namespace_avl, i32** %6, align 8
  %7 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i32*, i32** %6, align 8
  %10 = call %struct.TYPE_7__* @avl_first(i32* %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  br label %11

11:                                               ; preds = %60, %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %64

14:                                               ; preds = %11
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @POOL_STATE_UNINITIALIZED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %60

21:                                               ; preds = %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %60

27:                                               ; preds = %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = call i64 @spa_guid(%struct.TYPE_7__* %28)
  %30 = load i64, i64* %3, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %27
  %33 = load i64, i64* %4, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %64

36:                                               ; preds = %32
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32* @vdev_lookup_by_guid(i32* %39, i64 %40)
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %64

44:                                               ; preds = %36
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32* @vdev_lookup_by_guid(i32* %52, i64 %53)
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %64

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %44
  br label %59

59:                                               ; preds = %58, %27
  br label %60

60:                                               ; preds = %59, %26, %20
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = call %struct.TYPE_7__* @AVL_NEXT(i32* %61, %struct.TYPE_7__* %62)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %5, align 8
  br label %11

64:                                               ; preds = %56, %43, %35, %11
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %65
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local %struct.TYPE_7__* @avl_first(i32*) #1

declare dso_local i64 @spa_guid(%struct.TYPE_7__*) #1

declare dso_local i32* @vdev_lookup_by_guid(i32*, i64) #1

declare dso_local %struct.TYPE_7__* @AVL_NEXT(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
