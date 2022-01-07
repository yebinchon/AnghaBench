; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_gray_to_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_gray_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32, i32, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"incompatible number of spots when converting pixmap\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot drop alpha when converting pixmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @fast_gray_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_gray_to_rgb(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
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
  br label %384

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
  br i1 %114, label %115, label %250

115:                                              ; preds = %112
  %116 = load i32, i32* %17, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %250

118:                                              ; preds = %115
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %210

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %168

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %160, %124
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %12, align 4
  %128 = icmp ne i32 %126, 0
  br i1 %128, label %129, label %167

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
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  store i8 %138, i8* %140, align 1
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
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
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i8, i8* %152, align 1
  %154 = load i8*, i8** %10, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  store i8 %153, i8* %155, align 1
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  store i8* %157, i8** %9, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 4
  store i8* %159, i8** %10, align 8
  br label %131

160:                                              ; preds = %131
  %161 = load i64, i64* %19, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 %161
  store i8* %163, i8** %10, align 8
  %164 = load i64, i64* %20, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 %164
  store i8* %166, i8** %9, align 8
  br label %125

167:                                              ; preds = %125
  br label %209

168:                                              ; preds = %121
  br label %169

169:                                              ; preds = %201, %168
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %12, align 4
  %172 = icmp ne i32 %170, 0
  br i1 %172, label %173, label %208

173:                                              ; preds = %169
  %174 = load i64, i64* %11, align 8
  store i64 %174, i64* %22, align 8
  br label %175

175:                                              ; preds = %179, %173
  %176 = load i64, i64* %22, align 8
  %177 = add i64 %176, -1
  store i64 %177, i64* %22, align 8
  %178 = icmp ne i64 %176, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %175
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  %182 = load i8, i8* %181, align 1
  %183 = load i8*, i8** %10, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  store i8 %182, i8* %184, align 1
  %185 = load i8*, i8** %9, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = load i8*, i8** %10, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8 %187, i8* %189, align 1
  %190 = load i8*, i8** %9, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = load i8*, i8** %10, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  store i8 %192, i8* %194, align 1
  %195 = load i8*, i8** %10, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 3
  store i8 -1, i8* %196, align 1
  %197 = load i8*, i8** %9, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %9, align 8
  %199 = load i8*, i8** %10, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 4
  store i8* %200, i8** %10, align 8
  br label %175

201:                                              ; preds = %175
  %202 = load i64, i64* %19, align 8
  %203 = load i8*, i8** %10, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 %202
  store i8* %204, i8** %10, align 8
  %205 = load i64, i64* %20, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 %205
  store i8* %207, i8** %9, align 8
  br label %169

208:                                              ; preds = %169
  br label %209

209:                                              ; preds = %208, %167
  br label %249

210:                                              ; preds = %118
  br label %211

211:                                              ; preds = %241, %210
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %12, align 4
  %214 = icmp ne i32 %212, 0
  br i1 %214, label %215, label %248

215:                                              ; preds = %211
  %216 = load i64, i64* %11, align 8
  store i64 %216, i64* %23, align 8
  br label %217

217:                                              ; preds = %221, %215
  %218 = load i64, i64* %23, align 8
  %219 = add i64 %218, -1
  store i64 %219, i64* %23, align 8
  %220 = icmp ne i64 %218, 0
  br i1 %220, label %221, label %241

221:                                              ; preds = %217
  %222 = load i8*, i8** %9, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 0
  %224 = load i8, i8* %223, align 1
  %225 = load i8*, i8** %10, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 0
  store i8 %224, i8* %226, align 1
  %227 = load i8*, i8** %9, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  %229 = load i8, i8* %228, align 1
  %230 = load i8*, i8** %10, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  store i8 %229, i8* %231, align 1
  %232 = load i8*, i8** %9, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 0
  %234 = load i8, i8* %233, align 1
  %235 = load i8*, i8** %10, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 2
  store i8 %234, i8* %236, align 1
  %237 = load i8*, i8** %9, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %9, align 8
  %239 = load i8*, i8** %10, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 3
  store i8* %240, i8** %10, align 8
  br label %217

241:                                              ; preds = %217
  %242 = load i64, i64* %19, align 8
  %243 = load i8*, i8** %10, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 %242
  store i8* %244, i8** %10, align 8
  %245 = load i64, i64* %20, align 8
  %246 = load i8*, i8** %9, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 %245
  store i8* %247, i8** %9, align 8
  br label %211

248:                                              ; preds = %211
  br label %249

249:                                              ; preds = %248, %209
  br label %384

250:                                              ; preds = %115, %112
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %323

253:                                              ; preds = %250
  br label %254

254:                                              ; preds = %315, %253
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %12, align 4
  %257 = icmp ne i32 %255, 0
  br i1 %257, label %258, label %322

258:                                              ; preds = %254
  %259 = load i64, i64* %11, align 8
  store i64 %259, i64* %25, align 8
  br label %260

260:                                              ; preds = %314, %258
  %261 = load i64, i64* %25, align 8
  %262 = add i64 %261, -1
  store i64 %262, i64* %25, align 8
  %263 = icmp ne i64 %261, 0
  br i1 %263, label %264, label %315

