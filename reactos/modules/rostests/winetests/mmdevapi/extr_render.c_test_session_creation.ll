; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_session_creation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_session_creation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev = common dso_local global i32* null, align 8
@IID_IAudioSessionManager = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Activate %08x &out pointer\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Activate failed: %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"GetSimpleAudioVolume failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"SetMasterVolume failed: %08x\0A\00", align 1
@mme = common dso_local global i32 0, align 4
@eCapture = common dso_local global i32 0, align 4
@eMultimedia = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"GetMasterVolume failed: %08x\0A\00", align 1
@IID_IAudioClient = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"GetMixFormat failed: %08x\0A\00", align 1
@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Initialize failed: %08x\0A\00", align 1
@IID_ISimpleAudioVolume = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"GetService failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Activation failed with %08x\0A\00", align 1
@AUDCLNT_STREAMFLAGS_NOPERSIST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Got wrong volume: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_session_creation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_session_creation() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = call i32 @CoCreateGuid(i32* %5)
  %14 = load i32*, i32** @dev, align 8
  %15 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %16 = bitcast i32** %3 to i8**
  %17 = call i64 @IMMDevice_Activate(i32* %14, i32* @IID_IAudioSessionManager, i32 %15, i32* null, i8** %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %3, align 8
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = xor i32 %21, %24
  %26 = load i64, i64* %7, align 8
  %27 = sitofp i64 %26 to float
  %28 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), float %27)
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %7, align 8
  %34 = sitofp i64 %33 to float
  %35 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), float %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i64 @IAudioSessionManager_GetSimpleAudioVolume(i32* %36, i32* %5, i32 %37, i32** %4)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %7, align 8
  %44 = sitofp i64 %43 to float
  %45 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), float %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @ISimpleAudioVolume_SetMasterVolume(i32* %46, float 0x3FE3333340000000, i32* null)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %7, align 8
  %53 = sitofp i64 %52 to float
  %54 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), float %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @ISimpleAudioVolume_Release(i32* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @IAudioSessionManager_Release(i32* %57)
  %59 = load i32, i32* @mme, align 4
  %60 = load i32, i32* @eCapture, align 4
  %61 = load i32, i32* @eMultimedia, align 4
  %62 = call i64 @IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32 %59, i32 %60, i32 %61, i32** %1)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %180

66:                                               ; preds = %0
  %67 = load i32*, i32** %1, align 8
  %68 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %69 = bitcast i32** %12 to i8**
  %70 = call i64 @IMMDevice_Activate(i32* %67, i32* @IID_IAudioSessionManager, i32 %68, i32* null, i8** %69)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %12, align 8
  %76 = icmp eq i32* %75, null
  %77 = zext i1 %76 to i32
  %78 = xor i32 %74, %77
  %79 = load i64, i64* %7, align 8
  %80 = sitofp i64 %79 to float
  %81 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), float %80)
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @S_OK, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %7, align 8
  %87 = sitofp i64 %86 to float
  %88 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), float %87)
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* @FALSE, align 4
  %91 = call i64 @IAudioSessionManager_GetSimpleAudioVolume(i32* %89, i32* %5, i32 %90, i32** %11)
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @S_OK, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %7, align 8
  %97 = sitofp i64 %96 to float
  %98 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), float %97)
  store float 5.000000e-01, float* %6, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = call i64 @ISimpleAudioVolume_GetMasterVolume(i32* %99, float* %6)
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @S_OK, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i64, i64* %7, align 8
  %106 = sitofp i64 %105 to float
  %107 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), float %106)
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @ISimpleAudioVolume_Release(i32* %108)
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @IAudioSessionManager_Release(i32* %110)
  %112 = load i32*, i32** %1, align 8
  %113 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %114 = bitcast i32** %10 to i8**
  %115 = call i64 @IMMDevice_Activate(i32* %112, i32* @IID_IAudioClient, i32 %113, i32* null, i8** %114)
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @S_OK, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %7, align 8
  %121 = sitofp i64 %120 to float
  %122 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), float %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @IMMDevice_Release(i32* %123)
  %125 = load i32*, i32** %10, align 8
  %126 = call i64 @IAudioClient_GetMixFormat(i32* %125, i32** %9)
  store i64 %126, i64* %7, align 8
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* @S_OK, align 8
  %129 = icmp eq i64 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i64, i64* %7, align 8
  %132 = sitofp i64 %131 to float
  %133 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), float %132)
  %134 = load i32*, i32** %10, align 8
  %135 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = call i64 @IAudioClient_Initialize(i32* %134, i32 %135, i32 0, i32 5000000, i32 0, i32* %136, i32* %5)
  store i64 %137, i64* %7, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* @S_OK, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i64, i64* %7, align 8
  %143 = sitofp i64 %142 to float
  %144 = call i32 @ok(i32 %141, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), float %143)
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @CoTaskMemFree(i32* %145)
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* @S_OK, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %66
  %151 = load i32*, i32** %10, align 8
  %152 = bitcast i32** %11 to i8**
  %153 = call i64 @IAudioClient_GetService(i32* %151, i32* @IID_ISimpleAudioVolume, i8** %152)
  store i64 %153, i64* %7, align 8
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* @S_OK, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i64, i64* %7, align 8
  %159 = sitofp i64 %158 to float
  %160 = call i32 @ok(i32 %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), float %159)
  br label %161

