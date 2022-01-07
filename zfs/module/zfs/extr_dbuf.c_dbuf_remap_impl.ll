; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dbuf_remap_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf.c_dbuf_remap_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i32, i32 }

@dbuf_remap_impl_callback = common dso_local global i32 0, align 4
@SPA_FEATURE_LIVELIST = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_16__*, i32*, i32*)* @dbuf_remap_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbuf_remap_impl(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = bitcast %struct.TYPE_16__* %9 to i8*
  %15 = bitcast %struct.TYPE_16__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32* @dmu_objset_spa(i64 %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @spa_get_dsl(i32* %20)
  %22 = call i32 @dsl_pool_sync_context(i32 %21)
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  store i32* %32, i32** %33, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* @dbuf_remap_impl_callback, align 4
  %36 = call i64 @spa_remap_blkptr(i32* %34, %struct.TYPE_16__* %9, i32 %35, %struct.TYPE_15__* %11)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %111

38:                                               ; preds = %4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i64 @spa_meta_objset(i32* %42)
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %94

45:                                               ; preds = %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.TYPE_13__* @dmu_objset_ds(i64 %48)
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %12, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  %54 = call i64 @dsl_deadlist_is_open(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %45
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %59, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %56
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = call i32 @BP_IS_EMBEDDED(%struct.TYPE_16__* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = call i32 @dsl_dir_is_clone(%struct.TYPE_17__* %75)
  %77 = call i32 @ASSERT(i32 %76)
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* @SPA_FEATURE_LIVELIST, align 4
  %80 = call i32 @spa_feature_is_enabled(i32* %78, i32 %79)
  %81 = call i32 @ASSERT(i32 %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = call i32 @bplist_append(i32* %85, %struct.TYPE_16__* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = call i32 @bplist_append(i32* %91, %struct.TYPE_16__* %9)
  br label %93

93:                                               ; preds = %66, %56, %45
  br label %94

94:                                               ; preds = %93, %38
  %95 = load i32*, i32** %7, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* @RW_WRITER, align 4
  %100 = call i32 @rw_enter(i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = bitcast %struct.TYPE_16__* %102 to i8*
  %104 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 8, i1 false)
  %105 = load i32*, i32** %7, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @rw_exit(i32* %108)
  br label %110

110:                                              ; preds = %107, %101
  br label %111

111:                                              ; preds = %110, %4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @dmu_objset_spa(i64) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @dsl_pool_sync_context(i32) #2

declare dso_local i32 @spa_get_dsl(i32*) #2

declare dso_local i64 @spa_remap_blkptr(i32*, %struct.TYPE_16__*, i32, %struct.TYPE_15__*) #2

declare dso_local i64 @spa_meta_objset(i32*) #2

declare dso_local %struct.TYPE_13__* @dmu_objset_ds(i64) #2

declare dso_local i64 @dsl_deadlist_is_open(i32*) #2

declare dso_local i32 @BP_IS_EMBEDDED(%struct.TYPE_16__*) #2

declare dso_local i32 @dsl_dir_is_clone(%struct.TYPE_17__*) #2

declare dso_local i32 @spa_feature_is_enabled(i32*, i32) #2

declare dso_local i32 @bplist_append(i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @rw_enter(i32*, i32) #2

declare dso_local i32 @rw_exit(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
