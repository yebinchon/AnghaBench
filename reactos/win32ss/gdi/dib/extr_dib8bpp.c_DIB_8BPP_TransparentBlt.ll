; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib8bpp.c_DIB_8BPP_TransparentBlt.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/dib/extr_dib8bpp.c_DIB_8BPP_TransparentBlt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DIB_8BPP_TransparentBlt(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  store i64 %31, i64* %21, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %22, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  store i64 %45, i64* %23, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  store i64 %52, i64* %24, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = and i64 %62, 3
  %64 = sub nsw i64 %55, %63
  store i64 %64, i64* %13, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = mul nsw i64 %76, %80
  %82 = add nsw i64 %73, %81
  %83 = inttoptr i64 %82 to i64*
  store i64* %83, i64** %18, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %15, align 8
  br label %87

87:                                               ; preds = %427, %6
  %88 = load i64, i64* %15, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %430

93:                                               ; preds = %87
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load i64, i64* %15, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %103, %107
  %109 = add nsw i64 %102, %108
  %110 = inttoptr i64 %109 to i64*
  store i64* %110, i64** %18, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %114, %117
  %119 = load i64, i64* %23, align 8
  %120 = mul nsw i64 %118, %119
  %121 = load i64, i64* %21, align 8
  %122 = sdiv i64 %120, %121
  %123 = add nsw i64 %113, %122
  store i64 %123, i64* %17, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %14, align 8
  br label %127

127:                                              ; preds = %350, %93
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %13, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %355

131:                                              ; preds = %127
  %132 = load i64*, i64** %18, align 8
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %20, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %14, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = load i64, i64* %24, align 8
  %143 = mul nsw i64 %141, %142
  %144 = load i64, i64* %22, align 8
  %145 = sdiv i64 %143, %144
  %146 = add nsw i64 %136, %145
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %16, align 8
  %148 = icmp sge i64 %147, 0
  br i1 %148, label %149, label %185

149:                                              ; preds = %131
  %150 = load i64, i64* %17, align 8
  %151 = icmp sge i64 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %149
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %16, align 8
  %158 = icmp sgt i64 %156, %157
  br i1 %158, label %159, label %185

159:                                              ; preds = %152
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %17, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %166, label %185

166:                                              ; preds = %159
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %168 = load i64, i64* %16, align 8
  %169 = load i64, i64* %17, align 8
  %170 = call i64 @DIB_GetSourceIndex(%struct.TYPE_10__* %167, i64 %168, i64 %169)
  store i64 %170, i64* %19, align 8
  %171 = load i64, i64* %19, align 8
  %172 = load i64, i64* %12, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %166
  %175 = load i64, i64* %20, align 8
  %176 = and i64 %175, 4294967040
  store i64 %176, i64* %20, align 8
  %177 = load i32*, i32** %11, align 8
  %178 = load i64, i64* %19, align 8
  %179 = call i32 @XLATEOBJ_iXlate(i32* %177, i64 %178)
  %180 = and i32 %179, 255
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %20, align 8
  %183 = or i64 %182, %181
  store i64 %183, i64* %20, align 8
  br label %184

184:                                              ; preds = %174, %166
  br label %185

185:                                              ; preds = %184, %159, %152, %149, %131
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %14, align 8
  %190 = add nsw i64 %189, 1
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = sub nsw i64 %190, %193
  %195 = load i64, i64* %24, align 8
  %196 = mul nsw i64 %194, %195
  %197 = load i64, i64* %22, align 8
  %198 = sdiv i64 %196, %197
  %199 = add nsw i64 %188, %198
  store i64 %199, i64* %16, align 8
  %200 = load i64, i64* %16, align 8
  %201 = icmp sge i64 %200, 0
  br i1 %201, label %202, label %239

202:                                              ; preds = %185
  %203 = load i64, i64* %17, align 8
  %204 = icmp sge i64 %203, 0
  br i1 %204, label %205, label %239

205:                                              ; preds = %202
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %16, align 8
  %211 = icmp sgt i64 %209, %210
  br i1 %211, label %212, label %239

212:                                              ; preds = %205
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %17, align 8
  %218 = icmp sgt i64 %216, %217
  br i1 %218, label %219, label %239

219:                                              ; preds = %212
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %221 = load i64, i64* %16, align 8
  %222 = load i64, i64* %17, align 8
  %223 = call i64 @DIB_GetSourceIndex(%struct.TYPE_10__* %220, i64 %221, i64 %222)
  store i64 %223, i64* %19, align 8
  %224 = load i64, i64* %19, align 8
  %225 = load i64, i64* %12, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %219
  %228 = load i64, i64* %20, align 8
  %229 = and i64 %228, 4294902015
  store i64 %229, i64* %20, align 8
  %230 = load i32*, i32** %11, align 8
  %231 = load i64, i64* %19, align 8
  %232 = call i32 @XLATEOBJ_iXlate(i32* %230, i64 %231)
  %233 = shl i32 %232, 8
  %234 = and i32 %233, 65280
  %235 = sext i32 %234 to i64
  %236 = load i64, i64* %20, align 8
  %237 = or i64 %236, %235
  store i64 %237, i64* %20, align 8
  br label %238

238:                                              ; preds = %227, %219
  br label %239

239:                                              ; preds = %238, %212, %205, %202, %185
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %14, align 8
  %244 = add nsw i64 %243, 2
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = sub nsw i64 %244, %247
  %249 = load i64, i64* %24, align 8
  %250 = mul nsw i64 %248, %249
  %251 = load i64, i64* %22, align 8
  %252 = sdiv i64 %250, %251
  %253 = add nsw i64 %242, %252
  store i64 %253, i64* %16, align 8
  %254 = load i64, i64* %16, align 8
  %255 = icmp sge i64 %254, 0
  br i1 %255, label %256, label %293

256:                                              ; preds = %239
  %257 = load i64, i64* %17, align 8
  %258 = icmp sge i64 %257, 0
  br i1 %258, label %259, label %293

259:                                              ; preds = %256
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* %16, align 8
  %265 = icmp sgt i64 %263, %264
  br i1 %265, label %266, label %293

266:                                              ; preds = %259
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* %17, align 8
  %272 = icmp sgt i64 %270, %271
  br i1 %272, label %273, label %293

273:                                              ; preds = %266
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %275 = load i64, i64* %16, align 8
  %276 = load i64, i64* %17, align 8
  %277 = call i64 @DIB_GetSourceIndex(%struct.TYPE_10__* %274, i64 %275, i64 %276)
  store i64 %277, i64* %19, align 8
  %278 = load i64, i64* %19, align 8
  %279 = load i64, i64* %12, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %292

281:                                              ; preds = %273
  %282 = load i64, i64* %20, align 8
  %283 = and i64 %282, 4278255615
  store i64 %283, i64* %20, align 8
  %284 = load i32*, i32** %11, align 8
  %285 = load i64, i64* %19, align 8
  %286 = call i32 @XLATEOBJ_iXlate(i32* %284, i64 %285)
  %287 = shl i32 %286, 16
  %288 = and i32 %287, 16711680
  %289 = sext i32 %288 to i64
  %290 = load i64, i64* %20, align 8
  %291 = or i64 %290, %289
  store i64 %291, i64* %20, align 8
  br label %292

292:                                              ; preds = %281, %273
  br label %293

293:                                              ; preds = %292, %266, %259, %256, %239
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* %14, align 8
  %298 = add nsw i64 %297, 3
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = sub nsw i64 %298, %301
  %303 = load i64, i64* %24, align 8
  %304 = mul nsw i64 %302, %303
  %305 = load i64, i64* %22, align 8
  %306 = sdiv i64 %304, %305
  %307 = add nsw i64 %296, %306
  store i64 %307, i64* %16, align 8
  %308 = load i64, i64* %16, align 8
  %309 = icmp sge i64 %308, 0
  br i1 %309, label %310, label %347

310:                                              ; preds = %293
  %311 = load i64, i64* %17, align 8
  %312 = icmp sge i64 %311, 0
  br i1 %312, label %313, label %347

313:                                              ; preds = %310
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %16, align 8
  %319 = icmp sgt i64 %317, %318
  br i1 %319, label %320, label %347

320:                                              ; preds = %313
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* %17, align 8
  %326 = icmp sgt i64 %324, %325
  br i1 %326, label %327, label %347

327:                                              ; preds = %320
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %329 = load i64, i64* %16, align 8
  %330 = load i64, i64* %17, align 8
  %331 = call i64 @DIB_GetSourceIndex(%struct.TYPE_10__* %328, i64 %329, i64 %330)
  store i64 %331, i64* %19, align 8
  %332 = load i64, i64* %19, align 8
  %333 = load i64, i64* %12, align 8
  %334 = icmp ne i64 %332, %333
  br i1 %334, label %335, label %346

335:                                              ; preds = %327
  %336 = load i64, i64* %20, align 8
  %337 = and i64 %336, 16777215
  store i64 %337, i64* %20, align 8
  %338 = load i32*, i32** %11, align 8
  %339 = load i64, i64* %19, align 8
  %340 = call i32 @XLATEOBJ_iXlate(i32* %338, i64 %339)
  %341 = shl i32 %340, 24
  %342 = and i32 %341, -16777216
  %343 = zext i32 %342 to i64
  %344 = load i64, i64* %20, align 8
  %345 = or i64 %344, %343
  store i64 %345, i64* %20, align 8
  br label %346

346:                                              ; preds = %335, %327
  br label %347

347:                                              ; preds = %346, %320, %313, %310, %293
  %348 = load i64, i64* %20, align 8
  %349 = load i64*, i64** %18, align 8
  store i64 %348, i64* %349, align 8
  br label %350

350:                                              ; preds = %347
  %351 = load i64, i64* %14, align 8
  %352 = add nsw i64 %351, 4
  store i64 %352, i64* %14, align 8
  %353 = load i64*, i64** %18, align 8
  %354 = getelementptr inbounds i64, i64* %353, i32 1
  store i64* %354, i64** %18, align 8
  br label %127

355:                                              ; preds = %127
  %356 = load i64, i64* %14, align 8
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = icmp slt i64 %356, %359
  br i1 %360, label %361, label %426

361:                                              ; preds = %355
  br label %362

362:                                              ; preds = %422, %361
  %363 = load i64, i64* %14, align 8
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = icmp slt i64 %363, %366
  br i1 %367, label %368, label %425

368:                                              ; preds = %362
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 3
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* %14, align 8
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 3
  %375 = load i64, i64* %374, align 8
  %376 = sub nsw i64 %372, %375
  %377 = load i64, i64* %24, align 8
  %378 = mul nsw i64 %376, %377
  %379 = load i64, i64* %22, align 8
  %380 = sdiv i64 %378, %379
  %381 = add nsw i64 %371, %380
  store i64 %381, i64* %16, align 8
  %382 = load i64, i64* %16, align 8
  %383 = icmp sge i64 %382, 0
  br i1 %383, label %384, label %417

384:                                              ; preds = %368
  %385 = load i64, i64* %17, align 8
  %386 = icmp sge i64 %385, 0
  br i1 %386, label %387, label %417

387:                                              ; preds = %384
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* %16, align 8
  %393 = icmp sgt i64 %391, %392
  br i1 %393, label %394, label %417

394:                                              ; preds = %387
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* %17, align 8
  %400 = icmp sgt i64 %398, %399
  br i1 %400, label %401, label %417

401:                                              ; preds = %394
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %403 = load i64, i64* %16, align 8
  %404 = load i64, i64* %17, align 8
  %405 = call i64 @DIB_GetSourceIndex(%struct.TYPE_10__* %402, i64 %403, i64 %404)
  store i64 %405, i64* %19, align 8
  %406 = load i64, i64* %19, align 8
  %407 = load i64, i64* %12, align 8
  %408 = icmp ne i64 %406, %407
  br i1 %408, label %409, label %416

409:                                              ; preds = %401
  %410 = load i32*, i32** %11, align 8
  %411 = load i64, i64* %19, align 8
  %412 = call i32 @XLATEOBJ_iXlate(i32* %410, i64 %411)
  %413 = and i32 %412, 255
  %414 = sext i32 %413 to i64
  %415 = load i64*, i64** %18, align 8
  store i64 %414, i64* %415, align 8
  br label %416

416:                                              ; preds = %409, %401
  br label %417

417:                                              ; preds = %416, %394, %387, %384, %368
  %418 = load i64*, i64** %18, align 8
  %419 = ptrtoint i64* %418 to i64
  %420 = add nsw i64 %419, 1
  %421 = inttoptr i64 %420 to i64*
  store i64* %421, i64** %18, align 8
  br label %422

422:                                              ; preds = %417
  %423 = load i64, i64* %14, align 8
  %424 = add nsw i64 %423, 1
  store i64 %424, i64* %14, align 8
  br label %362

425:                                              ; preds = %362
  br label %426

426:                                              ; preds = %425, %355
  br label %427

427:                                              ; preds = %426
  %428 = load i64, i64* %15, align 8
  %429 = add nsw i64 %428, 1
  store i64 %429, i64* %15, align 8
  br label %87

430:                                              ; preds = %87
  %431 = load i32, i32* @TRUE, align 4
  ret i32 %431
}

declare dso_local i64 @DIB_GetSourceIndex(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @XLATEOBJ_iXlate(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
