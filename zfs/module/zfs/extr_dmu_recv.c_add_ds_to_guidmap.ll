; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_add_ds_to_guidmap.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_recv.c_add_ds_to_guidmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@DS_HOLD_FLAG_DECRYPT = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i64)* @add_ds_to_guidmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_ds_to_guidmap(i8* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @DS_HOLD_FLAG_DECRYPT, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  store i32 %22, i32* %14, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @dsl_pool_hold(i8* %27, i32 %28, i32** %10)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %5, align 4
  br label %91

34:                                               ; preds = %21
  %35 = load i32, i32* @KM_SLEEP, align 4
  %36 = call %struct.TYPE_10__* @kmem_alloc(i32 24, i32 %35)
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %12, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %41 = call i32 @dsl_dataset_own_obj(i32* %37, i32 %38, i32 %39, %struct.TYPE_10__* %40, i32** %11)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %34
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @dmu_objset_from_ds(i32* %48, %struct.TYPE_9__** %13)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @FTAG, align 4
  %56 = call i32 @dsl_dataset_disown(i32* %53, i32 %54, i32 %55)
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* @FTAG, align 4
  %59 = call i32 @dsl_pool_rele(i32* %57, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %61 = call i32 @kmem_free(%struct.TYPE_10__* %60, i32 24)
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %5, align 4
  br label %91

63:                                               ; preds = %47
  %64 = load i32, i32* @B_TRUE, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %44
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call %struct.TYPE_11__* @dsl_dataset_phys(i32* %71)
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = call i32 @avl_add(i32* %80, %struct.TYPE_10__* %81)
  br label %86

83:                                               ; preds = %34
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %85 = call i32 @kmem_free(%struct.TYPE_10__* %84, i32 24)
  br label %86

86:                                               ; preds = %83, %67
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* @FTAG, align 4
  %89 = call i32 @dsl_pool_rele(i32* %87, i32 %88)
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %86, %52, %32
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_hold(i8*, i32, i32**) #1

declare dso_local %struct.TYPE_10__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @dsl_dataset_own_obj(i32*, i32, i32, %struct.TYPE_10__*, i32**) #1

declare dso_local i32 @dmu_objset_from_ds(i32*, %struct.TYPE_9__**) #1

declare dso_local i32 @dsl_dataset_disown(i32*, i32, i32) #1

declare dso_local i32 @dsl_pool_rele(i32*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_11__* @dsl_dataset_phys(i32*) #1

declare dso_local i32 @avl_add(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
