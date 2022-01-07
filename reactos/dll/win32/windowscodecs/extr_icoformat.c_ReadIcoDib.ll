; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_icoformat.c_ReadIcoDib.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_icoformat.c_ReadIcoDib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@WICDecodeMetadataCacheOnLoad = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@GUID_WICPixelFormat32bppBGR = common dso_local global i32 0, align 4
@GUID_WICPixelFormat32bppBGRA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @ReadIcoDib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadIcoDib(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_8__, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %11, align 8
  %32 = call i32 @IcoDibDecoder_CreateInstance(i32** %6)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @SUCCEEDED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %458

36:                                               ; preds = %2
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @BmpDecoder_GetWICDecoder(i32* %37, i32** %7)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @WICDecodeMetadataCacheOnLoad, align 4
  %42 = call i32 @IWICBitmapDecoder_Initialize(i32* %39, i32* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @SUCCEEDED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @IWICBitmapDecoder_GetFrame(i32* %47, i32 0, i32** %8)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %36
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @SUCCEEDED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %154

53:                                               ; preds = %49
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = call i32 @IWICBitmapFrameDecode_GetSize(i32* %54, i32* %56, i32* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @SUCCEEDED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %53
  %64 = call i32 (...) @GetProcessHeap()
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = mul nsw i32 %71, 4
  %73 = call i8* @HeapAlloc(i32 %64, i32 0, i32 %72)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %63
  %82 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %63
  br label %84

84:                                               ; preds = %83, %53
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @SUCCEEDED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @IWICBitmapFrameDecode_GetPixelFormat(i32* %89, i32* %9)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %88, %84
  %92 = call i64 @IsEqualGUID(i32* %9, i32* @GUID_WICPixelFormat32bppBGR)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = call i64 @IsEqualGUID(i32* %9, i32* @GUID_WICPixelFormat32bppBGRA)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94, %91
  %98 = load i32*, i32** %8, align 8
  store i32* %98, i32** %10, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @IWICBitmapSource_AddRef(i32* %99)
  %101 = load i64, i64* @TRUE, align 8
  store i64 %101, i64* %11, align 8
  br label %106

102:                                              ; preds = %94
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @WICConvertBitmapSource(i32* @GUID_WICPixelFormat32bppBGRA, i32* %103, i32** %10)
  store i32 %104, i32* %5, align 4
  %105 = load i64, i64* @FALSE, align 8
  store i64 %105, i64* %11, align 8
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i32, i32* %5, align 4
  %108 = call i64 @SUCCEEDED(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 3
  store i64 0, i64* %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %115, i32* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %119, i32* %120, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %124, 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  %133 = mul nsw i32 %132, 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @IWICBitmapSource_CopyPixels(i32* %121, %struct.TYPE_7__* %12, i32 %125, i32 %133, i32* %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @IWICBitmapSource_Release(i32* %138)
  br label %140

140:                                              ; preds = %110, %106
  %141 = load i32, i32* %5, align 4
  %142 = call i64 @SUCCEEDED(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load i32*, i32** %8, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 3
  %150 = call i32 @IWICBitmapFrameDecode_GetResolution(i32* %145, i32* %147, i32* %149)
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %144, %140
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 @IWICBitmapFrameDecode_Release(i32* %152)
  br label %154

154:                                              ; preds = %151, %49
  %155 = load i32, i32* %5, align 4
  %156 = call i64 @SUCCEEDED(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %217

158:                                              ; preds = %154
  %159 = load i64, i64* %11, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %217

161:                                              ; preds = %158
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %162

162:                                              ; preds = %185, %161
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %166, %169
  %171 = icmp slt i32 %163, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %162
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %14, align 4
  %177 = mul nsw i32 %176, 4
  %178 = add nsw i32 %177, 3
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  store i32 1, i32* %13, align 4
  br label %188

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %162

188:                                              ; preds = %183, %162
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %216, label %191

191:                                              ; preds = %188
  store i32 0, i32* %14, align 4
  br label %192

192:                                              ; preds = %211, %191
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = mul nsw i32 %196, %199
  %201 = icmp slt i32 %193, %200
  br i1 %201, label %202, label %214

202:                                              ; preds = %192
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = mul nsw i32 %206, 4
  %208 = add nsw i32 %207, 3
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  store i32 255, i32* %210, align 4
  br label %211

211:                                              ; preds = %202
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %14, align 4
  br label %192

214:                                              ; preds = %192
  %215 = load i64, i64* @FALSE, align 8
  store i64 %215, i64* %11, align 8
  br label %216

216:                                              ; preds = %214, %188
  br label %217

217:                                              ; preds = %216, %158, %154
  %218 = load i32, i32* %5, align 4
  %219 = call i64 @SUCCEEDED(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %455

221:                                              ; preds = %217
  %222 = load i64, i64* %11, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %455, label %224

224:                                              ; preds = %221
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 31
  %229 = sdiv i32 %228, 32
  %230 = mul nsw i32 %229, 4
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* %15, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = mul nsw i32 %231, %234
  store i32 %235, i32* %16, align 4
  store i32* null, i32** %18, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = mul nsw i32 %238, 4
  store i32 %239, i32* %21, align 4
  %240 = load i32*, i32** %6, align 8
  %241 = call i32 @BmpDecoder_FindIconMask(i32* %240, i32* %24, i32* %27)
  %242 = load i32, i32* %24, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %454

244:                                              ; preds = %224
  %245 = load i32, i32* %24, align 4
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %245, i32* %246, align 4
  %247 = load i32*, i32** %3, align 8
  %248 = load i32, i32* @STREAM_SEEK_SET, align 4
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @IStream_Seek(i32* %247, i32 %250, i32 %248, i32 0)
  store i32 %251, i32* %5, align 4
  %252 = load i32, i32* %5, align 4
  %253 = call i64 @SUCCEEDED(i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %244
  %256 = call i32 (...) @GetProcessHeap()
  %257 = load i32, i32* %16, align 4
  %258 = call i8* @HeapAlloc(i32 %256, i32 0, i32 %257)
  %259 = bitcast i8* %258 to i32*
  store i32* %259, i32** %18, align 8
  %260 = load i32*, i32** %18, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %264, label %262

262:                                              ; preds = %255
  %263 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %262, %255
  br label %265

265:                                              ; preds = %264, %244
  %266 = load i32, i32* %5, align 4
  %267 = call i64 @SUCCEEDED(i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %265
  %270 = load i32*, i32** %3, align 8
  %271 = load i32*, i32** %18, align 8
  %272 = load i32, i32* %16, align 4
  %273 = call i32 @IStream_Read(i32* %270, i32* %271, i32 %272, i32* %25)
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %269, %265
  %275 = load i32, i32* %5, align 4
  %276 = call i64 @SUCCEEDED(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %450

278:                                              ; preds = %274
  %279 = load i32, i32* %25, align 4
  %280 = load i32, i32* %16, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %450

282:                                              ; preds = %278
  %283 = load i32, i32* %27, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load i32, i32* %15, align 4
  store i32 %286, i32* %17, align 4
  %287 = load i32*, i32** %18, align 8
  store i32* %287, i32** %19, align 8
  br label %300

288:                                              ; preds = %282
  %289 = load i32, i32* %15, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %17, align 4
  %291 = load i32*, i32** %18, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = sub nsw i32 %294, 1
  %296 = load i32, i32* %15, align 4
  %297 = mul nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %291, i64 %298
  store i32* %299, i32** %19, align 8
  br label %300

300:                                              ; preds = %288, %285
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  store i32* %303, i32** %20, align 8
  store i32 0, i32* %23, align 4
  br label %304

304:                                              ; preds = %446, %300
  %305 = load i32, i32* %23, align 4
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = icmp slt i32 %305, %308
  br i1 %309, label %310, label %449

310:                                              ; preds = %304
  %311 = load i32*, i32** %19, align 8
  store i32* %311, i32** %28, align 8
  %312 = load i32*, i32** %20, align 8
  store i32* %312, i32** %29, align 8
  store i32 0, i32* %22, align 4
  br label %313

313:                                              ; preds = %434, %310
  %314 = load i32, i32* %22, align 4
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp slt i32 %314, %317
  br i1 %318, label %319, label %437

319:                                              ; preds = %313
  %320 = load i32*, i32** %28, align 8
  %321 = getelementptr inbounds i32, i32* %320, i32 1
  store i32* %321, i32** %28, align 8
  %322 = load i32, i32* %320, align 4
  store i32 %322, i32* %30, align 4
  %323 = load i32*, i32** %29, align 8
  %324 = getelementptr inbounds i32, i32* %323, i32 1
  store i32* %324, i32** %29, align 8
  %325 = ptrtoint i32* %323 to i32
  %326 = load i32, i32* %30, align 4
  %327 = ashr i32 %326, 7
  %328 = and i32 %327, 1
  %329 = call i32 @pixel_set_trans(i32 %325, i32 %328)
  %330 = load i32, i32* %22, align 4
  %331 = add nsw i32 %330, 1
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %344

336:                                              ; preds = %319
  %337 = load i32*, i32** %29, align 8
  %338 = getelementptr inbounds i32, i32* %337, i32 1
  store i32* %338, i32** %29, align 8
  %339 = ptrtoint i32* %337 to i32
  %340 = load i32, i32* %30, align 4
  %341 = ashr i32 %340, 6
  %342 = and i32 %341, 1
  %343 = call i32 @pixel_set_trans(i32 %339, i32 %342)
  br label %344

344:                                              ; preds = %336, %319
  %345 = load i32, i32* %22, align 4
  %346 = add nsw i32 %345, 2
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp slt i32 %346, %349
  br i1 %350, label %351, label %359

351:                                              ; preds = %344
  %352 = load i32*, i32** %29, align 8
  %353 = getelementptr inbounds i32, i32* %352, i32 1
  store i32* %353, i32** %29, align 8
  %354 = ptrtoint i32* %352 to i32
  %355 = load i32, i32* %30, align 4
  %356 = ashr i32 %355, 5
  %357 = and i32 %356, 1
  %358 = call i32 @pixel_set_trans(i32 %354, i32 %357)
  br label %359

359:                                              ; preds = %351, %344
  %360 = load i32, i32* %22, align 4
  %361 = add nsw i32 %360, 3
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = icmp slt i32 %361, %364
  br i1 %365, label %366, label %374

366:                                              ; preds = %359
  %367 = load i32*, i32** %29, align 8
  %368 = getelementptr inbounds i32, i32* %367, i32 1
  store i32* %368, i32** %29, align 8
  %369 = ptrtoint i32* %367 to i32
  %370 = load i32, i32* %30, align 4
  %371 = ashr i32 %370, 4
  %372 = and i32 %371, 1
  %373 = call i32 @pixel_set_trans(i32 %369, i32 %372)
  br label %374

374:                                              ; preds = %366, %359
  %375 = load i32, i32* %22, align 4
  %376 = add nsw i32 %375, 4
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp slt i32 %376, %379
  br i1 %380, label %381, label %389

381:                                              ; preds = %374
  %382 = load i32*, i32** %29, align 8
  %383 = getelementptr inbounds i32, i32* %382, i32 1
  store i32* %383, i32** %29, align 8
  %384 = ptrtoint i32* %382 to i32
  %385 = load i32, i32* %30, align 4
  %386 = ashr i32 %385, 3
  %387 = and i32 %386, 1
  %388 = call i32 @pixel_set_trans(i32 %384, i32 %387)
  br label %389

389:                                              ; preds = %381, %374
  %390 = load i32, i32* %22, align 4
  %391 = add nsw i32 %390, 5
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = icmp slt i32 %391, %394
  br i1 %395, label %396, label %404

396:                                              ; preds = %389
  %397 = load i32*, i32** %29, align 8
  %398 = getelementptr inbounds i32, i32* %397, i32 1
  store i32* %398, i32** %29, align 8
  %399 = ptrtoint i32* %397 to i32
  %400 = load i32, i32* %30, align 4
  %401 = ashr i32 %400, 2
  %402 = and i32 %401, 1
  %403 = call i32 @pixel_set_trans(i32 %399, i32 %402)
  br label %404

404:                                              ; preds = %396, %389
  %405 = load i32, i32* %22, align 4
  %406 = add nsw i32 %405, 6
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = icmp slt i32 %406, %409
  br i1 %410, label %411, label %419

411:                                              ; preds = %404
  %412 = load i32*, i32** %29, align 8
  %413 = getelementptr inbounds i32, i32* %412, i32 1
  store i32* %413, i32** %29, align 8
  %414 = ptrtoint i32* %412 to i32
  %415 = load i32, i32* %30, align 4
  %416 = ashr i32 %415, 1
  %417 = and i32 %416, 1
  %418 = call i32 @pixel_set_trans(i32 %414, i32 %417)
  br label %419

419:                                              ; preds = %411, %404
  %420 = load i32, i32* %22, align 4
  %421 = add nsw i32 %420, 7
  %422 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = icmp slt i32 %421, %424
  br i1 %425, label %426, label %433

426:                                              ; preds = %419
  %427 = load i32*, i32** %29, align 8
  %428 = getelementptr inbounds i32, i32* %427, i32 1
  store i32* %428, i32** %29, align 8
  %429 = ptrtoint i32* %427 to i32
  %430 = load i32, i32* %30, align 4
  %431 = and i32 %430, 1
  %432 = call i32 @pixel_set_trans(i32 %429, i32 %431)
  br label %433

433:                                              ; preds = %426, %419
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %22, align 4
  %436 = add nsw i32 %435, 8
  store i32 %436, i32* %22, align 4
  br label %313

437:                                              ; preds = %313
  %438 = load i32, i32* %17, align 4
  %439 = load i32*, i32** %19, align 8
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds i32, i32* %439, i64 %440
  store i32* %441, i32** %19, align 8
  %442 = load i32, i32* %21, align 4
  %443 = load i32*, i32** %20, align 8
  %444 = sext i32 %442 to i64
  %445 = getelementptr inbounds i32, i32* %443, i64 %444
  store i32* %445, i32** %20, align 8
  br label %446

446:                                              ; preds = %437
  %447 = load i32, i32* %23, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %23, align 4
  br label %304

449:                                              ; preds = %304
  br label %450

450:                                              ; preds = %449, %278, %274
  %451 = call i32 (...) @GetProcessHeap()
  %452 = load i32*, i32** %18, align 8
  %453 = call i32 @HeapFree(i32 %451, i32 0, i32* %452)
  br label %454

454:                                              ; preds = %450, %224
  br label %455

455:                                              ; preds = %454, %221, %217
  %456 = load i32*, i32** %7, align 8
  %457 = call i32 @IWICBitmapDecoder_Release(i32* %456)
  br label %458

458:                                              ; preds = %455, %2
  %459 = load i32, i32* %5, align 4
  ret i32 %459
}

declare dso_local i32 @IcoDibDecoder_CreateInstance(i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @BmpDecoder_GetWICDecoder(i32*, i32**) #1

declare dso_local i32 @IWICBitmapDecoder_Initialize(i32*, i32*, i32) #1

declare dso_local i32 @IWICBitmapDecoder_GetFrame(i32*, i32, i32**) #1

declare dso_local i32 @IWICBitmapFrameDecode_GetSize(i32*, i32*, i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IWICBitmapFrameDecode_GetPixelFormat(i32*, i32*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @IWICBitmapSource_AddRef(i32*) #1

declare dso_local i32 @WICConvertBitmapSource(i32*, i32*, i32**) #1

declare dso_local i32 @IWICBitmapSource_CopyPixels(i32*, %struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @IWICBitmapSource_Release(i32*) #1

declare dso_local i32 @IWICBitmapFrameDecode_GetResolution(i32*, i32*, i32*) #1

declare dso_local i32 @IWICBitmapFrameDecode_Release(i32*) #1

declare dso_local i32 @BmpDecoder_FindIconMask(i32*, i32*, i32*) #1

declare dso_local i32 @IStream_Seek(i32*, i32, i32, i32) #1

declare dso_local i32 @IStream_Read(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pixel_set_trans(i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @IWICBitmapDecoder_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
