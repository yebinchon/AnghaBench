; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_vorbis_search_for_page_pushdata.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_vorbis_search_for_page_pushdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@STB_VORBIS_PUSHDATA_CRC_COUNT = common dso_local global i32 0, align 4
@ogg_page_header = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @vorbis_search_for_page_pushdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vorbis_search_for_page_pushdata(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %31, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @STB_VORBIS_PUSHDATA_CRC_COUNT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %289

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %449

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 3
  store i32 %46, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %285, %44
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %288

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 79
  br i1 %57, label %58, label %284

58:                                               ; preds = %51
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* @ogg_page_header, align 4
  %64 = call i64 @memcmp(i32* %62, i32 %63, i32 4)
  %65 = icmp eq i64 0, %64
  br i1 %65, label %66, label %283

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 26
  %69 = load i32, i32* %7, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 27
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 26
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %73, %79
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %71, %66
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %7, align 4
  br label %288

85:                                               ; preds = %71
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 26
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 27, %91
  store i32 %92, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %113, %85
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 26
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %94, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %93
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 27
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %93

116:                                              ; preds = %93
  store i8* null, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %130, %116
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 22
  br i1 %119, label %120, label %133

120:                                              ; preds = %117
  %121 = load i8*, i8** %12, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @crc32_update(i8* %121, i32 %128)
  store i8* %129, i8** %12, align 8
  br label %130

130:                                              ; preds = %120
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %117

133:                                              ; preds = %117
  br label %134

134:                                              ; preds = %140, %133
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %135, 26
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i8*, i8** %12, align 8
  %139 = call i8* @crc32_update(i8* %138, i32 0)
  store i8* %139, i8** %12, align 8
  br label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %134

143:                                              ; preds = %134
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  store i32 %146, i32* %9, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  store i32 %150, i32* %157, align 4
  %158 = load i8*, i8** %12, align 8
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  store i32 %159, i32* %166, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 22
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 23
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = shl i32 %178, 8
  %180 = add nsw i32 %172, %179
  %181 = load i32*, i32** %6, align 8
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 24
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 16
  %188 = add nsw i32 %180, %187
  %189 = load i32*, i32** %6, align 8
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 25
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 %194, 24
  %196 = add nsw i32 %188, %195
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 3
  store i32 %196, i32* %203, align 4
  %204 = load i32*, i32** %6, align 8
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 27
  %207 = load i32*, i32** %6, align 8
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 26
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %206, %212
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %204, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 255
  br i1 %218, label %219, label %227

219:                                              ; preds = %143
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 4
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 4
  store i32 -1, i32* %226, align 4
  br label %265

227:                                              ; preds = %143
  %228 = load i32*, i32** %6, align 8
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 6
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %6, align 8
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 7
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 8
  %241 = add nsw i32 %233, %240
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 8
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 16
  %249 = add nsw i32 %241, %248
  %250 = load i32*, i32** %6, align 8
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 9
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = shl i32 %255, 24
  %257 = add nsw i32 %249, %256
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 4
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 4
  store i32 %257, i32* %264, align 4
  br label %265

265:                                              ; preds = %227, %219
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %266, %267
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 4
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  store i32 %268, i32* %275, align 4
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @STB_VORBIS_PUSHDATA_CRC_COUNT, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %265
  br label %288

282:                                              ; preds = %265
  br label %283

283:                                              ; preds = %282, %58
  br label %284

284:                                              ; preds = %283, %51
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %8, align 4
  br label %47

288:                                              ; preds = %281, %83, %47
  br label %289

289:                                              ; preds = %288, %34
  store i32 0, i32* %8, align 4
  br label %290

290:                                              ; preds = %446, %289
  %291 = load i32, i32* %8, align 4
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp slt i32 %291, %294
  br i1 %295, label %296, label %447

296:                                              ; preds = %290
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 4
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %15, align 4
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 4
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  store i32 %312, i32* %16, align 4
  %313 = load i32, i32* %16, align 4
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* %15, align 4
  %316 = sub nsw i32 %314, %315
  %317 = icmp sgt i32 %313, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %296
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* %15, align 4
  %321 = sub nsw i32 %319, %320
  store i32 %321, i32* %16, align 4
  br label %322

322:                                              ; preds = %318, %296
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 4
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = inttoptr i64 %331 to i8*
  store i8* %332, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %333

333:                                              ; preds = %347, %322
  %334 = load i32, i32* %14, align 4
  %335 = load i32, i32* %16, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %350

337:                                              ; preds = %333
  %338 = load i8*, i8** %13, align 8
  %339 = load i32*, i32** %6, align 8
  %340 = load i32, i32* %15, align 4
  %341 = load i32, i32* %14, align 4
  %342 = add nsw i32 %340, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %339, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = call i8* @crc32_update(i8* %338, i32 %345)
  store i8* %346, i8** %13, align 8
  br label %347

347:                                              ; preds = %337
  %348 = load i32, i32* %14, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %14, align 4
  br label %333

350:                                              ; preds = %333
  %351 = load i32, i32* %16, align 4
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 4
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = sub nsw i32 %359, %351
  store i32 %360, i32* %358, align 4
  %361 = load i8*, i8** %13, align 8
  %362 = ptrtoint i8* %361 to i32
  %363 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 4
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %364, align 8
  %366 = load i32, i32* %8, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 2
  store i32 %362, i32* %369, align 4
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 4
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** %371, align 8
  %373 = load i32, i32* %8, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %443

379:                                              ; preds = %350
  %380 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 4
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** %381, align 8
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 4
  %390 = load %struct.TYPE_4__*, %struct.TYPE_4__** %389, align 8
  %391 = load i32, i32* %8, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %387, %395
  br i1 %396, label %397, label %425

397:                                              ; preds = %379
  %398 = load i32, i32* %15, align 4
  %399 = load i32, i32* %16, align 4
  %400 = add nsw i32 %398, %399
  store i32 %400, i32* %7, align 4
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 0
  store i32 -1, i32* %402, align 8
  %403 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 5
  store i64 0, i64* %404, align 8
  %405 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 1
  store i32 -1, i32* %406, align 4
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i32 0, i32 4
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** %408, align 8
  %410 = load i32, i32* %8, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i32 0, i32 2
  store i32 %414, i32* %416, align 8
  %417 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = icmp ne i32 %419, -1
  %421 = zext i1 %420 to i32
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 3
  store i32 %421, i32* %423, align 4
  %424 = load i32, i32* %7, align 4
  store i32 %424, i32* %4, align 4
  br label %449

425:                                              ; preds = %379
  %426 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 4
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %427, align 8
  %429 = load i32, i32* %8, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i64 %430
  %432 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 4
  %434 = load %struct.TYPE_4__*, %struct.TYPE_4__** %433, align 8
  %435 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = add nsw i32 %437, -1
  store i32 %438, i32* %436, align 8
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i64 %439
  %441 = bitcast %struct.TYPE_4__* %431 to i8*
  %442 = bitcast %struct.TYPE_4__* %440 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %441, i8* align 4 %442, i64 20, i1 false)
  br label %446

443:                                              ; preds = %350
  %444 = load i32, i32* %8, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %8, align 4
  br label %446

446:                                              ; preds = %443, %425
  br label %290

447:                                              ; preds = %290
  %448 = load i32, i32* %7, align 4
  store i32 %448, i32* %4, align 4
  br label %449

449:                                              ; preds = %447, %397, %43
  %450 = load i32, i32* %4, align 4
  ret i32 %450
}

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i8* @crc32_update(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
