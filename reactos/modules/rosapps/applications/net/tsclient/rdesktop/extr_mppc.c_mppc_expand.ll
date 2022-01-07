; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_mppc.c_mppc_expand.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_mppc.c_mppc_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }

@RDP_MPPC_BIG = common dso_local global i32 0, align 4
@True = common dso_local global i64 0, align 8
@False = common dso_local global i64 0, align 8
@RDP_MPPC_COMPRESSED = common dso_local global i32 0, align 4
@RDP_MPPC_RESET = common dso_local global i32 0, align 4
@RDP_MPPC_FLUSH = common dso_local global i32 0, align 4
@RDP_MPPC_DICT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mppc_expand(%struct.TYPE_5__* %0, i32* %1, i64 %2, i32 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %17, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @RDP_MPPC_BIG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i64, i64* @True, align 8
  br label %33

31:                                               ; preds = %6
  %32 = load i64, i64* @False, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  store i64 %34, i64* %23, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %24, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @RDP_MPPC_COMPRESSED, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i64*, i64** %12, align 8
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64*, i64** %13, align 8
  store i64 %45, i64* %46, align 8
  store i32 0, i32* %7, align 4
  br label %659

47:                                               ; preds = %33
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @RDP_MPPC_RESET, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @RDP_MPPC_FLUSH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32*, i32** %24, align 8
  %63 = load i32, i32* @RDP_MPPC_DICT_SIZE, align 4
  %64 = call i32 @memset(i32* %62, i32 0, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %56
  %69 = load i64*, i64** %12, align 8
  store i64 0, i64* %69, align 8
  %70 = load i64*, i64** %13, align 8
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %21, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64*, i64** %12, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %659

83:                                               ; preds = %68
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %10, align 8
  br label %87

87:                                               ; preds = %645, %83
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %10, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %646

95:                                               ; preds = %90
  %96 = load i32*, i32** %9, align 8
  %97 = load i64, i64* %17, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %17, align 8
  %99 = getelementptr inbounds i32, i32* %96, i64 %97
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 24
  store i32 %101, i32* %16, align 4
  store i32 8, i32* %15, align 4
  br label %102

102:                                              ; preds = %95, %87
  %103 = load i32, i32* %16, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %150

105:                                              ; preds = %102
  %106 = load i32, i32* %15, align 4
  %107 = icmp slt i32 %106, 8
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 -1, i32* %7, align 4
  br label %659

116:                                              ; preds = %112
  br label %646

117:                                              ; preds = %108
  %118 = load i32*, i32** %9, align 8
  %119 = load i64, i64* %17, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %17, align 8
  %121 = getelementptr inbounds i32, i32* %118, i64 %119
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 255
  %124 = load i32, i32* %15, align 4
  %125 = sub nsw i32 24, %124
  %126 = shl i32 %123, %125
  %127 = load i32, i32* %16, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 8
  store i32 %130, i32* %15, align 4
  br label %131

131:                                              ; preds = %117, %105
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* @RDP_MPPC_DICT_SIZE, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 -1, i32* %7, align 4
  br label %659

136:                                              ; preds = %131
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = ashr i64 %138, 24
  %140 = trunc i64 %139 to i32
  %141 = load i32*, i32** %24, align 8
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %18, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  %146 = load i32, i32* %16, align 4
  %147 = shl i32 %146, 8
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 %148, 8
  store i32 %149, i32* %15, align 4
  br label %645

150:                                              ; preds = %102
  %151 = load i32, i32* %16, align 4
  %152 = shl i32 %151, 1
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %15, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load i64, i64* %17, align 8
  %158 = load i64, i64* %10, align 8
  %159 = icmp sge i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 -1, i32* %7, align 4
  br label %659

161:                                              ; preds = %156
  %162 = load i32*, i32** %9, align 8
  %163 = load i64, i64* %17, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %17, align 8
  %165 = getelementptr inbounds i32, i32* %162, i64 %163
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 24
  store i32 %167, i32* %16, align 4
  store i32 8, i32* %15, align 4
  br label %168

168:                                              ; preds = %161, %150
  %169 = load i32, i32* %16, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %211

171:                                              ; preds = %168
  %172 = load i32, i32* %15, align 4
  %173 = icmp slt i32 %172, 8
  br i1 %173, label %174, label %193

174:                                              ; preds = %171
  %175 = load i64, i64* %17, align 8
  %176 = load i64, i64* %10, align 8
  %177 = icmp sge i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 -1, i32* %7, align 4
  br label %659

179:                                              ; preds = %174
  %180 = load i32*, i32** %9, align 8
  %181 = load i64, i64* %17, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %17, align 8
  %183 = getelementptr inbounds i32, i32* %180, i64 %181
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 255
  %186 = load i32, i32* %15, align 4
  %187 = sub nsw i32 24, %186
  %188 = shl i32 %185, %187
  %189 = load i32, i32* %16, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 8
  store i32 %192, i32* %15, align 4
  br label %193

193:                                              ; preds = %179, %171
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* @RDP_MPPC_DICT_SIZE, align 4
  %196 = icmp sge i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  store i32 -1, i32* %7, align 4
  br label %659

198:                                              ; preds = %193
  %199 = load i32, i32* %16, align 4
  %200 = ashr i32 %199, 24
  %201 = or i32 %200, 128
  %202 = load i32*, i32** %24, align 8
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %18, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  store i32 %201, i32* %206, align 4
  %207 = load i32, i32* %16, align 4
  %208 = shl i32 %207, 8
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %15, align 4
  %210 = sub nsw i32 %209, 8
  store i32 %210, i32* %15, align 4
  br label %645

211:                                              ; preds = %168
  %212 = load i32, i32* %16, align 4
  %213 = shl i32 %212, 1
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %15, align 4
  %216 = load i64, i64* %23, align 8
  %217 = icmp ne i64 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i32 3, i32 2
  %220 = icmp slt i32 %215, %219
  br i1 %220, label %221, label %240

221:                                              ; preds = %211
  %222 = load i64, i64* %17, align 8
  %223 = load i64, i64* %10, align 8
  %224 = icmp sge i64 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  store i32 -1, i32* %7, align 4
  br label %659

226:                                              ; preds = %221
  %227 = load i32*, i32** %9, align 8
  %228 = load i64, i64* %17, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %17, align 8
  %230 = getelementptr inbounds i32, i32* %227, i64 %228
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 255
  %233 = load i32, i32* %15, align 4
  %234 = sub nsw i32 24, %233
  %235 = shl i32 %232, %234
  %236 = load i32, i32* %16, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, 8
  store i32 %239, i32* %15, align 4
  br label %240

240:                                              ; preds = %226, %211
  %241 = load i64, i64* %23, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %391

243:                                              ; preds = %240
  %244 = load i32, i32* %16, align 4
  %245 = sext i32 %244 to i64
  %246 = ashr i64 %245, 29
  switch i64 %246, label %354 [
    i64 7, label %247
    i64 6, label %282
    i64 5, label %318
    i64 4, label %318
  ]

247:                                              ; preds = %243
  br label %248

248:                                              ; preds = %268, %247
  %249 = load i32, i32* %15, align 4
  %250 = icmp slt i32 %249, 9
  br i1 %250, label %251, label %271

251:                                              ; preds = %248
  %252 = load i64, i64* %17, align 8
  %253 = load i64, i64* %10, align 8
  %254 = icmp sge i64 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  store i32 -1, i32* %7, align 4
  br label %659

256:                                              ; preds = %251
  %257 = load i32*, i32** %9, align 8
  %258 = load i64, i64* %17, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %17, align 8
  %260 = getelementptr inbounds i32, i32* %257, i64 %258
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, 255
  %263 = load i32, i32* %15, align 4
  %264 = sub nsw i32 24, %263
  %265 = shl i32 %262, %264
  %266 = load i32, i32* %16, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %16, align 4
  br label %268

268:                                              ; preds = %256
  %269 = load i32, i32* %15, align 4
  %270 = add nsw i32 %269, 8
  store i32 %270, i32* %15, align 4
  br label %248

271:                                              ; preds = %248
  %272 = load i32, i32* %16, align 4
  %273 = shl i32 %272, 3
  store i32 %273, i32* %16, align 4
  %274 = load i32, i32* %16, align 4
  %275 = sext i32 %274 to i64
  %276 = ashr i64 %275, 26
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %19, align 4
  %278 = load i32, i32* %16, align 4
  %279 = shl i32 %278, 6
  store i32 %279, i32* %16, align 4
  %280 = load i32, i32* %15, align 4
  %281 = sub nsw i32 %280, 9
  store i32 %281, i32* %15, align 4
  br label %390

282:                                              ; preds = %243
  br label %283

283:                                              ; preds = %303, %282
  %284 = load i32, i32* %15, align 4
  %285 = icmp slt i32 %284, 11
  br i1 %285, label %286, label %306

286:                                              ; preds = %283
  %287 = load i64, i64* %17, align 8
  %288 = load i64, i64* %10, align 8
  %289 = icmp sge i64 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  store i32 -1, i32* %7, align 4
  br label %659

291:                                              ; preds = %286
  %292 = load i32*, i32** %9, align 8
  %293 = load i64, i64* %17, align 8
  %294 = add nsw i64 %293, 1
  store i64 %294, i64* %17, align 8
  %295 = getelementptr inbounds i32, i32* %292, i64 %293
  %296 = load i32, i32* %295, align 4
  %297 = and i32 %296, 255
  %298 = load i32, i32* %15, align 4
  %299 = sub nsw i32 24, %298
  %300 = shl i32 %297, %299
  %301 = load i32, i32* %16, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %16, align 4
  br label %303

303:                                              ; preds = %291
  %304 = load i32, i32* %15, align 4
  %305 = add nsw i32 %304, 8
  store i32 %305, i32* %15, align 4
  br label %283

306:                                              ; preds = %283
  %307 = load i32, i32* %16, align 4
  %308 = shl i32 %307, 3
  store i32 %308, i32* %16, align 4
  %309 = load i32, i32* %16, align 4
  %310 = sext i32 %309 to i64
  %311 = ashr i64 %310, 24
  %312 = add nsw i64 %311, 64
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %19, align 4
  %314 = load i32, i32* %16, align 4
  %315 = shl i32 %314, 8
  store i32 %315, i32* %16, align 4
  %316 = load i32, i32* %15, align 4
  %317 = sub nsw i32 %316, 11
  store i32 %317, i32* %15, align 4
  br label %390

318:                                              ; preds = %243, %243
  br label %319

319:                                              ; preds = %339, %318
  %320 = load i32, i32* %15, align 4
  %321 = icmp slt i32 %320, 13
  br i1 %321, label %322, label %342

322:                                              ; preds = %319
  %323 = load i64, i64* %17, align 8
  %324 = load i64, i64* %10, align 8
  %325 = icmp sge i64 %323, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  store i32 -1, i32* %7, align 4
  br label %659

327:                                              ; preds = %322
  %328 = load i32*, i32** %9, align 8
  %329 = load i64, i64* %17, align 8
  %330 = add nsw i64 %329, 1
  store i64 %330, i64* %17, align 8
  %331 = getelementptr inbounds i32, i32* %328, i64 %329
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, 255
  %334 = load i32, i32* %15, align 4
  %335 = sub nsw i32 24, %334
  %336 = shl i32 %333, %335
  %337 = load i32, i32* %16, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %16, align 4
  br label %339

339:                                              ; preds = %327
  %340 = load i32, i32* %15, align 4
  %341 = add nsw i32 %340, 8
  store i32 %341, i32* %15, align 4
  br label %319

342:                                              ; preds = %319
  %343 = load i32, i32* %16, align 4
  %344 = shl i32 %343, 2
  store i32 %344, i32* %16, align 4
  %345 = load i32, i32* %16, align 4
  %346 = sext i32 %345 to i64
  %347 = ashr i64 %346, 21
  %348 = add nsw i64 %347, 320
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %19, align 4
  %350 = load i32, i32* %16, align 4
  %351 = shl i32 %350, 11
  store i32 %351, i32* %16, align 4
  %352 = load i32, i32* %15, align 4
  %353 = sub nsw i32 %352, 13
  store i32 %353, i32* %15, align 4
  br label %390

354:                                              ; preds = %243
  br label %355

355:                                              ; preds = %375, %354
  %356 = load i32, i32* %15, align 4
  %357 = icmp slt i32 %356, 17
  br i1 %357, label %358, label %378

358:                                              ; preds = %355
  %359 = load i64, i64* %17, align 8
  %360 = load i64, i64* %10, align 8
  %361 = icmp sge i64 %359, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %358
  store i32 -1, i32* %7, align 4
  br label %659

363:                                              ; preds = %358
  %364 = load i32*, i32** %9, align 8
  %365 = load i64, i64* %17, align 8
  %366 = add nsw i64 %365, 1
  store i64 %366, i64* %17, align 8
  %367 = getelementptr inbounds i32, i32* %364, i64 %365
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, 255
  %370 = load i32, i32* %15, align 4
  %371 = sub nsw i32 24, %370
  %372 = shl i32 %369, %371
  %373 = load i32, i32* %16, align 4
  %374 = or i32 %373, %372
  store i32 %374, i32* %16, align 4
  br label %375

375:                                              ; preds = %363
  %376 = load i32, i32* %15, align 4
  %377 = add nsw i32 %376, 8
  store i32 %377, i32* %15, align 4
  br label %355

378:                                              ; preds = %355
  %379 = load i32, i32* %16, align 4
  %380 = shl i32 %379, 1
  store i32 %380, i32* %16, align 4
  %381 = load i32, i32* %16, align 4
  %382 = sext i32 %381 to i64
  %383 = ashr i64 %382, 16
  %384 = add nsw i64 %383, 2368
  %385 = trunc i64 %384 to i32
  store i32 %385, i32* %19, align 4
  %386 = load i32, i32* %16, align 4
  %387 = shl i32 %386, 16
  store i32 %387, i32* %16, align 4
  %388 = load i32, i32* %15, align 4
  %389 = sub nsw i32 %388, 17
  store i32 %389, i32* %15, align 4
  br label %390

390:                                              ; preds = %378, %342, %306, %271
  br label %497

391:                                              ; preds = %240
  %392 = load i32, i32* %16, align 4
  %393 = sext i32 %392 to i64
  %394 = ashr i64 %393, 30
  switch i64 %394, label %464 [
    i64 3, label %395
    i64 2, label %428
  ]

395:                                              ; preds = %391
  %396 = load i32, i32* %15, align 4
  %397 = icmp slt i32 %396, 8
  br i1 %397, label %398, label %417

398:                                              ; preds = %395
  %399 = load i64, i64* %17, align 8
  %400 = load i64, i64* %10, align 8
  %401 = icmp sge i64 %399, %400
  br i1 %401, label %402, label %403

402:                                              ; preds = %398
  store i32 -1, i32* %7, align 4
  br label %659

403:                                              ; preds = %398
  %404 = load i32*, i32** %9, align 8
  %405 = load i64, i64* %17, align 8
  %406 = add nsw i64 %405, 1
  store i64 %406, i64* %17, align 8
  %407 = getelementptr inbounds i32, i32* %404, i64 %405
  %408 = load i32, i32* %407, align 4
  %409 = and i32 %408, 255
  %410 = load i32, i32* %15, align 4
  %411 = sub nsw i32 24, %410
  %412 = shl i32 %409, %411
  %413 = load i32, i32* %16, align 4
  %414 = or i32 %413, %412
  store i32 %414, i32* %16, align 4
  %415 = load i32, i32* %15, align 4
  %416 = add nsw i32 %415, 8
  store i32 %416, i32* %15, align 4
  br label %417

417:                                              ; preds = %403, %395
  %418 = load i32, i32* %16, align 4
  %419 = shl i32 %418, 2
  store i32 %419, i32* %16, align 4
  %420 = load i32, i32* %16, align 4
  %421 = sext i32 %420 to i64
  %422 = ashr i64 %421, 26
  %423 = trunc i64 %422 to i32
  store i32 %423, i32* %19, align 4
  %424 = load i32, i32* %16, align 4
  %425 = shl i32 %424, 6
  store i32 %425, i32* %16, align 4
  %426 = load i32, i32* %15, align 4
  %427 = sub nsw i32 %426, 8
  store i32 %427, i32* %15, align 4
  br label %496

428:                                              ; preds = %391
  br label %429

429:                                              ; preds = %449, %428
  %430 = load i32, i32* %15, align 4
  %431 = icmp slt i32 %430, 10
  br i1 %431, label %432, label %452

432:                                              ; preds = %429
  %433 = load i64, i64* %17, align 8
  %434 = load i64, i64* %10, align 8
  %435 = icmp sge i64 %433, %434
  br i1 %435, label %436, label %437

436:                                              ; preds = %432
  store i32 -1, i32* %7, align 4
  br label %659

437:                                              ; preds = %432
  %438 = load i32*, i32** %9, align 8
  %439 = load i64, i64* %17, align 8
  %440 = add nsw i64 %439, 1
  store i64 %440, i64* %17, align 8
  %441 = getelementptr inbounds i32, i32* %438, i64 %439
  %442 = load i32, i32* %441, align 4
  %443 = and i32 %442, 255
  %444 = load i32, i32* %15, align 4
  %445 = sub nsw i32 24, %444
  %446 = shl i32 %443, %445
  %447 = load i32, i32* %16, align 4
  %448 = or i32 %447, %446
  store i32 %448, i32* %16, align 4
  br label %449

449:                                              ; preds = %437
  %450 = load i32, i32* %15, align 4
  %451 = add nsw i32 %450, 8
  store i32 %451, i32* %15, align 4
  br label %429

452:                                              ; preds = %429
  %453 = load i32, i32* %16, align 4
  %454 = shl i32 %453, 2
  store i32 %454, i32* %16, align 4
  %455 = load i32, i32* %16, align 4
  %456 = sext i32 %455 to i64
  %457 = ashr i64 %456, 24
  %458 = add nsw i64 %457, 64
  %459 = trunc i64 %458 to i32
  store i32 %459, i32* %19, align 4
  %460 = load i32, i32* %16, align 4
  %461 = shl i32 %460, 8
  store i32 %461, i32* %16, align 4
  %462 = load i32, i32* %15, align 4
  %463 = sub nsw i32 %462, 10
  store i32 %463, i32* %15, align 4
  br label %496

464:                                              ; preds = %391
  br label %465

465:                                              ; preds = %485, %464
  %466 = load i32, i32* %15, align 4
  %467 = icmp slt i32 %466, 14
  br i1 %467, label %468, label %488

468:                                              ; preds = %465
  %469 = load i64, i64* %17, align 8
  %470 = load i64, i64* %10, align 8
  %471 = icmp sge i64 %469, %470
  br i1 %471, label %472, label %473

472:                                              ; preds = %468
  store i32 -1, i32* %7, align 4
  br label %659

473:                                              ; preds = %468
  %474 = load i32*, i32** %9, align 8
  %475 = load i64, i64* %17, align 8
  %476 = add nsw i64 %475, 1
  store i64 %476, i64* %17, align 8
  %477 = getelementptr inbounds i32, i32* %474, i64 %475
  %478 = load i32, i32* %477, align 4
  %479 = and i32 %478, 255
  %480 = load i32, i32* %15, align 4
  %481 = sub nsw i32 24, %480
  %482 = shl i32 %479, %481
  %483 = load i32, i32* %16, align 4
  %484 = or i32 %483, %482
  store i32 %484, i32* %16, align 4
  br label %485

485:                                              ; preds = %473
  %486 = load i32, i32* %15, align 4
  %487 = add nsw i32 %486, 8
  store i32 %487, i32* %15, align 4
  br label %465

488:                                              ; preds = %465
  %489 = load i32, i32* %16, align 4
  %490 = ashr i32 %489, 18
  %491 = add nsw i32 %490, 320
  store i32 %491, i32* %19, align 4
  %492 = load i32, i32* %16, align 4
  %493 = shl i32 %492, 14
  store i32 %493, i32* %16, align 4
  %494 = load i32, i32* %15, align 4
  %495 = sub nsw i32 %494, 14
  store i32 %495, i32* %15, align 4
  br label %496

496:                                              ; preds = %488, %452, %417
  br label %497

497:                                              ; preds = %496, %390
  %498 = load i32, i32* %15, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %512

500:                                              ; preds = %497
  %501 = load i64, i64* %17, align 8
  %502 = load i64, i64* %10, align 8
  %503 = icmp sge i64 %501, %502
  br i1 %503, label %504, label %505

504:                                              ; preds = %500
  store i32 -1, i32* %7, align 4
  br label %659

505:                                              ; preds = %500
  %506 = load i32*, i32** %9, align 8
  %507 = load i64, i64* %17, align 8
  %508 = add nsw i64 %507, 1
  store i64 %508, i64* %17, align 8
  %509 = getelementptr inbounds i32, i32* %506, i64 %507
  %510 = load i32, i32* %509, align 4
  %511 = shl i32 %510, 24
  store i32 %511, i32* %16, align 4
  store i32 8, i32* %15, align 4
  br label %512

512:                                              ; preds = %505, %497
  store i32 0, i32* %20, align 4
  %513 = load i32, i32* %16, align 4
  %514 = icmp sge i32 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %512
  store i32 3, i32* %20, align 4
  %516 = load i32, i32* %16, align 4
  %517 = shl i32 %516, 1
  store i32 %517, i32* %16, align 4
  %518 = load i32, i32* %15, align 4
  %519 = add nsw i32 %518, -1
  store i32 %519, i32* %15, align 4
  br label %612

520:                                              ; preds = %512
  %521 = load i64, i64* %23, align 8
  %522 = icmp ne i64 %521, 0
  %523 = zext i1 %522 to i64
  %524 = select i1 %522, i32 14, i32 11
  store i32 %524, i32* %22, align 4
  br label %525

525:                                              ; preds = %553, %520
  %526 = load i32, i32* %16, align 4
  %527 = shl i32 %526, 1
  store i32 %527, i32* %16, align 4
  %528 = load i32, i32* %15, align 4
  %529 = add nsw i32 %528, -1
  store i32 %529, i32* %15, align 4
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %543

531:                                              ; preds = %525
  %532 = load i64, i64* %17, align 8
  %533 = load i64, i64* %10, align 8
  %534 = icmp sge i64 %532, %533
  br i1 %534, label %535, label %536

535:                                              ; preds = %531
  store i32 -1, i32* %7, align 4
  br label %659

536:                                              ; preds = %531
  %537 = load i32*, i32** %9, align 8
  %538 = load i64, i64* %17, align 8
  %539 = add nsw i64 %538, 1
  store i64 %539, i64* %17, align 8
  %540 = getelementptr inbounds i32, i32* %537, i64 %538
  %541 = load i32, i32* %540, align 4
  %542 = shl i32 %541, 24
  store i32 %542, i32* %16, align 4
  store i32 8, i32* %15, align 4
  br label %543

543:                                              ; preds = %536, %525
  %544 = load i32, i32* %16, align 4
  %545 = icmp sge i32 %544, 0
  br i1 %545, label %546, label %547

546:                                              ; preds = %543
  br label %554

547:                                              ; preds = %543
  %548 = load i32, i32* %22, align 4
  %549 = add nsw i32 %548, -1
  store i32 %549, i32* %22, align 4
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %552

551:                                              ; preds = %547
  store i32 -1, i32* %7, align 4
  br label %659

552:                                              ; preds = %547
  br label %553

553:                                              ; preds = %552
  br i1 true, label %525, label %554

554:                                              ; preds = %553, %546
  %555 = load i64, i64* %23, align 8
  %556 = icmp ne i64 %555, 0
  %557 = zext i1 %556 to i64
  %558 = select i1 %556, i32 16, i32 13
  %559 = load i32, i32* %22, align 4
  %560 = sub nsw i32 %558, %559
  store i32 %560, i32* %20, align 4
  %561 = load i32, i32* %16, align 4
  %562 = shl i32 %561, 1
  store i32 %562, i32* %16, align 4
  %563 = load i32, i32* %15, align 4
  %564 = add nsw i32 %563, -1
  store i32 %564, i32* %15, align 4
  %565 = load i32, i32* %20, align 4
  %566 = icmp slt i32 %564, %565
  br i1 %566, label %567, label %593

567:                                              ; preds = %554
  br label %568

568:                                              ; preds = %589, %567
  %569 = load i32, i32* %15, align 4
  %570 = load i32, i32* %20, align 4
  %571 = icmp slt i32 %569, %570
  br i1 %571, label %572, label %592

572:                                              ; preds = %568
  %573 = load i64, i64* %17, align 8
  %574 = load i64, i64* %10, align 8
  %575 = icmp sge i64 %573, %574
  br i1 %575, label %576, label %577

576:                                              ; preds = %572
  store i32 -1, i32* %7, align 4
  br label %659

577:                                              ; preds = %572
  %578 = load i32*, i32** %9, align 8
  %579 = load i64, i64* %17, align 8
  %580 = add nsw i64 %579, 1
  store i64 %580, i64* %17, align 8
  %581 = getelementptr inbounds i32, i32* %578, i64 %579
  %582 = load i32, i32* %581, align 4
  %583 = and i32 %582, 255
  %584 = load i32, i32* %15, align 4
  %585 = sub nsw i32 24, %584
  %586 = shl i32 %583, %585
  %587 = load i32, i32* %16, align 4
  %588 = or i32 %587, %586
  store i32 %588, i32* %16, align 4
  br label %589

589:                                              ; preds = %577
  %590 = load i32, i32* %15, align 4
  %591 = add nsw i32 %590, 8
  store i32 %591, i32* %15, align 4
  br label %568

592:                                              ; preds = %568
  br label %593

593:                                              ; preds = %592, %554
  %594 = load i32, i32* %20, align 4
  store i32 %594, i32* %22, align 4
  %595 = load i32, i32* %16, align 4
  %596 = load i32, i32* %22, align 4
  %597 = sub nsw i32 32, %596
  %598 = ashr i32 %595, %597
  %599 = load i32, i32* %22, align 4
  %600 = shl i32 -1, %599
  %601 = xor i32 %600, -1
  %602 = and i32 %598, %601
  %603 = load i32, i32* %22, align 4
  %604 = shl i32 1, %603
  %605 = or i32 %602, %604
  store i32 %605, i32* %20, align 4
  %606 = load i32, i32* %22, align 4
  %607 = load i32, i32* %16, align 4
  %608 = shl i32 %607, %606
  store i32 %608, i32* %16, align 4
  %609 = load i32, i32* %22, align 4
  %610 = load i32, i32* %15, align 4
  %611 = sub nsw i32 %610, %609
  store i32 %611, i32* %15, align 4
  br label %612

612:                                              ; preds = %593, %515
  %613 = load i32, i32* %18, align 4
  %614 = load i32, i32* %20, align 4
  %615 = add nsw i32 %613, %614
  %616 = load i32, i32* @RDP_MPPC_DICT_SIZE, align 4
  %617 = icmp sge i32 %615, %616
  br i1 %617, label %618, label %619

618:                                              ; preds = %612
  store i32 -1, i32* %7, align 4
  br label %659

619:                                              ; preds = %612
  %620 = load i32, i32* %18, align 4
  %621 = load i32, i32* %19, align 4
  %622 = sub nsw i32 %620, %621
  %623 = load i64, i64* %23, align 8
  %624 = icmp ne i64 %623, 0
  %625 = zext i1 %624 to i64
  %626 = select i1 %624, i32 65535, i32 8191
  %627 = and i32 %622, %626
  store i32 %627, i32* %14, align 4
  br label %628

628:                                              ; preds = %640, %619
  %629 = load i32*, i32** %24, align 8
  %630 = load i32, i32* %14, align 4
  %631 = add nsw i32 %630, 1
  store i32 %631, i32* %14, align 4
  %632 = sext i32 %630 to i64
  %633 = getelementptr inbounds i32, i32* %629, i64 %632
  %634 = load i32, i32* %633, align 4
  %635 = load i32*, i32** %24, align 8
  %636 = load i32, i32* %18, align 4
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %18, align 4
  %638 = sext i32 %636 to i64
  %639 = getelementptr inbounds i32, i32* %635, i64 %638
  store i32 %634, i32* %639, align 4
  br label %640

640:                                              ; preds = %628
  %641 = load i32, i32* %20, align 4
  %642 = add nsw i32 %641, -1
  store i32 %642, i32* %20, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %628, label %644

644:                                              ; preds = %640
  br label %645

645:                                              ; preds = %644, %198, %136
  br i1 true, label %87, label %646

646:                                              ; preds = %645, %116, %94
  %647 = load i32, i32* %18, align 4
  %648 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %649 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %649, i32 0, i32 1
  store i32 %647, i32* %650, align 8
  %651 = load i32, i32* %21, align 4
  %652 = sext i32 %651 to i64
  %653 = load i64*, i64** %12, align 8
  store i64 %652, i64* %653, align 8
  %654 = load i32, i32* %18, align 4
  %655 = load i32, i32* %21, align 4
  %656 = sub nsw i32 %654, %655
  %657 = sext i32 %656 to i64
  %658 = load i64*, i64** %13, align 8
  store i64 %657, i64* %658, align 8
  store i32 0, i32* %7, align 4
  br label %659

659:                                              ; preds = %646, %618, %576, %551, %535, %504, %472, %436, %402, %362, %326, %290, %255, %225, %197, %178, %160, %135, %115, %82, %43
  %660 = load i32, i32* %7, align 4
  ret i32 %660
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
