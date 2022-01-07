; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_cmyk_to_cmyk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_fast_cmyk_to_cmyk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32, i32, i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"incompatible number of spots when converting pixmap\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot drop alpha when converting pixmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32)* @fast_cmyk_to_cmyk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_cmyk_to_cmyk(i32* %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
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
  br label %391

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
  br i1 %114, label %115, label %247

115:                                              ; preds = %112
  %116 = load i32, i32* %17, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %247

118:                                              ; preds = %115
  %119 = load i32, i32* %18, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %208

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %167

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %165, %124
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %12, align 4
  %128 = icmp ne i32 %126, 0
  br i1 %128, label %129, label %166

129:                                              ; preds = %125
  %130 = load i64, i64* %11, align 8
  store i64 %130, i64* %21, align 8
  br label %131

131:                                              ; preds = %135, %129
  %132 = load i64, i64* %21, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* %21, align 8
  %134 = icmp ne i64 %132, 0
  br i1 %134, label %135, label %165

135:                                              ; preds = %131
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
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
  %147 = getelementptr inbounds i8, i8* %146, i64 2
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
  %158 = load i8, i8* %157, align 1
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 4
  store i8 %158, i8* %160, align 1
  %161 = load i8*, i8** %9, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 5
  store i8* %162, i8** %9, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 5
  store i8* %164, i8** %10, align 8
  br label %131

165:                                              ; preds = %131
  br label %125

166:                                              ; preds = %125
  br label %207

167:                                              ; preds = %121
  br label %168

168:                                              ; preds = %205, %167
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %12, align 4
  %171 = icmp ne i32 %169, 0
  br i1 %171, label %172, label %206

172:                                              ; preds = %168
  %173 = load i64, i64* %11, align 8
  store i64 %173, i64* %22, align 8
  br label %174

174:                                              ; preds = %178, %172
  %175 = load i64, i64* %22, align 8
  %176 = add i64 %175, -1
  store i64 %176, i64* %22, align 8
  %177 = icmp ne i64 %175, 0
  br i1 %177, label %178, label %205

178:                                              ; preds = %174
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  store i8 %181, i8* %183, align 1
  %184 = load i8*, i8** %9, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = load i8, i8* %185, align 1
  %187 = load i8*, i8** %10, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  store i8 %186, i8* %188, align 1
  %189 = load i8*, i8** %9, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 2
  %191 = load i8, i8* %190, align 1
  %192 = load i8*, i8** %10, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 2
  store i8 %191, i8* %193, align 1
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 3
  %196 = load i8, i8* %195, align 1
  %197 = load i8*, i8** %10, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 3
  store i8 %196, i8* %198, align 1
  %199 = load i8*, i8** %10, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 4
  store i8 -1, i8* %200, align 1
  %201 = load i8*, i8** %9, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 4
  store i8* %202, i8** %9, align 8
  %203 = load i8*, i8** %10, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 5
  store i8* %204, i8** %10, align 8
  br label %174

205:                                              ; preds = %174
  br label %168

206:                                              ; preds = %168
  br label %207

207:                                              ; preds = %206, %166
  br label %246

208:                                              ; preds = %118
  br label %209

209:                                              ; preds = %244, %208
  %210 = load i32, i32* %12, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %12, align 4
  %212 = icmp ne i32 %210, 0
  br i1 %212, label %213, label %245

213:                                              ; preds = %209
  %214 = load i64, i64* %11, align 8
  store i64 %214, i64* %23, align 8
  br label %215

215:                                              ; preds = %219, %213
  %216 = load i64, i64* %23, align 8
  %217 = add i64 %216, -1
  store i64 %217, i64* %23, align 8
  %218 = icmp ne i64 %216, 0
  br i1 %218, label %219, label %244

219:                                              ; preds = %215
  %220 = load i8*, i8** %9, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  %222 = load i8, i8* %221, align 1
  %223 = load i8*, i8** %10, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  store i8 %222, i8* %224, align 1
  %225 = load i8*, i8** %9, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 1
  %227 = load i8, i8* %226, align 1
  %228 = load i8*, i8** %10, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  store i8 %227, i8* %229, align 1
  %230 = load i8*, i8** %9, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 2
  %232 = load i8, i8* %231, align 1
  %233 = load i8*, i8** %10, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 2
  store i8 %232, i8* %234, align 1
  %235 = load i8*, i8** %9, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 3
  %237 = load i8, i8* %236, align 1
  %238 = load i8*, i8** %10, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 3
  store i8 %237, i8* %239, align 1
  %240 = load i8*, i8** %9, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 4
  store i8* %241, i8** %9, align 8
  %242 = load i8*, i8** %10, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 4
  store i8* %243, i8** %10, align 8
  br label %215

244:                                              ; preds = %215
  br label %209

245:                                              ; preds = %209
  br label %246

246:                                              ; preds = %245, %207
  br label %391

247:                                              ; preds = %115, %112
  %248 = load i32, i32* %8, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %325

250:                                              ; preds = %247
  br label %251

251:                                              ; preds = %317, %250
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %12, align 4
  %254 = icmp ne i32 %252, 0
  br i1 %254, label %255, label %324

255:                                              ; preds = %251
  %256 = load i64, i64* %11, align 8
  store i64 %256, i64* %25, align 8
  br label %257

257:                                              ; preds = %316, %255
  %258 = load i64, i64* %25, align 8
  %259 = add i64 %258, -1
  store i64 %259, i64* %25, align 8
  %260 = icmp ne i64 %258, 0
  br i1 %260, label %261, label %317

