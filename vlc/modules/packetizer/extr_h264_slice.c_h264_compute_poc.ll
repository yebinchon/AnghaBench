; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_slice.c_h264_compute_poc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_slice.c_h264_compute_poc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i64, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32 }

@H264_NAL_SLICE_IDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h264_compute_poc(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, %struct.TYPE_11__* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %172

32:                                               ; preds = %6
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 4
  %37 = shl i32 1, %36
  store i32 %37, i32* %13, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @H264_NAL_SLICE_IDR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %76

50:                                               ; preds = %32
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %74

70:                                               ; preds = %55
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %63
  br label %75

75:                                               ; preds = %74, %50
  br label %76

76:                                               ; preds = %75, %43
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %14, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %83, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ult i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %76
  %92 = load i32, i32* %15, align 4
  %93 = sub i32 0, %92
  %94 = load i32, i32* %13, align 4
  %95 = udiv i32 %94, 2
  %96 = icmp uge i32 %93, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* %14, align 4
  br label %111

101:                                              ; preds = %91, %76
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %13, align 4
  %104 = udiv i32 %103, 2
  %105 = icmp ugt i32 %102, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = sub i32 %108, %107
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %106, %101
  br label %111

111:                                              ; preds = %110, %97
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %112, %115
  %117 = load i32*, i32** %12, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %11, align 8
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %111
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %126
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  br label %132

132:                                              ; preds = %123, %111
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %171

137:                                              ; preds = %132
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %142, %137
  %148 = phi i1 [ false, %137 ], [ %146, %142 ]
  %149 = zext i1 %148 to i32
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 5
  store i64 %154, i64* %156, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load i32, i32* %14, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  br label %171

171:                                              ; preds = %147, %132
  br label %402

172:                                              ; preds = %6
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 4
  %177 = shl i32 1, %176
  store i32 %177, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @H264_NAL_SLICE_IDR, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  store i32 0, i32* %17, align 4
  br label %203

184:                                              ; preds = %172
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = icmp ugt i32 %187, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %16, align 4
  %197 = add i32 %195, %196
  store i32 %197, i32* %17, align 4
  br label %202

198:                                              ; preds = %184
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %17, align 4
  br label %202

202:                                              ; preds = %198, %192
  br label %203

203:                                              ; preds = %202, %183
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %346

208:                                              ; preds = %203
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %208
  %214 = load i32, i32* %17, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = add i32 %214, %217
  store i32 %218, i32* %19, align 4
  br label %220

219:                                              ; preds = %208
  store i32 0, i32* %19, align 4
  br label %220

220:                                              ; preds = %219, %213
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load i32, i32* %19, align 4
  %227 = icmp ugt i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32, i32* %19, align 4
  %230 = add i32 %229, -1
  store i32 %230, i32* %19, align 4
  br label %231

231:                                              ; preds = %228, %225, %220
  %232 = load i32, i32* %19, align 4
  %233 = icmp ugt i32 %232, 0
  br i1 %233, label %234, label %294

234:                                              ; preds = %231
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %235

235:                                              ; preds = %251, %234
  %236 = load i32, i32* %21, align 4
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %254

241:                                              ; preds = %235
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 4
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %20, align 4
  %250 = add i32 %249, %248
  store i32 %250, i32* %20, align 4
  br label %251

251:                                              ; preds = %241
  %252 = load i32, i32* %21, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %21, align 4
  br label %235

254:                                              ; preds = %235
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %254
  %260 = load i32, i32* %19, align 4
  %261 = sub i32 %260, 1
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = udiv i32 %261, %264
  store i32 %265, i32* %22, align 4
  %266 = load i32, i32* %19, align 4
  %267 = sub i32 %266, 1
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = urem i32 %267, %270
  store i32 %271, i32* %23, align 4
  br label %272

272:                                              ; preds = %259, %254
  %273 = load i32, i32* %22, align 4
  %274 = load i32, i32* %20, align 4
  %275 = mul i32 %273, %274
  store i32 %275, i32* %18, align 4
  store i32 0, i32* %24, align 4
  br label %276

276:                                              ; preds = %290, %272
  %277 = load i32, i32* %24, align 4
  %278 = load i32, i32* %23, align 4
  %279 = icmp ule i32 %277, %278
  br i1 %279, label %280, label %293

280:                                              ; preds = %276
  %281 = load i32, i32* %18, align 4
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 4
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %24, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %281, %288
  store i32 %289, i32* %18, align 4
  br label %290

290:                                              ; preds = %280
  %291 = load i32, i32* %24, align 4
  %292 = add i32 %291, 1
  store i32 %292, i32* %24, align 4
  br label %276

293:                                              ; preds = %276
  br label %294

294:                                              ; preds = %293, %231
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %294
  %300 = load i32, i32* %18, align 4
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 8
  %304 = add i32 %300, %303
  store i32 %304, i32* %18, align 4
  br label %305

305:                                              ; preds = %299, %294
  %306 = load i32, i32* %18, align 4
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = add i32 %306, %309
  %311 = load i32*, i32** %11, align 8
  store i32 %310, i32* %311, align 4
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 7
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %328, label %316

316:                                              ; preds = %305
  %317 = load i32*, i32** %11, align 8
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %318, %321
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 8
  %326 = add nsw i32 %322, %325
  %327 = load i32*, i32** %12, align 8
  store i32 %326, i32* %327, align 4
  br label %345

328:                                              ; preds = %305
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 6
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %344

333:                                              ; preds = %328
  %334 = load i32, i32* %18, align 4
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 4
  %338 = add i32 %334, %337
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 4
  %342 = add i32 %338, %341
  %343 = load i32*, i32** %12, align 8
  store i32 %342, i32* %343, align 4
  br label %344

344:                                              ; preds = %333, %328
  br label %345

345:                                              ; preds = %344, %316
  br label %384

346:                                              ; preds = %203
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp eq i32 %349, 2
  br i1 %350, label %351, label %383

351:                                              ; preds = %346
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @H264_NAL_SLICE_IDR, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %358

357:                                              ; preds = %351
  store i32 0, i32* %25, align 4
  br label %379

358:                                              ; preds = %351
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 2
  %361 = load i64, i64* %360, align 8
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %363, label %371

363:                                              ; preds = %358
  %364 = load i32, i32* %17, align 4
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  %368 = add i32 %364, %367
  %369 = mul i32 2, %368
  %370 = sub i32 %369, 1
  store i32 %370, i32* %25, align 4
  br label %378

371:                                              ; preds = %358
  %372 = load i32, i32* %17, align 4
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 8
  %376 = add i32 %372, %375
  %377 = mul i32 2, %376
  store i32 %377, i32* %25, align 4
  br label %378

378:                                              ; preds = %371, %363
  br label %379

379:                                              ; preds = %378, %357
  %380 = load i32, i32* %25, align 4
  %381 = load i32*, i32** %11, align 8
  store i32 %380, i32* %381, align 4
  %382 = load i32*, i32** %12, align 8
  store i32 %380, i32* %382, align 4
  br label %383

383:                                              ; preds = %379, %346
  br label %384

384:                                              ; preds = %383, %345
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 2
  store i32 %387, i32* %389, align 8
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 8
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %384
  %395 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i32 0, i32 3
  store i32 0, i32* %396, align 4
  br label %401

397:                                              ; preds = %384
  %398 = load i32, i32* %17, align 4
  %399 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %399, i32 0, i32 3
  store i32 %398, i32* %400, align 4
  br label %401

401:                                              ; preds = %397, %394
  br label %402

402:                                              ; preds = %401, %171
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 7
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %414, label %407

407:                                              ; preds = %402
  %408 = load i32*, i32** %12, align 8
  %409 = load i32, i32* %408, align 4
  %410 = load i32*, i32** %11, align 8
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @__MIN(i32 %409, i32 %411)
  %413 = load i32*, i32** %10, align 8
  store i32 %412, i32* %413, align 4
  br label %428

414:                                              ; preds = %402
  %415 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 6
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %423

419:                                              ; preds = %414
  %420 = load i32*, i32** %12, align 8
  %421 = load i32, i32* %420, align 4
  %422 = load i32*, i32** %10, align 8
  store i32 %421, i32* %422, align 4
  br label %427

423:                                              ; preds = %414
  %424 = load i32*, i32** %11, align 8
  %425 = load i32, i32* %424, align 4
  %426 = load i32*, i32** %10, align 8
  store i32 %425, i32* %426, align 4
  br label %427

427:                                              ; preds = %423, %419
  br label %428

428:                                              ; preds = %427, %407
  ret void
}

declare dso_local i32 @__MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