161:                                              ; preds = %150, %66
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* @S_OK, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %161
  store float 5.000000e-01, float* %6, align 4
  %166 = load i32*, i32** %11, align 8
  %167 = call i64 @ISimpleAudioVolume_GetMasterVolume(i32* %166, float* %6)
  store i64 %167, i64* %7, align 8
  %168 = load i64, i64* %7, align 8
  %169 = load i64, i64* @S_OK, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = load i64, i64* %7, align 8
  %173 = sitofp i64 %172 to float
  %174 = call i32 @ok(i32 %171, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), float %173)
  %175 = load i32*, i32** %11, align 8
  %176 = call i32 @ISimpleAudioVolume_Release(i32* %175)
  br label %177

177:                                              ; preds = %165, %161
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @IAudioClient_Release(i32* %178)
  br label %180

180:                                              ; preds = %177, %0
  %181 = load i32*, i32** @dev, align 8
  %182 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %183 = bitcast i32** %2 to i8**
  %184 = call i64 @IMMDevice_Activate(i32* %181, i32* @IID_IAudioClient, i32 %182, i32* null, i8** %183)
  store i64 %184, i64* %7, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @S_OK, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i32*, i32** %2, align 8
  %190 = icmp eq i32* %189, null
  %191 = zext i1 %190 to i32
  %192 = xor i32 %188, %191
  %193 = load i64, i64* %7, align 8
  %194 = sitofp i64 %193 to float
  %195 = call i32 @ok(i32 %192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), float %194)
  %196 = load i64, i64* %7, align 8
  %197 = load i64, i64* @S_OK, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i64, i64* %7, align 8
  %201 = sitofp i64 %200 to float
  %202 = call i32 @ok(i32 %199, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), float %201)
  %203 = load i64, i64* %7, align 8
  %204 = load i64, i64* @S_OK, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %180
  br label %266

