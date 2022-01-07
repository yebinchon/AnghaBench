; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_hash.c_ngx_hash_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_hash.c_ngx_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64 (i32*, i32)*, %struct.TYPE_18__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32, i32*, i32* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i64, i32* }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"could not build %s, you should increase %s_max_size: %i\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_cacheline_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"could not build %s, too large %s_bucket_size: %i\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"could not build %s, you should increase %s_bucket_size: %i\00", align 1
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [118 x i8] c"could not build optimal %s, you should increase either %s_max_size: %i or %s_bucket_size: %i; ignoring %s_bucket_size\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_hash_init(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_17__**, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %3
  %24 = load i32, i32* @NGX_LOG_EMERG, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %24, i32 %29, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %36, i32 %39)
  %41 = load i32, i32* @NGX_ERROR, align 4
  store i32 %41, i32* %4, align 4
  br label %600

42:                                               ; preds = %3
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ngx_cacheline_size, align 4
  %47 = sub nsw i32 65536, %46
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %42
  %50 = load i32, i32* @NGX_LOG_EMERG, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %50, i32 %55, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %59, i32 %62, i32 %65)
  %67 = load i32, i32* @NGX_ERROR, align 4
  store i32 %67, i32* %4, align 4
  br label %600

68:                                               ; preds = %42
  store i64 0, i64* %12, align 8
  br label %69

69:                                               ; preds = %105, %68
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %108

73:                                               ; preds = %69
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i64 %79
  %81 = call i32 @NGX_HASH_ELT_SIZE(%struct.TYPE_15__* %80)
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 8
  %84 = icmp ult i64 %77, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %73
  %86 = load i32, i32* @NGX_LOG_EMERG, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %86, i32 %91, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %95, i32 %98, i32 %101)
  %103 = load i32, i32* @NGX_ERROR, align 4
  store i32 %103, i32* %4, align 4
  br label %600

104:                                              ; preds = %73
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %12, align 8
  br label %69

108:                                              ; preds = %69
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32* @ngx_alloc(i32 %114, i32 %119)
  store i32* %120, i32** %10, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %108
  %124 = load i32, i32* @NGX_ERROR, align 4
  store i32 %124, i32* %4, align 4
  br label %600

125:                                              ; preds = %108
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = sub i64 %129, 8
  store i64 %130, i64* %16, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* %16, align 8
  %133 = udiv i64 %132, 16
  %134 = udiv i64 %131, %133
  store i64 %134, i64* %15, align 8
  %135 = load i64, i64* %15, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = load i64, i64* %15, align 8
  br label %140

139:                                              ; preds = %125
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi i64 [ %138, %137 ], [ 1, %139 ]
  store i64 %141, i64* %15, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sgt i32 %144, 10000
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  %147 = load i64, i64* %7, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %146
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %7, align 8
  %155 = udiv i64 %153, %154
  %156 = icmp ult i64 %155, 100
  br i1 %156, label %157, label %163

157:                                              ; preds = %149
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 1000
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %15, align 8
  br label %163

163:                                              ; preds = %157, %149, %146, %140
  %164 = load i64, i64* %15, align 8
  store i64 %164, i64* %14, align 8
  br label %165

165:                                              ; preds = %223, %163
  %166 = load i64, i64* %14, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = icmp ule i64 %166, %170
  br i1 %171, label %172, label %226

172:                                              ; preds = %165
  %173 = load i32*, i32** %10, align 8
  %174 = load i64, i64* %14, align 8
  %175 = mul i64 %174, 4
  %176 = call i32 @ngx_memzero(i32* %173, i64 %175)
  store i64 0, i64* %12, align 8
  br label %177

177:                                              ; preds = %218, %172
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* %7, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %221

181:                                              ; preds = %177
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %183 = load i64, i64* %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %218

190:                                              ; preds = %181
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = load i64, i64* %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %14, align 8
  %197 = urem i64 %195, %196
  store i64 %197, i64* %13, align 8
  %198 = load i32*, i32** %10, align 8
  %199 = load i64, i64* %13, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %203 = load i64, i64* %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i64 %203
  %205 = call i32 @NGX_HASH_ELT_SIZE(%struct.TYPE_15__* %204)
  %206 = add nsw i32 %201, %205
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %9, align 8
  %208 = load i64, i64* %9, align 8
  %209 = load i64, i64* %16, align 8
  %210 = icmp ugt i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %190
  br label %222

