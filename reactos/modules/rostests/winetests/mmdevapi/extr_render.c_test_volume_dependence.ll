; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_volume_dependence.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_volume_dependence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@S_OK = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [27 x i8] c"CoCreateGuid failed: %08x\0A\00", align 1
@dev = common dso_local global i32 0, align 4
@IID_IAudioClient = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Activation failed with %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GetMixFormat failed: %08x\0A\00", align 1
@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@AUDCLNT_STREAMFLAGS_NOPERSIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Initialize failed: %08x\0A\00", align 1
@IID_ISimpleAudioVolume = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"GetService (SimpleAudioVolume) failed: %08x\0A\00", align 1
@IID_IChannelAudioVolume = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"GetService (ChannelAudioVolume) failed: %08x\0A\00", align 1
@IID_IAudioStreamVolume = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"GetService (AudioStreamVolume) failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"ASV_SetChannelVolume failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"CAV_SetChannelVolume failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"SAV_SetMasterVolume failed: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"ASV_GetChannelVolume failed: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"ASV_GetChannelVolume gave wrong volume: %f\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"CAV_GetChannelVolume failed: %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"CAV_GetChannelVolume gave wrong volume: %f\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"SAV_GetMasterVolume failed: %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"SAV_GetMasterVolume gave wrong volume: %f\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"GetService failed: %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"GetChannelCount failed: %08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Got wrong channel count, expected %u: %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [77 x i8] c"Unable to open the same device twice. Skipping session volume control tests\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_volume_dependence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_volume_dependence() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = call float @CoCreateGuid(i32* %9)
  store float %13, float* %7, align 4
  %14 = load float, float* %7, align 4
  %15 = load float, float* @S_OK, align 4
  %16 = fcmp oeq float %14, %15
  %17 = zext i1 %16 to i32
  %18 = load float, float* %7, align 4
  %19 = call i32 (i32, i8*, float, ...) @ok(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), float %18)
  %20 = load i32, i32* @dev, align 4
  %21 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %22 = bitcast i32** %1 to i8**
  %23 = call float @IMMDevice_Activate(i32 %20, i32* @IID_IAudioClient, i32 %21, i32* null, i8** %22)
  store float %23, float* %7, align 4
  %24 = load float, float* %7, align 4
  %25 = load float, float* @S_OK, align 4
  %26 = fcmp oeq float %24, %25
  %27 = zext i1 %26 to i32
  %28 = load float, float* %7, align 4
  %29 = call i32 (i32, i8*, float, ...) @ok(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), float %28)
  %30 = load float, float* %7, align 4
  %31 = load float, float* @S_OK, align 4
  %32 = fcmp une float %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %0
  br label %322

34:                                               ; preds = %0
  %35 = load i32*, i32** %1, align 8
  %36 = call float @IAudioClient_GetMixFormat(i32* %35, %struct.TYPE_5__** %6)
  store float %36, float* %7, align 4
  %37 = load float, float* %7, align 4
  %38 = load float, float* @S_OK, align 4
  %39 = fcmp oeq float %37, %38
  %40 = zext i1 %39 to i32
  %41 = load float, float* %7, align 4
  %42 = call i32 (i32, i8*, float, ...) @ok(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), float %41)
  %43 = load i32*, i32** %1, align 8
  %44 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %45 = load i32, i32* @AUDCLNT_STREAMFLAGS_NOPERSIST, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = call float @IAudioClient_Initialize(i32* %43, i32 %44, i32 %45, i32 5000000, i32 0, %struct.TYPE_5__* %46, i32* %9)
  store float %47, float* %7, align 4
  %48 = load float, float* %7, align 4
  %49 = load float, float* @S_OK, align 4
  %50 = fcmp oeq float %48, %49
  %51 = zext i1 %50 to i32
  %52 = load float, float* %7, align 4
  %53 = call i32 (i32, i8*, float, ...) @ok(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), float %52)
  %54 = load float, float* %7, align 4
  %55 = load float, float* @S_OK, align 4
  %56 = fcmp oeq float %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %34
  %58 = load i32*, i32** %1, align 8
  %59 = bitcast i32** %3 to i8**
  %60 = call float @IAudioClient_GetService(i32* %58, i32* @IID_ISimpleAudioVolume, i8** %59)
  store float %60, float* %7, align 4
  %61 = load float, float* %7, align 4
  %62 = load float, float* @S_OK, align 4
  %63 = fcmp oeq float %61, %62
  %64 = zext i1 %63 to i32
  %65 = load float, float* %7, align 4
  %66 = call i32 (i32, i8*, float, ...) @ok(i32 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), float %65)
  br label %67

