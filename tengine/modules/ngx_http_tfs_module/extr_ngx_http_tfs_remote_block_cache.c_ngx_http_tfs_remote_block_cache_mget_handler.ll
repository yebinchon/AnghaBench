; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_remote_block_cache.c_ngx_http_tfs_remote_block_cache_mget_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_remote_block_cache.c_ngx_http_tfs_remote_block_cache_mget_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_26__*, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i64, i32* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_30__, i32, i32, %struct.TYPE_28__, i32 }
%struct.TYPE_30__ = type { i64, i64, i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_29__, i32, %struct.TYPE_27__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_27__ = type { i32*, i64 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32*, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_31__* }

@NGX_HTTP_TFS_MAX_BATCH_COUNT = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_ETAIR_SUCCESS = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_REMOTE_BLOCK_CACHE_VALUE_BASE_SIZE = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_LOCAL_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_REMOTE_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"remote block cache hit, ns addr: %V, block id: %uD\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"batch lookup remote block cache, hit_count: %ui\00", align 1
@ngx_http_tfs_batch_process_start = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"remote block cache miss\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i32, i8*)* @ngx_http_tfs_remote_block_cache_mget_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_remote_block_cache_mget_handler(%struct.TYPE_24__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_22__, align 8
  %18 = alloca %struct.TYPE_21__, align 8
  %19 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %21, %struct.TYPE_33__** %19, align 8
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  store %struct.TYPE_31__* %24, %struct.TYPE_31__** %14, align 8
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %27, align 8
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i64 %32
  store %struct.TYPE_32__* %33, %struct.TYPE_32__** %16, align 8
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %37, %41
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @NGX_HTTP_TFS_MAX_BATCH_COUNT, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i64, i64* @NGX_HTTP_TFS_MAX_BATCH_COUNT, align 8
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %46, %3
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @NGX_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %274

52:                                               ; preds = %48
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %54, align 8
  store %struct.TYPE_23__* %55, %struct.TYPE_23__** %15, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %239, %52
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %244

62:                                               ; preds = %56
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NGX_HTTP_ETAIR_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %239

69:                                               ; preds = %62
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %8, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %7, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %238

81:                                               ; preds = %69
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE_VALUE_BASE_SIZE, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %238

89:                                               ; preds = %81
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  store i32 %91, i32* %92, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  store i32* %94, i32** %8, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = bitcast i32* %95 to i64*
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  store i64 %97, i64* %98, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = bitcast i32* %99 to i64*
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %9, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  store i32* %103, i32** %7, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %228

106:                                              ; preds = %89
  store i64 0, i64* %12, align 8
  br label %107

107:                                              ; preds = %131, %106
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %107
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %113 = load i64, i64* %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %117, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %111
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %134

130:                                              ; preds = %121, %111
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %12, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %12, align 8
  br label %107

134:                                              ; preds = %129, %107
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* %10, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %239

139:                                              ; preds = %134
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 1
  store i64 %140, i64* %145, align 8
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* %9, align 8
  %150 = mul i64 %149, 4
  %151 = call i32* @ngx_pcalloc(i32 %148, i64 %150)
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %153 = load i64, i64* %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 0
  store i32* %151, i32** %156, align 8
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %158 = load i64, i64* %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %171

164:                                              ; preds = %139
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %169 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %170 = call i32 @ngx_http_tfs_finalize_request(i32 %167, %struct.TYPE_31__* %168, i32 %169)
  br label %285

171:                                              ; preds = %139
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %173 = load i64, i64* %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = load i64, i64* %9, align 8
  %180 = mul i64 %179, 4
  %181 = call i32 @ngx_memcpy(i32* %177, i32* %178, i64 %180)
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %207

189:                                              ; preds = %171
  %190 = load i64, i64* %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  store i64 %190, i64* %191, align 8
  %192 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %193 = load i64, i64* %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  store i32* %197, i32** %198, align 8
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @ngx_http_tfs_local_block_cache_insert(i32 %202, i32 %205, %struct.TYPE_22__* %17, %struct.TYPE_21__* %18)
  br label %207

207:                                              ; preds = %189, %171
  %208 = load i64, i64* %13, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %13, align 8
  %210 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %212 = load i64, i64* %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i32 0, i32 1
  store i32 %210, i32* %214, align 8
  %215 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %222 = load i64, i64* %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @ngx_log_debug2(i32 %215, i32 %218, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32* %220, i64 %226)
  br label %237

228:                                              ; preds = %89
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @ngx_http_tfs_remote_block_cache_remove(%struct.TYPE_33__* %229, i32 %232, i32 %235, %struct.TYPE_22__* %17)
  br label %237

237:                                              ; preds = %228, %207
  br label %238

238:                                              ; preds = %237, %81, %69
  br label %239

239:                                              ; preds = %238, %138, %68
  %240 = load i64, i64* %11, align 8
  %241 = add nsw i64 %240, 1
  store i64 %241, i64* %11, align 8
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 1
  store %struct.TYPE_23__* %243, %struct.TYPE_23__** %15, align 8
  br label %56

244:                                              ; preds = %56
  %245 = load i64, i64* %13, align 8
  %246 = icmp sgt i64 %245, 0
  br i1 %246, label %247, label %273

247:                                              ; preds = %244
  %248 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i64, i64* %13, align 8
  %253 = call i32 @ngx_log_debug1(i32 %248, i32 %251, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %252)
  %254 = load i64, i64* %13, align 8
  %255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %254
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %257, align 8
  %262 = load i64, i64* %13, align 8
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %262, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %247
  %268 = load i32, i32* @ngx_http_tfs_batch_process_start, align 4
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  %271 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %271, i32* %5, align 4
  br label %272

272:                                              ; preds = %267, %247
  br label %273

273:                                              ; preds = %272, %244
  br label %281

274:                                              ; preds = %48
  %275 = load i32, i32* @NGX_OK, align 4
  store i32 %275, i32* %5, align 4
  %276 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %277 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @ngx_log_debug0(i32 %276, i32 %279, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %281

281:                                              ; preds = %274, %273
  %282 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %283 = load i32, i32* %5, align 4
  %284 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_31__* %282, i32 %283)
  br label %285

285:                                              ; preds = %281, %164
  ret void
}

declare dso_local i32* @ngx_pcalloc(i32, i64) #1

declare dso_local i32 @ngx_http_tfs_finalize_request(i32, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @ngx_http_tfs_local_block_cache_insert(i32, i32, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i64) #1

declare dso_local i32 @ngx_http_tfs_remote_block_cache_remove(%struct.TYPE_33__*, i32, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
