; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_rgb_to_bgr.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_rgb_to_bgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32, i32, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"incompatible number of spots when converting pixmap\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot drop alpha when converting pixmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @fast_rgb_to_bgr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_rgb_to_bgr(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 %3, i32* %8, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %9, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %14, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %17, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %18, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %60, %62
  %64 = sub i64 %59, %63
  store i64 %64, i64* %19, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %68, %70
  %72 = sub i64 %67, %71
  store i64 %72, i64* %20, align 8
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %82 = call i32 @fz_throw(i32* %80, i32 %81, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %75, %4
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %92 = call i32 @fz_throw(i32* %90, i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %86, %83
  %94 = load i64, i64* %11, align 8
  %95 = trunc i64 %94 to i32
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97, %93
  br label %366

101:                                              ; preds = %97
  %102 = load i64, i64* %19, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i64, i64* %20, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %11, align 8
  %111 = mul i64 %110, %109
  store i64 %111, i64* %11, align 8
  store i32 1, i32* %12, align 4
  br label %112

112:                                              ; preds = %107, %104, %101
  %113 = load i32, i32* %14, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %232

115:                                              ; preds = %112
  %116 = load i32, i32* %17, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %232

118:                                              ; preds = %115
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %198

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %162

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %160, %124
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %12, align 4
  %128 = icmp ne i32 %126, 0
  br i1 %128, label %129, label %161

129:                                              ; preds = %125
  %130 = load i64, i64* %11, align 8
  store i64 %130, i64* %21, align 8
  br label %131

131:                                              ; preds = %135, %129
  %132 = load i64, i64* %21, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* %21, align 8
  %134 = icmp ne i64 %132, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %131
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  store i8 %138, i8* %140, align 1
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = load i8*, i8** %10, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  store i8 %143, i8* %145, align 1
  %146 = load i8*, i8** %9, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = load i8*, i8** %10, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  store i8 %148, i8* %150, align 1
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 3
  %153 = load i8, i8* %152, align 1
  %154 = load i8*, i8** %10, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  store i8 %153, i8* %155, align 1
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 4
  store i8* %157, i8** %9, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 4
  store i8* %159, i8** %10, align 8
  br label %131

160:                                              ; preds = %131
  br label %125

161:                                              ; preds = %125
  br label %197

162:                                              ; preds = %121
  br label %163

163:                                              ; preds = %195, %162
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %12, align 4
  %166 = icmp ne i32 %164, 0
  br i1 %166, label %167, label %196

167:                                              ; preds = %163
  %168 = load i64, i64* %11, align 8
  store i64 %168, i64* %22, align 8
  br label %169

169:                                              ; preds = %173, %167
  %170 = load i64, i64* %22, align 8
  %171 = add i64 %170, -1
  store i64 %171, i64* %22, align 8
  %172 = icmp ne i64 %170, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %169
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 2
  %176 = load i8, i8* %175, align 1
  %177 = load i8*, i8** %10, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  store i8 %176, i8* %178, align 1
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  store i8 %181, i8* %183, align 1
  %184 = load i8*, i8** %9, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 0
  %186 = load i8, i8* %185, align 1
  %187 = load i8*, i8** %10, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  store i8 %186, i8* %188, align 1
  %189 = load i8*, i8** %10, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 3
  store i8 -1, i8* %190, align 1
  %191 = load i8*, i8** %9, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 3
  store i8* %192, i8** %9, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 4
  store i8* %194, i8** %10, align 8
  br label %169

195:                                              ; preds = %169
  br label %163

196:                                              ; preds = %163
  br label %197

197:                                              ; preds = %196, %161
  br label %231

198:                                              ; preds = %118
  br label %199

199:                                              ; preds = %229, %198
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %12, align 4
  %202 = icmp ne i32 %200, 0
  br i1 %202, label %203, label %230

203:                                              ; preds = %199
  %204 = load i64, i64* %11, align 8
  store i64 %204, i64* %23, align 8
  br label %205

205:                                              ; preds = %209, %203
  %206 = load i64, i64* %23, align 8
  %207 = add i64 %206, -1
  store i64 %207, i64* %23, align 8
  %208 = icmp ne i64 %206, 0
  br i1 %208, label %209, label %229

209:                                              ; preds = %205
  %210 = load i8*, i8** %9, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 2
  %212 = load i8, i8* %211, align 1
  %213 = load i8*, i8** %10, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 0
  store i8 %212, i8* %214, align 1
  %215 = load i8*, i8** %9, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  %217 = load i8, i8* %216, align 1
  %218 = load i8*, i8** %10, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 1
  store i8 %217, i8* %219, align 1
  %220 = load i8*, i8** %9, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  %222 = load i8, i8* %221, align 1
  %223 = load i8*, i8** %10, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 2
  store i8 %222, i8* %224, align 1
  %225 = load i8*, i8** %9, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 3
  store i8* %226, i8** %9, align 8
  %227 = load i8*, i8** %10, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 3
  store i8* %228, i8** %10, align 8
  br label %205

229:                                              ; preds = %205
  br label %199

230:                                              ; preds = %199
  br label %231

231:                                              ; preds = %230, %197
  br label %366

232:                                              ; preds = %115, %112
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %305

235:                                              ; preds = %232
  br label %236

236:                                              ; preds = %297, %235
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %12, align 4
  %239 = icmp ne i32 %237, 0
  br i1 %239, label %240, label %304

240:                                              ; preds = %236
  %241 = load i64, i64* %11, align 8
  store i64 %241, i64* %25, align 8
  br label %242

242:                                              ; preds = %296, %240
  %243 = load i64, i64* %25, align 8
  %244 = add i64 %243, -1
  store i64 %244, i64* %25, align 8
  %245 = icmp ne i64 %243, 0
  br i1 %245, label %246, label %297

246:                                              ; preds = %242
  %247 = load i8*, i8** %9, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 2
  %249 = load i8, i8* %248, align 1
  %250 = load i8*, i8** %10, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 0
  store i8 %249, i8* %251, align 1
  %252 = load i8*, i8** %9, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 1
  %254 = load i8, i8* %253, align 1
  %255 = load i8*, i8** %10, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 1
  store i8 %254, i8* %256, align 1
  %257 = load i8*, i8** %9, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 0
  %259 = load i8, i8* %258, align 1
  %260 = load i8*, i8** %10, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 2
  store i8 %259, i8* %261, align 1
  %262 = load i8*, i8** %9, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 3
  store i8* %263, i8** %9, align 8
  %264 = load i8*, i8** %10, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 3
  store i8* %265, i8** %10, align 8
  %266 = load i32, i32* %14, align 4
  store i32 %266, i32* %24, align 4
  br label %267

267:                                              ; preds = %276, %246
  %268 = load i32, i32* %24, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %267
  %271 = load i8*, i8** %9, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %9, align 8
  %273 = load i8, i8* %271, align 1
  %274 = load i8*, i8** %10, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %10, align 8
  store i8 %273, i8* %274, align 1
  br label %276

276:                                              ; preds = %270
  %277 = load i32, i32* %24, align 4
  %278 = add nsw i32 %277, -1
  store i32 %278, i32* %24, align 4
  br label %267

279:                                              ; preds = %267
  %280 = load i32, i32* %18, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %296

282:                                              ; preds = %279
  %283 = load i32, i32* %15, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %282
  %286 = load i8*, i8** %9, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %9, align 8
  %288 = load i8, i8* %286, align 1
  %289 = zext i8 %288 to i32
  br label %291

290:                                              ; preds = %282
  br label %291

291:                                              ; preds = %290, %285
  %292 = phi i32 [ %289, %285 ], [ 255, %290 ]
  %293 = trunc i32 %292 to i8
  %294 = load i8*, i8** %10, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %10, align 8
  store i8 %293, i8* %294, align 1
  br label %296

296:                                              ; preds = %291, %279
  br label %242

297:                                              ; preds = %242
  %298 = load i64, i64* %19, align 8
  %299 = load i8*, i8** %10, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 %298
  store i8* %300, i8** %10, align 8
  %301 = load i64, i64* %20, align 8
  %302 = load i8*, i8** %9, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 %301
  store i8* %303, i8** %9, align 8
  br label %236

304:                                              ; preds = %236
  br label %365

305:                                              ; preds = %232
  br label %306

306:                                              ; preds = %357, %305
  %307 = load i32, i32* %12, align 4
  %308 = add nsw i32 %307, -1
  store i32 %308, i32* %12, align 4
  %309 = icmp ne i32 %307, 0
  br i1 %309, label %310, label %364

310:                                              ; preds = %306
  %311 = load i64, i64* %11, align 8
  store i64 %311, i64* %26, align 8
  br label %312

312:                                              ; preds = %356, %310
  %313 = load i64, i64* %26, align 8
  %314 = add i64 %313, -1
  store i64 %314, i64* %26, align 8
  %315 = icmp ne i64 %313, 0
  br i1 %315, label %316, label %357

316:                                              ; preds = %312
  %317 = load i8*, i8** %9, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 2
  %319 = load i8, i8* %318, align 1
  %320 = load i8*, i8** %10, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 0
  store i8 %319, i8* %321, align 1
  %322 = load i8*, i8** %9, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 1
  %324 = load i8, i8* %323, align 1
  %325 = load i8*, i8** %10, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 1
  store i8 %324, i8* %326, align 1
  %327 = load i8*, i8** %9, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 0
  %329 = load i8, i8* %328, align 1
  %330 = load i8*, i8** %10, align 8
  %331 = getelementptr inbounds i8, i8* %330, i64 2
  store i8 %329, i8* %331, align 1
  %332 = load i32, i32* %13, align 4
  %333 = load i8*, i8** %9, align 8
  %334 = sext i32 %332 to i64
  %335 = getelementptr inbounds i8, i8* %333, i64 %334
  store i8* %335, i8** %9, align 8
  %336 = load i32, i32* %16, align 4
  %337 = load i8*, i8** %10, align 8
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds i8, i8* %337, i64 %338
  store i8* %339, i8** %10, align 8
  %340 = load i32, i32* %18, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %356

342:                                              ; preds = %316
  %343 = load i32, i32* %15, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %342
  %346 = load i8*, i8** %9, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 -1
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i32
  br label %351

350:                                              ; preds = %342
  br label %351

351:                                              ; preds = %350, %345
  %352 = phi i32 [ %349, %345 ], [ 255, %350 ]
  %353 = trunc i32 %352 to i8
  %354 = load i8*, i8** %10, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 -1
  store i8 %353, i8* %355, align 1
  br label %356

356:                                              ; preds = %351, %316
  br label %312

357:                                              ; preds = %312
  %358 = load i64, i64* %19, align 8
  %359 = load i8*, i8** %10, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 %358
  store i8* %360, i8** %10, align 8
  %361 = load i64, i64* %20, align 8
  %362 = load i8*, i8** %9, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 %361
  store i8* %363, i8** %9, align 8
  br label %306

364:                                              ; preds = %306
  br label %365

365:                                              ; preds = %364, %304
  br label %366

366:                                              ; preds = %100, %365, %231
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
