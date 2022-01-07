; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_local_block_cache.c_ngx_http_tfs_local_block_cache_batch_lookup.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_local_block_cache.c_ngx_http_tfs_local_block_cache_batch_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64, i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"batch lookup local block cache, block count: %ui\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_BLOCK_CACHE_STAT_COUNT = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"local block cache hit_ratio: %.2f%%\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"batch lookup local block cache, hit_count: %ui\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_local_block_cache_batch_lookup(%struct.TYPE_18__* %0, i32* %1, i32* %2, %struct.TYPE_22__* %3, %struct.TYPE_22__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_20__*, align 8
  %23 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %11, align 8
  %24 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ngx_log_debug1(i32 %24, i32* %25, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %21, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %17, align 8
  %36 = load i64, i64* @NGX_ERROR, align 8
  store i64 %36, i64* %13, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = call i32 @ngx_shmtx_lock(i32* %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %19, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %14, align 8
  br label %46

46:                                               ; preds = %193, %5
  %47 = load i64, i64* %14, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %198

52:                                               ; preds = %46
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  store %struct.TYPE_17__* %58, %struct.TYPE_17__** %18, align 8
  %59 = load i32*, i32** %21, align 8
  %60 = load i32, i32* @NGX_HTTP_TFS_BLOCK_CACHE_KEY_SIZE, align 4
  %61 = call i64 @ngx_murmur_hash2(i32* %59, i32 %60)
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %179, %82, %72, %52
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %65 = icmp ne %struct.TYPE_17__* %63, %64
  br i1 %65, label %66, label %181

66:                                               ; preds = %62
  %67 = load i64, i64* %15, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %18, align 8
  br label %62

76:                                               ; preds = %66
  %77 = load i64, i64* %15, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  store %struct.TYPE_17__* %85, %struct.TYPE_17__** %18, align 8
  br label %62

86:                                               ; preds = %76
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = bitcast i32* %88 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %22, align 8
  %90 = load i32*, i32** %21, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 3
  %93 = call i64 @ngx_http_tfs_block_cache_cmp(i32* %90, i32* %92)
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %13, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %168

96:                                               ; preds = %86
  %97 = load i32*, i32** %8, align 8
  %98 = call i8* @ngx_pcalloc(i32* %97, i32 16)
  %99 = bitcast i8* %98 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %99, %struct.TYPE_19__** %23, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %101 = icmp eq %struct.TYPE_19__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = call i32 @ngx_shmtx_unlock(i32* %104)
  %106 = load i64, i64* @NGX_ERROR, align 8
  store i64 %106, i64* %6, align 8
  br label %265

107:                                              ; preds = %96
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = call i8* @ngx_pcalloc(i32* %113, i32 %119)
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  store i32* %121, i32** %123, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %107
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = call i32 @ngx_shmtx_unlock(i32* %130)
  %132 = load i64, i64* @NGX_ERROR, align 8
  store i64 %132, i64* %6, align 8
  br label %265

133:                                              ; preds = %107
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call i32 @ngx_memcpy(i32* %136, i32 %139, i32 %145)
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %148 = call i64 @ngx_array_push(%struct.TYPE_22__* %147)
  %149 = inttoptr i64 %148 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %149, %struct.TYPE_21__** %20, align 8
  %150 = load i32*, i32** %21, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  store i32* %150, i32** %152, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  store %struct.TYPE_19__* %153, %struct.TYPE_19__** %155, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = call i32 @ngx_queue_remove(i32* %157)
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = call i32 @ngx_queue_insert_head(i32* %162, i32* %164)
  %166 = load i64, i64* %16, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %16, align 8
  br label %181

168:                                              ; preds = %86
  %169 = load i64, i64* %13, align 8
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  br label %179

175:                                              ; preds = %168
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi %struct.TYPE_17__* [ %174, %171 ], [ %178, %175 ]
  store %struct.TYPE_17__* %180, %struct.TYPE_17__** %18, align 8
  br label %62

181:                                              ; preds = %133, %62
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %184 = icmp eq %struct.TYPE_17__* %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %189, align 8
  br label %192

192:                                              ; preds = %185, %181
  br label %193

193:                                              ; preds = %192
  %194 = load i64, i64* %14, align 8
  %195 = add nsw i64 %194, 1
  store i64 %195, i64* %14, align 8
  %196 = load i32*, i32** %21, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %197, i32** %21, align 8
  br label %46

198:                                              ; preds = %46
  %199 = load i64, i64* %16, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, %199
  store i64 %205, i64* %203, align 8
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @NGX_HTTP_TFS_BLOCK_CACHE_STAT_COUNT, align 8
  %212 = icmp sge i64 %210, %211
  br i1 %212, label %213, label %246

213:                                              ; preds = %198
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = sitofp i64 %218 to double
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %224, %229
  %231 = sitofp i64 %230 to double
  %232 = fdiv double %219, %231
  %233 = fmul double 1.000000e+02, %232
  store double %233, double* %12, align 8
  %234 = load i32, i32* @NGX_LOG_INFO, align 4
  %235 = load i32*, i32** %9, align 8
  %236 = load double, double* %12, align 8
  %237 = call i32 @ngx_log_error(i32 %234, i32* %235, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), double %236)
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 1
  store i64 0, i64* %241, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  store i64 0, i64* %245, align 8
  br label %246

246:                                              ; preds = %213, %198
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = call i32 @ngx_shmtx_unlock(i32* %248)
  %250 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %251 = load i32*, i32** %9, align 8
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @ngx_log_debug1(i32 %250, i32* %251, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %254)
  %256 = load i64, i64* %16, align 8
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp slt i64 %256, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %246
  %262 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %262, i64* %13, align 8
  br label %263

263:                                              ; preds = %261, %246
  %264 = load i64, i64* %13, align 8
  store i64 %264, i64* %6, align 8
  br label %265

265:                                              ; preds = %263, %128, %102
  %266 = load i64, i64* %6, align 8
  ret i64 %266
}

declare dso_local i32 @ngx_log_debug1(i32, i32*, i32, i8*, i64) #1

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i64 @ngx_murmur_hash2(i32*, i32) #1

declare dso_local i64 @ngx_http_tfs_block_cache_cmp(i32*, i32*) #1

declare dso_local i8* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local i64 @ngx_array_push(%struct.TYPE_22__*) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