212:                                              ; preds = %190
  %213 = load i64, i64* %9, align 8
  %214 = trunc i64 %213 to i32
  %215 = load i32*, i32** %10, align 8
  %216 = load i64, i64* %13, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32 %214, i32* %217, align 4
  br label %218

218:                                              ; preds = %212, %189
  %219 = load i64, i64* %12, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %12, align 8
  br label %177

221:                                              ; preds = %177
  br label %257

222:                                              ; preds = %211
  br label %223

223:                                              ; preds = %222
  %224 = load i64, i64* %14, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %14, align 8
  br label %165

226:                                              ; preds = %165
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  store i64 %230, i64* %14, align 8
  %231 = load i32, i32* @NGX_LOG_WARN, align 4
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %231, i32 %236, i32 0, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.3, i64 0, i64 0), i64 %240, i32 %243, i32 %246, i32 %249, i32 %252, i32 %255)
  br label %257

257:                                              ; preds = %226, %221
  store i64 0, i64* %11, align 8
  br label %258

258:                                              ; preds = %266, %257
  %259 = load i64, i64* %11, align 8
  %260 = load i64, i64* %14, align 8
  %261 = icmp ult i64 %259, %260
  br i1 %261, label %262, label %269

262:                                              ; preds = %258
  %263 = load i32*, i32** %10, align 8
  %264 = load i64, i64* %11, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  store i32 8, i32* %265, align 4
  br label %266

266:                                              ; preds = %262
  %267 = load i64, i64* %11, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %11, align 8
  br label %258

269:                                              ; preds = %258
  store i64 0, i64* %12, align 8
  br label %270

270:                                              ; preds = %333, %269
  %271 = load i64, i64* %12, align 8
  %272 = load i64, i64* %7, align 8
  %273 = icmp ult i64 %271, %272
  br i1 %273, label %274, label %336

274:                                              ; preds = %270
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %276 = load i64, i64* %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = icmp eq i32* %280, null
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  br label %333

283:                                              ; preds = %274
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %285 = load i64, i64* %12, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %14, align 8
  %290 = urem i64 %288, %289
  store i64 %290, i64* %13, align 8
  %291 = load i32*, i32** %10, align 8
  %292 = load i64, i64* %13, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %296 = load i64, i64* %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i64 %296
  %298 = call i32 @NGX_HASH_ELT_SIZE(%struct.TYPE_15__* %297)
  %299 = add nsw i32 %294, %298
  %300 = sext i32 %299 to i64
  store i64 %300, i64* %9, align 8
  %301 = load i64, i64* %9, align 8
  %302 = load i32, i32* @ngx_cacheline_size, align 4
  %303 = sub nsw i32 65536, %302
  %304 = sext i32 %303 to i64
  %305 = icmp ugt i64 %301, %304
  br i1 %305, label %306, label %327

306:                                              ; preds = %283
  %307 = load i32, i32* @NGX_LOG_EMERG, align 4
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 3
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 8
  %316 = sext i32 %315 to i64
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_error(i32 %307, i32 %312, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %316, i32 %319, i32 %322)
  %324 = load i32*, i32** %10, align 8
  %325 = call i32 @ngx_free(i32* %324)
  %326 = load i32, i32* @NGX_ERROR, align 4
  store i32 %326, i32* %4, align 4
  br label %600

327:                                              ; preds = %283
  %328 = load i64, i64* %9, align 8
  %329 = trunc i64 %328 to i32
  %330 = load i32*, i32** %10, align 8
  %331 = load i64, i64* %13, align 8
  %332 = getelementptr inbounds i32, i32* %330, i64 %331
  store i32 %329, i32* %332, align 4
  br label %333

333:                                              ; preds = %327, %282
  %334 = load i64, i64* %12, align 8
  %335 = add i64 %334, 1
  store i64 %335, i64* %12, align 8
  br label %270

336:                                              ; preds = %270
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %337

337:                                              ; preds = %367, %336
  %338 = load i64, i64* %11, align 8
  %339 = load i64, i64* %14, align 8
  %340 = icmp ult i64 %338, %339
  br i1 %340, label %341, label %370

341:                                              ; preds = %337
  %342 = load i32*, i32** %10, align 8
  %343 = load i64, i64* %11, align 8
  %344 = getelementptr inbounds i32, i32* %342, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = sext i32 %345 to i64
  %347 = icmp eq i64 %346, 8
  br i1 %347, label %348, label %349