67:                                               ; preds = %57, %34
  %68 = load float, float* %7, align 4
  %69 = load float, float* @S_OK, align 4
  %70 = fcmp une float %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @IAudioClient_Release(i32* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = call i32 @CoTaskMemFree(%struct.TYPE_5__* %74)
  br label %322

76:                                               ; preds = %67
  %77 = load i32*, i32** %1, align 8
  %78 = bitcast i32** %4 to i8**
  %79 = call float @IAudioClient_GetService(i32* %77, i32* @IID_IChannelAudioVolume, i8** %78)
  store float %79, float* %7, align 4
  %80 = load float, float* %7, align 4
  %81 = load float, float* @S_OK, align 4
  %82 = fcmp oeq float %80, %81
  %83 = zext i1 %82 to i32
  %84 = load float, float* %7, align 4
  %85 = call i32 (i32, i8*, float, ...) @ok(i32 %83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), float %84)
  %86 = load i32*, i32** %1, align 8
  %87 = bitcast i32** %5 to i8**
  %88 = call float @IAudioClient_GetService(i32* %86, i32* @IID_IAudioStreamVolume, i8** %87)
  store float %88, float* %7, align 4
  %89 = load float, float* %7, align 4
  %90 = load float, float* @S_OK, align 4
  %91 = fcmp oeq float %89, %90
  %92 = zext i1 %91 to i32
  %93 = load float, float* %7, align 4
  %94 = call i32 (i32, i8*, float, ...) @ok(i32 %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), float %93)
  %95 = load i32*, i32** %5, align 8
  %96 = call float @IAudioStreamVolume_SetChannelVolume(i32* %95, i32 0, float 0x3FC99999A0000000)
  store float %96, float* %7, align 4
  %97 = load float, float* %7, align 4
  %98 = load float, float* @S_OK, align 4
  %99 = fcmp oeq float %97, %98
  %100 = zext i1 %99 to i32
  %101 = load float, float* %7, align 4
  %102 = call i32 (i32, i8*, float, ...) @ok(i32 %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), float %101)
  %103 = load i32*, i32** %4, align 8
  %104 = call float @IChannelAudioVolume_SetChannelVolume(i32* %103, i32 0, float 0x3FD99999A0000000, i32* null)
  store float %104, float* %7, align 4
  %105 = load float, float* %7, align 4
  %106 = load float, float* @S_OK, align 4
  %107 = fcmp oeq float %105, %106
  %108 = zext i1 %107 to i32
  %109 = load float, float* %7, align 4
  %110 = call i32 (i32, i8*, float, ...) @ok(i32 %108, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), float %109)
  %111 = load i32*, i32** %3, align 8
  %112 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %111, float 0x3FE3333340000000, i32* null)
  store float %112, float* %7, align 4
  %113 = load float, float* %7, align 4
  %114 = load float, float* @S_OK, align 4
  %115 = fcmp oeq float %113, %114
  %116 = zext i1 %115 to i32
  %117 = load float, float* %7, align 4
  %118 = call i32 (i32, i8*, float, ...) @ok(i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), float %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call float @IAudioStreamVolume_GetChannelVolume(i32* %119, i32 0, float* %8)
  store float %120, float* %7, align 4
  %121 = load float, float* %7, align 4
  %122 = load float, float* @S_OK, align 4
  %123 = fcmp oeq float %121, %122
  %124 = zext i1 %123 to i32
  %125 = load float, float* %7, align 4
  %126 = call i32 (i32, i8*, float, ...) @ok(i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), float %125)
  %127 = load float, float* %8, align 4
  %128 = fsub float %127, 0x3FC99999A0000000
  %129 = call float @llvm.fabs.f32(float %128)
  %130 = fcmp olt float %129, 0x3FA99999A0000000
  %131 = zext i1 %130 to i32
  %132 = load float, float* %8, align 4
  %133 = call i32 (i32, i8*, float, ...) @ok(i32 %131, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), float %132)
  %134 = load i32*, i32** %4, align 8
  %135 = call float @IChannelAudioVolume_GetChannelVolume(i32* %134, i32 0, float* %8)
  store float %135, float* %7, align 4
  %136 = load float, float* %7, align 4
  %137 = load float, float* @S_OK, align 4
  %138 = fcmp oeq float %136, %137
  %139 = zext i1 %138 to i32
  %140 = load float, float* %7, align 4
  %141 = call i32 (i32, i8*, float, ...) @ok(i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), float %140)
  %142 = load float, float* %8, align 4
  %143 = fsub float %142, 0x3FD99999A0000000
  %144 = call float @llvm.fabs.f32(float %143)
  %145 = fcmp olt float %144, 0x3FA99999A0000000
  %146 = zext i1 %145 to i32
  %147 = load float, float* %8, align 4
  %148 = call i32 (i32, i8*, float, ...) @ok(i32 %146, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), float %147)
  %149 = load i32*, i32** %3, align 8
  %150 = call float @ISimpleAudioVolume_GetMasterVolume(i32* %149, float* %8)
  store float %150, float* %7, align 4
  %151 = load float, float* %7, align 4
  %152 = load float, float* @S_OK, align 4
  %153 = fcmp oeq float %151, %152
  %154 = zext i1 %153 to i32
  %155 = load float, float* %7, align 4
  %156 = call i32 (i32, i8*, float, ...) @ok(i32 %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), float %155)
  %157 = load float, float* %8, align 4
  %158 = fsub float %157, 0x3FE3333340000000
  %159 = call float @llvm.fabs.f32(float %158)
  %160 = fcmp olt float %159, 0x3FA99999A0000000
  %161 = zext i1 %160 to i32
  %162 = load float, float* %8, align 4
  %163 = call i32 (i32, i8*, float, ...) @ok(i32 %161, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), float %162)
  %164 = load i32, i32* @dev, align 4
  %165 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %166 = bitcast i32** %2 to i8**
  %167 = call float @IMMDevice_Activate(i32 %164, i32* @IID_IAudioClient, i32 %165, i32* null, i8** %166)
  store float %167, float* %7, align 4
  %168 = load float, float* %7, align 4
  %169 = load float, float* @S_OK, align 4
  %170 = fcmp oeq float %168, %169
  %171 = zext i1 %170 to i32
  %172 = load float, float* %7, align 4
  %173 = call i32 (i32, i8*, float, ...) @ok(i32 %171, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), float %172)
  %174 = load float, float* %7, align 4
  %175 = load float, float* @S_OK, align 4
  %176 = fcmp oeq float %174, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %76
  %178 = load i32*, i32** %2, align 8
  %179 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %180 = load i32, i32* @AUDCLNT_STREAMFLAGS_NOPERSIST, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %182 = call float @IAudioClient_Initialize(i32* %178, i32 %179, i32 %180, i32 5000000, i32 0, %struct.TYPE_5__* %181, i32* %9)
  store float %182, float* %7, align 4
  %183 = load float, float* %7, align 4
  %184 = load float, float* @S_OK, align 4
  %185 = fcmp oeq float %183, %184
  %186 = zext i1 %185 to i32
  %187 = load float, float* %7, align 4
  %188 = call i32 (i32, i8*, float, ...) @ok(i32 %186, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), float %187)
  %189 = load float, float* %7, align 4
  %190 = load float, float* @S_OK, align 4
  %191 = fcmp une float %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %177
  %193 = load i32*, i32** %2, align 8
  %194 = call i32 @IAudioClient_Release(i32* %193)
  br label %195

