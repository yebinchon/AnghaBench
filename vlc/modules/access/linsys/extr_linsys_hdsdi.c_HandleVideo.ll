; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_hdsdi.c_HandleVideo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_hdsdi.c_HandleVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.block_extension_t = type { i32, i32, i32, i64 }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @HandleVideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HandleVideo(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.block_extension_t, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_9__* @block_Alloc(i32 %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %7, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %32, i32* %3, align 4
  br label %315

33:                                               ; preds = %2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %37, i64 %45
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = sdiv i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %47, i64 %56
  store i32* %57, i32** %10, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %251, %33
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %254

68:                                               ; preds = %62
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %72, 2
  %74 = icmp uge i32 %69, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %68
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  %84 = sdiv i32 %83, 2
  %85 = sub i32 %79, %84
  br label %88

86:                                               ; preds = %68
  %87 = load i32, i32* %12, align 4
  br label %88

88:                                               ; preds = %86, %78
  %89 = phi i32 [ %85, %78 ], [ %87, %86 ]
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = mul i32 %91, 2
  %93 = add i32 %90, %92
  store i32 %93, i32* %16, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul i32 %95, %98
  %100 = mul i32 %99, 2
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %94, i64 %101
  store i32* %102, i32** %17, align 8
  %103 = load i32, i32* %15, align 4
  %104 = urem i32 %103, 2
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %141, label %106

106:                                              ; preds = %88
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %141, label %109

109:                                              ; preds = %106
  %110 = load i32*, i32** %17, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %16, align 4
  %117 = mul i32 %115, %116
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %112, i64 %118
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 2
  %125 = load i32, i32* %16, align 4
  %126 = udiv i32 %125, 2
  %127 = mul i32 %124, %126
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %120, i64 %128
  %130 = load i32*, i32** %10, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %133, 2
  %135 = load i32, i32* %16, align 4
  %136 = udiv i32 %135, 2
  %137 = mul i32 %134, %136
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %130, i64 %138
  %140 = call i32 @Unpack01(i32* %110, i32 %111, i32* %119, i32* %129, i32* %139)
  br label %250

141:                                              ; preds = %106, %88
  %142 = load i32, i32* %15, align 4
  %143 = urem i32 %142, 2
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %179, label %145

145:                                              ; preds = %141
  %146 = load i32*, i32** %17, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %16, align 4
  %153 = mul i32 %151, %152
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %148, i64 %154
  %156 = load i32*, i32** %9, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %159, 2
  %161 = load i32, i32* %16, align 4
  %162 = udiv i32 %161, 2
  %163 = add i32 %162, 1
  %164 = mul i32 %160, %163
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %156, i64 %165
  %167 = load i32*, i32** %10, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sdiv i32 %170, 2
  %172 = load i32, i32* %16, align 4
  %173 = udiv i32 %172, 2
  %174 = add i32 %173, 1
  %175 = mul i32 %171, %174
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %167, i64 %176
  %178 = call i32 @Unpack01(i32* %146, i32 %147, i32* %155, i32* %166, i32* %177)
  br label %249

179:                                              ; preds = %141
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %216, label %182

182:                                              ; preds = %179
  %183 = load i32*, i32** %17, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %16, align 4
  %190 = mul i32 %188, %189
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %185, i64 %191
  %193 = load i32*, i32** %9, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sdiv i32 %196, 2
  %198 = load i32, i32* %16, align 4
  %199 = udiv i32 %198, 2
  %200 = sub i32 %199, 1
  %201 = mul i32 %197, %200
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %193, i64 %202
  %204 = load i32*, i32** %10, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = sdiv i32 %207, 2
  %209 = load i32, i32* %16, align 4
  %210 = udiv i32 %209, 2
  %211 = sub i32 %210, 1
  %212 = mul i32 %208, %211
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %204, i64 %213
  %215 = call i32 @Unpack2(i32* %183, i32 %184, i32* %192, i32* %203, i32* %214)
  br label %248

216:                                              ; preds = %179
  %217 = load i32*, i32** %17, align 8
  %218 = load i32, i32* %11, align 4
  %219 = load i32*, i32** %8, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %16, align 4
  %224 = mul i32 %222, %223
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %219, i64 %225
  %227 = load i32*, i32** %9, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = sdiv i32 %230, 2
  %232 = load i32, i32* %16, align 4
  %233 = udiv i32 %232, 2
  %234 = mul i32 %231, %233
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %227, i64 %235
  %237 = load i32*, i32** %10, align 8
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = sdiv i32 %240, 2
  %242 = load i32, i32* %16, align 4
  %243 = udiv i32 %242, 2
  %244 = mul i32 %241, %243
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %237, i64 %245
  %247 = call i32 @Unpack3(i32* %217, i32 %218, i32* %226, i32* %236, i32* %246)
  br label %248

248:                                              ; preds = %216, %182
  br label %249

249:                                              ; preds = %248, %145
  br label %250

250:                                              ; preds = %249, %109
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %12, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %12, align 4
  br label %62

254:                                              ; preds = %62
  %255 = getelementptr inbounds %struct.block_extension_t, %struct.block_extension_t* %13, i32 0, i32 0
  store i32 0, i32* %255, align 8
  %256 = getelementptr inbounds %struct.block_extension_t, %struct.block_extension_t* %13, i32 0, i32 1
  store i32 2, i32* %256, align 4
  %257 = getelementptr inbounds %struct.block_extension_t, %struct.block_extension_t* %13, i32 0, i32 2
  store i32 1, i32* %257, align 8
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 7
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %254
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 7
  %265 = load i64, i64* %264, align 8
  br label %270

266:                                              ; preds = %254
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 6
  %269 = load i64, i64* %268, align 8
  br label %270

270:                                              ; preds = %266, %262
  %271 = phi i64 [ %265, %262 ], [ %269, %266 ]
  %272 = getelementptr inbounds %struct.block_extension_t, %struct.block_extension_t* %13, i32 0, i32 3
  store i64 %271, i64* %272, align 8
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = sub i64 %279, 24
  %281 = getelementptr inbounds i32, i32* %275, i64 %280
  %282 = call i32 @memcpy(i32* %281, %struct.block_extension_t* %13, i32 24)
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 1
  store i32 %285, i32* %289, align 4
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %297 = call i32 @es_out_Send(i32 %292, i32 %295, %struct.TYPE_9__* %296)
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @es_out_SetPCR(i32 %300, i32 %303)
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, %307
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %309, align 8
  %314 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %270, %31
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local %struct.TYPE_9__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @Unpack01(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @Unpack2(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @Unpack3(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.block_extension_t*, i32) #1

declare dso_local i32 @es_out_Send(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @es_out_SetPCR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
