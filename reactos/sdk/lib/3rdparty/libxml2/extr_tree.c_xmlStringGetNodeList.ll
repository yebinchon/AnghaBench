; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlStringGetNodeList.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_tree.c_xmlStringGetNodeList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i8*, i32, %struct.TYPE_11__*, %struct.TYPE_11__* }

@XML_BUFFER_ALLOC_HYBRID = common dso_local global i32 0, align 4
@XML_TREE_INVALID_HEX = common dso_local global i32 0, align 4
@XML_TREE_INVALID_DEC = common dso_local global i32 0, align 4
@XML_TREE_UNTERMINATED_ENTITY = common dso_local global i32 0, align 4
@XML_INTERNAL_PREDEFINED_ENTITY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @xmlStringGetNodeList(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca [10 x i8], align 1
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %416

23:                                               ; preds = %2
  %24 = call i32* @xmlBufCreateSize(i32 0)
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %416

28:                                               ; preds = %23
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* @XML_BUFFER_ALLOC_HYBRID, align 4
  %31 = call i32 @xmlBufSetAllocationScheme(i32* %29, i32 %30)
  %32 = load i8*, i8** %10, align 8
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %373, %28
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %374

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 38
  br i1 %43, label %44, label %370

44:                                               ; preds = %38
  store i32 0, i32* %14, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = icmp ne i8* %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32*, i32** %13, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i64 @xmlBufAdd(i32* %49, i8* %50, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %412

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i8*, i8** %10, align 8
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 35
  br i1 %67, label %68, label %151

68:                                               ; preds = %61
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 120
  br i1 %73, label %74, label %151

74:                                               ; preds = %68
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %15, align 1
  br label %79

79:                                               ; preds = %137, %74
  %80 = load i8, i8* %15, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 59
  br i1 %82, label %83, label %142

83:                                               ; preds = %79
  %84 = load i8, i8* %15, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sge i32 %85, 48
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8, i8* %15, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sle i32 %89, 57
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32, i32* %14, align 4
  %93 = mul nsw i32 %92, 16
  %94 = load i8, i8* %15, align 1
  %95 = sext i8 %94 to i32
  %96 = sub nsw i32 %95, 48
  %97 = add nsw i32 %93, %96
  store i32 %97, i32* %14, align 4
  br label %137

98:                                               ; preds = %87, %83
  %99 = load i8, i8* %15, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sge i32 %100, 97
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load i8, i8* %15, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sle i32 %104, 102
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32, i32* %14, align 4
  %108 = mul nsw i32 %107, 16
  %109 = load i8, i8* %15, align 1
  %110 = sext i8 %109 to i32
  %111 = sub nsw i32 %110, 97
  %112 = add nsw i32 %108, %111
  %113 = add nsw i32 %112, 10
  store i32 %113, i32* %14, align 4
  br label %136

114:                                              ; preds = %102, %98
  %115 = load i8, i8* %15, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sge i32 %116, 65
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load i8, i8* %15, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp sle i32 %120, 70
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i32, i32* %14, align 4
  %124 = mul nsw i32 %123, 16
  %125 = load i8, i8* %15, align 1
  %126 = sext i8 %125 to i32
  %127 = sub nsw i32 %126, 65
  %128 = add nsw i32 %124, %127
  %129 = add nsw i32 %128, 10
  store i32 %129, i32* %14, align 4
  br label %135

130:                                              ; preds = %118, %114
  %131 = load i32, i32* @XML_TREE_INVALID_HEX, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = bitcast i32* %132 to %struct.TYPE_11__*
  %134 = call i32 @xmlTreeErr(i32 %131, %struct.TYPE_11__* %133, i8* null)
  store i32 0, i32* %14, align 4
  br label %142

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %106
  br label %137

137:                                              ; preds = %136, %91
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %10, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i8, i8* %140, align 1
  store i8 %141, i8* %15, align 1
  br label %79

142:                                              ; preds = %130, %79
  %143 = load i8, i8* %15, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 59
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %10, align 8
  br label %149

149:                                              ; preds = %146, %142
  %150 = load i8*, i8** %10, align 8
  store i8* %150, i8** %11, align 8
  br label %353

151:                                              ; preds = %68, %61
  %152 = load i8*, i8** %10, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 35
  br i1 %156, label %157, label %200

157:                                              ; preds = %151
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  store i8* %159, i8** %10, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = load i8, i8* %160, align 1
  store i8 %161, i8* %15, align 1
  br label %162

162:                                              ; preds = %186, %157
  %163 = load i8, i8* %15, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 59
  br i1 %165, label %166, label %191

166:                                              ; preds = %162
  %167 = load i8, i8* %15, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp sge i32 %168, 48
  br i1 %169, label %170, label %181

170:                                              ; preds = %166
  %171 = load i8, i8* %15, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp sle i32 %172, 57
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = load i32, i32* %14, align 4
  %176 = mul nsw i32 %175, 10
  %177 = load i8, i8* %15, align 1
  %178 = sext i8 %177 to i32
  %179 = sub nsw i32 %178, 48
  %180 = add nsw i32 %176, %179
  store i32 %180, i32* %14, align 4
  br label %186

181:                                              ; preds = %170, %166
  %182 = load i32, i32* @XML_TREE_INVALID_DEC, align 4
  %183 = load i32*, i32** %4, align 8
  %184 = bitcast i32* %183 to %struct.TYPE_11__*
  %185 = call i32 @xmlTreeErr(i32 %182, %struct.TYPE_11__* %184, i8* null)
  store i32 0, i32* %14, align 4
  br label %191

186:                                              ; preds = %174
  %187 = load i8*, i8** %10, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %10, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = load i8, i8* %189, align 1
  store i8 %190, i8* %15, align 1
  br label %162

191:                                              ; preds = %181, %162
  %192 = load i8, i8* %15, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 59
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %10, align 8
  br label %198

198:                                              ; preds = %195, %191
  %199 = load i8*, i8** %10, align 8
  store i8* %199, i8** %11, align 8
  br label %352

200:                                              ; preds = %151
  %201 = load i8*, i8** %10, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %10, align 8
  %203 = load i8*, i8** %10, align 8
  store i8* %203, i8** %11, align 8
  br label %204

204:                                              ; preds = %216, %200
  %205 = load i8*, i8** %10, align 8
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load i8*, i8** %10, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp ne i32 %212, 59
  br label %214

214:                                              ; preds = %209, %204
  %215 = phi i1 [ false, %204 ], [ %213, %209 ]
  br i1 %215, label %216, label %219

216:                                              ; preds = %214
  %217 = load i8*, i8** %10, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %10, align 8
  br label %204

219:                                              ; preds = %214
  %220 = load i8*, i8** %10, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load i32, i32* @XML_TREE_UNTERMINATED_ENTITY, align 4
  %226 = load i32*, i32** %4, align 8
  %227 = bitcast i32* %226 to %struct.TYPE_11__*
  %228 = load i8*, i8** %11, align 8
  %229 = call i32 @xmlTreeErr(i32 %225, %struct.TYPE_11__* %227, i8* %228)
  br label %412

230:                                              ; preds = %219
  %231 = load i8*, i8** %10, align 8
  %232 = load i8*, i8** %11, align 8
  %233 = icmp ne i8* %231, %232
  br i1 %233, label %234, label %348

234:                                              ; preds = %230
  %235 = load i8*, i8** %11, align 8
  %236 = load i8*, i8** %10, align 8
  %237 = load i8*, i8** %11, align 8
  %238 = ptrtoint i8* %236 to i64
  %239 = ptrtoint i8* %237 to i64
  %240 = sub i64 %238, %239
  %241 = trunc i64 %240 to i32
  %242 = call i8* @xmlStrndup(i8* %235, i32 %241)
  store i8* %242, i8** %9, align 8
  %243 = load i32*, i32** %4, align 8
  %244 = load i8*, i8** %9, align 8
  %245 = call %struct.TYPE_12__* @xmlGetDocEntity(i32* %243, i8* %244)
  store %struct.TYPE_12__* %245, %struct.TYPE_12__** %12, align 8
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %247 = icmp ne %struct.TYPE_12__* %246, null
  br i1 %247, label %248, label %263

248:                                              ; preds = %234
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @XML_INTERNAL_PREDEFINED_ENTITY, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %263

254:                                              ; preds = %248
  %255 = load i32*, i32** %13, align 8
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = call i64 @xmlBufCat(i32* %255, i8* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  br label %412

262:                                              ; preds = %254
  br label %345

263:                                              ; preds = %248, %234
  %264 = load i32*, i32** %13, align 8
  %265 = call i32 @xmlBufIsEmpty(i32* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %283, label %267

267:                                              ; preds = %263
  %268 = load i32*, i32** %4, align 8
  %269 = call %struct.TYPE_11__* @xmlNewDocText(i32* %268, i32* null)
  store %struct.TYPE_11__* %269, %struct.TYPE_11__** %8, align 8
  %270 = load i32*, i32** %13, align 8
  %271 = call i8* @xmlBufDetach(i32* %270)
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  store i8* %271, i8** %273, align 8
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %275 = icmp eq %struct.TYPE_11__* %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %267
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %277, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %277, %struct.TYPE_11__** %7, align 8
  br label %282

278:                                              ; preds = %267
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %281 = call %struct.TYPE_11__* @xmlAddNextSibling(%struct.TYPE_11__* %279, %struct.TYPE_11__* %280)
  store %struct.TYPE_11__* %281, %struct.TYPE_11__** %7, align 8
  br label %282

282:                                              ; preds = %278, %276
  br label %283

283:                                              ; preds = %282, %263
  %284 = load i32*, i32** %4, align 8
  %285 = load i8*, i8** %9, align 8
  %286 = call %struct.TYPE_11__* @xmlNewReference(i32* %284, i8* %285)
  store %struct.TYPE_11__* %286, %struct.TYPE_11__** %8, align 8
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %288 = icmp eq %struct.TYPE_11__* %287, null
  br i1 %288, label %289, label %296

289:                                              ; preds = %283
  %290 = load i8*, i8** %9, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i8*, i8** %9, align 8
  %294 = call i32 @xmlFree(i8* %293)
  br label %295

295:                                              ; preds = %292, %289
  br label %412

296:                                              ; preds = %283
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %298 = icmp ne %struct.TYPE_12__* %297, null
  br i1 %298, label %299, label %334

299:                                              ; preds = %296
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 4
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %301, align 8
  %303 = icmp eq %struct.TYPE_11__* %302, null
  br i1 %303, label %304, label %334

304:                                              ; preds = %299
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 4
  store %struct.TYPE_11__* inttoptr (i64 -1 to %struct.TYPE_11__*), %struct.TYPE_11__** %306, align 8
  %307 = load i32*, i32** %4, align 8
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 0
  %310 = load i8*, i8** %309, align 8
  %311 = call %struct.TYPE_11__* @xmlStringGetNodeList(i32* %307, i8* %310)
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 4
  store %struct.TYPE_11__* %311, %struct.TYPE_11__** %313, align 8
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 2
  store i32 1, i32* %315, align 8
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 4
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %317, align 8
  store %struct.TYPE_11__* %318, %struct.TYPE_11__** %16, align 8
  br label %319

319:                                              ; preds = %322, %304
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %321 = icmp ne %struct.TYPE_11__* %320, null
  br i1 %321, label %322, label %333

322:                                              ; preds = %319
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %324 = bitcast %struct.TYPE_12__* %323 to %struct.TYPE_11__*
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 2
  store %struct.TYPE_11__* %324, %struct.TYPE_11__** %326, align 8
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 3
  store %struct.TYPE_11__* %327, %struct.TYPE_11__** %329, align 8
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %331, align 8
  store %struct.TYPE_11__* %332, %struct.TYPE_11__** %16, align 8
  br label %319

333:                                              ; preds = %319
  br label %334

334:                                              ; preds = %333, %299, %296
  br label %335

335:                                              ; preds = %334
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %337 = icmp eq %struct.TYPE_11__* %336, null
  br i1 %337, label %338, label %340

338:                                              ; preds = %335
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %339, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %339, %struct.TYPE_11__** %7, align 8
  br label %344

340:                                              ; preds = %335
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %343 = call %struct.TYPE_11__* @xmlAddNextSibling(%struct.TYPE_11__* %341, %struct.TYPE_11__* %342)
  store %struct.TYPE_11__* %343, %struct.TYPE_11__** %7, align 8
  br label %344

344:                                              ; preds = %340, %338
  br label %345

345:                                              ; preds = %344, %262
  %346 = load i8*, i8** %9, align 8
  %347 = call i32 @xmlFree(i8* %346)
  br label %348

348:                                              ; preds = %345, %230
  %349 = load i8*, i8** %10, align 8
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %10, align 8
  %351 = load i8*, i8** %10, align 8
  store i8* %351, i8** %11, align 8
  br label %352

352:                                              ; preds = %348, %198
  br label %353

353:                                              ; preds = %352, %149
  %354 = load i32, i32* %14, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %369

356:                                              ; preds = %353
  %357 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %358 = load i32, i32* %14, align 4
  %359 = call i32 @xmlCopyCharMultiByte(i8* %357, i32 %358)
  store i32 %359, i32* %18, align 4
  %360 = load i32, i32* %18, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 %361
  store i8 0, i8* %362, align 1
  %363 = load i32*, i32** %13, align 8
  %364 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %365 = call i64 @xmlBufCat(i32* %363, i8* %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %356
  br label %412

368:                                              ; preds = %356
  store i32 0, i32* %14, align 4
  br label %369

369:                                              ; preds = %368, %353
  br label %373

370:                                              ; preds = %38
  %371 = load i8*, i8** %10, align 8
  %372 = getelementptr inbounds i8, i8* %371, i32 1
  store i8* %372, i8** %10, align 8
  br label %373

373:                                              ; preds = %370, %369
  br label %33

374:                                              ; preds = %33
  %375 = load i8*, i8** %10, align 8
  %376 = load i8*, i8** %11, align 8
  %377 = icmp ne i8* %375, %376
  br i1 %377, label %381, label %378

378:                                              ; preds = %374
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %380 = icmp eq %struct.TYPE_11__* %379, null
  br i1 %380, label %381, label %391

381:                                              ; preds = %378, %374
  %382 = load i32*, i32** %13, align 8
  %383 = load i8*, i8** %11, align 8
  %384 = load i8*, i8** %10, align 8
  %385 = load i8*, i8** %11, align 8
  %386 = ptrtoint i8* %384 to i64
  %387 = ptrtoint i8* %385 to i64
  %388 = sub i64 %386, %387
  %389 = trunc i64 %388 to i32
  %390 = call i64 @xmlBufAdd(i32* %382, i8* %383, i32 %389)
  br label %391

391:                                              ; preds = %381, %378
  %392 = load i32*, i32** %13, align 8
  %393 = call i32 @xmlBufIsEmpty(i32* %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %411, label %395

395:                                              ; preds = %391
  %396 = load i32*, i32** %4, align 8
  %397 = call %struct.TYPE_11__* @xmlNewDocText(i32* %396, i32* null)
  store %struct.TYPE_11__* %397, %struct.TYPE_11__** %8, align 8
  %398 = load i32*, i32** %13, align 8
  %399 = call i8* @xmlBufDetach(i32* %398)
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 0
  store i8* %399, i8** %401, align 8
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %403 = icmp eq %struct.TYPE_11__* %402, null
  br i1 %403, label %404, label %406

404:                                              ; preds = %395
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %405, %struct.TYPE_11__** %6, align 8
  br label %410

406:                                              ; preds = %395
  %407 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %409 = call %struct.TYPE_11__* @xmlAddNextSibling(%struct.TYPE_11__* %407, %struct.TYPE_11__* %408)
  br label %410

410:                                              ; preds = %406, %404
  br label %411

411:                                              ; preds = %410, %391
  br label %412

412:                                              ; preds = %411, %367, %295, %261, %224, %59
  %413 = load i32*, i32** %13, align 8
  %414 = call i32 @xmlBufFree(i32* %413)
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %415, %struct.TYPE_11__** %3, align 8
  br label %416

416:                                              ; preds = %412, %27, %22
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %417
}

declare dso_local i32* @xmlBufCreateSize(i32) #1

declare dso_local i32 @xmlBufSetAllocationScheme(i32*, i32) #1

declare dso_local i64 @xmlBufAdd(i32*, i8*, i32) #1

declare dso_local i32 @xmlTreeErr(i32, %struct.TYPE_11__*, i8*) #1

declare dso_local i8* @xmlStrndup(i8*, i32) #1

declare dso_local %struct.TYPE_12__* @xmlGetDocEntity(i32*, i8*) #1

declare dso_local i64 @xmlBufCat(i32*, i8*) #1

declare dso_local i32 @xmlBufIsEmpty(i32*) #1

declare dso_local %struct.TYPE_11__* @xmlNewDocText(i32*, i32*) #1

declare dso_local i8* @xmlBufDetach(i32*) #1

declare dso_local %struct.TYPE_11__* @xmlAddNextSibling(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @xmlNewReference(i32*, i8*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i32 @xmlCopyCharMultiByte(i8*, i32) #1

declare dso_local i32 @xmlBufFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