348:                                              ; preds = %341
  br label %367

349:                                              ; preds = %341
  %350 = load i32*, i32** %10, align 8
  %351 = load i64, i64* %11, align 8
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @ngx_cacheline_size, align 4
  %355 = call i64 @ngx_align(i32 %353, i32 %354)
  %356 = trunc i64 %355 to i32
  %357 = load i32*, i32** %10, align 8
  %358 = load i64, i64* %11, align 8
  %359 = getelementptr inbounds i32, i32* %357, i64 %358
  store i32 %356, i32* %359, align 4
  %360 = load i32*, i32** %10, align 8
  %361 = load i64, i64* %11, align 8
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = load i64, i64* %9, align 8
  %366 = add i64 %365, %364
  store i64 %366, i64* %9, align 8
  br label %367

367:                                              ; preds = %349, %348
  %368 = load i64, i64* %11, align 8
  %369 = add i64 %368, 1
  store i64 %369, i64* %11, align 8
  br label %337

370:                                              ; preds = %337
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 4
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %372, align 8
  %374 = icmp eq %struct.TYPE_13__* %373, null
  br i1 %374, label %375, label %401

375:                                              ; preds = %370
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 3
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %377, align 8
  %379 = load i64, i64* %14, align 8
  %380 = mul i64 %379, 8
  %381 = add i64 4, %380
  %382 = call i8* @ngx_pcalloc(%struct.TYPE_18__* %378, i64 %381)
  %383 = bitcast i8* %382 to %struct.TYPE_13__*
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 4
  store %struct.TYPE_13__* %383, %struct.TYPE_13__** %385, align 8
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 4
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** %387, align 8
  %389 = icmp eq %struct.TYPE_13__* %388, null
  br i1 %389, label %390, label %394

390:                                              ; preds = %375
  %391 = load i32*, i32** %10, align 8
  %392 = call i32 @ngx_free(i32* %391)
  %393 = load i32, i32* @NGX_ERROR, align 4
  store i32 %393, i32* %4, align 4
  br label %600

394:                                              ; preds = %375
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i32 0, i32 4
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %396, align 8
  %398 = bitcast %struct.TYPE_13__* %397 to i32*
  %399 = getelementptr inbounds i32, i32* %398, i64 4
  %400 = bitcast i32* %399 to %struct.TYPE_17__**
  store %struct.TYPE_17__** %400, %struct.TYPE_17__*** %18, align 8
  br label %416

401:                                              ; preds = %370
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 3
  %404 = load %struct.TYPE_18__*, %struct.TYPE_18__** %403, align 8
  %405 = load i64, i64* %14, align 8
  %406 = mul i64 %405, 8
  %407 = call i8* @ngx_pcalloc(%struct.TYPE_18__* %404, i64 %406)
  %408 = bitcast i8* %407 to %struct.TYPE_17__**
  store %struct.TYPE_17__** %408, %struct.TYPE_17__*** %18, align 8
  %409 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %410 = icmp eq %struct.TYPE_17__** %409, null
  br i1 %410, label %411, label %415

411:                                              ; preds = %401
  %412 = load i32*, i32** %10, align 8
  %413 = call i32 @ngx_free(i32* %412)
  %414 = load i32, i32* @NGX_ERROR, align 4
  store i32 %414, i32* %4, align 4
  br label %600

415:                                              ; preds = %401
  br label %416

416:                                              ; preds = %415, %394
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %417, i32 0, i32 3
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %418, align 8
  %420 = load i64, i64* %9, align 8
  %421 = load i32, i32* @ngx_cacheline_size, align 4
  %422 = sext i32 %421 to i64
  %423 = add i64 %420, %422
  %424 = call i32* @ngx_palloc(%struct.TYPE_18__* %419, i64 %423)
  store i32* %424, i32** %8, align 8
  %425 = load i32*, i32** %8, align 8
  %426 = icmp eq i32* %425, null
  br i1 %426, label %427, label %431

427:                                              ; preds = %416
  %428 = load i32*, i32** %10, align 8
  %429 = call i32 @ngx_free(i32* %428)
  %430 = load i32, i32* @NGX_ERROR, align 4
  store i32 %430, i32* %4, align 4
  br label %600

