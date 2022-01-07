; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__reg_parse.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__reg_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i32, i8*, i32*)* @stb__reg_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stb__reg_parse(%struct.TYPE_8__* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [256 x i64], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [2 x i32], align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %359, %4
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %360

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %102 [
    i32 40, label %33
    i32 124, label %51
    i32 41, label %51
    i32 63, label %55
    i32 42, label %66
    i32 43, label %75
    i32 123, label %93
    i32 92, label %94
    i32 36, label %116
    i32 46, label %127
    i32 91, label %138
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i8* @stb__reg_parse_alt(%struct.TYPE_8__* %35, i32 %36, i8* %38, i32* %12)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 41
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %33
  store i8* null, i8** %5, align 8
  br label %364

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  br label %359

51:                                               ; preds = %29, %29
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %5, align 8
  br label %364

55:                                               ; preds = %29
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i8* null, i8** %5, align 8
  br label %364

59:                                               ; preds = %55
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @stb__add_epsilon(%struct.TYPE_8__* %60, i32 %61, i32 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  br label %359

66:                                               ; preds = %29
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i8* null, i8** %5, align 8
  br label %364

70:                                               ; preds = %66
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @stb__add_epsilon(%struct.TYPE_8__* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %29, %70
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i8* null, i8** %5, align 8
  br label %364

79:                                               ; preds = %75
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @stb__add_epsilon(%struct.TYPE_8__* %80, i32 %81, i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = call i32 @stb__add_node(%struct.TYPE_8__* %84)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @stb__add_epsilon(%struct.TYPE_8__* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %12, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %8, align 8
  br label %359

93:                                               ; preds = %29
  store i8* null, i8** %5, align 8
  br label %364

94:                                               ; preds = %29
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  store i8* null, i8** %5, align 8
  br label %364

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %29, %101
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = call i32 @stb__add_node(%struct.TYPE_8__* %103)
  store i32 %104, i32* %10, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = call i32 @stb__add_edge(%struct.TYPE_8__* %105, i32 %106, i32 %107, i32 %110)
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %12, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  br label %359

116:                                              ; preds = %29
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = call i32 @stb__add_node(%struct.TYPE_8__* %117)
  store i32 %118, i32* %10, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @stb__add_edge(%struct.TYPE_8__* %119, i32 %120, i32 %121, i32 10)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %12, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %8, align 8
  br label %359

127:                                              ; preds = %29
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = call i32 @stb__add_node(%struct.TYPE_8__* %128)
  store i32 %129, i32* %10, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @stb__add_edge(%struct.TYPE_8__* %130, i32 %131, i32 %132, i32 -1)
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %12, align 4
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %8, align 8
  br label %359

138:                                              ; preds = %29
  store i32 0, i32* %14, align 4
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %8, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %138
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = call i64 @stb_malloc(%struct.TYPE_8__* %146, i32 2048)
  %148 = inttoptr i64 %147 to i64*
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i64* %148, i64** %150, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = call i32 @memset(i64* %153, i32 0, i32 2048)
  br label %155

155:                                              ; preds = %145, %138
  %156 = getelementptr inbounds [256 x i64], [256 x i64]* %13, i64 0, i64 0
  %157 = call i32 @memset(i64* %156, i32 0, i32 2048)
  %158 = load i8*, i8** %8, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 94
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i8*, i8** %8, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %8, align 8
  store i32 1, i32* %14, align 4
  br label %165

165:                                              ; preds = %162, %155
  %166 = load i8*, i8** %8, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 93
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = getelementptr inbounds [256 x i64], [256 x i64]* %13, i64 0, i64 93
  store i64 1, i64* %171, align 8
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %8, align 8
  br label %174

174:                                              ; preds = %170, %165
  br label %175

175:                                              ; preds = %232, %174
  %176 = load i8*, i8** %8, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 93
  br i1 %179, label %180, label %233

180:                                              ; preds = %175
  %181 = load i8*, i8** %8, align 8
  %182 = load i8, i8* %181, align 1
  %183 = icmp ne i8 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  store i8* null, i8** %5, align 8
  br label %364

185:                                              ; preds = %180
  %186 = load i8*, i8** %8, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %8, align 8
  %188 = load i8, i8* %186, align 1
  %189 = sext i8 %188 to i64
  store i64 %189, i64* %16, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 45
  br i1 %194, label %195, label %229

195:                                              ; preds = %185
  %196 = load i8*, i8** %8, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %199, 93
  br i1 %200, label %201, label %229

201:                                              ; preds = %195
  %202 = load i8*, i8** %8, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i64
  store i64 %205, i64* %18, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  store i8* %207, i8** %8, align 8
  %208 = load i64, i64* %18, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %201
  store i8* null, i8** %5, align 8
  br label %364

211:                                              ; preds = %201
  %212 = load i64, i64* %16, align 8
  %213 = load i64, i64* %18, align 8
  %214 = icmp ugt i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  store i8* null, i8** %5, align 8
  br label %364

216:                                              ; preds = %211
  %217 = load i64, i64* %16, align 8
  store i64 %217, i64* %17, align 8
  br label %218

218:                                              ; preds = %225, %216
  %219 = load i64, i64* %17, align 8
  %220 = load i64, i64* %18, align 8
  %221 = icmp ule i64 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load i64, i64* %17, align 8
  %224 = getelementptr inbounds [256 x i64], [256 x i64]* %13, i64 0, i64 %223
  store i64 1, i64* %224, align 8
  br label %225

225:                                              ; preds = %222
  %226 = load i64, i64* %17, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %17, align 8
  br label %218

228:                                              ; preds = %218
  br label %232

229:                                              ; preds = %195, %185
  %230 = load i64, i64* %16, align 8
  %231 = getelementptr inbounds [256 x i64], [256 x i64]* %13, i64 0, i64 %230
  store i64 1, i64* %231, align 8
  br label %232

232:                                              ; preds = %229, %228
  br label %175

233:                                              ; preds = %175
  %234 = load i8*, i8** %8, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %8, align 8
  %236 = load i32, i32* %14, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %255

238:                                              ; preds = %233
  store i32 0, i32* %19, align 4
  br label %239

239:                                              ; preds = %251, %238
  %240 = load i32, i32* %19, align 4
  %241 = icmp slt i32 %240, 256
  br i1 %241, label %242, label %254

242:                                              ; preds = %239
  %243 = load i32, i32* %19, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [256 x i64], [256 x i64]* %13, i64 0, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = sub i64 1, %246
  %248 = load i32, i32* %19, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [256 x i64], [256 x i64]* %13, i64 0, i64 %249
  store i64 %247, i64* %250, align 8
  br label %251

251:                                              ; preds = %242
  %252 = load i32, i32* %19, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %19, align 4
  br label %239

254:                                              ; preds = %239
  br label %255

255:                                              ; preds = %254, %233
  store i32 0, i32* %15, align 4
  br label %256

256:                                              ; preds = %301, %255
  %257 = load i32, i32* %15, align 4
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp slt i32 %257, %260
  br i1 %261, label %262, label %304

262:                                              ; preds = %256
  %263 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  store i32 0, i32* %263, align 4
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = load i32, i32* %15, align 4
  %266 = shl i32 1, %265
  store i32 %266, i32* %264, align 4
  store i32 0, i32* %20, align 4
  br label %267

267:                                              ; preds = %293, %262
  %268 = load i32, i32* %20, align 4
  %269 = icmp slt i32 %268, 256
  br i1 %269, label %270, label %296

270:                                              ; preds = %267
  %271 = load i32, i32* %20, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [256 x i64], [256 x i64]* %13, i64 0, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %22, align 4
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 1
  %279 = load i64*, i64** %278, align 8
  %280 = load i32, i32* %20, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %279, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = and i64 %283, %286
  %288 = load i32, i32* %22, align 4
  %289 = zext i32 %288 to i64
  %290 = icmp ne i64 %287, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %270
  br label %296

292:                                              ; preds = %270
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %20, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %20, align 4
  br label %267

296:                                              ; preds = %291, %267
  %297 = load i32, i32* %20, align 4
  %298 = icmp eq i32 %297, 256
  br i1 %298, label %299, label %300

299:                                              ; preds = %296
  br label %304

300:                                              ; preds = %296
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %15, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %15, align 4
  br label %256

304:                                              ; preds = %299, %256
  %305 = load i32, i32* %15, align 4
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp eq i32 %305, %308
  br i1 %309, label %310, label %348

310:                                              ; preds = %304
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 8
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp sgt i32 %317, 32
  br i1 %318, label %319, label %321

319:                                              ; preds = %310
  %320 = call i32 @assert(i32 0)
  store i8* null, i8** %5, align 8
  br label %364

321:                                              ; preds = %310
  store i32 0, i32* %23, align 4
  br label %322

322:                                              ; preds = %344, %321
  %323 = load i32, i32* %23, align 4
  %324 = icmp slt i32 %323, 256
  br i1 %324, label %325, label %347

325:                                              ; preds = %322
  %326 = load i32, i32* %23, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [256 x i64], [256 x i64]* %13, i64 0, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %343

331:                                              ; preds = %325
  %332 = load i32, i32* %15, align 4
  %333 = shl i32 1, %332
  %334 = sext i32 %333 to i64
  %335 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %335, i32 0, i32 1
  %337 = load i64*, i64** %336, align 8
  %338 = load i32, i32* %23, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = or i64 %341, %334
  store i64 %342, i64* %340, align 8
  br label %343

343:                                              ; preds = %331, %325
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %23, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %23, align 4
  br label %322

347:                                              ; preds = %322
  br label %348

348:                                              ; preds = %347, %304
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %350 = call i32 @stb__add_node(%struct.TYPE_8__* %349)
  store i32 %350, i32* %10, align 4
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %352 = load i32, i32* %12, align 4
  %353 = load i32, i32* %10, align 4
  %354 = load i32, i32* %15, align 4
  %355 = sub nsw i32 -2, %354
  %356 = call i32 @stb__add_edge(%struct.TYPE_8__* %351, i32 %352, i32 %353, i32 %355)
  %357 = load i32, i32* %12, align 4
  store i32 %357, i32* %11, align 4
  %358 = load i32, i32* %10, align 4
  store i32 %358, i32* %12, align 4
  br label %359

359:                                              ; preds = %348, %127, %116, %102, %79, %59, %48
  br label %25

360:                                              ; preds = %25
  %361 = load i32, i32* %12, align 4
  %362 = load i32*, i32** %9, align 8
  store i32 %361, i32* %362, align 4
  %363 = load i8*, i8** %8, align 8
  store i8* %363, i8** %5, align 8
  br label %364

364:                                              ; preds = %360, %319, %215, %210, %184, %100, %93, %78, %69, %58, %51, %47
  %365 = load i8*, i8** %5, align 8
  ret i8* %365
}

declare dso_local i8* @stb__reg_parse_alt(%struct.TYPE_8__*, i32, i8*, i32*) #1

declare dso_local i32 @stb__add_epsilon(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @stb__add_node(%struct.TYPE_8__*) #1

declare dso_local i32 @stb__add_edge(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i64 @stb_malloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