195:                                              ; preds = %192, %177
  br label %196

196:                                              ; preds = %195, %76
  %197 = load float, float* %7, align 4
  %198 = load float, float* @S_OK, align 4
  %199 = fcmp oeq float %197, %198
  br i1 %199, label %200, label %293

200:                                              ; preds = %196
  %201 = load i32*, i32** %2, align 8
  %202 = bitcast i32** %11 to i8**
  %203 = call float @IAudioClient_GetService(i32* %201, i32* @IID_IChannelAudioVolume, i8** %202)
  store float %203, float* %7, align 4
  %204 = load float, float* %7, align 4
  %205 = load float, float* @S_OK, align 4
  %206 = fcmp oeq float %204, %205
  %207 = zext i1 %206 to i32
  %208 = load float, float* %7, align 4
  %209 = call i32 (i32, i8*, float, ...) @ok(i32 %207, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), float %208)
  %210 = load i32*, i32** %2, align 8
  %211 = bitcast i32** %12 to i8**
  %212 = call float @IAudioClient_GetService(i32* %210, i32* @IID_IAudioStreamVolume, i8** %211)
  store float %212, float* %7, align 4
  %213 = load float, float* %7, align 4
  %214 = load float, float* @S_OK, align 4
  %215 = fcmp oeq float %213, %214
  %216 = zext i1 %215 to i32
  %217 = load float, float* %7, align 4
  %218 = call i32 (i32, i8*, float, ...) @ok(i32 %216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), float %217)
  %219 = load i32*, i32** %11, align 8
  %220 = call float @IChannelAudioVolume_GetChannelVolume(i32* %219, i32 0, float* %8)
  store float %220, float* %7, align 4
  %221 = load float, float* %7, align 4
  %222 = load float, float* @S_OK, align 4
  %223 = fcmp oeq float %221, %222
  %224 = zext i1 %223 to i32
  %225 = load float, float* %7, align 4
  %226 = call i32 (i32, i8*, float, ...) @ok(i32 %224, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), float %225)
  %227 = load float, float* %8, align 4
  %228 = fsub float %227, 0x3FD99999A0000000
  %229 = call float @llvm.fabs.f32(float %228)
  %230 = fcmp olt float %229, 0x3FA99999A0000000
  %231 = zext i1 %230 to i32
  %232 = load float, float* %8, align 4
  %233 = call i32 (i32, i8*, float, ...) @ok(i32 %231, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), float %232)
  %234 = load i32*, i32** %12, align 8
  %235 = call float @IAudioStreamVolume_GetChannelVolume(i32* %234, i32 0, float* %8)
  store float %235, float* %7, align 4
  %236 = load float, float* %7, align 4
  %237 = load float, float* @S_OK, align 4
  %238 = fcmp oeq float %236, %237
  %239 = zext i1 %238 to i32
  %240 = load float, float* %7, align 4
  %241 = call i32 (i32, i8*, float, ...) @ok(i32 %239, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), float %240)
  %242 = load float, float* %8, align 4
  %243 = fcmp oeq float %242, 1.000000e+00
  %244 = zext i1 %243 to i32
  %245 = load float, float* %8, align 4
  %246 = call i32 (i32, i8*, float, ...) @ok(i32 %244, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), float %245)
  %247 = load i32*, i32** %11, align 8
  %248 = call float @IChannelAudioVolume_GetChannelCount(i32* %247, i32* %10)
  store float %248, float* %7, align 4
  %249 = load float, float* %7, align 4
  %250 = load float, float* @S_OK, align 4
  %251 = fcmp oeq float %249, %250
  %252 = zext i1 %251 to i32
  %253 = load float, float* %7, align 4
  %254 = call i32 (i32, i8*, float, ...) @ok(i32 %252, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), float %253)
  %255 = load i32, i32* %10, align 4
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %255, %258
  %260 = zext i1 %259 to i32
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sitofp i32 %263 to float
  %265 = load i32, i32* %10, align 4
  %266 = call i32 (i32, i8*, float, ...) @ok(i32 %260, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), float %264, i32 %265)
  %267 = load i32*, i32** %12, align 8
  %268 = call float @IAudioStreamVolume_GetChannelCount(i32* %267, i32* %10)
  store float %268, float* %7, align 4
  %269 = load float, float* %7, align 4
  %270 = load float, float* @S_OK, align 4
  %271 = fcmp oeq float %269, %270
  %272 = zext i1 %271 to i32
  %273 = load float, float* %7, align 4
  %274 = call i32 (i32, i8*, float, ...) @ok(i32 %272, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), float %273)
  %275 = load i32, i32* %10, align 4
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %275, %278
  %280 = zext i1 %279 to i32
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = sitofp i32 %283 to float
  %285 = load i32, i32* %10, align 4
  %286 = call i32 (i32, i8*, float, ...) @ok(i32 %280, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), float %284, i32 %285)
  %287 = load i32*, i32** %12, align 8
  %288 = call i32 @IAudioStreamVolume_Release(i32* %287)
  %289 = load i32*, i32** %11, align 8
  %290 = call i32 @IChannelAudioVolume_Release(i32* %289)
  %291 = load i32*, i32** %2, align 8
  %292 = call i32 @IAudioClient_Release(i32* %291)
  br label %295

