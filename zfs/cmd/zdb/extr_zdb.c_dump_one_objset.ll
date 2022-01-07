; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_one_objset.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dump_one_objset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@SPA_FEATURES = common dso_local global i64 0, align 8
@spa_feature_table = common dso_local global %struct.TYPE_14__* null, align 8
@ZFEATURE_FLAG_PER_DATASET = common dso_local global i32 0, align 4
@dataset_feature_count = common dso_local global i32* null, align 8
@remap_deadlist_count = common dso_local global i32 0, align 4
@global_feature_count = common dso_local global i32* null, align 8
@SPA_FEATURE_REDACTION_BOOKMARKS = common dso_local global i64 0, align 8
@ZBM_FLAG_HAS_FBN = common dso_local global i32 0, align 4
@SPA_FEATURE_BOOKMARK_WRITTEN = common dso_local global i64 0, align 8
@SPA_FEATURE_LIVELIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @dump_one_objset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_one_objset(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @FTAG, align 4
  %12 = call i32 @open_objset(i8* %10, i32 %11, i32** %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %124

16:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @SPA_FEATURES, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_15__* @dmu_objset_ds(i32* %22)
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @dsl_dataset_feature_is_active(%struct.TYPE_15__* %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %42

28:                                               ; preds = %21
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** @spa_feature_table, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ZFEATURE_FLAG_PER_DATASET, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load i32*, i32** @dataset_feature_count, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %28, %27
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %17

45:                                               ; preds = %17
  %46 = load i32*, i32** %7, align 8
  %47 = call %struct.TYPE_15__* @dmu_objset_ds(i32* %46)
  %48 = call i64 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_15__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @remap_deadlist_count, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @remap_deadlist_count, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32*, i32** %7, align 8
  %55 = call %struct.TYPE_15__* @dmu_objset_ds(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = call %struct.TYPE_13__* @avl_first(i32* %56)
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %9, align 8
  br label %58

58:                                               ; preds = %93, %53
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = icmp ne %struct.TYPE_13__* %59, null
  br i1 %60, label %61, label %99

61:                                               ; preds = %58
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @mos_obj_refd(i64 %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load i32*, i32** @global_feature_count, align 8
  %74 = load i64, i64* @SPA_FEATURE_REDACTION_BOOKMARKS, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %61
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ZBM_FLAG_HAS_FBN, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i32*, i32** @global_feature_count, align 8
  %88 = load i64, i64* @SPA_FEATURE_BOOKMARK_WRITTEN, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %78
  br label %93

93:                                               ; preds = %92
  %94 = load i32*, i32** %7, align 8
  %95 = call %struct.TYPE_15__* @dmu_objset_ds(i32* %94)
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = call %struct.TYPE_13__* @AVL_NEXT(i32* %96, %struct.TYPE_13__* %97)
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %9, align 8
  br label %58

99:                                               ; preds = %58
  %100 = load i32*, i32** %7, align 8
  %101 = call %struct.TYPE_15__* @dmu_objset_ds(i32* %100)
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = call i64 @dsl_deadlist_is_open(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %99
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @dmu_objset_is_snapshot(i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = load i32*, i32** @global_feature_count, align 8
  %113 = load i64, i64* @SPA_FEATURE_LIVELIST, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %107, %99
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @dump_objset(i32* %118)
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* @FTAG, align 4
  %122 = call i32 @close_objset(i32* %120, i32 %121)
  %123 = call i32 (...) @fuid_table_destroy()
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %117, %15
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @open_objset(i8*, i32, i32**) #1

declare dso_local i32 @dsl_dataset_feature_is_active(%struct.TYPE_15__*, i64) #1

declare dso_local %struct.TYPE_15__* @dmu_objset_ds(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dsl_dataset_remap_deadlist_exists(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_13__* @avl_first(i32*) #1

declare dso_local i32 @mos_obj_refd(i64) #1

declare dso_local %struct.TYPE_13__* @AVL_NEXT(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @dsl_deadlist_is_open(i32*) #1

declare dso_local i32 @dmu_objset_is_snapshot(i32*) #1

declare dso_local i32 @dump_objset(i32*) #1

declare dso_local i32 @close_objset(i32*, i32) #1

declare dso_local i32 @fuid_table_destroy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
