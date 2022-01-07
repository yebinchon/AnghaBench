; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_init_shm_zone.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_init_shm_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, %struct.TYPE_29__*, i32*, %struct.TYPE_24__ }
%struct.TYPE_29__ = type { i32, i64, i32, i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, i32* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_25__*, %struct.TYPE_30__* }
%struct.TYPE_25__ = type { i64, i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_29__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__, %struct.TYPE_29__* }
%struct.TYPE_27__ = type { i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@check_peers_ctx = common dso_local global %struct.TYPE_31__* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_cycle = common dso_local global %struct.TYPE_26__* null, align 8
@ngx_http_upstream_check_shm_generation = common dso_local global i32 0, align 4
@ngx_http_upstream_check_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"http upstream check, find oshm_zone:%p, opeers_shm: %p\00", align 1
@MAX_DYNAMIC_PEER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"http upstream check, inherit opeer: %V \00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"http upstream check_shm_size is too small, you should specify a larger size.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_28__*, i8*)* @ngx_http_upstream_check_init_shm_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_check_init_shm_zone(%struct.TYPE_28__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca %struct.TYPE_31__*, align 8
  %17 = alloca %struct.TYPE_30__*, align 8
  %18 = alloca %struct.TYPE_33__*, align 8
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca %struct.TYPE_29__*, align 8
  %21 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %21, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %20, align 8
  %22 = call i32 @ngx_str_set(i32* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** @check_peers_ctx, align 8
  store %struct.TYPE_31__* %23, %struct.TYPE_31__** %16, align 8
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %25 = icmp eq %struct.TYPE_31__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* @NGX_OK, align 8
  store i64 %27, i64* %3, align 8
  br label %286

28:                                               ; preds = %2
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  store %struct.TYPE_29__* %35, %struct.TYPE_29__** %12, align 8
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %37 = icmp eq %struct.TYPE_29__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** @ngx_cycle, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %40, align 8
  store %struct.TYPE_29__* %41, %struct.TYPE_29__** %12, align 8
  br label %42

42:                                               ; preds = %38, %28
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %14, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %52, %struct.TYPE_29__** %21, align 8
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i8*, i8** %5, align 8
  %68 = bitcast i8* %67 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %68, %struct.TYPE_29__** %20, align 8
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %58, %50
  br label %70

70:                                               ; preds = %69, %42
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %118, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @ngx_http_upstream_check_shm_generation, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %78 = load i32, i32* @ngx_http_upstream_check_shm_generation, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @ngx_http_upstream_check_get_shm_name(i32* %7, %struct.TYPE_29__* %77, i32 %79)
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** @ngx_cycle, align 8
  %82 = bitcast %struct.TYPE_26__* %81 to i32*
  %83 = call %struct.TYPE_28__* @ngx_shared_memory_find(i32* %82, i32* %7, i32* @ngx_http_upstream_check_module)
  store %struct.TYPE_28__* %83, %struct.TYPE_28__** %13, align 8
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %85 = icmp ne %struct.TYPE_28__* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %76
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %88, align 8
  store %struct.TYPE_29__* %89, %struct.TYPE_29__** %21, align 8
  %90 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %97 = call i32 @ngx_log_debug2(i32 %90, i32 %94, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_28__* %95, %struct.TYPE_29__* %96)
  br label %98

98:                                               ; preds = %86, %76
  br label %99

99:                                               ; preds = %98, %73
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load i32, i32* @MAX_DYNAMIC_PEER, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 16
  %106 = add i64 32, %105
  store i64 %106, i64* %6, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i8* @ngx_slab_alloc(i32* %107, i64 %108)
  %110 = bitcast i8* %109 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %110, %struct.TYPE_29__** %20, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %112 = icmp eq %struct.TYPE_29__* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  br label %278

114:                                              ; preds = %99
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @ngx_memzero(%struct.TYPE_29__* %115, i64 %116)
  br label %118

118:                                              ; preds = %114, %70
  %119 = load i32, i32* @ngx_http_upstream_check_shm_generation, align 4
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @MAX_DYNAMIC_PEER, align 4
  %132 = add nsw i32 %130, %131
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %137, align 8
  store %struct.TYPE_32__* %138, %struct.TYPE_32__** %15, align 8
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %264, %118
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %267

143:                                              ; preds = %139
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i64 %148
  store %struct.TYPE_33__* %149, %struct.TYPE_33__** %18, align 8
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  br label %264

153:                                              ; preds = %143
  %154 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load i32*, i32** %14, align 8
  %165 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i8* @ngx_slab_alloc(i32* %164, i64 %167)
  %169 = bitcast i8* %168 to i32*
  %170 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %170, i32 0, i32 1
  store i32* %169, i32** %171, align 8
  %172 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %153
  br label %278

177:                                              ; preds = %153
  %178 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @ngx_memcpy(i32* %180, i32 %188, i64 %191)
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %194 = icmp ne %struct.TYPE_29__* %193, null
  br i1 %194, label %195, label %238

195:                                              ; preds = %177
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %21, align 8
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %201, align 8
  %203 = call %struct.TYPE_33__* @ngx_http_upstream_check_find_shm_peer(%struct.TYPE_29__* %196, %struct.TYPE_25__* %202)
  store %struct.TYPE_33__* %203, %struct.TYPE_33__** %19, align 8
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %205 = icmp ne %struct.TYPE_33__* %204, null
  br i1 %205, label %206, label %237

206:                                              ; preds = %195
  %207 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 1
  %219 = call i32 @ngx_log_debug1(i32 %207, i32 %211, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32* %218)
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 1
  %230 = call i64 @ngx_http_upstream_check_init_shm_peer(%struct.TYPE_33__* %220, %struct.TYPE_33__* %221, i32 0, %struct.TYPE_29__* %222, i32* %229)
  store i64 %230, i64* %8, align 8
  %231 = load i64, i64* %8, align 8
  %232 = load i64, i64* @NGX_OK, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %206
  %235 = load i64, i64* @NGX_ERROR, align 8
  store i64 %235, i64* %3, align 8
  br label %286

236:                                              ; preds = %206
  br label %264

237:                                              ; preds = %195
  br label %238

238:                                              ; preds = %237, %177
  %239 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %243, align 8
  store %struct.TYPE_30__* %244, %struct.TYPE_30__** %17, align 8
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %18, align 8
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %250 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 1
  %257 = call i64 @ngx_http_upstream_check_init_shm_peer(%struct.TYPE_33__* %245, %struct.TYPE_33__* null, i32 %248, %struct.TYPE_29__* %249, i32* %256)
  store i64 %257, i64* %8, align 8
  %258 = load i64, i64* %8, align 8
  %259 = load i64, i64* @NGX_OK, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %238
  %262 = load i64, i64* @NGX_ERROR, align 8
  store i64 %262, i64* %3, align 8
  br label %286

263:                                              ; preds = %238
  br label %264

264:                                              ; preds = %263, %236, %152
  %265 = load i32, i32* %9, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %9, align 4
  br label %139

267:                                              ; preds = %139
  %268 = load i32*, i32** %14, align 8
  %269 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %270 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %269, i32 0, i32 2
  store i32* %268, i32** %270, align 8
  %271 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %272 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %272, i32 0, i32 1
  store %struct.TYPE_29__* %271, %struct.TYPE_29__** %273, align 8
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 1
  store %struct.TYPE_29__* %274, %struct.TYPE_29__** %276, align 8
  %277 = load i64, i64* @NGX_OK, align 8
  store i64 %277, i64* %3, align 8
  br label %286

278:                                              ; preds = %176, %113
  %279 = load i32, i32* @NGX_LOG_EMERG, align 4
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @ngx_log_error(i32 %279, i32 %283, i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  %285 = load i64, i64* @NGX_ERROR, align 8
  store i64 %285, i64* %3, align 8
  br label %286

286:                                              ; preds = %278, %267, %261, %234, %26
  %287 = load i64, i64* %3, align 8
  ret i64 %287
}

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i32 @ngx_http_upstream_check_get_shm_name(i32*, %struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_shared_memory_find(i32*, i32*, i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i8* @ngx_slab_alloc(i32*, i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i64) #1

declare dso_local %struct.TYPE_33__* @ngx_http_upstream_check_find_shm_peer(%struct.TYPE_29__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @ngx_http_upstream_check_init_shm_peer(%struct.TYPE_33__*, %struct.TYPE_33__*, i32, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
