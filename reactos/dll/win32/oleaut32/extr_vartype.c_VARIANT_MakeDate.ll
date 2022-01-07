; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_vartype.c_VARIANT_MakeDate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_vartype.c_VARIANT_MakeDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%d,%d,%d,%d,%d)\0A\00", align 1
@DP_MONTH = common dso_local global i32 0, align 4
@ORDER_MDY = common dso_local global i32 0, align 4
@ORDER_DMY = common dso_local global i32 0, align 4
@ORDER_YMD = common dso_local global i32 0, align 4
@ORDER_YDM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"dwAllOrders is 0x%08x\0A\00", align 1
@ORDER_MYD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Attempt %d, dwTry is 0x%08x\0A\00", align 1
@DISP_E_TYPEMISMATCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Time %d %d %d\0A\00", align 1
@DP_PM = common dso_local global i32 0, align 4
@DP_AM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Returning date %d/%d/%d\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, %struct.TYPE_6__*)* @VARIANT_MakeDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VARIANT_MakeDate(%struct.TYPE_7__* %0, i32 %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 30, i32* %13, align 4
  store i32 12, i32* %14, align 4
  store i32 1899, i32* %15, align 4
  br label %331

23:                                               ; preds = %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 0
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %48

44:                                               ; preds = %23
  %45 = call i32 @GetSystemTime(%struct.TYPE_6__* %16)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  br label %57

48:                                               ; preds = %23
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %48, %44
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 0
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DP_MONTH, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %57
  %76 = load i32, i32* @ORDER_MDY, align 4
  store i32 %76, i32* %10, align 4
  br label %136

77:                                               ; preds = %57
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DP_MONTH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %77
  %90 = load i32, i32* @ORDER_DMY, align 4
  store i32 %90, i32* %10, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 2
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32, i32* @ORDER_YMD, align 4
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %95, %89
  br label %135

100:                                              ; preds = %77
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 2
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DP_MONTH, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %105
  %118 = load i32, i32* @ORDER_YDM, align 4
  store i32 %118, i32* %10, align 4
  br label %134

119:                                              ; preds = %105, %100
  %120 = load i32, i32* @ORDER_MDY, align 4
  %121 = load i32, i32* @ORDER_DMY, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %10, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %125, 2
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load i32, i32* @ORDER_YMD, align 4
  %129 = load i32, i32* @ORDER_YDM, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %127, %119
  br label %134

134:                                              ; preds = %133, %117
  br label %135

135:                                              ; preds = %134, %99
  br label %136

136:                                              ; preds = %135, %75
  br label %137

137:                                              ; preds = %323, %136
  %138 = load i32, i32* %10, align 4
  %139 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %317, %201, %137
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %318

143:                                              ; preds = %140
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %143
  %147 = load i32, i32* %7, align 4
  switch i32 %147, label %156 [
    i32 0, label %148
    i32 1, label %152
  ]

148:                                              ; preds = %146
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @ORDER_MDY, align 4
  %151 = and i32 %149, %150
  store i32 %151, i32* %11, align 4
  br label %160

152:                                              ; preds = %146
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @ORDER_DMY, align 4
  %155 = and i32 %153, %154
  store i32 %155, i32* %11, align 4
  br label %160

156:                                              ; preds = %146
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @ORDER_YMD, align 4
  %159 = and i32 %157, %158
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %156, %152, %148
  br label %193

161:                                              ; preds = %143
  %162 = load i32, i32* %12, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %190

164:                                              ; preds = %161
  %165 = load i32, i32* %7, align 4
  switch i32 %165, label %182 [
    i32 0, label %166
    i32 1, label %173
  ]

166:                                              ; preds = %164
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @ORDER_DMY, align 4
  %169 = load i32, i32* @ORDER_YDM, align 4
  %170 = or i32 %168, %169
  %171 = xor i32 %170, -1
  %172 = and i32 %167, %171
  store i32 %172, i32* %11, align 4
  br label %189

173:                                              ; preds = %164
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @ORDER_MDY, align 4
  %176 = load i32, i32* @ORDER_YDM, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @ORDER_MYD, align 4
  %179 = or i32 %177, %178
  %180 = xor i32 %179, -1
  %181 = and i32 %174, %180
  store i32 %181, i32* %11, align 4
  br label %189

182:                                              ; preds = %164
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @ORDER_DMY, align 4
  %185 = load i32, i32* @ORDER_YDM, align 4
  %186 = or i32 %184, %185
  %187 = xor i32 %186, -1
  %188 = and i32 %183, %187
  store i32 %188, i32* %11, align 4
  br label %189

189:                                              ; preds = %182, %173, %166
  br label %192

190:                                              ; preds = %161
  %191 = load i32, i32* %10, align 4
  store i32 %191, i32* %11, align 4
  br label %192

192:                                              ; preds = %190, %189
  br label %193

193:                                              ; preds = %192, %160
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %11, align 4
  %196 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %194, i32 %195)
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %193
  br label %140

