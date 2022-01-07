; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_capture.c_test_volume_dependence.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_capture.c_test_volume_dependence.c"
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
  br label %295

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
  %54 = load i32*, i32** %1, align 8
  %55 = bitcast i32** %3 to i8**
  %56 = call float @IAudioClient_GetService(i32* %54, i32* @IID_ISimpleAudioVolume, i8** %55)
  store float %56, float* %7, align 4
  %57 = load float, float* %7, align 4
  %58 = load float, float* @S_OK, align 4
  %59 = fcmp oeq float %57, %58
  %60 = zext i1 %59 to i32
  %61 = load float, float* %7, align 4
  %62 = call i32 (i32, i8*, float, ...) @ok(i32 %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), float %61)
  %63 = load i32*, i32** %1, align 8
  %64 = bitcast i32** %4 to i8**
  %65 = call float @IAudioClient_GetService(i32* %63, i32* @IID_IChannelAudioVolume, i8** %64)
  store float %65, float* %7, align 4
  %66 = load float, float* %7, align 4
  %67 = load float, float* @S_OK, align 4
  %68 = fcmp oeq float %66, %67
  %69 = zext i1 %68 to i32
  %70 = load float, float* %7, align 4
  %71 = call i32 (i32, i8*, float, ...) @ok(i32 %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), float %70)
  %72 = load i32*, i32** %1, align 8
  %73 = bitcast i32** %5 to i8**
  %74 = call float @IAudioClient_GetService(i32* %72, i32* @IID_IAudioStreamVolume, i8** %73)
  store float %74, float* %7, align 4
  %75 = load float, float* %7, align 4
  %76 = load float, float* @S_OK, align 4
  %77 = fcmp oeq float %75, %76
  %78 = zext i1 %77 to i32
  %79 = load float, float* %7, align 4
  %80 = call i32 (i32, i8*, float, ...) @ok(i32 %78, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), float %79)
  %81 = load float, float* %7, align 4
  %82 = load float, float* @S_OK, align 4
  %83 = fcmp une float %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %34
  br label %295

