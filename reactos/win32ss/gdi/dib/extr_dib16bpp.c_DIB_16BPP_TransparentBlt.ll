; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib16bpp.c_DIB_16BPP_TransparentBlt.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib16bpp.c_DIB_16BPP_TransparentBlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIB_16BPP_TransparentBlt(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %22, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %23, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %24, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %25, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = and i32 %63, 1
  %65 = sub nsw i32 %56, %64
  store i32 %65, i32* %13, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %68, %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %74, %82
  %84 = inttoptr i64 %83 to i64*
  store i64* %84, i64** %19, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %90, %93
  %95 = shl i32 %94, 1
  %96 = sub nsw i32 %87, %95
  store i32 %96, i32* %18, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %310, %6
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %313

106:                                              ; preds = %100
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %110, %113
  %115 = load i32, i32* %24, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %22, align 4
  %118 = sdiv i32 %116, %117
  %119 = add nsw i32 %109, %118
  store i32 %119, i32* %17, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %237, %106
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %244

127:                                              ; preds = %123
  %128 = load i64*, i64** %19, align 8
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %21, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %133, %136
  %138 = load i32, i32* %25, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* %23, align 4
  %141 = sdiv i32 %139, %140
  %142 = add nsw i32 %132, %141
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %181

145:                                              ; preds = %127
  %146 = load i32, i32* %17, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %181

148:                                              ; preds = %145
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %16, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %181

155:                                              ; preds = %148
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %155
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %17, align 4
  %166 = call i64 @DIB_GetSourceIndex(%struct.TYPE_10__* %163, i32 %164, i32 %165)
  store i64 %166, i64* %20, align 8
  %167 = load i64, i64* %20, align 8
  %168 = load i64, i64* %12, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %162
  %171 = load i64, i64* %21, align 8
  %172 = and i64 %171, 4294901760
  store i64 %172, i64* %21, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = load i64, i64* %20, align 8
  %175 = call i32 @XLATEOBJ_iXlate(i32* %173, i64 %174)
  %176 = and i32 %175, 65535
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* %21, align 8
  %179 = or i64 %178, %177
  store i64 %179, i64* %21, align 8
  br label %180

180:                                              ; preds = %170, %162
  br label %181

181:                                              ; preds = %180, %155, %148, %145, %127
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %185, 1
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %186, %189
  %191 = load i32, i32* %25, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load i32, i32* %23, align 4
  %194 = sdiv i32 %192, %193
  %195 = add nsw i32 %184, %194
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %234

198:                                              ; preds = %181
  %199 = load i32, i32* %17, align 4
  %200 = icmp sge i32 %199, 0
  br i1 %200, label %201, label %234

201:                                              ; preds = %198
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %234

208:                                              ; preds = %201
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %17, align 4
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %215, label %234

215:                                              ; preds = %208
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %17, align 4
  %219 = call i64 @DIB_GetSourceIndex(%struct.TYPE_10__* %216, i32 %217, i32 %218)
  store i64 %219, i64* %20, align 8
  %220 = load i64, i64* %20, align 8
  %221 = load i64, i64* %12, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %233

223:                                              ; preds = %215
  %224 = load i64, i64* %21, align 8
  %225 = and i64 %224, 65535
  store i64 %225, i64* %21, align 8
  %226 = load i32*, i32** %11, align 8
  %227 = load i64, i64* %20, align 8
  %228 = call i32 @XLATEOBJ_iXlate(i32* %226, i64 %227)
  %229 = shl i32 %228, 16
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %21, align 8
  %232 = or i64 %231, %230
  store i64 %232, i64* %21, align 8
  br label %233

233:                                              ; preds = %223, %215
  br label %234

234:                                              ; preds = %233, %208, %201, %198, %181
  %235 = load i64, i64* %21, align 8
  %236 = load i64*, i64** %19, align 8
  store i64 %235, i64* %236, align 8
  br label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %14, align 4
  %239 = add nsw i32 %238, 2
  store i32 %239, i32* %14, align 4
  %240 = load i64*, i64** %19, align 8
  %241 = getelementptr inbounds i64, i64* %240, i32 1
  store i64* %241, i64** %19, align 8
  %242 = load i32, i32* %16, align 4
  %243 = add nsw i32 %242, 2
  store i32 %243, i32* %16, align 4
  br label %123

244:                                              ; preds = %123
  %245 = load i32, i32* %14, align 4
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %303

250:                                              ; preds = %244
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %14, align 4
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %254, %257
  %259 = load i32, i32* %25, align 4
  %260 = mul nsw i32 %258, %259
  %261 = load i32, i32* %23, align 4
  %262 = sdiv i32 %260, %261
  %263 = add nsw i32 %253, %262
  store i32 %263, i32* %16, align 4
  %264 = load i32, i32* %16, align 4
  %265 = icmp sge i32 %264, 0
  br i1 %265, label %266, label %298

266:                                              ; preds = %250
  %267 = load i32, i32* %17, align 4
  %268 = icmp sge i32 %267, 0
  br i1 %268, label %269, label %298

269:                                              ; preds = %266
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %16, align 4
  %275 = icmp sgt i32 %273, %274
  br i1 %275, label %276, label %298

276:                                              ; preds = %269
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %17, align 4
  %282 = icmp sgt i32 %280, %281
  br i1 %282, label %283, label %298

283:                                              ; preds = %276
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %285 = load i32, i32* %16, align 4
  %286 = load i32, i32* %17, align 4
  %287 = call i64 @DIB_GetSourceIndex(%struct.TYPE_10__* %284, i32 %285, i32 %286)
  store i64 %287, i64* %20, align 8
  %288 = load i64, i64* %20, align 8
  %289 = load i64, i64* %12, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %283
  %292 = load i32*, i32** %11, align 8
  %293 = load i64, i64* %20, align 8
  %294 = call i32 @XLATEOBJ_iXlate(i32* %292, i64 %293)
  %295 = sext i32 %294 to i64
  %296 = load i64*, i64** %19, align 8
  store i64 %295, i64* %296, align 8
  br label %297

297:                                              ; preds = %291, %283
  br label %298

298:                                              ; preds = %297, %276, %269, %266, %250
  %299 = load i64*, i64** %19, align 8
  %300 = ptrtoint i64* %299 to i64
  %301 = add nsw i64 %300, 2
  %302 = inttoptr i64 %301 to i64*
  store i64* %302, i64** %19, align 8
  br label %303

303:                                              ; preds = %298, %244
  %304 = load i64*, i64** %19, align 8
  %305 = ptrtoint i64* %304 to i64
  %306 = load i32, i32* %18, align 4
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %305, %307
  %309 = inttoptr i64 %308 to i64*
  store i64* %309, i64** %19, align 8
  br label %310

310:                                              ; preds = %303
  %311 = load i32, i32* %15, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %15, align 4
  br label %100

313:                                              ; preds = %100
  %314 = load i32, i32* @TRUE, align 4
  ret i32 %314
}

declare dso_local i64 @DIB_GetSourceIndex(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @XLATEOBJ_iXlate(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
