; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_bpobj.c_bpobj_alloc_empty.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_bpobj.c_bpobj_alloc_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SPA_FEATURE_EMPTY_BPOBJ = common dso_local global i32 0, align 4
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_EMPTY_BPOBJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bpobj_alloc_empty(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @dmu_objset_spa(i32* %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_3__* @dmu_objset_pool(i32* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* @SPA_FEATURE_EMPTY_BPOBJ, align 4
  %16 = call i64 @spa_feature_is_enabled(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @SPA_FEATURE_EMPTY_BPOBJ, align 4
  %21 = call i32 @spa_feature_is_active(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ASSERT0(i64 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @bpobj_alloc(i32* %28, i32 %29, i32* %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %36 = load i32, i32* @DMU_POOL_EMPTY_BPOBJ, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @zap_add(i32* %34, i32 %35, i32 %36, i32 8, i32 1, i64* %38, i32* %39)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @VERIFY(i32 %42)
  br label %44

44:                                               ; preds = %23, %18
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @SPA_FEATURE_EMPTY_BPOBJ, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @spa_feature_incr(i32* %45, i32 %46, i32* %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %4, align 8
  br label %63

58:                                               ; preds = %3
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @bpobj_alloc(i32* %59, i32 %60, i32* %61)
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %58, %44
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i32* @dmu_objset_spa(i32*) #1

declare dso_local %struct.TYPE_3__* @dmu_objset_pool(i32*) #1

declare dso_local i64 @spa_feature_is_enabled(i32*, i32) #1

declare dso_local i32 @spa_feature_is_active(i32*, i32) #1

declare dso_local i32 @ASSERT0(i64) #1

declare dso_local i64 @bpobj_alloc(i32*, i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_add(i32*, i32, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @spa_feature_incr(i32*, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