207:                                              ; preds = %180
  %208 = load i32*, i32** %2, align 8
  %209 = call i64 @IAudioClient_GetMixFormat(i32* %208, i32** %8)
  store i64 %209, i64* %7, align 8
  %210 = load i64, i64* %7, align 8
  %211 = load i64, i64* @S_OK, align 8
  %212 = icmp eq i64 %210, %211
  %213 = zext i1 %212 to i32
  %214 = load i64, i64* %7, align 8
  %215 = sitofp i64 %214 to float
  %216 = call i32 @ok(i32 %213, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), float %215)
  %217 = load i32*, i32** %2, align 8
  %218 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %219 = load i32, i32* @AUDCLNT_STREAMFLAGS_NOPERSIST, align 4
  %220 = load i32*, i32** %8, align 8
  %221 = call i64 @IAudioClient_Initialize(i32* %217, i32 %218, i32 %219, i32 5000000, i32 0, i32* %220, i32* %5)
  store i64 %221, i64* %7, align 8
  %222 = load i64, i64* %7, align 8
  %223 = load i64, i64* @S_OK, align 8
  %224 = icmp eq i64 %222, %223
  %225 = zext i1 %224 to i32
  %226 = load i64, i64* %7, align 8
  %227 = sitofp i64 %226 to float
  %228 = call i32 @ok(i32 %225, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), float %227)
  %229 = load i32*, i32** %2, align 8
  %230 = bitcast i32** %4 to i8**
  %231 = call i64 @IAudioClient_GetService(i32* %229, i32* @IID_ISimpleAudioVolume, i8** %230)
  store i64 %231, i64* %7, align 8
  %232 = load i64, i64* %7, align 8
  %233 = load i64, i64* @S_OK, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = load i64, i64* %7, align 8
  %237 = sitofp i64 %236 to float
  %238 = call i32 @ok(i32 %235, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), float %237)
  %239 = load i64, i64* %7, align 8
  %240 = load i64, i64* @S_OK, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %261

242:                                              ; preds = %207
  store float 5.000000e-01, float* %6, align 4
  %243 = load i32*, i32** %4, align 8
  %244 = call i64 @ISimpleAudioVolume_GetMasterVolume(i32* %243, float* %6)
  store i64 %244, i64* %7, align 8
  %245 = load i64, i64* %7, align 8
  %246 = load i64, i64* @S_OK, align 8
  %247 = icmp eq i64 %245, %246
  %248 = zext i1 %247 to i32
  %249 = load i64, i64* %7, align 8
  %250 = sitofp i64 %249 to float
  %251 = call i32 @ok(i32 %248, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), float %250)
  %252 = load float, float* %6, align 4
  %253 = fsub float %252, 0x3FE3333340000000
  %254 = call float @fabs(float %253)
  %255 = fcmp olt float %254, 0x3FA99999A0000000
  %256 = zext i1 %255 to i32
  %257 = load float, float* %6, align 4
  %258 = call i32 @ok(i32 %256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), float %257)
  %259 = load i32*, i32** %4, align 8
  %260 = call i32 @ISimpleAudioVolume_Release(i32* %259)
  br label %261

261:                                              ; preds = %242, %207
  %262 = load i32*, i32** %8, align 8
  %263 = call i32 @CoTaskMemFree(i32* %262)
  %264 = load i32*, i32** %2, align 8
  %265 = call i32 @IAudioClient_Release(i32* %264)
  br label %266

266:                                              ; preds = %261, %206
  ret void
}

declare dso_local i32 @CoCreateGuid(i32*) #1

declare dso_local i64 @IMMDevice_Activate(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, float) #1

declare dso_local i64 @IAudioSessionManager_GetSimpleAudioVolume(i32*, i32*, i32, i32**) #1

declare dso_local i64 @ISimpleAudioVolume_SetMasterVolume(i32*, float, i32*) #1

declare dso_local i32 @ISimpleAudioVolume_Release(i32*) #1

declare dso_local i32 @IAudioSessionManager_Release(i32*) #1

declare dso_local i64 @IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32, i32, i32, i32**) #1

declare dso_local i64 @ISimpleAudioVolume_GetMasterVolume(i32*, float*) #1

declare dso_local i32 @IMMDevice_Release(i32*) #1

declare dso_local i64 @IAudioClient_GetMixFormat(i32*, i32**) #1

declare dso_local i64 @IAudioClient_Initialize(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i64 @IAudioClient_GetService(i32*, i32*, i8**) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
