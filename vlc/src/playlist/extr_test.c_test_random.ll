; ModuleID = '/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_random.c'
source_filename = "/home/carl/AnghaBench/vlc/src/playlist/extr_test.c_test_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_ctx = type { i32 }
%struct.vlc_playlist_callbacks = type { i32, i32, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@callback_on_has_next_changed = common dso_local global i32 0, align 4
@callback_on_has_prev_changed = common dso_local global i32 0, align 4
@callback_on_current_index_changed = common dso_local global i32 0, align 4
@CALLBACK_CTX_INITIALIZER = common dso_local global %struct.callback_ctx zeroinitializer, align 4
@VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM = common dso_local global i32 0, align 4
@VLC_PLAYLIST_PLAYBACK_REPEAT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_random() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [6 x i32*], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlc_playlist_callbacks, align 4
  %5 = alloca %struct.callback_ctx, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [5 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = call i32* @vlc_playlist_New(i32* null)
  store i32* %20, i32** %1, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = getelementptr inbounds [6 x i32*], [6 x i32*]* %2, i64 0, i64 0
  %25 = call i32 @CreateDummyMediaArray(i32** %24, i32 6)
  %26 = load i32*, i32** %1, align 8
  %27 = getelementptr inbounds [6 x i32*], [6 x i32*]* %2, i64 0, i64 0
  %28 = call i32 @vlc_playlist_Append(i32* %26, i32** %27, i32 5)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @VLC_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 0
  %35 = load i32, i32* @callback_on_has_next_changed, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 1
  %37 = load i32, i32* @callback_on_has_prev_changed, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.vlc_playlist_callbacks, %struct.vlc_playlist_callbacks* %4, i32 0, i32 2
  %39 = load i32, i32* @callback_on_current_index_changed, align 4
  store i32 %39, i32* %38, align 4
  %40 = bitcast %struct.callback_ctx* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 bitcast (%struct.callback_ctx* @CALLBACK_CTX_INITIALIZER to i8*), i64 4, i1 false)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32* @vlc_playlist_AddListener(i32* %41, %struct.vlc_playlist_callbacks* %4, %struct.callback_ctx* %5, i32 0)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = ptrtoint i32* %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @vlc_playlist_HasPrev(i32* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @vlc_playlist_HasNext(i32* %52)
  %54 = call i32 @assert(i32 %53)
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %69, %0
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @vlc_playlist_HasNext(i32* %59)
  %61 = call i32 @assert(i32 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @vlc_playlist_Next(i32* %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @VLC_SUCCESS, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %55

72:                                               ; preds = %55
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @vlc_playlist_HasPrev(i32* %73)
  %75 = call i32 @assert(i32 %74)
  %76 = load i32*, i32** %1, align 8
  %77 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM, align 4
  %78 = call i32 @vlc_playlist_SetPlaybackOrder(i32* %76, i32 %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @vlc_playlist_HasPrev(i32* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %85, i8 0, i64 20, i1 false)
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %117, %72
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 5
  br i1 %88, label %89, label %120

89:                                               ; preds = %86
  %90 = load i32*, i32** %1, align 8
  %91 = call i32 @vlc_playlist_HasNext(i32* %90)
  %92 = call i32 @assert(i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @vlc_playlist_Next(i32* %93)
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @VLC_SUCCESS, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @vlc_playlist_GetCurrentIndex(i32* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, -1
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %115
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %89
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %86

120:                                              ; preds = %86
  %121 = load i32*, i32** %1, align 8
  %122 = call i32 @vlc_playlist_HasNext(i32* %121)
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = getelementptr inbounds [6 x i32*], [6 x i32*]* %2, i64 0, i64 5
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @vlc_playlist_AppendOne(i32* %127, i32* %129)
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @VLC_SUCCESS, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32*, i32** %1, align 8
  %137 = call i32 @vlc_playlist_HasNext(i32* %136)
  %138 = call i32 @assert(i32 %137)
  %139 = load i32*, i32** %1, align 8
  %140 = call i32 @vlc_playlist_Next(i32* %139)
  store i32 %140, i32* %3, align 4
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @VLC_SUCCESS, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i32*, i32** %1, align 8
  %147 = call i32 @vlc_playlist_GetCurrentIndex(i32* %146)
  %148 = icmp eq i32 %147, 5
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i32*, i32** %1, align 8
  %152 = call i32 @vlc_playlist_HasNext(i32* %151)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load i32*, i32** %1, align 8
  %158 = call i32 @vlc_playlist_RemoveOne(i32* %157, i32 5)
  %159 = load i32*, i32** %1, align 8
  %160 = load i32, i32* @VLC_PLAYLIST_PLAYBACK_REPEAT_ALL, align 4
  %161 = call i32 @vlc_playlist_SetPlaybackRepeat(i32* %159, i32 %160)
  %162 = load i32*, i32** %1, align 8
  %163 = call i32 @vlc_playlist_HasNext(i32* %162)
  %164 = call i32 @assert(i32 %163)
  %165 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %166 = call i32 @memset(i32* %165, i32 0, i32 20)
  store i32 0, i32* %11, align 4
  br label %167

167:                                              ; preds = %198, %120
  %168 = load i32, i32* %11, align 4
  %169 = icmp slt i32 %168, 5
  br i1 %169, label %170, label %201

170:                                              ; preds = %167
  %171 = load i32*, i32** %1, align 8
  %172 = call i32 @vlc_playlist_HasNext(i32* %171)
  %173 = call i32 @assert(i32 %172)
  %174 = load i32*, i32** %1, align 8
  %175 = call i32 @vlc_playlist_Next(i32* %174)
  store i32 %175, i32* %3, align 4
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @VLC_SUCCESS, align 4
  %178 = icmp eq i32 %176, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load i32*, i32** %1, align 8
  %182 = call i32 @vlc_playlist_GetCurrentIndex(i32* %181)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, -1
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %196
  store i32 1, i32* %197, align 4
  br label %198

198:                                              ; preds = %170
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %167

201:                                              ; preds = %167
  %202 = load i32*, i32** %1, align 8
  %203 = call i32 @vlc_playlist_HasNext(i32* %202)
  %204 = call i32 @assert(i32 %203)
  store i32 0, i32* %13, align 4
  br label %205

205:                                              ; preds = %219, %201
  %206 = load i32, i32* %13, align 4
  %207 = icmp slt i32 %206, 3
  br i1 %207, label %208, label %222

208:                                              ; preds = %205
  %209 = load i32*, i32** %1, align 8
  %210 = call i32 @vlc_playlist_HasNext(i32* %209)
  %211 = call i32 @assert(i32 %210)
  %212 = load i32*, i32** %1, align 8
  %213 = call i32 @vlc_playlist_Next(i32* %212)
  store i32 %213, i32* %3, align 4
  %214 = load i32, i32* %3, align 4
  %215 = load i32, i32* @VLC_SUCCESS, align 4
  %216 = icmp eq i32 %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  br label %219

219:                                              ; preds = %208
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %13, align 4
  br label %205

222:                                              ; preds = %205
  %223 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %224 = call i32 @memset(i32* %223, i32 0, i32 20)
  %225 = load i32*, i32** %1, align 8
  %226 = call i32 @vlc_playlist_GetCurrentIndex(i32* %225)
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* %15, align 4
  %228 = icmp ne i32 %227, -1
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load i32, i32* %15, align 4
  %232 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 4
  store i32 %231, i32* %232, align 16
  store i32 3, i32* %16, align 4
  br label %233

233:                                              ; preds = %268, %222
  %234 = load i32, i32* %16, align 4
  %235 = icmp sge i32 %234, 0
  br i1 %235, label %236, label %271

236:                                              ; preds = %233
  %237 = load i32*, i32** %1, align 8
  %238 = call i32 @vlc_playlist_HasPrev(i32* %237)
  %239 = call i32 @assert(i32 %238)
  %240 = load i32*, i32** %1, align 8
  %241 = call i32 @vlc_playlist_Prev(i32* %240)
  store i32 %241, i32* %3, align 4
  %242 = load i32, i32* %3, align 4
  %243 = load i32, i32* @VLC_SUCCESS, align 4
  %244 = icmp eq i32 %242, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 @assert(i32 %245)
  %247 = load i32*, i32** %1, align 8
  %248 = call i32 @vlc_playlist_GetCurrentIndex(i32* %247)
  store i32 %248, i32* %17, align 4
  %249 = load i32, i32* %17, align 4
  %250 = icmp ne i32 %249, -1
  %251 = zext i1 %250 to i32
  %252 = call i32 @assert(i32 %251)
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %16, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 %255
  store i32 %253, i32* %256, align 4
  %257 = load i32, i32* %17, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  %264 = call i32 @assert(i32 %263)
  %265 = load i32, i32* %17, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %266
  store i32 1, i32* %267, align 4
  br label %268

268:                                              ; preds = %236
  %269 = load i32, i32* %16, align 4
  %270 = add nsw i32 %269, -1
  store i32 %270, i32* %16, align 4
  br label %233

271:                                              ; preds = %233
  %272 = load i32*, i32** %1, align 8
  %273 = call i32 @vlc_playlist_HasPrev(i32* %272)
  %274 = icmp ne i32 %273, 0
  %275 = xor i1 %274, true
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  store i32 1, i32* %18, align 4
  br label %278

278:                                              ; preds = %306, %271
  %279 = load i32, i32* %18, align 4
  %280 = icmp slt i32 %279, 5
  br i1 %280, label %281, label %309

281:                                              ; preds = %278
  %282 = load i32*, i32** %1, align 8
  %283 = call i32 @vlc_playlist_HasNext(i32* %282)
  %284 = call i32 @assert(i32 %283)
  %285 = load i32*, i32** %1, align 8
  %286 = call i32 @vlc_playlist_Next(i32* %285)
  store i32 %286, i32* %3, align 4
  %287 = load i32, i32* %3, align 4
  %288 = load i32, i32* @VLC_SUCCESS, align 4
  %289 = icmp eq i32 %287, %288
  %290 = zext i1 %289 to i32
  %291 = call i32 @assert(i32 %290)
  %292 = load i32*, i32** %1, align 8
  %293 = call i32 @vlc_playlist_GetCurrentIndex(i32* %292)
  store i32 %293, i32* %19, align 4
  %294 = load i32, i32* %19, align 4
  %295 = icmp ne i32 %294, -1
  %296 = zext i1 %295 to i32
  %297 = call i32 @assert(i32 %296)
  %298 = load i32, i32* %19, align 4
  %299 = load i32, i32* %18, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [5 x i32], [5 x i32]* %14, i64 0, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %298, %302
  %304 = zext i1 %303 to i32
  %305 = call i32 @assert(i32 %304)
  br label %306

306:                                              ; preds = %281
  %307 = load i32, i32* %18, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %18, align 4
  br label %278

309:                                              ; preds = %278
  %310 = load i32*, i32** %1, align 8
  %311 = call i32 @vlc_playlist_HasNext(i32* %310)
  %312 = call i32 @assert(i32 %311)
  %313 = call i32 @callback_ctx_destroy(%struct.callback_ctx* %5)
  %314 = load i32*, i32** %1, align 8
  %315 = load i32*, i32** %6, align 8
  %316 = call i32 @vlc_playlist_RemoveListener(i32* %314, i32* %315)
  %317 = getelementptr inbounds [6 x i32*], [6 x i32*]* %2, i64 0, i64 0
  %318 = call i32 @DestroyMediaArray(i32** %317, i32 6)
  %319 = load i32*, i32** %1, align 8
  %320 = call i32 @vlc_playlist_Delete(i32* %319)
  ret void
}

declare dso_local i32* @vlc_playlist_New(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CreateDummyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Append(i32*, i32**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @vlc_playlist_AddListener(i32*, %struct.vlc_playlist_callbacks*, %struct.callback_ctx*, i32) #1

declare dso_local i32 @vlc_playlist_HasPrev(i32*) #1

declare dso_local i32 @vlc_playlist_HasNext(i32*) #1

declare dso_local i32 @vlc_playlist_Next(i32*) #1

declare dso_local i32 @vlc_playlist_SetPlaybackOrder(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @vlc_playlist_GetCurrentIndex(i32*) #1

declare dso_local i32 @vlc_playlist_AppendOne(i32*, i32*) #1

declare dso_local i32 @vlc_playlist_RemoveOne(i32*, i32) #1

declare dso_local i32 @vlc_playlist_SetPlaybackRepeat(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vlc_playlist_Prev(i32*) #1

declare dso_local i32 @callback_ctx_destroy(%struct.callback_ctx*) #1

declare dso_local i32 @vlc_playlist_RemoveListener(i32*, i32*) #1

declare dso_local i32 @DestroyMediaArray(i32**, i32) #1

declare dso_local i32 @vlc_playlist_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
