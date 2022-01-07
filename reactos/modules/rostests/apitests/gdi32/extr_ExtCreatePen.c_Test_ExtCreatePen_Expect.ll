; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_ExtCreatePen.c_Test_ExtCreatePen_Expect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_ExtCreatePen.c_Test_ExtCreatePen_Expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@PS_STYLE_MASK = common dso_local global i32 0, align 4
@PS_USERSTYLE = common dso_local global i32 0, align 4
@BS_PATTERN = common dso_local global i64 0, align 8
@BS_DIBPATTERNPT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BS_DIBPATTERN = common dso_local global i64 0, align 8
@PS_TYPE_MASK = common dso_local global i32 0, align 4
@PS_COSMETIC = common dso_local global i32 0, align 4
@PS_NULL = common dso_local global i32 0, align 4
@BS_SOLID = common dso_local global i64 0, align 8
@PS_ALTERNATE = common dso_local global i32 0, align 4
@PS_ENDCAP_MASK = common dso_local global i32 0, align 4
@PS_JOIN_MASK = common dso_local global i32 0, align 4
@BS_HATCHED = common dso_local global i64 0, align 8
@HS_API_MAX = common dso_local global i32 0, align 4
@PS_INSIDEFRAME = common dso_local global i32 0, align 4
@PS_SOLID = common dso_local global i32 0, align 4
@BS_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Test_ExtCreatePen_Expect(i32 %0, i32 %1, i32 %2, i64* %3, i64 %4, i32 %5, i32* %6, %struct.TYPE_3__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i64* %3, i64** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %17, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = load i32*, i32** %16, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @PS_STYLE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @PS_USERSTYLE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %8
  %26 = load i64*, i64** %13, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %9, align 4
  br label %314

30:                                               ; preds = %25
  br label %40

31:                                               ; preds = %8
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64*, i64** %13, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %9, align 4
  br label %314

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* @BS_PATTERN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %9, align 4
  br label %314

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @BS_DIBPATTERNPT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* %15, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %9, align 4
  br label %314

59:                                               ; preds = %54
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 65535
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @TRUE, align 4
  %64 = load i32*, i32** %16, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %9, align 4
  br label %314

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* @BS_DIBPATTERN, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %9, align 4
  br label %314

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @PS_STYLE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @PS_USERSTYLE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %9, align 4
  br label %314

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = icmp sgt i32 %85, 16
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %9, align 4
  br label %314

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @PS_TYPE_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @PS_COSMETIC, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i64*, i64** %13, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %9, align 4
  br label %314

102:                                              ; preds = %95
  br label %114

103:                                              ; preds = %89
  %104 = load i64*, i64** %13, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %9, align 4
  br label %314

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %102
  br label %115

115:                                              ; preds = %114, %73
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @PS_STYLE_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @PS_NULL, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %115
  %122 = load i32, i32* @PS_NULL, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load i64, i64* @BS_SOLID, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 5
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  store i32 0, i32* %133, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  store i32 0, i32* %135, align 4
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %9, align 4
  br label %314

137:                                              ; preds = %115
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @PS_STYLE_MASK, align 4
  %140 = and i32 %138, %139
  %141 = ashr i32 %140, 0
  %142 = load i32, i32* @PS_ALTERNATE, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i32, i32* @FALSE, align 4
  store i32 %145, i32* %9, align 4
  br label %314

146:                                              ; preds = %137
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @PS_ENDCAP_MASK, align 4
  %149 = and i32 %147, %148
  %150 = ashr i32 %149, 8
  %151 = icmp sgt i32 %150, 2
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @FALSE, align 4
  store i32 %153, i32* %9, align 4
  br label %314

154:                                              ; preds = %146
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @PS_JOIN_MASK, align 4
  %157 = and i32 %155, %156
  %158 = ashr i32 %157, 12
  %159 = icmp sgt i32 %158, 2
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* @FALSE, align 4
  store i32 %161, i32* %9, align 4
  br label %314

162:                                              ; preds = %154
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @PS_TYPE_MASK, align 4
  %165 = and i32 %163, %164
  %166 = ashr i32 %165, 16
  %167 = icmp sgt i32 %166, 1
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @FALSE, align 4
  store i32 %169, i32* %9, align 4
  br label %314

170:                                              ; preds = %162
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @abs(i32 %171) #3
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @PS_TYPE_MASK, align 4
  %175 = and i32 %173, %174
  %176 = load i32, i32* @PS_COSMETIC, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %224

178:                                              ; preds = %170
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 1
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* @FALSE, align 4
  store i32 %182, i32* %9, align 4
  br label %314

183:                                              ; preds = %178
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* @BS_SOLID, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i64, i64* %14, align 8
  %189 = load i64, i64* @BS_HATCHED, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* @FALSE, align 4
  store i32 %192, i32* %9, align 4
  br label %314

193:                                              ; preds = %187, %183
  %194 = load i64, i64* %14, align 8
  %195 = load i64, i64* @BS_HATCHED, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %215

197:                                              ; preds = %193
  %198 = load i32, i32* %15, align 4
  %199 = icmp ne i32 %198, 8
  br i1 %199, label %200, label %208

200:                                              ; preds = %197
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 10
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 12
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load i32, i32* @FALSE, align 4
  store i32 %207, i32* %9, align 4
  br label %314

208:                                              ; preds = %203, %200, %197
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* @HS_API_MAX, align 4
  %211 = icmp sge i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i32, i32* @FALSE, align 4
  store i32 %213, i32* %9, align 4
  br label %314

214:                                              ; preds = %208
  br label %215

215:                                              ; preds = %214, %193
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @PS_STYLE_MASK, align 4
  %218 = and i32 %216, %217
  %219 = load i32, i32* @PS_INSIDEFRAME, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %215
  %222 = load i32, i32* @FALSE, align 4
  store i32 %222, i32* %9, align 4
  br label %314

223:                                              ; preds = %215
  br label %294

224:                                              ; preds = %170
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* @PS_STYLE_MASK, align 4
  %227 = and i32 %225, %226
  %228 = load i32, i32* @PS_ALTERNATE, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %224
  %231 = load i32, i32* @FALSE, align 4
  store i32 %231, i32* %9, align 4
  br label %314

232:                                              ; preds = %224
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* @PS_STYLE_MASK, align 4
  %235 = and i32 %233, %234
  %236 = load i32, i32* @PS_SOLID, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %256

238:                                              ; preds = %232
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @PS_STYLE_MASK, align 4
  %241 = and i32 %239, %240
  %242 = load i32, i32* @PS_INSIDEFRAME, align 4
  %243 = icmp ne i32 %241, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %238
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @PS_STYLE_MASK, align 4
  %247 = and i32 %245, %246
  %248 = load i32, i32* @PS_USERSTYLE, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %256

250:                                              ; preds = %244
  %251 = load i32, i32* %11, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  %254 = load i32, i32* @FALSE, align 4
  store i32 %254, i32* %9, align 4
  br label %314

255:                                              ; preds = %250
  br label %256

256:                                              ; preds = %255, %244, %238, %232
  %257 = load i64, i64* %14, align 8
  %258 = load i64, i64* @BS_NULL, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %276

260:                                              ; preds = %256
  %261 = load i32, i32* @PS_NULL, align 4
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 1
  store i32 0, i32* %265, align 4
  %266 = load i64, i64* @BS_SOLID, align 8
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 5
  store i64 %266, i64* %268, align 8
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 4
  store i64 0, i64* %270, align 8
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 2
  store i32 0, i32* %272, align 8
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 3
  store i32 0, i32* %274, align 4
  %275 = load i32, i32* @TRUE, align 4
  store i32 %275, i32* %9, align 4
  br label %314

276:                                              ; preds = %256
  %277 = load i64, i64* %14, align 8
  %278 = load i64, i64* @BS_HATCHED, align 8
  %279 = icmp sgt i64 %277, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = load i32, i32* @FALSE, align 4
  store i32 %281, i32* %9, align 4
  br label %314

282:                                              ; preds = %276
  %283 = load i64, i64* %14, align 8
  %284 = load i64, i64* @BS_HATCHED, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %282
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* @HS_API_MAX, align 4
  %289 = icmp sge i32 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = load i32, i32* @FALSE, align 4
  store i32 %291, i32* %9, align 4
  br label %314

292:                                              ; preds = %286
  br label %293

293:                                              ; preds = %292, %282
  br label %294

294:                                              ; preds = %293, %223
  %295 = load i32, i32* %10, align 4
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load i32, i32* %11, align 4
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load i64, i64* %14, align 8
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 5
  store i64 %301, i64* %303, align 8
  %304 = call i64 @RGB(i32 1, i32 2, i32 3)
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 4
  store i64 %304, i64* %306, align 8
  %307 = load i32, i32* %15, align 4
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 8
  %310 = load i32, i32* %12, align 4
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 3
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* @TRUE, align 4
  store i32 %313, i32* %9, align 4
  br label %314

314:                                              ; preds = %294, %290, %280, %260, %253, %230, %221, %212, %206, %191, %181, %168, %160, %152, %144, %121, %111, %100, %87, %82, %71, %62, %57, %47, %37, %28
  %315 = load i32, i32* %9, align 4
  ret i32 %315
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i64 @RGB(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
