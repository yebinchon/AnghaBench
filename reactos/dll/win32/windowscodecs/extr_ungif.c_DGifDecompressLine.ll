; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_ungif.c_DGifDecompressLine.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_ungif.c_DGifDecompressLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32, i32, i32, i64, i32, i32, i32, i32 }

@GIF_ERROR = common dso_local global i64 0, align 8
@LZ_MAX_CODE = common dso_local global i32 0, align 4
@NO_SUCH_CODE = common dso_local global i32 0, align 4
@GIF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @DGifDecompressLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DGifDecompressLine(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %19, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %18, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %17, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %16, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %3
  br label %47

47:                                               ; preds = %56, %46
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi i1 [ false, %47 ], [ %53, %50 ]
  br i1 %55, label %56, label %68

56:                                               ; preds = %54
  %57 = load i32*, i32** %16, align 8
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %62, i32* %67, align 4
  br label %47

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %3
  br label %70

70:                                               ; preds = %311, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %312

74:                                               ; preds = %70
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = call i64 @DGifDecompressInput(%struct.TYPE_5__* %75, i32* %10)
  %77 = load i64, i64* @GIF_ERROR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i64, i64* @GIF_ERROR, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %320

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91, %86
  %97 = load i64, i64* @GIF_ERROR, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %320

99:                                               ; preds = %91
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %311

102:                                              ; preds = %82
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %142

106:                                              ; preds = %102
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %117, %106
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @LZ_MAX_CODE, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i32, i32* @NO_SUCH_CODE, align 4
  %113 = load i32*, i32** %18, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %107

120:                                              ; preds = %107
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 1, %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 11
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @NO_SUCH_CODE, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 8
  store i32 %139, i32* %14, align 4
  br label %310

142:                                              ; preds = %102
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load i32, i32* %10, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %147, i32* %152, align 4
  br label %264

153:                                              ; preds = %142
  %154 = load i32*, i32** %18, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @NO_SUCH_CODE, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %153
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %165, 2
  %167 = icmp eq i32 %162, %166
  br i1 %167, label %168, label %186

168:                                              ; preds = %161
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %13, align 4
  %170 = load i32*, i32** %18, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @DGifGetPrefixChar(i32* %170, i32 %171, i32 %172)
  %174 = load i32*, i32** %16, align 8
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load i32*, i32** %17, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %182, 2
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %179, i64 %184
  store i32 %173, i32* %185, align 4
  br label %189

186:                                              ; preds = %161
  %187 = load i64, i64* @GIF_ERROR, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %4, align 4
  br label %320

189:                                              ; preds = %168
  br label %192

190:                                              ; preds = %153
  %191 = load i32, i32* %10, align 4
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %190, %189
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %208, %192
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* @LZ_MAX_CODE, align 4
  %197 = icmp sle i32 %194, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %12, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* @LZ_MAX_CODE, align 4
  %205 = icmp sle i32 %203, %204
  br label %206

206:                                              ; preds = %202, %198, %193
  %207 = phi i1 [ false, %198 ], [ false, %193 ], [ %205, %202 ]
  br i1 %207, label %208, label %224

208:                                              ; preds = %206
  %209 = load i32*, i32** %17, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %16, align 8
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %15, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %213, i32* %218, align 4
  %219 = load i32*, i32** %18, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %13, align 4
  br label %193

224:                                              ; preds = %206
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* @LZ_MAX_CODE, align 4
  %227 = icmp sge i32 %225, %226
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* @LZ_MAX_CODE, align 4
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %228, %224
  %233 = load i64, i64* @GIF_ERROR, align 8
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %4, align 4
  br label %320

235:                                              ; preds = %228
  %236 = load i32, i32* %13, align 4
  %237 = load i32*, i32** %16, align 8
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %15, align 4
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  store i32 %236, i32* %241, align 4
  br label %242

242:                                              ; preds = %251, %235
  %243 = load i32, i32* %15, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* %7, align 4
  %248 = icmp slt i32 %246, %247
  br label %249

249:                                              ; preds = %245, %242
  %250 = phi i1 [ false, %242 ], [ %248, %245 ]
  br i1 %250, label %251, label %263

251:                                              ; preds = %249
  %252 = load i32*, i32** %16, align 8
  %253 = load i32, i32* %15, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %6, align 8
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %8, align 4
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 %257, i32* %262, align 4
  br label %242

263:                                              ; preds = %249
  br label %264

264:                                              ; preds = %263, %146
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* @NO_SUCH_CODE, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %308

268:                                              ; preds = %264
  %269 = load i32, i32* %14, align 4
  %270 = load i32*, i32** %18, align 8
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 8
  %273 = load i32, i32* %272, align 8
  %274 = sub nsw i32 %273, 2
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %270, i64 %275
  store i32 %269, i32* %276, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 8
  %281 = sub nsw i32 %280, 2
  %282 = icmp eq i32 %277, %281
  br i1 %282, label %283, label %295

283:                                              ; preds = %268
  %284 = load i32*, i32** %18, align 8
  %285 = load i32, i32* %14, align 4
  %286 = load i32, i32* %12, align 4
  %287 = call i32 @DGifGetPrefixChar(i32* %284, i32 %285, i32 %286)
  %288 = load i32*, i32** %17, align 8
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 8
  %291 = load i32, i32* %290, align 8
  %292 = sub nsw i32 %291, 2
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %288, i64 %293
  store i32 %287, i32* %294, align 4
  br label %307

295:                                              ; preds = %268
  %296 = load i32*, i32** %18, align 8
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %12, align 4
  %299 = call i32 @DGifGetPrefixChar(i32* %296, i32 %297, i32 %298)
  %300 = load i32*, i32** %17, align 8
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 8
  %304 = sub nsw i32 %303, 2
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %300, i64 %305
  store i32 %299, i32* %306, align 4
  br label %307

307:                                              ; preds = %295, %283
  br label %308

308:                                              ; preds = %307, %264
  %309 = load i32, i32* %10, align 4
  store i32 %309, i32* %14, align 4
  br label %310

310:                                              ; preds = %308, %120
  br label %311

311:                                              ; preds = %310, %99
  br label %70

312:                                              ; preds = %70
  %313 = load i32, i32* %14, align 4
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 6
  store i32 %313, i32* %315, align 8
  %316 = load i32, i32* %15, align 4
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  store i32 %316, i32* %318, align 8
  %319 = load i32, i32* @GIF_OK, align 4
  store i32 %319, i32* %4, align 4
  br label %320

320:                                              ; preds = %312, %232, %186, %96, %79
  %321 = load i32, i32* %4, align 4
  ret i32 %321
}

declare dso_local i64 @DGifDecompressInput(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @DGifGetPrefixChar(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