85:                                               ; preds = %34
  %86 = load i32*, i32** %5, align 8
  %87 = call float @IAudioStreamVolume_SetChannelVolume(i32* %86, i32 0, float 0x3FC99999A0000000)
  store float %87, float* %7, align 4
  %88 = load float, float* %7, align 4
  %89 = load float, float* @S_OK, align 4
  %90 = fcmp oeq float %88, %89
  %91 = zext i1 %90 to i32
  %92 = load float, float* %7, align 4
  %93 = call i32 (i32, i8*, float, ...) @ok(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), float %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call float @IChannelAudioVolume_SetChannelVolume(i32* %94, i32 0, float 0x3FD99999A0000000, i32* null)
  store float %95, float* %7, align 4
  %96 = load float, float* %7, align 4
  %97 = load float, float* @S_OK, align 4
  %98 = fcmp oeq float %96, %97
  %99 = zext i1 %98 to i32
  %100 = load float, float* %7, align 4
  %101 = call i32 (i32, i8*, float, ...) @ok(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), float %100)
  %102 = load i32*, i32** %3, align 8
  %103 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %102, float 0x3FE3333340000000, i32* null)
  store float %103, float* %7, align 4
  %104 = load float, float* %7, align 4
  %105 = load float, float* @S_OK, align 4
  %106 = fcmp oeq float %104, %105
  %107 = zext i1 %106 to i32
  %108 = load float, float* %7, align 4
  %109 = call i32 (i32, i8*, float, ...) @ok(i32 %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), float %108)
  %110 = load i32*, i32** %5, align 8
  %111 = call float @IAudioStreamVolume_GetChannelVolume(i32* %110, i32 0, float* %8)
  store float %111, float* %7, align 4
  %112 = load float, float* %7, align 4
  %113 = load float, float* @S_OK, align 4
  %114 = fcmp oeq float %112, %113
  %115 = zext i1 %114 to i32
  %116 = load float, float* %7, align 4
  %117 = call i32 (i32, i8*, float, ...) @ok(i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), float %116)
  %118 = load float, float* %8, align 4
  %119 = fsub float %118, 0x3FC99999A0000000
  %120 = call float @llvm.fabs.f32(float %119)
  %121 = fcmp olt float %120, 0x3FA99999A0000000
  %122 = zext i1 %121 to i32
  %123 = load float, float* %8, align 4
  %124 = call i32 (i32, i8*, float, ...) @ok(i32 %122, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), float %123)
  %125 = load i32*, i32** %4, align 8
  %126 = call float @IChannelAudioVolume_GetChannelVolume(i32* %125, i32 0, float* %8)
  store float %126, float* %7, align 4
  %127 = load float, float* %7, align 4
  %128 = load float, float* @S_OK, align 4
  %129 = fcmp oeq float %127, %128
  %130 = zext i1 %129 to i32
  %131 = load float, float* %7, align 4
  %132 = call i32 (i32, i8*, float, ...) @ok(i32 %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), float %131)
  %133 = load float, float* %8, align 4
  %134 = fsub float %133, 0x3FD99999A0000000
  %135 = call float @llvm.fabs.f32(float %134)
  %136 = fcmp olt float %135, 0x3FA99999A0000000
  %137 = zext i1 %136 to i32
  %138 = load float, float* %8, align 4
  %139 = call i32 (i32, i8*, float, ...) @ok(i32 %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), float %138)
  %140 = load i32*, i32** %3, align 8
  %141 = call float @ISimpleAudioVolume_GetMasterVolume(i32* %140, float* %8)
  store float %141, float* %7, align 4
  %142 = load float, float* %7, align 4
  %143 = load float, float* @S_OK, align 4
  %144 = fcmp oeq float %142, %143
  %145 = zext i1 %144 to i32
  %146 = load float, float* %7, align 4
  %147 = call i32 (i32, i8*, float, ...) @ok(i32 %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), float %146)
  %148 = load float, float* %8, align 4
  %149 = fsub float %148, 0x3FE3333340000000
  %150 = call float @llvm.fabs.f32(float %149)
  %151 = fcmp olt float %150, 0x3FA99999A0000000
  %152 = zext i1 %151 to i32
  %153 = load float, float* %8, align 4
  %154 = call i32 (i32, i8*, float, ...) @ok(i32 %152, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), float %153)
  %155 = load i32, i32* @dev, align 4
  %156 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %157 = bitcast i32** %2 to i8**
  %158 = call float @IMMDevice_Activate(i32 %155, i32* @IID_IAudioClient, i32 %156, i32* null, i8** %157)
  store float %158, float* %7, align 4
  %159 = load float, float* %7, align 4
  %160 = call i64 @SUCCEEDED(float %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %266

162:                                              ; preds = %85
  %163 = load i32*, i32** %2, align 8
  %164 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %165 = load i32, i32* @AUDCLNT_STREAMFLAGS_NOPERSIST, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %167 = call float @IAudioClient_Initialize(i32* %163, i32 %164, i32 %165, i32 5000000, i32 0, %struct.TYPE_5__* %166, i32* %9)
  store float %167, float* %7, align 4
  %168 = load float, float* %7, align 4
  %169 = load float, float* @S_OK, align 4
  %170 = fcmp oeq float %168, %169
  %171 = zext i1 %170 to i32
  %172 = load float, float* %7, align 4
  %173 = call i32 (i32, i8*, float, ...) @ok(i32 %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), float %172)
  %174 = load i32*, i32** %2, align 8
  %175 = bitcast i32** %11 to i8**
  %176 = call float @IAudioClient_GetService(i32* %174, i32* @IID_IChannelAudioVolume, i8** %175)
  store float %176, float* %7, align 4
  %177 = load float, float* %7, align 4
  %178 = load float, float* @S_OK, align 4
  %179 = fcmp oeq float %177, %178
  %180 = zext i1 %179 to i32
  %181 = load float, float* %7, align 4
  %182 = call i32 (i32, i8*, float, ...) @ok(i32 %180, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), float %181)
  %183 = load i32*, i32** %2, align 8
  %184 = bitcast i32** %12 to i8**
  %185 = call float @IAudioClient_GetService(i32* %183, i32* @IID_IAudioStreamVolume, i8** %184)
  store float %185, float* %7, align 4
  %186 = load float, float* %7, align 4
  %187 = load float, float* @S_OK, align 4
  %188 = fcmp oeq float %186, %187
  %189 = zext i1 %188 to i32
  %190 = load float, float* %7, align 4
  %191 = call i32 (i32, i8*, float, ...) @ok(i32 %189, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), float %190)
  %192 = load i32*, i32** %11, align 8
  %193 = call float @IChannelAudioVolume_GetChannelVolume(i32* %192, i32 0, float* %8)
  store float %193, float* %7, align 4
  %194 = load float, float* %7, align 4
  %195 = load float, float* @S_OK, align 4
  %196 = fcmp oeq float %194, %195
  %197 = zext i1 %196 to i32
  %198 = load float, float* %7, align 4
  %199 = call i32 (i32, i8*, float, ...) @ok(i32 %197, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), float %198)
  %200 = load float, float* %8, align 4
  %201 = fsub float %200, 0x3FD99999A0000000
  %202 = call float @llvm.fabs.f32(float %201)
  %203 = fcmp olt float %202, 0x3FA99999A0000000
  %204 = zext i1 %203 to i32
  %205 = load float, float* %8, align 4
  %206 = call i32 (i32, i8*, float, ...) @ok(i32 %204, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), float %205)
  %207 = load i32*, i32** %12, align 8
  %208 = call float @IAudioStreamVolume_GetChannelVolume(i32* %207, i32 0, float* %8)
  store float %208, float* %7, align 4
  %209 = load float, float* %7, align 4
  %210 = load float, float* @S_OK, align 4
  %211 = fcmp oeq float %209, %210
  %212 = zext i1 %211 to i32
  %213 = load float, float* %7, align 4
  %214 = call i32 (i32, i8*, float, ...) @ok(i32 %212, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), float %213)
  %215 = load float, float* %8, align 4
  %216 = fcmp oeq float %215, 1.000000e+00
  %217 = zext i1 %216 to i32
  %218 = load float, float* %8, align 4
  %219 = call i32 (i32, i8*, float, ...) @ok(i32 %217, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), float %218)
  %220 = load i32*, i32** %11, align 8
  %221 = call float @IChannelAudioVolume_GetChannelCount(i32* %220, i32* %10)
  store float %221, float* %7, align 4
  %222 = load float, float* %7, align 4
  %223 = load float, float* @S_OK, align 4
  %224 = fcmp oeq float %222, %223
  %225 = zext i1 %224 to i32
  %226 = load float, float* %7, align 4
  %227 = call i32 (i32, i8*, float, ...) @ok(i32 %225, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), float %226)
  %228 = load i32, i32* %10, align 4
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %228, %231
  %233 = zext i1 %232 to i32
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = sitofp i32 %236 to float
  %238 = load i32, i32* %10, align 4
  %239 = call i32 (i32, i8*, float, ...) @ok(i32 %233, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), float %237, i32 %238)
  %240 = load i32*, i32** %12, align 8
  %241 = call float @IAudioStreamVolume_GetChannelCount(i32* %240, i32* %10)
  store float %241, float* %7, align 4
  %242 = load float, float* %7, align 4
  %243 = load float, float* @S_OK, align 4
  %244 = fcmp oeq float %242, %243
  %245 = zext i1 %244 to i32
  %246 = load float, float* %7, align 4
  %247 = call i32 (i32, i8*, float, ...) @ok(i32 %245, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), float %246)
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %248, %251
  %253 = zext i1 %252 to i32
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = sitofp i32 %256 to float
  %258 = load i32, i32* %10, align 4
  %259 = call i32 (i32, i8*, float, ...) @ok(i32 %253, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), float %257, i32 %258)
  %260 = load i32*, i32** %12, align 8
  %261 = call i32 @IAudioStreamVolume_Release(i32* %260)
  %262 = load i32*, i32** %11, align 8
  %263 = call i32 @IChannelAudioVolume_Release(i32* %262)
  %264 = load i32*, i32** %2, align 8
  %265 = call i32 @IAudioClient_Release(i32* %264)
  br label %268