293:                                              ; preds = %196
  %294 = call i32 @skip(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.19, i64 0, i64 0))
  br label %295

295:                                              ; preds = %293, %200
  %296 = load i32*, i32** %4, align 8
  %297 = call float @IChannelAudioVolume_SetChannelVolume(i32* %296, i32 0, float 1.000000e+00, i32* null)
  store float %297, float* %7, align 4
  %298 = load float, float* %7, align 4
  %299 = load float, float* @S_OK, align 4
  %300 = fcmp oeq float %298, %299
  %301 = zext i1 %300 to i32
  %302 = load float, float* %7, align 4
  %303 = call i32 (i32, i8*, float, ...) @ok(i32 %301, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), float %302)
  %304 = load i32*, i32** %3, align 8
  %305 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %304, float 1.000000e+00, i32* null)
  store float %305, float* %7, align 4
  %306 = load float, float* %7, align 4
  %307 = load float, float* @S_OK, align 4
  %308 = fcmp oeq float %306, %307
  %309 = zext i1 %308 to i32
  %310 = load float, float* %7, align 4
  %311 = call i32 (i32, i8*, float, ...) @ok(i32 %309, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), float %310)
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %313 = call i32 @CoTaskMemFree(%struct.TYPE_5__* %312)
  %314 = load i32*, i32** %3, align 8
  %315 = call i32 @ISimpleAudioVolume_Release(i32* %314)
  %316 = load i32*, i32** %4, align 8
  %317 = call i32 @IChannelAudioVolume_Release(i32* %316)
  %318 = load i32*, i32** %5, align 8
  %319 = call i32 @IAudioStreamVolume_Release(i32* %318)
  %320 = load i32*, i32** %1, align 8
  %321 = call i32 @IAudioClient_Release(i32* %320)
  br label %322

