; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_slab.c_ngx_slab_alloc_locked.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_slab.c_ngx_slab_alloc_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_18__* }

@ngx_slab_max_size = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_ALLOC = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"slab alloc: %uz\00", align 1
@ngx_pagesize_shift = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"slab alloc: %uz slot: %ui\00", align 1
@ngx_slab_exact_shift = common dso_local global i64 0, align 8
@NGX_SLAB_BUSY = common dso_local global i64 0, align 8
@NGX_SLAB_SMALL = common dso_local global i64 0, align 8
@NGX_SLAB_EXACT = common dso_local global i64 0, align 8
@NGX_SLAB_MAP_SHIFT = common dso_local global i64 0, align 8
@NGX_SLAB_MAP_MASK = common dso_local global i64 0, align 8
@NGX_SLAB_BIG = common dso_local global i64 0, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"ngx_slab_alloc(): page is busy\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"slab alloc: %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_slab_alloc_locked(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i64 %1, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ngx_slab_max_size, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %2
  %22 = load i32, i32* @NGX_LOG_DEBUG_ALLOC, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %4, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @ngx_log_debug1(i32 %22, i32 %25, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @ngx_pagesize_shift, align 8
  %32 = lshr i64 %30, %31
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @ngx_pagesize, align 8
  %35 = urem i64 %33, %34
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = sext i32 %38 to i64
  %40 = add i64 %32, %39
  %41 = trunc i64 %40 to i32
  %42 = call %struct.TYPE_18__* @ngx_slab_alloc_pages(%struct.TYPE_17__* %29, i32 %41)
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %15, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %44 = icmp ne %struct.TYPE_18__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %21
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %48 = call i64 @ngx_slab_page_addr(%struct.TYPE_17__* %46, %struct.TYPE_18__* %47)
  store i64 %48, i64* %6, align 8
  br label %50

49:                                               ; preds = %21
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %49, %45
  br label %604

51:                                               ; preds = %2
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ugt i64 %52, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  store i64 1, i64* %13, align 8
  %58 = load i64, i64* %4, align 8
  %59 = sub i64 %58, 1
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %65, %57
  %61 = load i64, i64* %5, align 8
  %62 = lshr i64 %61, 1
  store i64 %62, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %13, align 8
  br label %60

68:                                               ; preds = %60
  %69 = load i64, i64* %13, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %69, %72
  store i64 %73, i64* %12, align 8
  br label %78

74:                                               ; preds = %51
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @NGX_LOG_DEBUG_ALLOC, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @ngx_log_debug2(i32 %87, i32 %90, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %91, i64 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %95 = call %struct.TYPE_18__* @ngx_slab_slots(%struct.TYPE_17__* %94)
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %17, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %15, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %105 = icmp ne %struct.TYPE_18__* %103, %104
  br i1 %105, label %106, label %380

106:                                              ; preds = %78
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* @ngx_slab_exact_shift, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %226

110:                                              ; preds = %106
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %113 = call i64 @ngx_slab_page_addr(%struct.TYPE_17__* %111, %struct.TYPE_18__* %112)
  %114 = inttoptr i64 %113 to i64*
  store i64* %114, i64** %9, align 8
  %115 = load i64, i64* @ngx_pagesize, align 8
  %116 = load i64, i64* %13, align 8
  %117 = lshr i64 %115, %116
  %118 = udiv i64 %117, 64
  store i64 %118, i64* %14, align 8
  store i64 0, i64* %11, align 8
  br label %119

119:                                              ; preds = %222, %110
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %14, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %225

123:                                              ; preds = %119
  %124 = load i64*, i64** %9, align 8
  %125 = load i64, i64* %11, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @NGX_SLAB_BUSY, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %221

130:                                              ; preds = %123
  store i64 1, i64* %7, align 8
  store i64 0, i64* %10, align 8
  br label %131

131:                                              ; preds = %215, %130
  %132 = load i64, i64* %7, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %220

134:                                              ; preds = %131
  %135 = load i64*, i64** %9, align 8
  %136 = load i64, i64* %11, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %7, align 8
  %140 = and i64 %138, %139
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %215

143:                                              ; preds = %134
  %144 = load i64, i64* %7, align 8
  %145 = load i64*, i64** %9, align 8
  %146 = load i64, i64* %11, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = or i64 %148, %144
  store i64 %149, i64* %147, align 8
  %150 = load i64, i64* %11, align 8
  %151 = mul i64 %150, 8
  %152 = mul i64 %151, 8
  %153 = load i64, i64* %10, align 8
  %154 = add i64 %152, %153
  %155 = load i64, i64* %13, align 8
  %156 = shl i64 %154, %155
  store i64 %156, i64* %10, align 8
  %157 = load i64*, i64** %9, align 8
  %158 = ptrtoint i64* %157 to i64
  %159 = load i64, i64* %10, align 8
  %160 = add i64 %158, %159
  store i64 %160, i64* %6, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = load i64, i64* %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load i64*, i64** %9, align 8
  %170 = load i64, i64* %11, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @NGX_SLAB_BUSY, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %214

175:                                              ; preds = %143
  %176 = load i64, i64* %11, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %11, align 8
  br label %178

178:                                              ; preds = %191, %175
  %179 = load i64, i64* %11, align 8
  %180 = load i64, i64* %14, align 8
  %181 = icmp ult i64 %179, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %178
  %183 = load i64*, i64** %9, align 8
  %184 = load i64, i64* %11, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @NGX_SLAB_BUSY, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %604

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %11, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %11, align 8
  br label %178

194:                                              ; preds = %178
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %196 = call %struct.TYPE_18__* @ngx_slab_page_prev(%struct.TYPE_18__* %195)
  store %struct.TYPE_18__* %196, %struct.TYPE_18__** %16, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 2
  store %struct.TYPE_18__* %199, %struct.TYPE_18__** %201, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  store i64 %204, i64* %208, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %210, align 8
  %211 = load i64, i64* @NGX_SLAB_SMALL, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  store i64 %211, i64* %213, align 8
  br label %214

214:                                              ; preds = %194, %143
  br label %604

215:                                              ; preds = %142
  %216 = load i64, i64* %7, align 8
  %217 = shl i64 %216, 1
  store i64 %217, i64* %7, align 8
  %218 = load i64, i64* %10, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %10, align 8
  br label %131

220:                                              ; preds = %131
  br label %221

221:                                              ; preds = %220, %123
  br label %222

222:                                              ; preds = %221
  %223 = load i64, i64* %11, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %11, align 8
  br label %119

225:                                              ; preds = %119
  br label %375

226:                                              ; preds = %106
  %227 = load i64, i64* %13, align 8
  %228 = load i64, i64* @ngx_slab_exact_shift, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %295

230:                                              ; preds = %226
  store i64 1, i64* %7, align 8
  store i64 0, i64* %10, align 8
  br label %231

231:                                              ; preds = %289, %230
  %232 = load i64, i64* %7, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %294

234:                                              ; preds = %231
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* %7, align 8
  %239 = and i64 %237, %238
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  br label %289

242:                                              ; preds = %234
  %243 = load i64, i64* %7, align 8
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = or i64 %246, %243
  store i64 %247, i64* %245, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @NGX_SLAB_BUSY, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %273

253:                                              ; preds = %242
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %255 = call %struct.TYPE_18__* @ngx_slab_page_prev(%struct.TYPE_18__* %254)
  store %struct.TYPE_18__* %255, %struct.TYPE_18__** %16, align 8
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %257, align 8
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 2
  store %struct.TYPE_18__* %258, %struct.TYPE_18__** %260, align 8
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  store i64 %263, i64* %267, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %269, align 8
  %270 = load i64, i64* @NGX_SLAB_EXACT, align 8
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  store i64 %270, i64* %272, align 8
  br label %273

273:                                              ; preds = %253, %242
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %276 = call i64 @ngx_slab_page_addr(%struct.TYPE_17__* %274, %struct.TYPE_18__* %275)
  %277 = load i64, i64* %10, align 8
  %278 = load i64, i64* %13, align 8
  %279 = shl i64 %277, %278
  %280 = add i64 %276, %279
  store i64 %280, i64* %6, align 8
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %282, align 8
  %284 = load i64, i64* %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %286, align 4
  br label %604

289:                                              ; preds = %241
  %290 = load i64, i64* %7, align 8
  %291 = shl i64 %290, 1
  store i64 %291, i64* %7, align 8
  %292 = load i64, i64* %10, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %10, align 8
  br label %231

294:                                              ; preds = %231
  br label %374

295:                                              ; preds = %226
  %296 = load i64, i64* @ngx_pagesize, align 8
  %297 = load i64, i64* %13, align 8
  %298 = lshr i64 %296, %297
  %299 = shl i64 1, %298
  %300 = sub i64 %299, 1
  store i64 %300, i64* %8, align 8
  %301 = load i64, i64* @NGX_SLAB_MAP_SHIFT, align 8
  %302 = load i64, i64* %8, align 8
  %303 = shl i64 %302, %301
  store i64 %303, i64* %8, align 8
  %304 = load i64, i64* @NGX_SLAB_MAP_SHIFT, align 8
  %305 = shl i64 1, %304
  store i64 %305, i64* %7, align 8
  store i64 0, i64* %10, align 8
  br label %306

306:                                              ; preds = %368, %295
  %307 = load i64, i64* %7, align 8
  %308 = load i64, i64* %8, align 8
  %309 = and i64 %307, %308
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %373

311:                                              ; preds = %306
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* %7, align 8
  %316 = and i64 %314, %315
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  br label %368

319:                                              ; preds = %311
  %320 = load i64, i64* %7, align 8
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = or i64 %323, %320
  store i64 %324, i64* %322, align 8
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @NGX_SLAB_MAP_MASK, align 8
  %329 = and i64 %327, %328
  %330 = load i64, i64* %8, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %352

332:                                              ; preds = %319
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %334 = call %struct.TYPE_18__* @ngx_slab_page_prev(%struct.TYPE_18__* %333)
  store %struct.TYPE_18__* %334, %struct.TYPE_18__** %16, align 8
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 2
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %336, align 8
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 2
  store %struct.TYPE_18__* %337, %struct.TYPE_18__** %339, align 8
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 2
  %345 = load %struct.TYPE_18__*, %struct.TYPE_18__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %345, i32 0, i32 0
  store i64 %342, i64* %346, align 8
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %348, align 8
  %349 = load i64, i64* @NGX_SLAB_BIG, align 8
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 0
  store i64 %349, i64* %351, align 8
  br label %352

352:                                              ; preds = %332, %319
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %355 = call i64 @ngx_slab_page_addr(%struct.TYPE_17__* %353, %struct.TYPE_18__* %354)
  %356 = load i64, i64* %10, align 8
  %357 = load i64, i64* %13, align 8
  %358 = shl i64 %356, %357
  %359 = add i64 %355, %358
  store i64 %359, i64* %6, align 8
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 2
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %361, align 8
  %363 = load i64, i64* %12, align 8
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %365, align 4
  br label %604

368:                                              ; preds = %318
  %369 = load i64, i64* %7, align 8
  %370 = shl i64 %369, 1
  store i64 %370, i64* %7, align 8
  %371 = load i64, i64* %10, align 8
  %372 = add i64 %371, 1
  store i64 %372, i64* %10, align 8
  br label %306

373:                                              ; preds = %306
  br label %374

374:                                              ; preds = %373, %294
  br label %375

375:                                              ; preds = %374, %225
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %377 = load i32, i32* @NGX_LOG_ALERT, align 4
  %378 = call i32 @ngx_slab_error(%struct.TYPE_17__* %376, i32 %377, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %379 = call i32 (...) @ngx_debug_point()
  br label %380

380:                                              ; preds = %375, %78
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %382 = call %struct.TYPE_18__* @ngx_slab_alloc_pages(%struct.TYPE_17__* %381, i32 1)
  store %struct.TYPE_18__* %382, %struct.TYPE_18__** %15, align 8
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %384 = icmp ne %struct.TYPE_18__* %383, null
  br i1 %384, label %385, label %595

385:                                              ; preds = %380
  %386 = load i64, i64* %13, align 8
  %387 = load i64, i64* @ngx_slab_exact_shift, align 8
  %388 = icmp ult i64 %386, %387
  br i1 %388, label %389, label %500

389:                                              ; preds = %385
  %390 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %392 = call i64 @ngx_slab_page_addr(%struct.TYPE_17__* %390, %struct.TYPE_18__* %391)
  %393 = inttoptr i64 %392 to i64*
  store i64* %393, i64** %9, align 8
  %394 = load i64, i64* @ngx_pagesize, align 8
  %395 = load i64, i64* %13, align 8
  %396 = lshr i64 %394, %395
  %397 = load i64, i64* %13, align 8
  %398 = trunc i64 %397 to i32
  %399 = shl i32 1, %398
  %400 = mul nsw i32 %399, 8
  %401 = sext i32 %400 to i64
  %402 = udiv i64 %396, %401
  store i64 %402, i64* %11, align 8
  %403 = load i64, i64* %11, align 8
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %389
  store i64 1, i64* %11, align 8
  br label %406

406:                                              ; preds = %405, %389
  store i64 0, i64* %10, align 8
  br label %407

407:                                              ; preds = %418, %406
  %408 = load i64, i64* %10, align 8
  %409 = load i64, i64* %11, align 8
  %410 = add i64 %409, 1
  %411 = udiv i64 %410, 64
  %412 = icmp ult i64 %408, %411
  br i1 %412, label %413, label %421

413:                                              ; preds = %407
  %414 = load i64, i64* @NGX_SLAB_BUSY, align 8
  %415 = load i64*, i64** %9, align 8
  %416 = load i64, i64* %10, align 8
  %417 = getelementptr inbounds i64, i64* %415, i64 %416
  store i64 %414, i64* %417, align 8
  br label %418

418:                                              ; preds = %413
  %419 = load i64, i64* %10, align 8
  %420 = add i64 %419, 1
  store i64 %420, i64* %10, align 8
  br label %407

421:                                              ; preds = %407
  %422 = load i64, i64* %11, align 8
  %423 = add i64 %422, 1
  %424 = urem i64 %423, 64
  %425 = shl i64 1, %424
  %426 = sub i64 %425, 1
  store i64 %426, i64* %7, align 8
  %427 = load i64, i64* %7, align 8
  %428 = load i64*, i64** %9, align 8
  %429 = load i64, i64* %10, align 8
  %430 = getelementptr inbounds i64, i64* %428, i64 %429
  store i64 %427, i64* %430, align 8
  %431 = load i64, i64* @ngx_pagesize, align 8
  %432 = load i64, i64* %13, align 8
  %433 = lshr i64 %431, %432
  %434 = udiv i64 %433, 64
  store i64 %434, i64* %14, align 8
  %435 = load i64, i64* %10, align 8
  %436 = add i64 %435, 1
  store i64 %436, i64* %10, align 8
  br label %437

437:                                              ; preds = %445, %421
  %438 = load i64, i64* %10, align 8
  %439 = load i64, i64* %14, align 8
  %440 = icmp ult i64 %438, %439
  br i1 %440, label %441, label %448

441:                                              ; preds = %437
  %442 = load i64*, i64** %9, align 8
  %443 = load i64, i64* %10, align 8
  %444 = getelementptr inbounds i64, i64* %442, i64 %443
  store i64 0, i64* %444, align 8
  br label %445

445:                                              ; preds = %441
  %446 = load i64, i64* %10, align 8
  %447 = add i64 %446, 1
  store i64 %447, i64* %10, align 8
  br label %437

448:                                              ; preds = %437
  %449 = load i64, i64* %13, align 8
  %450 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %451 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %450, i32 0, i32 1
  store i64 %449, i64* %451, align 8
  %452 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %453 = load i64, i64* %12, align 8
  %454 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i64 %453
  %455 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %456 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %455, i32 0, i32 2
  store %struct.TYPE_18__* %454, %struct.TYPE_18__** %456, align 8
  %457 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %458 = load i64, i64* %12, align 8
  %459 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %457, i64 %458
  %460 = ptrtoint %struct.TYPE_18__* %459 to i64
  %461 = load i64, i64* @NGX_SLAB_SMALL, align 8
  %462 = or i64 %460, %461
  %463 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %464 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %463, i32 0, i32 0
  store i64 %462, i64* %464, align 8
  %465 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %467 = load i64, i64* %12, align 8
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %468, i32 0, i32 2
  store %struct.TYPE_18__* %465, %struct.TYPE_18__** %469, align 8
  %470 = load i64, i64* @ngx_pagesize, align 8
  %471 = load i64, i64* %13, align 8
  %472 = lshr i64 %470, %471
  %473 = load i64, i64* %11, align 8
  %474 = sub i64 %472, %473
  %475 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %476 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %475, i32 0, i32 2
  %477 = load %struct.TYPE_16__*, %struct.TYPE_16__** %476, align 8
  %478 = load i64, i64* %12, align 8
  %479 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %477, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = sext i32 %481 to i64
  %483 = add i64 %482, %474
  %484 = trunc i64 %483 to i32
  store i32 %484, i32* %480, align 4
  %485 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %486 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %487 = call i64 @ngx_slab_page_addr(%struct.TYPE_17__* %485, %struct.TYPE_18__* %486)
  %488 = load i64, i64* %11, align 8
  %489 = load i64, i64* %13, align 8
  %490 = shl i64 %488, %489
  %491 = add i64 %487, %490
  store i64 %491, i64* %6, align 8
  %492 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %493 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %492, i32 0, i32 2
  %494 = load %struct.TYPE_16__*, %struct.TYPE_16__** %493, align 8
  %495 = load i64, i64* %12, align 8
  %496 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %494, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %496, i32 0, i32 2
  %498 = load i32, i32* %497, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %497, align 4
  br label %604

500:                                              ; preds = %385
  %501 = load i64, i64* %13, align 8
  %502 = load i64, i64* @ngx_slab_exact_shift, align 8
  %503 = icmp eq i64 %501, %502
  br i1 %503, label %504, label %546

504:                                              ; preds = %500
  %505 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %506 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %505, i32 0, i32 1
  store i64 1, i64* %506, align 8
  %507 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %508 = load i64, i64* %12, align 8
  %509 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %507, i64 %508
  %510 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %511 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %510, i32 0, i32 2
  store %struct.TYPE_18__* %509, %struct.TYPE_18__** %511, align 8
  %512 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %513 = load i64, i64* %12, align 8
  %514 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %512, i64 %513
  %515 = ptrtoint %struct.TYPE_18__* %514 to i64
  %516 = load i64, i64* @NGX_SLAB_EXACT, align 8
  %517 = or i64 %515, %516
  %518 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %519 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %518, i32 0, i32 0
  store i64 %517, i64* %519, align 8
  %520 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %521 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %522 = load i64, i64* %12, align 8
  %523 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %521, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %523, i32 0, i32 2
  store %struct.TYPE_18__* %520, %struct.TYPE_18__** %524, align 8
  %525 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %525, i32 0, i32 2
  %527 = load %struct.TYPE_16__*, %struct.TYPE_16__** %526, align 8
  %528 = load i64, i64* %12, align 8
  %529 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %527, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = sext i32 %531 to i64
  %533 = add i64 %532, 64
  %534 = trunc i64 %533 to i32
  store i32 %534, i32* %530, align 4
  %535 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %536 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %537 = call i64 @ngx_slab_page_addr(%struct.TYPE_17__* %535, %struct.TYPE_18__* %536)
  store i64 %537, i64* %6, align 8
  %538 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %539 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %538, i32 0, i32 2
  %540 = load %struct.TYPE_16__*, %struct.TYPE_16__** %539, align 8
  %541 = load i64, i64* %12, align 8
  %542 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %540, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %542, i32 0, i32 2
  %544 = load i32, i32* %543, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %543, align 4
  br label %604

546:                                              ; preds = %500
  %547 = load i64, i64* @NGX_SLAB_MAP_SHIFT, align 8
  %548 = shl i64 1, %547
  %549 = load i64, i64* %13, align 8
  %550 = or i64 %548, %549
  %551 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %552 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %551, i32 0, i32 1
  store i64 %550, i64* %552, align 8
  %553 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %554 = load i64, i64* %12, align 8
  %555 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %553, i64 %554
  %556 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %557 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %556, i32 0, i32 2
  store %struct.TYPE_18__* %555, %struct.TYPE_18__** %557, align 8
  %558 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %559 = load i64, i64* %12, align 8
  %560 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %558, i64 %559
  %561 = ptrtoint %struct.TYPE_18__* %560 to i64
  %562 = load i64, i64* @NGX_SLAB_BIG, align 8
  %563 = or i64 %561, %562
  %564 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %565 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %564, i32 0, i32 0
  store i64 %563, i64* %565, align 8
  %566 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %567 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %568 = load i64, i64* %12, align 8
  %569 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %567, i64 %568
  %570 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %569, i32 0, i32 2
  store %struct.TYPE_18__* %566, %struct.TYPE_18__** %570, align 8
  %571 = load i64, i64* @ngx_pagesize, align 8
  %572 = load i64, i64* %13, align 8
  %573 = lshr i64 %571, %572
  %574 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %574, i32 0, i32 2
  %576 = load %struct.TYPE_16__*, %struct.TYPE_16__** %575, align 8
  %577 = load i64, i64* %12, align 8
  %578 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %576, i64 %577
  %579 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 4
  %581 = sext i32 %580 to i64
  %582 = add i64 %581, %573
  %583 = trunc i64 %582 to i32
  store i32 %583, i32* %579, align 4
  %584 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %585 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %586 = call i64 @ngx_slab_page_addr(%struct.TYPE_17__* %584, %struct.TYPE_18__* %585)
  store i64 %586, i64* %6, align 8
  %587 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %588 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %587, i32 0, i32 2
  %589 = load %struct.TYPE_16__*, %struct.TYPE_16__** %588, align 8
  %590 = load i64, i64* %12, align 8
  %591 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %589, i64 %590
  %592 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %591, i32 0, i32 2
  %593 = load i32, i32* %592, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %592, align 4
  br label %604

595:                                              ; preds = %380
  store i64 0, i64* %6, align 8
  %596 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %597 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %596, i32 0, i32 2
  %598 = load %struct.TYPE_16__*, %struct.TYPE_16__** %597, align 8
  %599 = load i64, i64* %12, align 8
  %600 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %598, i64 %599
  %601 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %601, align 4
  br label %604

604:                                              ; preds = %595, %546, %504, %448, %352, %273, %214, %189, %50
  %605 = load i32, i32* @NGX_LOG_DEBUG_ALLOC, align 4
  %606 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %607 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 4
  %609 = load i64, i64* %6, align 8
  %610 = inttoptr i64 %609 to i8*
  %611 = call i32 @ngx_log_debug1(i32 %605, i32 %608, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %610)
  %612 = load i64, i64* %6, align 8
  %613 = inttoptr i64 %612 to i8*
  ret i8* %613
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_18__* @ngx_slab_alloc_pages(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ngx_slab_page_addr(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i64) #1

declare dso_local %struct.TYPE_18__* @ngx_slab_slots(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @ngx_slab_page_prev(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_slab_error(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @ngx_debug_point(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