261:                                              ; preds = %257
  %262 = load i8*, i8** %9, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 0
  %264 = load i8, i8* %263, align 1
  %265 = load i8*, i8** %10, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 0
  store i8 %264, i8* %266, align 1
  %267 = load i8*, i8** %9, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 1
  %269 = load i8, i8* %268, align 1
  %270 = load i8*, i8** %10, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 1
  store i8 %269, i8* %271, align 1
  %272 = load i8*, i8** %9, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 2
  %274 = load i8, i8* %273, align 1
  %275 = load i8*, i8** %10, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 2
  store i8 %274, i8* %276, align 1
  %277 = load i8*, i8** %9, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 3
  %279 = load i8, i8* %278, align 1
  %280 = load i8*, i8** %10, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 3
  store i8 %279, i8* %281, align 1
  %282 = load i8*, i8** %9, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 4
  store i8* %283, i8** %9, align 8
  %284 = load i8*, i8** %10, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 4
  store i8* %285, i8** %10, align 8
  %286 = load i32, i32* %14, align 4
  store i32 %286, i32* %24, align 4
  br label %287

287:                                              ; preds = %296, %261
  %288 = load i32, i32* %24, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %287
  %291 = load i8*, i8** %9, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %9, align 8
  %293 = load i8, i8* %291, align 1
  %294 = load i8*, i8** %10, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %10, align 8
  store i8 %293, i8* %294, align 1
  br label %296

296:                                              ; preds = %290
  %297 = load i32, i32* %24, align 4
  %298 = add nsw i32 %297, -1
  store i32 %298, i32* %24, align 4
  br label %287

299:                                              ; preds = %287
  %300 = load i32, i32* %18, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %316

302:                                              ; preds = %299
  %303 = load i32, i32* %15, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %302
  %306 = load i8*, i8** %9, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %9, align 8
  %308 = load i8, i8* %306, align 1
  %309 = zext i8 %308 to i32
  br label %311

310:                                              ; preds = %302
  br label %311

311:                                              ; preds = %310, %305
  %312 = phi i32 [ %309, %305 ], [ 255, %310 ]
  %313 = trunc i32 %312 to i8
  %314 = load i8*, i8** %10, align 8
  %315 = getelementptr inbounds i8, i8* %314, i32 1
  store i8* %315, i8** %10, align 8
  store i8 %313, i8* %314, align 1
  br label %316

316:                                              ; preds = %311, %299
  br label %257

317:                                              ; preds = %257
  %318 = load i64, i64* %19, align 8
  %319 = load i8*, i8** %10, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 %318
  store i8* %320, i8** %10, align 8
  %321 = load i64, i64* %20, align 8
  %322 = load i8*, i8** %9, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 %321
  store i8* %323, i8** %9, align 8
  br label %251

324:                                              ; preds = %251
  br label %390

325:                                              ; preds = %247
  br label %326

326:                                              ; preds = %382, %325
  %327 = load i32, i32* %12, align 4
  %328 = add nsw i32 %327, -1
  store i32 %328, i32* %12, align 4
  %329 = icmp ne i32 %327, 0
  br i1 %329, label %330, label %389

330:                                              ; preds = %326
  %331 = load i64, i64* %11, align 8
  store i64 %331, i64* %26, align 8
  br label %332

332:                                              ; preds = %381, %330
  %333 = load i64, i64* %26, align 8
  %334 = add i64 %333, -1
  store i64 %334, i64* %26, align 8
  %335 = icmp ne i64 %333, 0
  br i1 %335, label %336, label %382

336:                                              ; preds = %332
  %337 = load i8*, i8** %9, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 0
  %339 = load i8, i8* %338, align 1
  %340 = load i8*, i8** %10, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 0
  store i8 %339, i8* %341, align 1
  %342 = load i8*, i8** %9, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 1
  %344 = load i8, i8* %343, align 1
  %345 = load i8*, i8** %10, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 1
  store i8 %344, i8* %346, align 1
  %347 = load i8*, i8** %9, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 2
  %349 = load i8, i8* %348, align 1
  %350 = load i8*, i8** %10, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 2
  store i8 %349, i8* %351, align 1
  %352 = load i8*, i8** %9, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 3
  %354 = load i8, i8* %353, align 1
  %355 = load i8*, i8** %10, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 3
  store i8 %354, i8* %356, align 1
  %357 = load i32, i32* %13, align 4
  %358 = load i8*, i8** %9, align 8
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds i8, i8* %358, i64 %359
  store i8* %360, i8** %9, align 8
  %361 = load i32, i32* %16, align 4
  %362 = load i8*, i8** %10, align 8
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds i8, i8* %362, i64 %363
  store i8* %364, i8** %10, align 8
  %365 = load i32, i32* %18, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %381

367:                                              ; preds = %336
  %368 = load i32, i32* %15, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %367
  %371 = load i8*, i8** %9, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 -1
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  br label %376

375:                                              ; preds = %367
  br label %376

376:                                              ; preds = %375, %370
  %377 = phi i32 [ %374, %370 ], [ 255, %375 ]
  %378 = trunc i32 %377 to i8
  %379 = load i8*, i8** %10, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 -1
  store i8 %378, i8* %380, align 1
  br label %381

381:                                              ; preds = %376, %336
  br label %332

382:                                              ; preds = %332
  %383 = load i64, i64* %19, align 8
  %384 = load i8*, i8** %10, align 8
  %385 = getelementptr inbounds i8, i8* %384, i64 %383
  store i8* %385, i8** %10, align 8
  %386 = load i64, i64* %20, align 8
  %387 = load i8*, i8** %9, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 %386
  store i8* %388, i8** %9, align 8
  br label %326

389:                                              ; preds = %326
  br label %390

390:                                              ; preds = %389, %324
  br label %391

391:                                              ; preds = %100, %390, %246
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