431:                                              ; preds = %416
  %432 = load i32*, i32** %8, align 8
  %433 = load i32, i32* @ngx_cacheline_size, align 4
  %434 = call i32* @ngx_align_ptr(i32* %432, i32 %433)
  store i32* %434, i32** %8, align 8
  store i64 0, i64* %11, align 8
  br label %435

435:                                              ; preds = %460, %431
  %436 = load i64, i64* %11, align 8
  %437 = load i64, i64* %14, align 8
  %438 = icmp ult i64 %436, %437
  br i1 %438, label %439, label %463

439:                                              ; preds = %435
  %440 = load i32*, i32** %10, align 8
  %441 = load i64, i64* %11, align 8
  %442 = getelementptr inbounds i32, i32* %440, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  %445 = icmp eq i64 %444, 8
  br i1 %445, label %446, label %447

446:                                              ; preds = %439
  br label %460

447:                                              ; preds = %439
  %448 = load i32*, i32** %8, align 8
  %449 = bitcast i32* %448 to %struct.TYPE_17__*
  %450 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %451 = load i64, i64* %11, align 8
  %452 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %450, i64 %451
  store %struct.TYPE_17__* %449, %struct.TYPE_17__** %452, align 8
  %453 = load i32*, i32** %10, align 8
  %454 = load i64, i64* %11, align 8
  %455 = getelementptr inbounds i32, i32* %453, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = load i32*, i32** %8, align 8
  %458 = sext i32 %456 to i64
  %459 = getelementptr inbounds i32, i32* %457, i64 %458
  store i32* %459, i32** %8, align 8
  br label %460

460:                                              ; preds = %447, %446
  %461 = load i64, i64* %11, align 8
  %462 = add i64 %461, 1
  store i64 %462, i64* %11, align 8
  br label %435

463:                                              ; preds = %435
  store i64 0, i64* %11, align 8
  br label %464

464:                                              ; preds = %472, %463
  %465 = load i64, i64* %11, align 8
  %466 = load i64, i64* %14, align 8
  %467 = icmp ult i64 %465, %466
  br i1 %467, label %468, label %475

468:                                              ; preds = %464
  %469 = load i32*, i32** %10, align 8
  %470 = load i64, i64* %11, align 8
  %471 = getelementptr inbounds i32, i32* %469, i64 %470
  store i32 0, i32* %471, align 4
  br label %472

472:                                              ; preds = %468
  %473 = load i64, i64* %11, align 8
  %474 = add i64 %473, 1
  store i64 %474, i64* %11, align 8
  br label %464

475:                                              ; preds = %464
  store i64 0, i64* %12, align 8
  br label %476

476:                                              ; preds = %553, %475
  %477 = load i64, i64* %12, align 8
  %478 = load i64, i64* %7, align 8
  %479 = icmp ult i64 %477, %478
  br i1 %479, label %480, label %556

480:                                              ; preds = %476
  %481 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %482 = load i64, i64* %12, align 8
  %483 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %481, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 1
  %486 = load i32*, i32** %485, align 8
  %487 = icmp eq i32* %486, null
  br i1 %487, label %488, label %489

488:                                              ; preds = %480
  br label %553

489:                                              ; preds = %480
  %490 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %491 = load i64, i64* %12, align 8
  %492 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %490, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* %14, align 8
  %496 = urem i64 %494, %495
  store i64 %496, i64* %13, align 8
  %497 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %498 = load i64, i64* %13, align 8
  %499 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %497, i64 %498
  %500 = load %struct.TYPE_17__*, %struct.TYPE_17__** %499, align 8
  %501 = bitcast %struct.TYPE_17__* %500 to i32*
  %502 = load i32*, i32** %10, align 8
  %503 = load i64, i64* %13, align 8
  %504 = getelementptr inbounds i32, i32* %502, i64 %503
  %505 = load i32, i32* %504, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %501, i64 %506
  %508 = bitcast i32* %507 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %508, %struct.TYPE_17__** %17, align 8
  %509 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %510 = load i64, i64* %12, align 8
  %511 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %509, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %511, i32 0, i32 2
  %513 = load i32*, i32** %512, align 8
  %514 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %515 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %514, i32 0, i32 2
  store i32* %513, i32** %515, align 8
  %516 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %517 = load i64, i64* %12, align 8
  %518 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %516, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %519, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = trunc i64 %521 to i32
  %523 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %524 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %523, i32 0, i32 0
  store i32 %522, i32* %524, align 8
  %525 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %526 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %525, i32 0, i32 1
  %527 = load i32*, i32** %526, align 8
  %528 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %529 = load i64, i64* %12, align 8
  %530 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %528, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %531, i32 0, i32 1
  %533 = load i32*, i32** %532, align 8
  %534 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %535 = load i64, i64* %12, align 8
  %536 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %534, i64 %535
  %537 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %536, i32 0, i32 1
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = call i32 @ngx_strlow(i32* %527, i32* %533, i64 %539)
  %541 = load i32*, i32** %10, align 8
  %542 = load i64, i64* %13, align 8
  %543 = getelementptr inbounds i32, i32* %541, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %546 = load i64, i64* %12, align 8
  %547 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %545, i64 %546
  %548 = call i32 @NGX_HASH_ELT_SIZE(%struct.TYPE_15__* %547)
  %549 = add nsw i32 %544, %548
  %550 = load i32*, i32** %10, align 8
  %551 = load i64, i64* %13, align 8
  %552 = getelementptr inbounds i32, i32* %550, i64 %551
  store i32 %549, i32* %552, align 4
  br label %553

