; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_planner.c_timescaledb_get_relation_info_hook.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_planner.c_timescaledb_get_relation_info_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32*, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32 }

@ts_guc_enable_constraint_exclusion = common dso_local global i32 0, align 4
@ts_guc_enable_transparent_decompression = common dso_local global i64 0, align 8
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, i32, i32, %struct.TYPE_24__*)* @timescaledb_get_relation_info_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timescaledb_get_relation_info_hook(%struct.TYPE_26__* %0, i32 %1, i32 %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %8, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %20 = call i32 @prev_get_relation_info_hook(%struct.TYPE_26__* %16, i32 %17, i32 %18, %struct.TYPE_24__* %19)
  %21 = call i32 (...) @ts_extension_is_loaded()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ts_guc_enable_constraint_exclusion, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %4
  br label %131

27:                                               ; preds = %23
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_25__* @rt_fetch(i32 %30, i32 %35)
  store %struct.TYPE_25__* %36, %struct.TYPE_25__** %9, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %74, label %41

41:                                               ; preds = %27
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %43 = call i64 @is_rte_hypertable(%struct.TYPE_25__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @ts_hypertable_cache_get_entry(i32* %47, i32 %50)
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @Assert(i32 %60)
  %62 = call i8* @palloc0(i32 4)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %71 = call i32 @ts_plan_expand_hypertable_chunks(i32* %66, %struct.TYPE_26__* %67, i32 %68, i32 %69, %struct.TYPE_24__* %70)
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @ts_cache_release(i32* %72)
  br label %74

74:                                               ; preds = %45, %41, %27
  %75 = load i64, i64* @ts_guc_enable_transparent_decompression, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %131

77:                                               ; preds = %74
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %80 = call i64 @is_append_child(%struct.TYPE_24__* %78, %struct.TYPE_25__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %131

82:                                               ; preds = %77
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @get_parentoid(%struct.TYPE_26__* %83, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = call i32* (...) @ts_hypertable_cache_pin()
  store i32* %88, i32** %13, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32* @ts_hypertable_cache_get_entry(i32* %89, i32 %90)
  store i32* %91, i32** %14, align 8
  %92 = load i32*, i32** %14, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %128

94:                                               ; preds = %82
  %95 = load i32*, i32** %14, align 8
  %96 = call i64 @TS_HYPERTABLE_HAS_COMPRESSION(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %128

98:                                               ; preds = %94
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.TYPE_27__* @ts_chunk_get_by_relid(i32 %101, i32 0, i32 1)
  store %struct.TYPE_27__* %102, %struct.TYPE_27__** %15, align 8
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %98
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  %113 = zext i1 %112 to i32
  %114 = call i32 @Assert(i32 %113)
  %115 = call i8* @palloc0(i32 4)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 1
  store i32* %116, i32** %118, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = bitcast i32* %121 to %struct.TYPE_23__*
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 4
  %124 = load i32, i32* @NIL, align 4
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %108, %98
  br label %128

128:                                              ; preds = %127, %94, %82
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @ts_cache_release(i32* %129)
  br label %131

131:                                              ; preds = %26, %128, %77, %74
  ret void
}

declare dso_local i32 @prev_get_relation_info_hook(%struct.TYPE_26__*, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ts_extension_is_loaded(...) #1

declare dso_local %struct.TYPE_25__* @rt_fetch(i32, i32) #1

declare dso_local i64 @is_rte_hypertable(%struct.TYPE_25__*) #1

declare dso_local i32* @ts_hypertable_cache_pin(...) #1

declare dso_local i32* @ts_hypertable_cache_get_entry(i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @palloc0(i32) #1

declare dso_local i32 @ts_plan_expand_hypertable_chunks(i32*, %struct.TYPE_26__*, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ts_cache_release(i32*) #1

declare dso_local i64 @is_append_child(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @get_parentoid(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @TS_HYPERTABLE_HAS_COMPRESSION(i32*) #1

declare dso_local %struct.TYPE_27__* @ts_chunk_get_by_relid(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
