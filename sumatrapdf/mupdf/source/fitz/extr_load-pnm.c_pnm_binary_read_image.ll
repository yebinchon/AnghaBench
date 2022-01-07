; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-pnm.c_pnm_binary_read_image.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-pnm.c_pnm_binary_read_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32 }
%struct.info = type { i32, i32, i32, i32, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"maximum sample value of out range in pnm image: %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"image height must be > 0\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"image width must be > 0\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"image too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, %struct.info*, i8*, i8*, i32, i32, i8**)* @pnm_binary_read_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @pnm_binary_read_image(i32* %0, %struct.info* %1, i8* %2, i8* %3, i32 %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.info* %1, %struct.info** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8** %6, i8*** %14, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  %26 = load %struct.info*, %struct.info** %9, align 8
  %27 = getelementptr inbounds %struct.info, %struct.info* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.info*, %struct.info** %9, align 8
  %32 = getelementptr inbounds %struct.info, %struct.info* %31, i32 0, i32 0
  %33 = call i8* @pnm_read_number(i32* %28, i8* %29, i8* %30, i32* %32)
  store i8* %33, i8** %10, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @pnm_read_white(i32* %34, i8* %35, i8* %36, i32 0)
  store i8* %37, i8** %10, align 8
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %7
  %41 = load %struct.info*, %struct.info** %9, align 8
  %42 = getelementptr inbounds %struct.info, %struct.info* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.info*, %struct.info** %9, align 8
  %47 = getelementptr inbounds %struct.info, %struct.info* %46, i32 0, i32 1
  %48 = call i8* @pnm_read_number(i32* %43, i8* %44, i8* %45, i32* %47)
  store i8* %48, i8** %10, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i8* @pnm_read_white(i32* %49, i8* %50, i8* %51, i32 1)
  store i8* %52, i8** %10, align 8
  %53 = load %struct.info*, %struct.info** %9, align 8
  %54 = getelementptr inbounds %struct.info, %struct.info* %53, i32 0, i32 2
  store i32 1, i32* %54, align 4
  br label %80

55:                                               ; preds = %7
  %56 = load %struct.info*, %struct.info** %9, align 8
  %57 = getelementptr inbounds %struct.info, %struct.info* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.info*, %struct.info** %9, align 8
  %62 = getelementptr inbounds %struct.info, %struct.info* %61, i32 0, i32 1
  %63 = call i8* @pnm_read_number(i32* %58, i8* %59, i8* %60, i32* %62)
  store i8* %63, i8** %10, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i8* @pnm_read_white(i32* %64, i8* %65, i8* %66, i32 0)
  store i8* %67, i8** %10, align 8
  %68 = load %struct.info*, %struct.info** %9, align 8
  %69 = getelementptr inbounds %struct.info, %struct.info* %68, i32 0, i32 2
  store i32 0, i32* %69, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.info*, %struct.info** %9, align 8
  %74 = getelementptr inbounds %struct.info, %struct.info* %73, i32 0, i32 2
  %75 = call i8* @pnm_read_number(i32* %70, i8* %71, i8* %72, i32* %74)
  store i8* %75, i8** %10, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call i8* @pnm_read_white(i32* %76, i8* %77, i8* %78, i32 1)
  store i8* %79, i8** %10, align 8
  br label %80

80:                                               ; preds = %55, %40
  %81 = load %struct.info*, %struct.info** %9, align 8
  %82 = getelementptr inbounds %struct.info, %struct.info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.info*, %struct.info** %9, align 8
  %87 = getelementptr inbounds %struct.info, %struct.info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %88, 65536
  br i1 %89, label %90, label %97

90:                                               ; preds = %85, %80
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %93 = load %struct.info*, %struct.info** %9, align 8
  %94 = getelementptr inbounds %struct.info, %struct.info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %91, i32 %92, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %90, %85
  %98 = load %struct.info*, %struct.info** %9, align 8
  %99 = getelementptr inbounds %struct.info, %struct.info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @bitdepth_from_maxval(i32 %100)
  %102 = load %struct.info*, %struct.info** %9, align 8
  %103 = getelementptr inbounds %struct.info, %struct.info* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.info*, %struct.info** %9, align 8
  %105 = getelementptr inbounds %struct.info, %struct.info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sle i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %111 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %109, i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %97
  %113 = load %struct.info*, %struct.info** %9, align 8
  %114 = getelementptr inbounds %struct.info, %struct.info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sle i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %120 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %118, i32 %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %117, %112
  %122 = load %struct.info*, %struct.info** %9, align 8
  %123 = getelementptr inbounds %struct.info, %struct.info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @UINT_MAX, align 4
  %126 = load %struct.info*, %struct.info** %9, align 8
  %127 = getelementptr inbounds %struct.info, %struct.info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %125, %128
  %130 = load i32*, i32** %8, align 8
  %131 = load %struct.info*, %struct.info** %9, align 8
  %132 = getelementptr inbounds %struct.info, %struct.info* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @fz_colorspace_n(i32* %130, i32 %133)
  %135 = sdiv i32 %129, %134
  %136 = load %struct.info*, %struct.info** %9, align 8
  %137 = getelementptr inbounds %struct.info, %struct.info* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = sdiv i32 %138, 8
  %140 = add nsw i32 %139, 1
  %141 = sdiv i32 %135, %140
  %142 = icmp ugt i32 %124, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %121
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %146 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %144, i32 %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %147

147:                                              ; preds = %143, %121
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %214

150:                                              ; preds = %147
  %151 = load %struct.info*, %struct.info** %9, align 8
  %152 = getelementptr inbounds %struct.info, %struct.info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %16, align 4
  %154 = load %struct.info*, %struct.info** %9, align 8
  %155 = getelementptr inbounds %struct.info, %struct.info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %17, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = load %struct.info*, %struct.info** %9, align 8
  %159 = getelementptr inbounds %struct.info, %struct.info* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @fz_colorspace_n(i32* %157, i32 %160)
  store i32 %161, i32* %18, align 4
  %162 = load %struct.info*, %struct.info** %9, align 8
  %163 = getelementptr inbounds %struct.info, %struct.info* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 255
  br i1 %165, label %166, label %175

166:                                              ; preds = %150
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %16, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* %17, align 4
  %171 = mul nsw i32 %169, %170
  %172 = load i8*, i8** %10, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %10, align 8
  br label %213

175:                                              ; preds = %150
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 7
  %181 = sdiv i32 %180, 8
  %182 = load i32, i32* %17, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load i8*, i8** %10, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8* %186, i8** %10, align 8
  br label %212

187:                                              ; preds = %175
  %188 = load %struct.info*, %struct.info** %9, align 8
  %189 = getelementptr inbounds %struct.info, %struct.info* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %190, 255
  br i1 %191, label %192, label %201

192:                                              ; preds = %187
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %16, align 4
  %195 = mul nsw i32 %193, %194
  %196 = load i32, i32* %17, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load i8*, i8** %10, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %10, align 8
  br label %211

201:                                              ; preds = %187
  %202 = load i32, i32* %18, align 4
  %203 = mul nsw i32 2, %202
  %204 = load i32, i32* %16, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load i32, i32* %17, align 4
  %207 = mul nsw i32 %205, %206
  %208 = load i8*, i8** %10, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  store i8* %210, i8** %10, align 8
  br label %211

211:                                              ; preds = %201, %192
  br label %212

212:                                              ; preds = %211, %178
  br label %213

213:                                              ; preds = %212, %166
  br label %405

214:                                              ; preds = %147
  %215 = load i32*, i32** %8, align 8
  %216 = load %struct.info*, %struct.info** %9, align 8
  %217 = getelementptr inbounds %struct.info, %struct.info* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.info*, %struct.info** %9, align 8
  %220 = getelementptr inbounds %struct.info, %struct.info* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.info*, %struct.info** %9, align 8
  %223 = getelementptr inbounds %struct.info, %struct.info* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call %struct.TYPE_4__* @fz_new_pixmap(i32* %215, i32 %218, i32 %221, i32 %224, i32* null, i32 0)
  store %struct.TYPE_4__* %225, %struct.TYPE_4__** %15, align 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  store i8* %228, i8** %19, align 8
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  store i32 %231, i32* %23, align 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %24, align 4
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  store i32 %237, i32* %25, align 4
  %238 = load %struct.info*, %struct.info** %9, align 8
  %239 = getelementptr inbounds %struct.info, %struct.info* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 255
  br i1 %241, label %242, label %259

242:                                              ; preds = %214
  %243 = load i8*, i8** %19, align 8
  %244 = load i8*, i8** %10, align 8
  %245 = load i32, i32* %23, align 4
  %246 = load i32, i32* %24, align 4
  %247 = mul nsw i32 %245, %246
  %248 = load i32, i32* %25, align 4
  %249 = mul nsw i32 %247, %248
  %250 = call i32 @memcpy(i8* %243, i8* %244, i32 %249)
  %251 = load i32, i32* %25, align 4
  %252 = load i32, i32* %23, align 4
  %253 = mul nsw i32 %251, %252
  %254 = load i32, i32* %24, align 4
  %255 = mul nsw i32 %253, %254
  %256 = load i8*, i8** %10, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i8, i8* %256, i64 %257
  store i8* %258, i8** %10, align 8
  br label %404

259:                                              ; preds = %214
  %260 = load i32, i32* %13, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %309

262:                                              ; preds = %259
  store i32 0, i32* %21, align 4
  br label %263

263:                                              ; preds = %305, %262
  %264 = load i32, i32* %21, align 4
  %265 = load i32, i32* %24, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %308

267:                                              ; preds = %263
  store i32 0, i32* %20, align 4
  br label %268

268:                                              ; preds = %294, %267
  %269 = load i32, i32* %20, align 4
  %270 = load i32, i32* %23, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %297

272:                                              ; preds = %268
  %273 = load i8*, i8** %10, align 8
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = load i32, i32* %20, align 4
  %277 = and i32 %276, 7
  %278 = sub nsw i32 7, %277
  %279 = shl i32 1, %278
  %280 = and i32 %275, %279
  %281 = icmp ne i32 %280, 0
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i32 0, i32 255
  %284 = trunc i32 %283 to i8
  %285 = load i8*, i8** %19, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %19, align 8
  store i8 %284, i8* %285, align 1
  %287 = load i32, i32* %20, align 4
  %288 = and i32 %287, 7
  %289 = icmp eq i32 %288, 7
  br i1 %289, label %290, label %293

290:                                              ; preds = %272
  %291 = load i8*, i8** %10, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %10, align 8
  br label %293

293:                                              ; preds = %290, %272
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %20, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %20, align 4
  br label %268

297:                                              ; preds = %268
  %298 = load i32, i32* %23, align 4
  %299 = and i32 %298, 7
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %297
  %302 = load i8*, i8** %10, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %10, align 8
  br label %304

304:                                              ; preds = %301, %297
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %21, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %21, align 4
  br label %263

308:                                              ; preds = %263
  br label %403

309:                                              ; preds = %259
  %310 = load %struct.info*, %struct.info** %9, align 8
  %311 = getelementptr inbounds %struct.info, %struct.info* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = icmp slt i32 %312, 255
  br i1 %313, label %314, label %353

314:                                              ; preds = %309
  store i32 0, i32* %21, align 4
  br label %315

315:                                              ; preds = %349, %314
  %316 = load i32, i32* %21, align 4
  %317 = load i32, i32* %24, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %352

319:                                              ; preds = %315
  store i32 0, i32* %20, align 4
  br label %320

320:                                              ; preds = %345, %319
  %321 = load i32, i32* %20, align 4
  %322 = load i32, i32* %23, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %348

324:                                              ; preds = %320
  store i32 0, i32* %22, align 4
  br label %325

325:                                              ; preds = %341, %324
  %326 = load i32, i32* %22, align 4
  %327 = load i32, i32* %25, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %344

329:                                              ; preds = %325
  %330 = load i32*, i32** %8, align 8
  %331 = load i8*, i8** %10, align 8
  %332 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %332, i8** %10, align 8
  %333 = load i8, i8* %331, align 1
  %334 = load %struct.info*, %struct.info** %9, align 8
  %335 = getelementptr inbounds %struct.info, %struct.info* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = call i8* @map_color(i32* %330, i8 zeroext %333, i32 %336, i32 255)
  %338 = ptrtoint i8* %337 to i8
  %339 = load i8*, i8** %19, align 8
  %340 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %340, i8** %19, align 8
  store i8 %338, i8* %339, align 1
  br label %341

341:                                              ; preds = %329
  %342 = load i32, i32* %22, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %22, align 4
  br label %325

344:                                              ; preds = %325
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %20, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %20, align 4
  br label %320

348:                                              ; preds = %320
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %21, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %21, align 4
  br label %315

352:                                              ; preds = %315
  br label %402

353:                                              ; preds = %309
  store i32 0, i32* %21, align 4
  br label %354

354:                                              ; preds = %398, %353
  %355 = load i32, i32* %21, align 4
  %356 = load i32, i32* %24, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %401

358:                                              ; preds = %354
  store i32 0, i32* %20, align 4
  br label %359

359:                                              ; preds = %394, %358
  %360 = load i32, i32* %20, align 4
  %361 = load i32, i32* %23, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %397

363:                                              ; preds = %359
  store i32 0, i32* %22, align 4
  br label %364

364:                                              ; preds = %390, %363
  %365 = load i32, i32* %22, align 4
  %366 = load i32, i32* %25, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %393

368:                                              ; preds = %364
  %369 = load i32*, i32** %8, align 8
  %370 = load i8*, i8** %10, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 0
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i32
  %374 = shl i32 %373, 8
  %375 = load i8*, i8** %10, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 1
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = or i32 %374, %378
  %380 = trunc i32 %379 to i8
  %381 = load %struct.info*, %struct.info** %9, align 8
  %382 = getelementptr inbounds %struct.info, %struct.info* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = call i8* @map_color(i32* %369, i8 zeroext %380, i32 %383, i32 255)
  %385 = ptrtoint i8* %384 to i8
  %386 = load i8*, i8** %19, align 8
  %387 = getelementptr inbounds i8, i8* %386, i32 1
  store i8* %387, i8** %19, align 8
  store i8 %385, i8* %386, align 1
  %388 = load i8*, i8** %10, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 2
  store i8* %389, i8** %10, align 8
  br label %390

390:                                              ; preds = %368
  %391 = load i32, i32* %22, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %22, align 4
  br label %364

393:                                              ; preds = %364
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %20, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %20, align 4
  br label %359

397:                                              ; preds = %359
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %21, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %21, align 4
  br label %354

401:                                              ; preds = %354
  br label %402

402:                                              ; preds = %401, %352
  br label %403

403:                                              ; preds = %402, %308
  br label %404

404:                                              ; preds = %403, %242
  br label %405

405:                                              ; preds = %404, %213
  %406 = load i8**, i8*** %14, align 8
  %407 = icmp ne i8** %406, null
  br i1 %407, label %408, label %411

408:                                              ; preds = %405
  %409 = load i8*, i8** %10, align 8
  %410 = load i8**, i8*** %14, align 8
  store i8* %409, i8** %410, align 8
  br label %411

411:                                              ; preds = %408, %405
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  ret %struct.TYPE_4__* %412
}

declare dso_local i8* @pnm_read_number(i32*, i8*, i8*, i32*) #1

declare dso_local i8* @pnm_read_white(i32*, i8*, i8*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @bitdepth_from_maxval(i32) #1

declare dso_local i32 @fz_colorspace_n(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @fz_new_pixmap(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @map_color(i32*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