553:                                              ; preds = %489, %488
  %554 = load i64, i64* %12, align 8
  %555 = add i64 %554, 1
  store i64 %555, i64* %12, align 8
  br label %476

556:                                              ; preds = %476
  store i64 0, i64* %11, align 8
  br label %557

557:                                              ; preds = %583, %556
  %558 = load i64, i64* %11, align 8
  %559 = load i64, i64* %14, align 8
  %560 = icmp ult i64 %558, %559
  br i1 %560, label %561, label %586

561:                                              ; preds = %557
  %562 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %563 = load i64, i64* %11, align 8
  %564 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %562, i64 %563
  %565 = load %struct.TYPE_17__*, %struct.TYPE_17__** %564, align 8
  %566 = icmp eq %struct.TYPE_17__* %565, null
  br i1 %566, label %567, label %568

567:                                              ; preds = %561
  br label %583

568:                                              ; preds = %561
  %569 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %570 = load i64, i64* %11, align 8
  %571 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %569, i64 %570
  %572 = load %struct.TYPE_17__*, %struct.TYPE_17__** %571, align 8
  %573 = bitcast %struct.TYPE_17__* %572 to i32*
  %574 = load i32*, i32** %10, align 8
  %575 = load i64, i64* %11, align 8
  %576 = getelementptr inbounds i32, i32* %574, i64 %575
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %573, i64 %578
  %580 = bitcast i32* %579 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %580, %struct.TYPE_17__** %17, align 8
  %581 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %582 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %581, i32 0, i32 2
  store i32* null, i32** %582, align 8
  br label %583

583:                                              ; preds = %568, %567
  %584 = load i64, i64* %11, align 8
  %585 = add i64 %584, 1
  store i64 %585, i64* %11, align 8
  br label %557

586:                                              ; preds = %557
  %587 = load i32*, i32** %10, align 8
  %588 = call i32 @ngx_free(i32* %587)
  %589 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %590 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %590, i32 0, i32 4
  %592 = load %struct.TYPE_13__*, %struct.TYPE_13__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %592, i32 0, i32 1
  store %struct.TYPE_17__** %589, %struct.TYPE_17__*** %593, align 8
  %594 = load i64, i64* %14, align 8
  %595 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %596 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %595, i32 0, i32 4
  %597 = load %struct.TYPE_13__*, %struct.TYPE_13__** %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %597, i32 0, i32 0
  store i64 %594, i64* %598, align 8
  %599 = load i32, i32* @NGX_OK, align 4
  store i32 %599, i32* %4, align 4
  br label %600

600:                                              ; preds = %586, %427, %411, %390, %306, %123, %85, %49, %23
  %601 = load i32, i32* %4, align 4
  ret i32 %601
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @NGX_HASH_ELT_SIZE(%struct.TYPE_15__*) #1

declare dso_local i32* @ngx_alloc(i32, i32) #1

declare dso_local i32 @ngx_memzero(i32*, i64) #1

declare dso_local i32 @ngx_free(i32*) #1

declare dso_local i64 @ngx_align(i32, i32) #1

declare dso_local i8* @ngx_pcalloc(%struct.TYPE_18__*, i64) #1

declare dso_local i32* @ngx_palloc(%struct.TYPE_18__*, i64) #1

declare dso_local i32* @ngx_align_ptr(i32*, i32) #1

declare dso_local i32 @ngx_strlow(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
