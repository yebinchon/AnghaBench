; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_aes3.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_aes3.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64*, i64, i64 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@AES3_HEADER_LEN = common dso_local global i64 0, align 8
@reverse = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_17__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decode(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %6, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = call %struct.TYPE_17__* @Parse(%struct.TYPE_15__* %16, i32* %8, i32* %9, %struct.TYPE_17__* %17, i32 0)
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %5, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = icmp ne %struct.TYPE_17__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %22, i32* %3, align 4
  br label %334

23:                                               ; preds = %2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = call i64 @decoder_UpdateAudioFormat(%struct.TYPE_15__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  br label %323

28:                                               ; preds = %23
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.TYPE_17__* @decoder_NewAudioBuffer(%struct.TYPE_15__* %29, i32 %30)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %7, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %33 = icmp eq %struct.TYPE_17__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %323

35:                                               ; preds = %28
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = call i64 @date_Get(i32* %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @date_Increment(i32* %42, i32 %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* @AES3_HEADER_LEN, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 8
  %58 = load i64, i64* @AES3_HEADER_LEN, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 %58
  store i64* %62, i64** %60, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 24
  br i1 %64, label %65, label %159

65:                                               ; preds = %35
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = bitcast i64* %68 to i32*
  store i32* %69, i32** %10, align 8
  br label %70

70:                                               ; preds = %76, %65
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sdiv i32 %73, 7
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %158

76:                                               ; preds = %70
  %77 = load i32*, i32** @reverse, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = load i32*, i32** @reverse, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 16
  %95 = or i32 %85, %94
  %96 = load i32*, i32** @reverse, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %96, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 24
  %105 = or i32 %95, %104
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  %108 = load i32*, i32** @reverse, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 3
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 4
  %117 = load i32*, i32** @reverse, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 4
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %117, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 12
  %126 = or i32 %116, %125
  %127 = load i32*, i32** @reverse, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 5
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i32, i32* %127, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 20
  %136 = or i32 %126, %135
  %137 = load i32*, i32** @reverse, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 6
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 28
  %146 = or i32 %136, %145
  %147 = and i32 %146, -256
  %148 = load i32*, i32** %10, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 7
  store i32 %153, i32* %151, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 7
  store i64* %157, i64** %155, align 8
  br label %70

158:                                              ; preds = %70
  br label %322

159:                                              ; preds = %35
  %160 = load i32, i32* %9, align 4
  %161 = icmp eq i32 %160, 20
  br i1 %161, label %162, label %245

162:                                              ; preds = %159
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = bitcast i64* %165 to i32*
  store i32* %166, i32** %11, align 8
  br label %167

167:                                              ; preds = %173, %162
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sdiv i32 %170, 6
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %244

173:                                              ; preds = %167
  %174 = load i32*, i32** @reverse, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds i32, i32* %174, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 12
  %183 = load i32*, i32** @reverse, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 1
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32, i32* %183, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 %190, 20
  %192 = or i32 %182, %191
  %193 = load i32*, i32** @reverse, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 2
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i32, i32* %193, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 28
  %202 = or i32 %192, %201
  %203 = load i32*, i32** %11, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %11, align 8
  store i32 %202, i32* %203, align 4
  %205 = load i32*, i32** @reverse, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 3
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i32, i32* %205, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %212, 12
  %214 = load i32*, i32** @reverse, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 1
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 4
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i32, i32* %214, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 %221, 20
  %223 = or i32 %213, %222
  %224 = load i32*, i32** @reverse, align 8
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 5
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds i32, i32* %224, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = shl i32 %231, 28
  %233 = or i32 %223, %232
  %234 = load i32*, i32** %11, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %11, align 8
  store i32 %233, i32* %234, align 4
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = sub nsw i32 %238, 6
  store i32 %239, i32* %237, align 8
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 1
  %242 = load i64*, i64** %241, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 6
  store i64* %243, i64** %241, align 8
  br label %167

244:                                              ; preds = %167
  br label %321

245:                                              ; preds = %159
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 1
  %248 = load i64*, i64** %247, align 8
  %249 = bitcast i64* %248 to i32*
  store i32* %249, i32** %12, align 8
  %250 = load i32, i32* %9, align 4
  %251 = icmp eq i32 %250, 16
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  br label %254

254:                                              ; preds = %260, %245
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sdiv i32 %257, 5
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %320

260:                                              ; preds = %254
  %261 = load i32*, i32** @reverse, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  %264 = load i64*, i64** %263, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds i32, i32* %261, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32*, i32** @reverse, align 8
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 1
  %272 = load i64*, i64** %271, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 1
  %274 = load i64, i64* %273, align 8
  %275 = getelementptr inbounds i32, i32* %269, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = shl i32 %276, 8
  %278 = or i32 %268, %277
  %279 = load i32*, i32** %12, align 8
  %280 = getelementptr inbounds i32, i32* %279, i32 1
  store i32* %280, i32** %12, align 8
  store i32 %278, i32* %279, align 4
  %281 = load i32*, i32** @reverse, align 8
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 1
  %284 = load i64*, i64** %283, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 2
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds i32, i32* %281, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = ashr i32 %288, 4
  %290 = load i32*, i32** @reverse, align 8
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 1
  %293 = load i64*, i64** %292, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 3
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds i32, i32* %290, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = shl i32 %297, 4
  %299 = or i32 %289, %298
  %300 = load i32*, i32** @reverse, align 8
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 1
  %303 = load i64*, i64** %302, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 4
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds i32, i32* %300, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %307, 12
  %309 = or i32 %299, %308
  %310 = load i32*, i32** %12, align 8
  %311 = getelementptr inbounds i32, i32* %310, i32 1
  store i32* %311, i32** %12, align 8
  store i32 %309, i32* %310, align 4
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = sub nsw i32 %314, 5
  store i32 %315, i32* %313, align 8
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 1
  %318 = load i64*, i64** %317, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 5
  store i64* %319, i64** %317, align 8
  br label %254

320:                                              ; preds = %254
  br label %321

321:                                              ; preds = %320, %244
  br label %322

322:                                              ; preds = %321, %158
  br label %323

323:                                              ; preds = %322, %34, %27
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %325 = call i32 @block_Release(%struct.TYPE_17__* %324)
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %327 = icmp ne %struct.TYPE_17__* %326, null
  br i1 %327, label %328, label %332

328:                                              ; preds = %323
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %331 = call i32 @decoder_QueueAudio(%struct.TYPE_15__* %329, %struct.TYPE_17__* %330)
  br label %332

332:                                              ; preds = %328, %323
  %333 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %333, i32* %3, align 4
  br label %334

334:                                              ; preds = %332, %21
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local %struct.TYPE_17__* @Parse(%struct.TYPE_15__*, i32*, i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @decoder_UpdateAudioFormat(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @decoder_NewAudioBuffer(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i64 @date_Increment(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_17__*) #1

declare dso_local i32 @decoder_QueueAudio(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
