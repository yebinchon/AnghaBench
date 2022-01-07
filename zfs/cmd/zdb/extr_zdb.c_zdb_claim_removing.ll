; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_zdb_claim_removing.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_zdb_claim_removing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_26__**, i32* }
%struct.TYPE_26__ = type { i64, i32* }
%struct.TYPE_22__ = type { i32 }

@dump_opt = common dso_local global i64* null, align 8
@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@RANGE_SEG64 = common dso_local global i32 0, align 4
@SM_ALLOC = common dso_local global i32 0, align 4
@range_tree_add = common dso_local global i32 0, align 4
@load_unflushed_svr_segs_cb = common dso_local global i32 0, align 4
@claim_segment_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_22__*)* @zdb_claim_removing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zdb_claim_removing(%struct.TYPE_25__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %11 = load i64*, i64** @dump_opt, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 76
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %131

16:                                               ; preds = %2
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %20 = icmp eq %struct.TYPE_24__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %131

22:                                               ; preds = %16
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %24 = load i32, i32* @SCL_CONFIG, align 4
  %25 = load i32, i32* @FTAG, align 4
  %26 = load i32, i32* @RW_READER, align 4
  %27 = call i32 @spa_config_enter(%struct.TYPE_25__* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  store %struct.TYPE_24__* %30, %struct.TYPE_24__** %5, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_23__* @vdev_lookup_top(%struct.TYPE_25__* %31, i32 %34)
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %6, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %7, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %40, align 8
  %42 = call i64 @range_tree_space(%struct.TYPE_23__* %41)
  %43 = call i32 @ASSERT0(i64 %42)
  %44 = load i32, i32* @RANGE_SEG64, align 4
  %45 = call %struct.TYPE_23__* @range_tree_create(i32* null, i32 %44, i32* null, i32 0, i32 0)
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %46

46:                                               ; preds = %89, %22
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %46
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %55, i64 %56
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  store %struct.TYPE_26__* %58, %struct.TYPE_26__** %10, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i64 @vdev_indirect_mapping_max_offset(i32* %62)
  %64 = icmp sge i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %92

66:                                               ; preds = %52
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %68 = call i64 @range_tree_space(%struct.TYPE_23__* %67)
  %69 = call i32 @ASSERT0(i64 %68)
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %79 = load i32, i32* @SM_ALLOC, align 4
  %80 = call i32 @space_map_load(i32* %77, %struct.TYPE_23__* %78, i32 %79)
  %81 = call i32 @VERIFY0(i32 %80)
  br label %82

82:                                               ; preds = %74, %66
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %84 = load i32, i32* @range_tree_add, align 4
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = call i32 @range_tree_vacate(%struct.TYPE_23__* %83, i32 %84, %struct.TYPE_23__* %87)
  br label %89

89:                                               ; preds = %82
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %46

92:                                               ; preds = %65, %46
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %94 = call i32 @range_tree_destroy(%struct.TYPE_23__* %93)
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %96 = load i32, i32* @load_unflushed_svr_segs_cb, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %98 = call i32 @iterate_through_spacemap_logs(%struct.TYPE_25__* %95, i32 %96, %struct.TYPE_24__* %97)
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %100, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i64 @vdev_indirect_mapping_max_offset(i32* %102)
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i64 @vdev_indirect_mapping_max_offset(i32* %107)
  %109 = sub nsw i64 %106, %108
  %110 = call i32 @range_tree_clear(%struct.TYPE_23__* %101, i64 %103, i64 %109)
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = call i64 @range_tree_space(%struct.TYPE_23__* %113)
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  %124 = load i32, i32* @claim_segment_cb, align 4
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = call i32 @range_tree_vacate(%struct.TYPE_23__* %123, i32 %124, %struct.TYPE_23__* %125)
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %128 = load i32, i32* @SCL_CONFIG, align 4
  %129 = load i32, i32* @FTAG, align 4
  %130 = call i32 @spa_config_exit(%struct.TYPE_25__* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %92, %21, %15
  ret void
}

declare dso_local i32 @spa_config_enter(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @vdev_lookup_top(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ASSERT0(i64) #1

declare dso_local i64 @range_tree_space(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @range_tree_create(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @vdev_indirect_mapping_max_offset(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @space_map_load(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @range_tree_vacate(%struct.TYPE_23__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @range_tree_destroy(%struct.TYPE_23__*) #1

declare dso_local i32 @iterate_through_spacemap_logs(%struct.TYPE_25__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @range_tree_clear(%struct.TYPE_23__*, i64, i64) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_25__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