266:                                              ; preds = %85
  %267 = call i32 @skip(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.19, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %162
  %269 = load i32*, i32** %4, align 8
  %270 = call float @IChannelAudioVolume_SetChannelVolume(i32* %269, i32 0, float 1.000000e+00, i32* null)
  store float %270, float* %7, align 4
  %271 = load float, float* %7, align 4
  %272 = load float, float* @S_OK, align 4
  %273 = fcmp oeq float %271, %272
  %274 = zext i1 %273 to i32
  %275 = load float, float* %7, align 4
  %276 = call i32 (i32, i8*, float, ...) @ok(i32 %274, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), float %275)
  %277 = load i32*, i32** %3, align 8
  %278 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %277, float 1.000000e+00, i32* null)
  store float %278, float* %7, align 4
  %279 = load float, float* %7, align 4
  %280 = load float, float* @S_OK, align 4
  %281 = fcmp oeq float %279, %280
  %282 = zext i1 %281 to i32
  %283 = load float, float* %7, align 4
  %284 = call i32 (i32, i8*, float, ...) @ok(i32 %282, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), float %283)
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %286 = call i32 @CoTaskMemFree(%struct.TYPE_5__* %285)
  %287 = load i32*, i32** %3, align 8
  %288 = call i32 @ISimpleAudioVolume_Release(i32* %287)
  %289 = load i32*, i32** %4, align 8
  %290 = call i32 @IChannelAudioVolume_Release(i32* %289)
  %291 = load i32*, i32** %5, align 8
  %292 = call i32 @IAudioStreamVolume_Release(i32* %291)
  %293 = load i32*, i32** %1, align 8
  %294 = call i32 @IAudioClient_Release(i32* %293)
  br label %295

