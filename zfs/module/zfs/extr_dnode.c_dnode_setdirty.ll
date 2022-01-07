; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dnode.c_dnode_setdirty.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dnode.c_dnode_setdirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i32, i32*, i32*, i32*, i32, i32, i32*, i32, i64, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32** }
%struct.TYPE_18__ = type { i64 }

@B_TRUE = common dso_local global i32 0, align 4
@TXG_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"obj=%llu txg=%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dnode_setdirty(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 13
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %5, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @DMU_OBJECT_IS_SPECIAL(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = call i32 @dsl_dataset_dirty(i32 %23, %struct.TYPE_18__* %24)
  br label %134

26:                                               ; preds = %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = call i32 @DNODE_VERIFY(%struct.TYPE_17__* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = load i32, i32* @B_TRUE, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = call i32 @dmu_objset_userquota_get_ids(%struct.TYPE_17__* %29, i32 %30, %struct.TYPE_18__* %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @TXG_MASK, align 8
  %38 = and i64 %36, %37
  %39 = getelementptr inbounds i32*, i32** %35, i64 %38
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = call i32* @multilist_sublist_lock_obj(i32* %41, %struct.TYPE_17__* %42)
  store i32* %43, i32** %8, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 9
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @TXG_MASK, align 8
  %49 = and i64 %47, %48
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = call i64 @multilist_link_active(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %26
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @multilist_sublist_unlock(i32* %54)
  br label %134

56:                                               ; preds = %26
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 8
  %59 = call i32 @zfs_refcount_is_zero(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 7
  %64 = call i32 @avl_is_empty(i32* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %61, %56
  %68 = phi i1 [ true, %56 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 6
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @TXG_MASK, align 8
  %82 = and i64 %80, %81
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ASSERT0(i32 %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 5
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @TXG_MASK, align 8
  %91 = and i64 %89, %90
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ASSERT0(i32 %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @TXG_MASK, align 8
  %100 = and i64 %98, %99
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ASSERT0(i32 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @dprintf_ds(i32 %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %109, i64 %110)
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %114 = call i32 @multilist_sublist_insert_head(i32* %112, %struct.TYPE_17__* %113)
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @multilist_sublist_unlock(i32* %115)
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @dnode_add_ref(%struct.TYPE_17__* %117, i8* %121)
  %123 = call i32 @VERIFY(i32 %122)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %128 = call i32 @dbuf_dirty(i32 %126, %struct.TYPE_18__* %127)
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %133 = call i32 @dsl_dataset_dirty(i32 %131, %struct.TYPE_18__* %132)
  br label %134

134:                                              ; preds = %67, %53, %20
  ret void
}

declare dso_local i64 @DMU_OBJECT_IS_SPECIAL(i32) #1

declare dso_local i32 @dsl_dataset_dirty(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @DNODE_VERIFY(%struct.TYPE_17__*) #1

declare dso_local i32 @dmu_objset_userquota_get_ids(%struct.TYPE_17__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32* @multilist_sublist_lock_obj(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @multilist_link_active(i32*) #1

declare dso_local i32 @multilist_sublist_unlock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_refcount_is_zero(i32*) #1

declare dso_local i32 @avl_is_empty(i32*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @dprintf_ds(i32, i8*, i32, i64) #1

declare dso_local i32 @multilist_sublist_insert_head(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @dnode_add_ref(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @dbuf_dirty(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