322:                                              ; preds = %295, %71, %33
  ret void
}

declare dso_local float @CoCreateGuid(i32*) #1

declare dso_local i32 @ok(i32, i8*, float, ...) #1

declare dso_local float @IMMDevice_Activate(i32, i32*, i32, i32*, i8**) #1

declare dso_local float @IAudioClient_GetMixFormat(i32*, %struct.TYPE_5__**) #1

declare dso_local float @IAudioClient_Initialize(i32*, i32, i32, i32, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local float @IAudioClient_GetService(i32*, i32*, i8**) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_5__*) #1

declare dso_local float @IAudioStreamVolume_SetChannelVolume(i32*, i32, float) #1

declare dso_local float @IChannelAudioVolume_SetChannelVolume(i32*, i32, float, i32*) #1

declare dso_local float @ISimpleAudioVolume_SetMasterVolume(i32*, float, i32*) #1

declare dso_local float @IAudioStreamVolume_GetChannelVolume(i32*, i32, float*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @IChannelAudioVolume_GetChannelVolume(i32*, i32, float*) #1

declare dso_local float @ISimpleAudioVolume_GetMasterVolume(i32*, float*) #1

declare dso_local float @IChannelAudioVolume_GetChannelCount(i32*, i32*) #1

declare dso_local float @IAudioStreamVolume_GetChannelCount(i32*, i32*) #1

declare dso_local i32 @IAudioStreamVolume_Release(i32*) #1

declare dso_local i32 @IChannelAudioVolume_Release(i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ISimpleAudioVolume_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