202:                                              ; preds = %193
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @ORDER_MDY, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %224

207:                                              ; preds = %202
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %15, align 4
  %211 = call i64 @VARIANT_IsValidMonthDay(i32 %208, i32 %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %13, align 4
  store i32 %215, i32* %17, align 4
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %17, align 4
  store i32 %217, i32* %14, align 4
  br label %218

218:                                              ; preds = %214
  br label %331

219:                                              ; preds = %207
  %220 = load i32, i32* @ORDER_MDY, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %10, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %10, align 4
  br label %224

224:                                              ; preds = %219, %202
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* @ORDER_YMD, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %246

229:                                              ; preds = %224
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %13, align 4
  %233 = call i64 @VARIANT_IsValidMonthDay(i32 %230, i32 %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %13, align 4
  store i32 %237, i32* %17, align 4
  %238 = load i32, i32* %15, align 4
  store i32 %238, i32* %13, align 4
  %239 = load i32, i32* %17, align 4
  store i32 %239, i32* %15, align 4
  br label %240

240:                                              ; preds = %236
  br label %331

241:                                              ; preds = %229
  %242 = load i32, i32* @ORDER_YMD, align 4
  %243 = xor i32 %242, -1
  %244 = load i32, i32* %10, align 4
  %245 = and i32 %244, %243
  store i32 %245, i32* %10, align 4
  br label %246

246:                                              ; preds = %241, %224
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* @ORDER_YDM, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %273

251:                                              ; preds = %246
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %13, align 4
  %255 = call i64 @VARIANT_IsValidMonthDay(i32 %252, i32 %253, i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %251
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %13, align 4
  store i32 %259, i32* %17, align 4
  %260 = load i32, i32* %14, align 4
  store i32 %260, i32* %13, align 4
  %261 = load i32, i32* %17, align 4
  store i32 %261, i32* %14, align 4
  br label %262

262:                                              ; preds = %258
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %14, align 4
  store i32 %264, i32* %17, align 4
  %265 = load i32, i32* %15, align 4
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %17, align 4
  store i32 %266, i32* %15, align 4
  br label %267

267:                                              ; preds = %263
  br label %331

268:                                              ; preds = %251
  %269 = load i32, i32* @ORDER_YDM, align 4
  %270 = xor i32 %269, -1
  %271 = load i32, i32* %10, align 4
  %272 = and i32 %271, %270
  store i32 %272, i32* %10, align 4
  br label %273

273:                                              ; preds = %268, %246
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* @ORDER_DMY, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %273
  %279 = load i32, i32* %13, align 4
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* %15, align 4
  %282 = call i64 @VARIANT_IsValidMonthDay(i32 %279, i32 %280, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  br label %331

285:                                              ; preds = %278
  %286 = load i32, i32* @ORDER_DMY, align 4
  %287 = xor i32 %286, -1
  %288 = load i32, i32* %10, align 4
  %289 = and i32 %288, %287
  store i32 %289, i32* %10, align 4
  br label %290

290:                                              ; preds = %285, %273
  %291 = load i32, i32* %11, align 4
  %292 = load i32, i32* @ORDER_MYD, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %317

295:                                              ; preds = %290
  %296 = load i32, i32* %15, align 4
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* %14, align 4
  %299 = call i64 @VARIANT_IsValidMonthDay(i32 %296, i32 %297, i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %312

301:                                              ; preds = %295
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %13, align 4
  store i32 %303, i32* %17, align 4
  %304 = load i32, i32* %15, align 4
  store i32 %304, i32* %13, align 4
  %305 = load i32, i32* %17, align 4
  store i32 %305, i32* %15, align 4
  br label %306

306:                                              ; preds = %302
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %14, align 4
  store i32 %308, i32* %17, align 4
  %309 = load i32, i32* %15, align 4
  store i32 %309, i32* %14, align 4
  %310 = load i32, i32* %17, align 4
  store i32 %310, i32* %15, align 4
  br label %311

311:                                              ; preds = %307
  br label %331

312:                                              ; preds = %295
  %313 = load i32, i32* @ORDER_MYD, align 4
  %314 = xor i32 %313, -1
  %315 = load i32, i32* %10, align 4
  %316 = and i32 %315, %314
  store i32 %316, i32* %10, align 4
  br label %317

317:                                              ; preds = %312, %290
  br label %140

318:                                              ; preds = %140
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp eq i32 %321, 2
  br i1 %322, label %323, label %329

323:                                              ; preds = %318
  store i32 1, i32* %15, align 4
  %324 = load i32, i32* @ORDER_YMD, align 4
  %325 = load i32, i32* @ORDER_MYD, align 4
  %326 = or i32 %324, %325
  store i32 %326, i32* %10, align 4
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  store i32 0, i32* %328, align 8
  store i32 0, i32* %12, align 4
  br label %137

329:                                              ; preds = %318
  %330 = load i32, i32* @DISP_E_TYPEMISMATCH, align 4
  store i32 %330, i32* %5, align 4
  br label %434

331:                                              ; preds = %311, %284, %267, %240, %218, %22
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = icmp sgt i32 %334, 23
  br i1 %335, label %346, label %336

336:                                              ; preds = %331
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = icmp sgt i32 %339, 59
  br i1 %340, label %346, label %341

341:                                              ; preds = %336
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = icmp sgt i32 %344, 59
  br i1 %345, label %346, label %348

346:                                              ; preds = %341, %336, %331
  %347 = load i32, i32* @DISP_E_TYPEMISMATCH, align 4
  store i32 %347, i32* %5, align 4
  br label %434

348:                                              ; preds = %341
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %351, i32 %354, i32 %357)
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = icmp slt i32 %361, 12
  br i1 %362, label %363, label %375

363:                                              ; preds = %348
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @DP_PM, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %363
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, 12
  store i32 %374, i32* %372, align 4
  br label %391

375:                                              ; preds = %363, %348
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %378, 12
  br i1 %379, label %380, label %390

380:                                              ; preds = %375
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @DP_AM, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %380
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 1
  store i32 0, i32* %389, align 4
  br label %390

390:                                              ; preds = %387, %380, %375
  br label %391

391:                                              ; preds = %390, %370
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 4
  %401 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %394, i32 %397, i32 %400)
  %402 = load i32, i32* %13, align 4
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 4
  store i32 %402, i32* %404, align 4
  %405 = load i32, i32* %14, align 4
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 5
  store i32 %405, i32* %407, align 4
  %408 = load i32, i32* %15, align 4
  %409 = icmp slt i32 %408, 30
  br i1 %409, label %410, label %413

410:                                              ; preds = %391
  %411 = load i32, i32* %15, align 4
  %412 = add nsw i32 2000, %411
  br label %423

413:                                              ; preds = %391
  %414 = load i32, i32* %15, align 4
  %415 = icmp slt i32 %414, 100
  br i1 %415, label %416, label %419

416:                                              ; preds = %413
  %417 = load i32, i32* %15, align 4
  %418 = add nsw i32 1900, %417
  br label %421

419:                                              ; preds = %413
  %420 = load i32, i32* %15, align 4
  br label %421

421:                                              ; preds = %419, %416
  %422 = phi i32 [ %418, %416 ], [ %420, %419 ]
  br label %423

423:                                              ; preds = %421, %410
  %424 = phi i32 [ %412, %410 ], [ %422, %421 ]
  %425 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %425, i32 0, i32 0
  store i32 %424, i32* %426, align 4
  %427 = load i32, i32* %13, align 4
  %428 = load i32, i32* %14, align 4
  %429 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %427, i32 %428, i32 %431)
  %433 = load i32, i32* @S_OK, align 4
  store i32 %433, i32* %5, align 4
  br label %434

434:                                              ; preds = %423, %346, %329
  %435 = load i32, i32* %5, align 4
  ret i32 %435
}

declare dso_local i32 @GetSystemTime(%struct.TYPE_6__*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i64 @VARIANT_IsValidMonthDay(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