264:                                              ; preds = %260
  %265 = load i8*, i8** %9, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 0
  %267 = load i8, i8* %266, align 1
  %268 = load i8*, i8** %10, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 0
  store i8 %267, i8* %269, align 1
  %270 = load i8*, i8** %9, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 0
  %272 = load i8, i8* %271, align 1
  %273 = load i8*, i8** %10, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 1
  store i8 %272, i8* %274, align 1
  %275 = load i8*, i8** %9, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 0
  %277 = load i8, i8* %276, align 1
  %278 = load i8*, i8** %10, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 2
  store i8 %277, i8* %279, align 1
  %280 = load i8*, i8** %9, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 1
  store i8* %281, i8** %9, align 8
  %282 = load i8*, i8** %10, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 3
  store i8* %283, i8** %10, align 8
  %284 = load i32, i32* %14, align 4
  store i32 %284, i32* %24, align 4
  br label %285

285:                                              ; preds = %294, %264
  %286 = load i32, i32* %24, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %285
  %289 = load i8*, i8** %9, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %9, align 8
  %291 = load i8, i8* %289, align 1
  %292 = load i8*, i8** %10, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %10, align 8
  store i8 %291, i8* %292, align 1
  br label %294

294:                                              ; preds = %288
  %295 = load i32, i32* %24, align 4
  %296 = add nsw i32 %295, -1
  store i32 %296, i32* %24, align 4
  br label %285

297:                                              ; preds = %285
  %298 = load i32, i32* %18, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %314

300:                                              ; preds = %297
  %301 = load i32, i32* %15, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %300
  %304 = load i8*, i8** %9, align 8
  %305 = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %305, i8** %9, align 8
  %306 = load i8, i8* %304, align 1
  %307 = zext i8 %306 to i32
  br label %309

308:                                              ; preds = %300
  br label %309

309:                                              ; preds = %308, %303
  %310 = phi i32 [ %307, %303 ], [ 255, %308 ]
  %311 = trunc i32 %310 to i8
  %312 = load i8*, i8** %10, align 8
  %313 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %313, i8** %10, align 8
  store i8 %311, i8* %312, align 1
  br label %314

314:                                              ; preds = %309, %297
  br label %260

315:                                              ; preds = %260
  %316 = load i64, i64* %19, align 8
  %317 = load i8*, i8** %10, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 %316
  store i8* %318, i8** %10, align 8
  %319 = load i64, i64* %20, align 8
  %320 = load i8*, i8** %9, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 %319
  store i8* %321, i8** %9, align 8
  br label %254

322:                                              ; preds = %254
  br label %383

323:                                              ; preds = %250
  br label %324

324:                                              ; preds = %375, %323
  %325 = load i32, i32* %12, align 4
  %326 = add nsw i32 %325, -1
  store i32 %326, i32* %12, align 4
  %327 = icmp ne i32 %325, 0
  br i1 %327, label %328, label %382

328:                                              ; preds = %324
  %329 = load i64, i64* %11, align 8
  store i64 %329, i64* %26, align 8
  br label %330

330:                                              ; preds = %374, %328
  %331 = load i64, i64* %26, align 8
  %332 = add i64 %331, -1
  store i64 %332, i64* %26, align 8
  %333 = icmp ne i64 %331, 0
  br i1 %333, label %334, label %375

334:                                              ; preds = %330
  %335 = load i8*, i8** %9, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 0
  %337 = load i8, i8* %336, align 1
  %338 = load i8*, i8** %10, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 0
  store i8 %337, i8* %339, align 1
  %340 = load i8*, i8** %9, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 0
  %342 = load i8, i8* %341, align 1
  %343 = load i8*, i8** %10, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 1
  store i8 %342, i8* %344, align 1
  %345 = load i8*, i8** %9, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 0
  %347 = load i8, i8* %346, align 1
  %348 = load i8*, i8** %10, align 8
  %349 = getelementptr inbounds i8, i8* %348, i64 2
  store i8 %347, i8* %349, align 1
  %350 = load i32, i32* %13, align 4
  %351 = load i8*, i8** %9, align 8
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i8, i8* %351, i64 %352
  store i8* %353, i8** %9, align 8
  %354 = load i32, i32* %16, align 4
  %355 = load i8*, i8** %10, align 8
  %356 = sext i32 %354 to i64
  %357 = getelementptr inbounds i8, i8* %355, i64 %356
  store i8* %357, i8** %10, align 8
  %358 = load i32, i32* %18, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %374

360:                                              ; preds = %334
  %361 = load i32, i32* %15, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %360
  %364 = load i8*, i8** %9, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 -1
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  br label %369

368:                                              ; preds = %360
  br label %369

369:                                              ; preds = %368, %363
  %370 = phi i32 [ %367, %363 ], [ 255, %368 ]
  %371 = trunc i32 %370 to i8
  %372 = load i8*, i8** %10, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 -1
  store i8 %371, i8* %373, align 1
  br label %374

374:                                              ; preds = %369, %334
  br label %330

375:                                              ; preds = %330
  %376 = load i64, i64* %19, align 8
  %377 = load i8*, i8** %10, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 %376
  store i8* %378, i8** %10, align 8
  %379 = load i64, i64* %20, align 8
  %380 = load i8*, i8** %9, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 %379
  store i8* %381, i8** %9, align 8
  br label %324

382:                                              ; preds = %324
  br label %383

383:                                              ; preds = %382, %322
  br label %384

384:                                              ; preds = %100, %383, %249
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
