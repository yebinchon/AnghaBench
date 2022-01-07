; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_bookmark_sync_done.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_bookmark_sync_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64 }

@ZBM_FLAG_HAS_FBN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_bookmark_sync_done(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call %struct.TYPE_16__* @dmu_tx_pool(i32* %7)
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %5, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = call i64 @dsl_dataset_is_snapshot(%struct.TYPE_17__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %68

13:                                               ; preds = %2
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = call %struct.TYPE_18__* @avl_last(i32* %15)
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %6, align 8
  br label %17

17:                                               ; preds = %63, %13
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = call %struct.TYPE_20__* @dsl_dataset_phys(%struct.TYPE_17__* %25)
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %24, %28
  br label %30

30:                                               ; preds = %20, %17
  %31 = phi i1 [ false, %17 ], [ %29, %20 ]
  br i1 %31, label %32, label %68

32:                                               ; preds = %30
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ZBM_FLAG_HAS_FBN, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @zap_update(i32 %47, i32 %50, i32 %53, i32 4, i32 1, %struct.TYPE_19__* %55, i32* %56)
  %58 = call i32 @VERIFY0(i32 %57)
  %59 = load i64, i64* @B_FALSE, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %37, %32
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = call %struct.TYPE_18__* @AVL_PREV(i32* %65, %struct.TYPE_18__* %66)
  store %struct.TYPE_18__* %67, %struct.TYPE_18__** %6, align 8
  br label %17

68:                                               ; preds = %12, %30
  ret void
}

declare dso_local %struct.TYPE_16__* @dmu_tx_pool(i32*) #1

declare dso_local i64 @dsl_dataset_is_snapshot(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @avl_last(i32*) #1

declare dso_local %struct.TYPE_20__* @dsl_dataset_phys(%struct.TYPE_17__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_update(i32, i32, i32, i32, i32, %struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_18__* @AVL_PREV(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
