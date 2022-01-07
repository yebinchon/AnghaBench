; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-psd.c_psd_write_band.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-psd.c_psd_write_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32* }

@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i8*)* @psd_write_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psd_write_band(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [256 x i8], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = bitcast i8* %31 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %13, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %14, align 8
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 256
  store i8* %37, i8** %23, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %27, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %6
  br label %381

44:                                               ; preds = %6
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %19, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %20, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %20, align 4
  %61 = icmp sge i32 %59, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %44
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %44
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %71, %72
  %74 = mul nsw i32 %70, %73
  store i32 %74, i32* %25, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %21, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %26, align 4
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  store i8* %80, i8** %24, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %276

86:                                               ; preds = %69
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %21, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8* %91, i8** %28, align 8
  store i32 0, i32* %17, align 4
  br label %92

92:                                               ; preds = %211, %86
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %21, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %214

97:                                               ; preds = %92
  store i32 0, i32* %15, align 4
  br label %98

98:                                               ; preds = %164, %97
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %167

102:                                              ; preds = %98
  store i32 0, i32* %16, align 4
  br label %103

103:                                              ; preds = %152, %102
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %19, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %155

107:                                              ; preds = %103
  %108 = load i8*, i8** %28, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  store i32 %110, i32* %29, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i8*, i8** %28, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %28, align 8
  %115 = load i32, i32* %29, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %107
  %118 = load i8*, i8** %12, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = mul nsw i32 %120, 255
  %122 = add nsw i32 %121, 128
  %123 = load i32, i32* %29, align 4
  %124 = sdiv i32 %122, %123
  br label %126

125:                                              ; preds = %107
  br label %126

126:                                              ; preds = %125, %117
  %127 = phi i32 [ %124, %117 ], [ 0, %125 ]
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %24, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %24, align 8
  store i8 %128, i8* %129, align 1
  %131 = load i32, i32* %21, align 4
  %132 = load i8*, i8** %12, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %12, align 8
  %135 = load i8*, i8** %24, align 8
  %136 = load i8*, i8** %23, align 8
  %137 = icmp eq i8* %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %126
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %27, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %144 = call i32 @psd_invert_buffer(i8* %143, i32 256)
  br label %145

145:                                              ; preds = %142, %138
  %146 = load i32*, i32** %7, align 8
  %147 = load i32*, i32** %14, align 8
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %149 = call i32 @fz_write_data(i32* %146, i32* %147, i8* %148, i32 256)
  %150 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  store i8* %150, i8** %24, align 8
  br label %151

151:                                              ; preds = %145, %126
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %16, align 4
  br label %103

155:                                              ; preds = %103
  %156 = load i32, i32* %26, align 4
  %157 = load i8*, i8** %12, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %12, align 8
  %160 = load i32, i32* %26, align 4
  %161 = load i8*, i8** %28, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %28, align 8
  br label %164

164:                                              ; preds = %155
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %98

167:                                              ; preds = %98
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %11, align 4
  %170 = mul nsw i32 %168, %169
  %171 = sub nsw i32 %170, 1
  %172 = load i8*, i8** %12, align 8
  %173 = sext i32 %171 to i64
  %174 = sub i64 0, %173
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8* %175, i8** %12, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %11, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i8*, i8** %28, align 8
  %180 = sext i32 %178 to i64
  %181 = sub i64 0, %180
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  store i8* %182, i8** %28, align 8
  %183 = load i8*, i8** %24, align 8
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %185 = icmp ne i8* %183, %184
  br i1 %185, label %186, label %205

186:                                              ; preds = %167
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* %27, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %192 = call i32 @psd_invert_buffer(i8* %191, i32 256)
  br label %193

193:                                              ; preds = %190, %186
  %194 = load i32*, i32** %7, align 8
  %195 = load i32*, i32** %14, align 8
  %196 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %197 = load i8*, i8** %24, align 8
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %199 = ptrtoint i8* %197 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  %203 = call i32 @fz_write_data(i32* %194, i32* %195, i8* %196, i32 %202)
  %204 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  store i8* %204, i8** %24, align 8
  br label %205

205:                                              ; preds = %193, %167
  %206 = load i32*, i32** %7, align 8
  %207 = load i32*, i32** %14, align 8
  %208 = load i32, i32* %25, align 4
  %209 = load i32, i32* @SEEK_CUR, align 4
  %210 = call i32 @fz_seek_output(i32* %206, i32* %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %205
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %17, align 4
  br label %92

214:                                              ; preds = %92
  store i32 0, i32* %15, align 4
  br label %215

215:                                              ; preds = %251, %214
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %11, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %254

219:                                              ; preds = %215
  store i32 0, i32* %16, align 4
  br label %220

220:                                              ; preds = %243, %219
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %19, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %246

224:                                              ; preds = %220
  %225 = load i8*, i8** %12, align 8
  %226 = load i8, i8* %225, align 1
  %227 = load i8*, i8** %24, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %24, align 8
  store i8 %226, i8* %227, align 1
  %229 = load i32, i32* %21, align 4
  %230 = load i8*, i8** %12, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8* %232, i8** %12, align 8
  %233 = load i8*, i8** %24, align 8
  %234 = load i8*, i8** %23, align 8
  %235 = icmp eq i8* %233, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %224
  %237 = load i32*, i32** %7, align 8
  %238 = load i32*, i32** %14, align 8
  %239 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %240 = call i32 @fz_write_data(i32* %237, i32* %238, i8* %239, i32 256)
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  store i8* %241, i8** %24, align 8
  br label %242

242:                                              ; preds = %236, %224
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %16, align 4
  br label %220

246:                                              ; preds = %220
  %247 = load i32, i32* %26, align 4
  %248 = load i8*, i8** %12, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8* %250, i8** %12, align 8
  br label %251

251:                                              ; preds = %246
  %252 = load i32, i32* %15, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %15, align 4
  br label %215

254:                                              ; preds = %215
  %255 = load i8*, i8** %24, align 8
  %256 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %257 = icmp ne i8* %255, %256
  br i1 %257, label %258, label %270

258:                                              ; preds = %254
  %259 = load i32*, i32** %7, align 8
  %260 = load i32*, i32** %14, align 8
  %261 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %262 = load i8*, i8** %24, align 8
  %263 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %264 = ptrtoint i8* %262 to i64
  %265 = ptrtoint i8* %263 to i64
  %266 = sub i64 %264, %265
  %267 = trunc i64 %266 to i32
  %268 = call i32 @fz_write_data(i32* %259, i32* %260, i8* %261, i32 %267)
  %269 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  store i8* %269, i8** %24, align 8
  br label %270

270:                                              ; preds = %258, %254
  %271 = load i32*, i32** %7, align 8
  %272 = load i32*, i32** %14, align 8
  %273 = load i32, i32* %25, align 4
  %274 = load i32, i32* @SEEK_CUR, align 4
  %275 = call i32 @fz_seek_output(i32* %271, i32* %272, i32 %273, i32 %274)
  br label %369

276:                                              ; preds = %69
  store i32 0, i32* %17, align 4
  br label %277

277:                                              ; preds = %365, %276
  %278 = load i32, i32* %17, align 4
  %279 = load i32, i32* %21, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %368

281:                                              ; preds = %277
  store i32 0, i32* %15, align 4
  br label %282

282:                                              ; preds = %325, %281
  %283 = load i32, i32* %15, align 4
  %284 = load i32, i32* %11, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %328

286:                                              ; preds = %282
  store i32 0, i32* %16, align 4
  br label %287

287:                                              ; preds = %317, %286
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* %19, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %320

291:                                              ; preds = %287
  %292 = load i8*, i8** %12, align 8
  %293 = load i8, i8* %292, align 1
  %294 = load i8*, i8** %24, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %24, align 8
  store i8 %293, i8* %294, align 1
  %296 = load i32, i32* %21, align 4
  %297 = load i8*, i8** %12, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8, i8* %297, i64 %298
  store i8* %299, i8** %12, align 8
  %300 = load i8*, i8** %24, align 8
  %301 = load i8*, i8** %23, align 8
  %302 = icmp eq i8* %300, %301
  br i1 %302, label %303, label %316

303:                                              ; preds = %291
  %304 = load i32, i32* %17, align 4
  %305 = load i32, i32* %27, align 4
  %306 = icmp sge i32 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %309 = call i32 @psd_invert_buffer(i8* %308, i32 256)
  br label %310

310:                                              ; preds = %307, %303
  %311 = load i32*, i32** %7, align 8
  %312 = load i32*, i32** %14, align 8
  %313 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %314 = call i32 @fz_write_data(i32* %311, i32* %312, i8* %313, i32 256)
  %315 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  store i8* %315, i8** %24, align 8
  br label %316

316:                                              ; preds = %310, %291
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %16, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %16, align 4
  br label %287

320:                                              ; preds = %287
  %321 = load i32, i32* %26, align 4
  %322 = load i8*, i8** %12, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i8, i8* %322, i64 %323
  store i8* %324, i8** %12, align 8
  br label %325

325:                                              ; preds = %320
  %326 = load i32, i32* %15, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %15, align 4
  br label %282

328:                                              ; preds = %282
  %329 = load i32, i32* %9, align 4
  %330 = load i32, i32* %11, align 4
  %331 = mul nsw i32 %329, %330
  %332 = sub nsw i32 %331, 1
  %333 = load i8*, i8** %12, align 8
  %334 = sext i32 %332 to i64
  %335 = sub i64 0, %334
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  store i8* %336, i8** %12, align 8
  %337 = load i8*, i8** %24, align 8
  %338 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %339 = icmp ne i8* %337, %338
  br i1 %339, label %340, label %359

340:                                              ; preds = %328
  %341 = load i32, i32* %17, align 4
  %342 = load i32, i32* %27, align 4
  %343 = icmp sge i32 %341, %342
  br i1 %343, label %344, label %347

344:                                              ; preds = %340
  %345 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %346 = call i32 @psd_invert_buffer(i8* %345, i32 256)
  br label %347

347:                                              ; preds = %344, %340
  %348 = load i32*, i32** %7, align 8
  %349 = load i32*, i32** %14, align 8
  %350 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %351 = load i8*, i8** %24, align 8
  %352 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %353 = ptrtoint i8* %351 to i64
  %354 = ptrtoint i8* %352 to i64
  %355 = sub i64 %353, %354
  %356 = trunc i64 %355 to i32
  %357 = call i32 @fz_write_data(i32* %348, i32* %349, i8* %350, i32 %356)
  %358 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  store i8* %358, i8** %24, align 8
  br label %359

359:                                              ; preds = %347, %328
  %360 = load i32*, i32** %7, align 8
  %361 = load i32*, i32** %14, align 8
  %362 = load i32, i32* %25, align 4
  %363 = load i32, i32* @SEEK_CUR, align 4
  %364 = call i32 @fz_seek_output(i32* %360, i32* %361, i32 %362, i32 %363)
  br label %365

365:                                              ; preds = %359
  %366 = load i32, i32* %17, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %17, align 4
  br label %277

368:                                              ; preds = %277
  br label %369

369:                                              ; preds = %368, %270
  %370 = load i32*, i32** %7, align 8
  %371 = load i32*, i32** %14, align 8
  %372 = load i32, i32* %19, align 4
  %373 = load i32, i32* %11, align 4
  %374 = load i32, i32* %20, align 4
  %375 = load i32, i32* %21, align 4
  %376 = mul nsw i32 %374, %375
  %377 = sub nsw i32 %373, %376
  %378 = mul nsw i32 %372, %377
  %379 = load i32, i32* @SEEK_CUR, align 4
  %380 = call i32 @fz_seek_output(i32* %370, i32* %371, i32 %378, i32 %379)
  br label %381

381:                                              ; preds = %369, %43
  ret void
}

declare dso_local i32 @psd_invert_buffer(i8*, i32) #1

declare dso_local i32 @fz_write_data(i32*, i32*, i8*, i32) #1

declare dso_local i32 @fz_seek_output(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
