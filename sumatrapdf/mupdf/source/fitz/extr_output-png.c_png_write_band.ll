; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-png.c_png_write_band.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-png.c_png_write_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i8*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i8*, i8*, i32*, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32* }

@fz_zlib_alloc = common dso_local global i32 0, align 4
@fz_zlib_free = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"compression error %d\00", align 1
@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"IDAT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i8*)* @png_write_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_write_band(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = bitcast i8* %31 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %13, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %6
  br label %432

40:                                               ; preds = %6
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %21, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %22, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %22, align 4
  %57 = icmp sge i32 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %20, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %40
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %40
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %124

70:                                               ; preds = %65
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %23, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @compressBound(i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @fz_malloc(i32* %85, i32 %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @fz_malloc(i32* %92, i32 %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 6
  store i32* %99, i32** %102, align 8
  %103 = load i32, i32* @fz_zlib_alloc, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 5
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @fz_zlib_free, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  store i32 %107, i32* %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %114 = call i32 @deflateInit(%struct.TYPE_7__* %112, i32 %113)
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* @Z_OK, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %70
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %121 = load i32, i32* %19, align 4
  %122 = call i32 @fz_throw(i32* %119, i32 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %118, %70
  br label %124

124:                                              ; preds = %123, %65
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %15, align 8
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* %23, align 4
  %130 = mul nsw i32 %128, %129
  %131 = load i32, i32* %9, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %9, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %257

138:                                              ; preds = %124
  store i32 0, i32* %16, align 4
  br label %139

139:                                              ; preds = %253, %138
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %256

143:                                              ; preds = %139
  %144 = load i32, i32* @FZ_MAX_COLORS, align 4
  %145 = zext i32 %144 to i64
  %146 = call i8* @llvm.stacksave()
  store i8* %146, i8** %24, align 8
  %147 = alloca i32, i64 %145, align 16
  store i64 %145, i64* %25, align 8
  %148 = load i8*, i8** %15, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %15, align 8
  store i8 1, i8* %148, align 1
  store i32 0, i32* %17, align 4
  br label %150

150:                                              ; preds = %244, %143
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %21, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %247

154:                                              ; preds = %150
  %155 = load i8*, i8** %12, align 8
  %156 = load i32, i32* %23, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  store i32 %161, i32* %26, align 4
  %162 = load i32, i32* %26, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %154
  %165 = load i32, i32* %26, align 4
  %166 = sdiv i32 65280, %165
  br label %168

167:                                              ; preds = %154
  br label %168

168:                                              ; preds = %167, %164
  %169 = phi i32 [ %166, %164 ], [ 0, %167 ]
  store i32 %169, i32* %27, align 4
  store i32 0, i32* %18, align 4
  br label %170

170:                                              ; preds = %209, %168
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %23, align 4
  %173 = sub nsw i32 %172, 1
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %212

175:                                              ; preds = %170
  %176 = load i8*, i8** %12, align 8
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = load i32, i32* %27, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %183, 128
  %185 = ashr i32 %184, 8
  store i32 %185, i32* %29, align 4
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %175
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %147, i64 %190
  %192 = load i32, i32* %191, align 4
  br label %194

193:                                              ; preds = %175
  br label %194

194:                                              ; preds = %193, %188
  %195 = phi i32 [ %192, %188 ], [ 0, %193 ]
  store i32 %195, i32* %28, align 4
  %196 = load i32, i32* %29, align 4
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %147, i64 %198
  store i32 %196, i32* %199, align 4
  %200 = load i32, i32* %28, align 4
  %201 = load i32, i32* %29, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %29, align 4
  %203 = load i32, i32* %29, align 4
  %204 = trunc i32 %203 to i8
  %205 = load i8*, i8** %15, align 8
  %206 = load i32, i32* %18, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  store i8 %204, i8* %208, align 1
  br label %209

209:                                              ; preds = %194
  %210 = load i32, i32* %18, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %18, align 4
  br label %170

212:                                              ; preds = %170
  %213 = load i32, i32* %17, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load i32, i32* %18, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %147, i64 %217
  %219 = load i32, i32* %218, align 4
  br label %221

220:                                              ; preds = %212
  br label %221

221:                                              ; preds = %220, %215
  %222 = phi i32 [ %219, %215 ], [ 0, %220 ]
  store i32 %222, i32* %28, align 4
  %223 = load i32, i32* %26, align 4
  %224 = load i32, i32* %18, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %147, i64 %225
  store i32 %223, i32* %226, align 4
  %227 = load i32, i32* %28, align 4
  %228 = load i32, i32* %26, align 4
  %229 = sub nsw i32 %228, %227
  store i32 %229, i32* %26, align 4
  %230 = load i32, i32* %26, align 4
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %15, align 8
  %233 = load i32, i32* %18, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  store i8 %231, i8* %235, align 1
  %236 = load i32, i32* %23, align 4
  %237 = load i8*, i8** %12, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  store i8* %239, i8** %12, align 8
  %240 = load i32, i32* %23, align 4
  %241 = load i8*, i8** %15, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  store i8* %243, i8** %15, align 8
  br label %244

244:                                              ; preds = %221
  %245 = load i32, i32* %17, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %17, align 4
  br label %150

247:                                              ; preds = %150
  %248 = load i32, i32* %9, align 4
  %249 = load i8*, i8** %12, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8* %251, i8** %12, align 8
  %252 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %252)
  br label %253

253:                                              ; preds = %247
  %254 = load i32, i32* %16, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %16, align 4
  br label %139

256:                                              ; preds = %139
  br label %333

257:                                              ; preds = %124
  store i32 0, i32* %16, align 4
  br label %258

258:                                              ; preds = %329, %257
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* %11, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %332

262:                                              ; preds = %258
  %263 = load i8*, i8** %15, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %15, align 8
  store i8 1, i8* %263, align 1
  store i32 0, i32* %17, align 4
  br label %265

265:                                              ; preds = %321, %262
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* %21, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %324

269:                                              ; preds = %265
  store i32 0, i32* %18, align 4
  br label %270

270:                                              ; preds = %309, %269
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* %23, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %312

274:                                              ; preds = %270
  %275 = load i32, i32* %17, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %274
  %278 = load i8*, i8** %12, align 8
  %279 = load i32, i32* %18, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = load i8*, i8** %15, align 8
  %284 = load i32, i32* %18, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  store i8 %282, i8* %286, align 1
  br label %308

287:                                              ; preds = %274
  %288 = load i8*, i8** %12, align 8
  %289 = load i32, i32* %18, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = load i8*, i8** %12, align 8
  %295 = load i32, i32* %18, align 4
  %296 = load i32, i32* %23, align 4
  %297 = sub nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %294, i64 %298
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = sub nsw i32 %293, %301
  %303 = trunc i32 %302 to i8
  %304 = load i8*, i8** %15, align 8
  %305 = load i32, i32* %18, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %304, i64 %306
  store i8 %303, i8* %307, align 1
  br label %308

308:                                              ; preds = %287, %277
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %18, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %18, align 4
  br label %270

312:                                              ; preds = %270
  %313 = load i32, i32* %23, align 4
  %314 = load i8*, i8** %12, align 8
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  store i8* %316, i8** %12, align 8
  %317 = load i32, i32* %23, align 4
  %318 = load i8*, i8** %15, align 8
  %319 = sext i32 %317 to i64
  %320 = getelementptr inbounds i8, i8* %318, i64 %319
  store i8* %320, i8** %15, align 8
  br label %321

321:                                              ; preds = %312
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %17, align 4
  br label %265

324:                                              ; preds = %265
  %325 = load i32, i32* %9, align 4
  %326 = load i8*, i8** %12, align 8
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i8, i8* %326, i64 %327
  store i8* %328, i8** %12, align 8
  br label %329

329:                                              ; preds = %324
  %330 = load i32, i32* %16, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %16, align 4
  br label %258

332:                                              ; preds = %258
  br label %333

333:                                              ; preds = %332, %256
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  %337 = bitcast i8* %336 to i32*
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 4
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 3
  store i32* %337, i32** %340, align 8
  %341 = load i8*, i8** %15, align 8
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 0
  %344 = load i8*, i8** %343, align 8
  %345 = ptrtoint i8* %341 to i64
  %346 = ptrtoint i8* %344 to i64
  %347 = sub i64 %345, %346
  %348 = inttoptr i64 %347 to i8*
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 2
  store i8* %348, i8** %351, align 8
  br label %352

352:                                              ; preds = %426, %333
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 3
  %355 = load i8*, i8** %354, align 8
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 4
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 1
  store i8* %355, i8** %358, align 8
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = inttoptr i64 %362 to i8*
  %364 = ptrtoint i8* %363 to i64
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 4
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 0
  store i64 %364, i64* %367, align 8
  %368 = load i32, i32* %20, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %384, label %370

370:                                              ; preds = %352
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 4
  %373 = load i32, i32* @Z_NO_FLUSH, align 4
  %374 = call i32 @deflate(%struct.TYPE_7__* %372, i32 %373)
  store i32 %374, i32* %19, align 4
  %375 = load i32, i32* %19, align 4
  %376 = load i32, i32* @Z_OK, align 4
  %377 = icmp ne i32 %375, %376
  br i1 %377, label %378, label %383

378:                                              ; preds = %370
  %379 = load i32*, i32** %7, align 8
  %380 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %381 = load i32, i32* %19, align 4
  %382 = call i32 @fz_throw(i32* %379, i32 %380, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %381)
  br label %383

383:                                              ; preds = %378, %370
  br label %398

384:                                              ; preds = %352
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 4
  %387 = load i32, i32* @Z_FINISH, align 4
  %388 = call i32 @deflate(%struct.TYPE_7__* %386, i32 %387)
  store i32 %388, i32* %19, align 4
  %389 = load i32, i32* %19, align 4
  %390 = load i32, i32* @Z_STREAM_END, align 4
  %391 = icmp ne i32 %389, %390
  br i1 %391, label %392, label %397

392:                                              ; preds = %384
  %393 = load i32*, i32** %7, align 8
  %394 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %395 = load i32, i32* %19, align 4
  %396 = call i32 @fz_throw(i32* %393, i32 %394, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %395)
  br label %397

397:                                              ; preds = %392, %384
  br label %398

398:                                              ; preds = %397, %383
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 4
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 1
  %402 = load i8*, i8** %401, align 8
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 3
  %405 = load i8*, i8** %404, align 8
  %406 = icmp ne i8* %402, %405
  br i1 %406, label %407, label %425

407:                                              ; preds = %398
  %408 = load i32*, i32** %7, align 8
  %409 = load i32*, i32** %14, align 8
  %410 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 3
  %412 = load i8*, i8** %411, align 8
  %413 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i32 0, i32 4
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 1
  %416 = load i8*, i8** %415, align 8
  %417 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 3
  %419 = load i8*, i8** %418, align 8
  %420 = ptrtoint i8* %416 to i64
  %421 = ptrtoint i8* %419 to i64
  %422 = sub i64 %420, %421
  %423 = trunc i64 %422 to i32
  %424 = call i32 @putchunk(i32* %408, i32* %409, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %412, i32 %423)
  br label %425

425:                                              ; preds = %407, %398
  br label %426

426:                                              ; preds = %425
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 4
  %429 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = icmp eq i64 %430, 0
  br i1 %431, label %352, label %432

432:                                              ; preds = %39, %426
  ret void
}

declare dso_local i32 @compressBound(i32) #1

declare dso_local i8* @fz_malloc(i32*, i32) #1

declare dso_local i32 @deflateInit(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @deflate(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @putchunk(i32*, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
