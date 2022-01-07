; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_equalizer.c_test_equalizer.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_equalizer.c_test_equalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Testing equalizer\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Testing equalizer presets\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Testing equalizer bands\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Testing equalizer initialisation\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Testing equalizer preamp\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Testing equalizer amp at index\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Testing release NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Testing set equalizer\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Testing equalizer-bands string limit\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Testing equalizer cleanup\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Finished testing equalizer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @test_equalizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_equalizer(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = call i32 @test_log(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %3, align 8
  %18 = call i32* @libvlc_new(i32 %16, i8** %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* null, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @libvlc_media_player_new(i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* null, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @test_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 (...) @libvlc_audio_equalizer_get_preset_count()
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ugt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %52, %2
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @libvlc_audio_equalizer_get_preset_name(i32 %40)
  %42 = icmp ne i32* null, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32* @libvlc_audio_equalizer_new_from_preset(i32 %45)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = ptrtoint i32* %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @libvlc_audio_equalizer_release(i32* %50)
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %35

55:                                               ; preds = %35
  %56 = load i32, i32* %8, align 4
  %57 = call i32* @libvlc_audio_equalizer_get_preset_name(i32 %56)
  %58 = icmp eq i32* null, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32* @libvlc_audio_equalizer_new_from_preset(i32 %61)
  %63 = icmp eq i32* null, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = call i32 @test_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i32 (...) @libvlc_audio_equalizer_get_band_count()
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ugt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %82, %55
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = call float @libvlc_audio_equalizer_get_band_frequency(i32 %77)
  %79 = fcmp une float -1.000000e+00, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %72

85:                                               ; preds = %72
  %86 = load i32, i32* %9, align 4
  %87 = call float @libvlc_audio_equalizer_get_band_frequency(i32 %86)
  %88 = fcmp oeq float -1.000000e+00, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = call i32 @test_log(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %92 = call i32* (...) @libvlc_audio_equalizer_new()
  store i32* %92, i32** %7, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = ptrtoint i32* %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = call float @libvlc_audio_equalizer_get_preamp(i32* %96)
  %98 = fcmp oeq float %97, 0.000000e+00
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %112, %85
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call float @libvlc_audio_equalizer_get_amp_at_index(i32* %106, i32 %107)
  %109 = fcmp oeq float %108, 0.000000e+00
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %101

115:                                              ; preds = %101
  %116 = call i32 @test_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32*, i32** %7, align 8
  %118 = call i64 @libvlc_audio_equalizer_set_preamp(i32* %117, float 0x4033E66660000000)
  %119 = icmp eq i64 0, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i32*, i32** %7, align 8
  %123 = call float @libvlc_audio_equalizer_get_preamp(i32* %122)
  %124 = fcmp oeq float %123, 0x4033E66660000000
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i32*, i32** %7, align 8
  %128 = call i64 @libvlc_audio_equalizer_set_preamp(i32* %127, float 2.000000e+01)
  %129 = icmp eq i64 0, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i32*, i32** %7, align 8
  %133 = call float @libvlc_audio_equalizer_get_preamp(i32* %132)
  %134 = fcmp oeq float %133, 2.000000e+01
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32*, i32** %7, align 8
  %138 = call i64 @libvlc_audio_equalizer_set_preamp(i32* %137, float 0x40341999A0000000)
  %139 = icmp eq i64 0, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32*, i32** %7, align 8
  %143 = call float @libvlc_audio_equalizer_get_preamp(i32* %142)
  %144 = fcmp oeq float %143, 2.000000e+01
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load i32*, i32** %7, align 8
  %148 = call i64 @libvlc_audio_equalizer_set_preamp(i32* %147, float 0xC033E66660000000)
  %149 = icmp eq i64 0, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32*, i32** %7, align 8
  %153 = call float @libvlc_audio_equalizer_get_preamp(i32* %152)
  %154 = fcmp oeq float %153, 0xC033E66660000000
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load i32*, i32** %7, align 8
  %158 = call i64 @libvlc_audio_equalizer_set_preamp(i32* %157, float -2.000000e+01)
  %159 = icmp eq i64 0, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i32*, i32** %7, align 8
  %163 = call float @libvlc_audio_equalizer_get_preamp(i32* %162)
  %164 = fcmp oeq float %163, -2.000000e+01
  %165 = zext i1 %164 to i32
  %166 = call i32 @assert(i32 %165)
  %167 = load i32*, i32** %7, align 8
  %168 = call i64 @libvlc_audio_equalizer_set_preamp(i32* %167, float 0xC0341999A0000000)
  %169 = icmp eq i64 0, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i32*, i32** %7, align 8
  %173 = call float @libvlc_audio_equalizer_get_preamp(i32* %172)
  %174 = fcmp oeq float %173, -2.000000e+01
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = call i32 @test_log(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %255, %115
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %258

182:                                              ; preds = %178
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %13, align 4
  %185 = call i64 @libvlc_audio_equalizer_set_amp_at_index(i32* %183, float 0x4033E66660000000, i32 %184)
  %186 = icmp eq i64 0, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load i32*, i32** %7, align 8
  %190 = load i32, i32* %13, align 4
  %191 = call float @libvlc_audio_equalizer_get_amp_at_index(i32* %189, i32 %190)
  %192 = fcmp oeq float %191, 0x4033E66660000000
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load i32*, i32** %7, align 8
  %196 = load i32, i32* %13, align 4
  %197 = call i64 @libvlc_audio_equalizer_set_amp_at_index(i32* %195, float 2.000000e+01, i32 %196)
  %198 = icmp eq i64 0, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = load i32*, i32** %7, align 8
  %202 = load i32, i32* %13, align 4
  %203 = call float @libvlc_audio_equalizer_get_amp_at_index(i32* %201, i32 %202)
  %204 = fcmp oeq float %203, 2.000000e+01
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load i32*, i32** %7, align 8
  %208 = load i32, i32* %13, align 4
  %209 = call i64 @libvlc_audio_equalizer_set_amp_at_index(i32* %207, float 0x40341999A0000000, i32 %208)
  %210 = icmp eq i64 0, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = load i32*, i32** %7, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call float @libvlc_audio_equalizer_get_amp_at_index(i32* %213, i32 %214)
  %216 = fcmp oeq float %215, 2.000000e+01
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  %219 = load i32*, i32** %7, align 8
  %220 = load i32, i32* %13, align 4
  %221 = call i64 @libvlc_audio_equalizer_set_amp_at_index(i32* %219, float 0xC033E66660000000, i32 %220)
  %222 = icmp eq i64 0, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert(i32 %223)
  %225 = load i32*, i32** %7, align 8
  %226 = load i32, i32* %13, align 4
  %227 = call float @libvlc_audio_equalizer_get_amp_at_index(i32* %225, i32 %226)
  %228 = fcmp oeq float %227, 0xC033E66660000000
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* %13, align 4
  %233 = call i64 @libvlc_audio_equalizer_set_amp_at_index(i32* %231, float -2.000000e+01, i32 %232)
  %234 = icmp eq i64 0, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @assert(i32 %235)
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* %13, align 4
  %239 = call float @libvlc_audio_equalizer_get_amp_at_index(i32* %237, i32 %238)
  %240 = fcmp oeq float %239, -2.000000e+01
  %241 = zext i1 %240 to i32
  %242 = call i32 @assert(i32 %241)
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %13, align 4
  %245 = call i64 @libvlc_audio_equalizer_set_amp_at_index(i32* %243, float 0xC0341999A0000000, i32 %244)
  %246 = icmp eq i64 0, %245
  %247 = zext i1 %246 to i32
  %248 = call i32 @assert(i32 %247)
  %249 = load i32*, i32** %7, align 8
  %250 = load i32, i32* %13, align 4
  %251 = call float @libvlc_audio_equalizer_get_amp_at_index(i32* %249, i32 %250)
  %252 = fcmp oeq float %251, -2.000000e+01
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert(i32 %253)
  br label %255

255:                                              ; preds = %182
  %256 = load i32, i32* %13, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %13, align 4
  br label %178

258:                                              ; preds = %178
  %259 = load i32*, i32** %7, align 8
  %260 = load i32, i32* %9, align 4
  %261 = call float @libvlc_audio_equalizer_get_amp_at_index(i32* %259, i32 %260)
  %262 = call i32 @isnan(float %261)
  %263 = call i32 @assert(i32 %262)
  %264 = load i32*, i32** %7, align 8
  %265 = load i32, i32* %9, align 4
  %266 = call i64 @libvlc_audio_equalizer_set_amp_at_index(i32* %264, float 0x4033E66660000000, i32 %265)
  %267 = icmp eq i64 -1, %266
  %268 = zext i1 %267 to i32
  %269 = call i32 @assert(i32 %268)
  %270 = call i32 @test_log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %271 = call i32 @libvlc_audio_equalizer_release(i32* null)
  %272 = call i32 @test_log(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %273 = load i32*, i32** %6, align 8
  %274 = call i64 @libvlc_media_player_set_equalizer(i32* %273, i32* null)
  %275 = icmp eq i64 0, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  %278 = load i32*, i32** %6, align 8
  %279 = load i32*, i32** %7, align 8
  %280 = call i64 @libvlc_media_player_set_equalizer(i32* %278, i32* %279)
  %281 = icmp eq i64 0, %280
  %282 = zext i1 %281 to i32
  %283 = call i32 @assert(i32 %282)
  %284 = call i32 @test_log(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %285

285:                                              ; preds = %296, %258
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* %9, align 4
  %288 = icmp ult i32 %286, %287
  br i1 %288, label %289, label %299

289:                                              ; preds = %285
  %290 = load i32*, i32** %7, align 8
  %291 = load i32, i32* %14, align 4
  %292 = call i64 @libvlc_audio_equalizer_set_amp_at_index(i32* %290, float 0xC0331F9AE0000000, i32 %291)
  %293 = icmp eq i64 0, %292
  %294 = zext i1 %293 to i32
  %295 = call i32 @assert(i32 %294)
  br label %296

296:                                              ; preds = %289
  %297 = load i32, i32* %14, align 4
  %298 = add i32 %297, 1
  store i32 %298, i32* %14, align 4
  br label %285

299:                                              ; preds = %285
  %300 = load i32*, i32** %6, align 8
  %301 = load i32*, i32** %7, align 8
  %302 = call i64 @libvlc_media_player_set_equalizer(i32* %300, i32* %301)
  %303 = icmp eq i64 0, %302
  %304 = zext i1 %303 to i32
  %305 = call i32 @assert(i32 %304)
  %306 = call i32 @test_log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %307 = load i32*, i32** %7, align 8
  %308 = call i32 @libvlc_audio_equalizer_release(i32* %307)
  %309 = call i32 @test_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %310 = load i32*, i32** %6, align 8
  %311 = call i32 @libvlc_media_player_release(i32* %310)
  %312 = load i32*, i32** %5, align 8
  %313 = call i32 @libvlc_release(i32* %312)
  ret void
}

declare dso_local i32 @test_log(i8*) #1

declare dso_local i32* @libvlc_new(i32, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @libvlc_media_player_new(i32*) #1

declare dso_local i32 @libvlc_audio_equalizer_get_preset_count(...) #1

declare dso_local i32* @libvlc_audio_equalizer_get_preset_name(i32) #1

declare dso_local i32* @libvlc_audio_equalizer_new_from_preset(i32) #1

declare dso_local i32 @libvlc_audio_equalizer_release(i32*) #1

declare dso_local i32 @libvlc_audio_equalizer_get_band_count(...) #1

declare dso_local float @libvlc_audio_equalizer_get_band_frequency(i32) #1

declare dso_local i32* @libvlc_audio_equalizer_new(...) #1

declare dso_local float @libvlc_audio_equalizer_get_preamp(i32*) #1

declare dso_local float @libvlc_audio_equalizer_get_amp_at_index(i32*, i32) #1

declare dso_local i64 @libvlc_audio_equalizer_set_preamp(i32*, float) #1

declare dso_local i64 @libvlc_audio_equalizer_set_amp_at_index(i32*, float, i32) #1

declare dso_local i32 @isnan(float) #1

declare dso_local i64 @libvlc_media_player_set_equalizer(i32*, i32*) #1

declare dso_local i32 @libvlc_media_player_release(i32*) #1

declare dso_local i32 @libvlc_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
