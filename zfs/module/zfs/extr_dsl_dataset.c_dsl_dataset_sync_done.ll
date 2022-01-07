; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_sync_done.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_sync_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32*, i64, i32* }
%struct.TYPE_19__ = type { i64 }

@dsl_deadlist_insert_alloc_cb = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@TXG_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_sync_done(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  %11 = load i32, i32* @dsl_deadlist_insert_alloc_cb, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = call i32 @bplist_iterate(i32* %10, i32 %11, i32* %13, %struct.TYPE_19__* %14)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = call i64 @dsl_deadlist_is_open(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = call i32 @dsl_flush_pending_livelist(%struct.TYPE_18__* %23, %struct.TYPE_19__* %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = call i64 @dsl_livelist_should_disable(%struct.TYPE_18__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = load i32, i32* @B_TRUE, align 4
  %35 = call i32 @dsl_dir_remove_livelist(%struct.TYPE_20__* %32, %struct.TYPE_19__* %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %22
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = call i32 @dsl_bookmark_sync_done(%struct.TYPE_18__* %38, %struct.TYPE_19__* %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @multilist_destroy(i32* %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %37
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i32, i32* @B_FALSE, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TXG_MASK, align 8
  %66 = and i64 %64, %65
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  store i32 %58, i32* %67, align 4
  br label %80

68:                                               ; preds = %52
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TXG_MASK, align 8
  %76 = and i64 %74, %75
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ASSERT0(i32 %78)
  br label %80

80:                                               ; preds = %68, %57
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %83 = call i32 @dmu_tx_get_txg(%struct.TYPE_19__* %82)
  %84 = call i32 @dmu_objset_is_dirty(%struct.TYPE_17__* %81, i32 %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %93 = call i32 @dmu_buf_rele(i32 %91, %struct.TYPE_18__* %92)
  ret void
}

declare dso_local i32 @bplist_iterate(i32*, i32, i32*, %struct.TYPE_19__*) #1

declare dso_local i64 @dsl_deadlist_is_open(i32*) #1

declare dso_local i32 @dsl_flush_pending_livelist(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @dsl_livelist_should_disable(%struct.TYPE_18__*) #1

declare dso_local i32 @dsl_dir_remove_livelist(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @dsl_bookmark_sync_done(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @multilist_destroy(i32*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_objset_is_dirty(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @dmu_tx_get_txg(%struct.TYPE_19__*) #1

declare dso_local i32 @dmu_buf_rele(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
