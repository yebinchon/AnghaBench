; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_local_block_cache.c_ngx_http_tfs_local_block_cache_remove.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_local_block_cache.c_ngx_http_tfs_local_block_cache_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"remove local block cache, ns addr: %uL, block id: %uD\00", align 1
@NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"remove local block cache, ns addr: %uL, block id: %uD not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_tfs_local_block_cache_remove(%struct.TYPE_17__* %0, i32* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ngx_log_debug2(i32 %13, i32* %14, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %9, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = call i32 @ngx_shmtx_lock(i32* %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %10, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %11, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %41 = bitcast %struct.TYPE_19__* %40 to i32*
  %42 = load i32, i32* @NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE, align 4
  %43 = call i64 @ngx_murmur_hash2(i32* %41, i32 %42)
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %64, %54, %3
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %47 = icmp ne %struct.TYPE_16__* %45, %46
  br i1 %47, label %48, label %123

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %10, align 8
  br label %44

58:                                               ; preds = %48
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %10, align 8
  br label %44

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %120, %68
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = bitcast i32* %71 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %72, %struct.TYPE_18__** %12, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = call i64 @ngx_http_tfs_block_cache_cmp(%struct.TYPE_19__* %73, i32* %75)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %69
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %85 = call i32 @ngx_rbtree_delete(%struct.TYPE_20__* %83, %struct.TYPE_16__* %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %90 = call i32 @ngx_slab_free_locked(%struct.TYPE_15__* %88, %struct.TYPE_16__* %89)
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = call i32 @ngx_queue_remove(i32* %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = call i32 @ngx_shmtx_unlock(i32* %95)
  br label %136

97:                                               ; preds = %69
  %98 = load i64, i64* %7, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  br label %108

104:                                              ; preds = %97
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi %struct.TYPE_16__* [ %103, %100 ], [ %107, %104 ]
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %10, align 8
  br label %110

110:                                              ; preds = %108
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %113 = icmp ne %struct.TYPE_16__* %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br label %120

120:                                              ; preds = %114, %110
  %121 = phi i1 [ false, %110 ], [ %119, %114 ]
  br i1 %121, label %69, label %122

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %44
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = call i32 @ngx_shmtx_unlock(i32* %125)
  %127 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ngx_log_debug2(i32 %127, i32* %128, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %123, %79
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i64 @ngx_murmur_hash2(i32*, i32) #1

declare dso_local i64 @ngx_http_tfs_block_cache_cmp(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @ngx_rbtree_delete(%struct.TYPE_20__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_slab_free_locked(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
