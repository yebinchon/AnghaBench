; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_local_block_cache.c_ngx_http_tfs_local_block_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_local_block_cache.c_ngx_http_tfs_local_block_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"lookup local block cache, ns addr: %uL, block id: %uD\00", align 1
@NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_BLOCK_CACHE_STAT_COUNT = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"local block cache hit_ratio: %.2f%%\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"lookup local block cache, ns addr: %uL, block id: %uD not found\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_local_block_cache_lookup(%struct.TYPE_17__* %0, i32* %1, i32* %2, %struct.TYPE_20__* %3, %struct.TYPE_18__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %11, align 8
  %19 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ngx_log_debug2(i32 %19, i32* %20, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %15, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = call i32 @ngx_shmtx_lock(i32* %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %16, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %17, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %47 = bitcast %struct.TYPE_20__* %46 to i32*
  %48 = load i32, i32* @NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE, align 4
  %49 = call i64 @ngx_murmur_hash2(i32* %47, i32 %48)
  store i64 %49, i64* %14, align 8
  br label %50

50:                                               ; preds = %195, %70, %60, %5
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %53 = icmp ne %struct.TYPE_16__* %51, %52
  br i1 %53, label %54, label %197

54:                                               ; preds = %50
  %55 = load i64, i64* %14, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %16, align 8
  br label %50

64:                                               ; preds = %54
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  store %struct.TYPE_16__* %73, %struct.TYPE_16__** %16, align 8
  br label %50

74:                                               ; preds = %64
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 3
  %77 = bitcast i32* %76 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %77, %struct.TYPE_19__** %18, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 3
  %81 = call i64 @ngx_http_tfs_block_cache_cmp(%struct.TYPE_20__* %78, i32* %80)
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %184

84:                                               ; preds = %74
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32* @ngx_pcalloc(i32* %90, i32 %96)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %84
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = call i32 @ngx_shmtx_unlock(i32* %106)
  %108 = load i64, i64* @NGX_ERROR, align 8
  store i64 %108, i64* %6, align 8
  br label %217

109:                                              ; preds = %84
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = call i32 @ngx_memcpy(i32* %112, i32 %115, i32 %121)
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = call i32 @ngx_queue_remove(i32* %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  %132 = call i32 @ngx_queue_insert_head(i32* %129, i32* %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %136, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @NGX_HTTP_TFS_BLOCK_CACHE_STAT_COUNT, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %179

146:                                              ; preds = %109
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sitofp i64 %151 to double
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %157, %162
  %164 = sitofp i64 %163 to double
  %165 = fdiv double %152, %164
  %166 = fmul double 1.000000e+02, %165
  store double %166, double* %12, align 8
  %167 = load i32, i32* @NGX_LOG_INFO, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = load double, double* %12, align 8
  %170 = call i32 @ngx_log_error(i32 %167, i32* %168, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), double %169)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %146, %109
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = call i32 @ngx_shmtx_unlock(i32* %181)
  %183 = load i64, i64* @NGX_OK, align 8
  store i64 %183, i64* %6, align 8
  br label %217

184:                                              ; preds = %74
  %185 = load i64, i64* %13, align 8
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  br label %195

191:                                              ; preds = %184
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  br label %195

195:                                              ; preds = %191, %187
  %196 = phi %struct.TYPE_16__* [ %190, %187 ], [ %194, %191 ]
  store %struct.TYPE_16__* %196, %struct.TYPE_16__** %16, align 8
  br label %50

197:                                              ; preds = %50
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %201, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = call i32 @ngx_shmtx_unlock(i32* %205)
  %207 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @ngx_log_debug2(i32 %207, i32* %208, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %211, i32 %214)
  %216 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %216, i64* %6, align 8
  br label %217

217:                                              ; preds = %197, %179, %104
  %218 = load i64, i64* %6, align 8
  ret i64 %218
}

declare dso_local i32 @ngx_log_debug2(i32, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i64 @ngx_murmur_hash2(i32*, i32) #1

declare dso_local i64 @ngx_http_tfs_block_cache_cmp(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