295:                                              ; preds = %268, %84, %33
  ret void
}

declare dso_local float @CoCreateGuid(i32*) #1

declare dso_local i32 @ok(i32, i8*, float, ...) #1

declare dso_local float @IMMDevice_Activate(i32, i32*, i32, i32*, i8**) #1

declare dso_local float @IAudioClient_GetMixFormat(i32*, %struct.TYPE_5__**) #1

declare dso_local float @IAudioClient_Initialize(i32*, i32, i32, i32, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local float @IAudioClient_GetService(i32*, i32*, i8**) #1

declare dso_local float @IAudioStreamVolume_SetChannelVolume(i32*, i32, float) #1

declare dso_local float @IChannelAudioVolume_SetChannelVolume(i32*, i32, float, i32*) #1

declare dso_local float @ISimpleAudioVolume_SetMasterVolume(i32*, float, i32*) #1

declare dso_local float @IAudioStreamVolume_GetChannelVolume(i32*, i32, float*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @IChannelAudioVolume_GetChannelVolume(i32*, i32, float*) #1

declare dso_local float @ISimpleAudioVolume_GetMasterVolume(i32*, float*) #1

declare dso_local i64 @SUCCEEDED(float) #1

declare dso_local float @IChannelAudioVolume_GetChannelCount(i32*, i32*) #1

declare dso_local float @IAudioStreamVolume_GetChannelCount(i32*, i32*) #1

declare dso_local i32 @IAudioStreamVolume_Release(i32*) #1

declare dso_local i32 @IChannelAudioVolume_Release(i32*) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_5__*) #1

declare dso_local i32 @ISimpleAudioVolume_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
