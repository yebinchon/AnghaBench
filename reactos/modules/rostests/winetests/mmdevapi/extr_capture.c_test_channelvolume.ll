; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_capture.c_test_channelvolume.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_capture.c_test_channelvolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@dev = common dso_local global i32 0, align 4
@IID_IAudioClient = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@S_OK = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [29 x i8] c"Activation failed with %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"GetMixFormat failed: %08x\0A\00", align 1
@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@AUDCLNT_STREAMFLAGS_NOPERSIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Initialize failed: %08x\0A\00", align 1
@IID_IChannelAudioVolume = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"GetService failed: %08x\0A\00", align 1
@NULL_PTR_ERR = common dso_local global float 0.000000e+00, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"GetChannelCount gave wrong error: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"GetChannelCount failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"GetChannelCount gave wrong number of channels: %d\0A\00", align 1
@E_INVALIDARG = common dso_local global float 0.000000e+00, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Channel volume was not 1: %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"SetChannelVolume gave wrong error: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"SetChannelVolume failed: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Channel volume wasn't 0.2: %f\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"GetAllVolumes gave wrong error: %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"HeapAlloc failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"GetAllVolumes failed: %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Channel 0 volume wasn't 0.2: %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Channel %d volume is not 1: %f\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"SetAllVolumes gave wrong error: %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"SetAllVolumes failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_channelvolume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_channelvolume() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = load i32, i32* @dev, align 4
  %10 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %11 = bitcast i32** %1 to i8**
  %12 = call float @IMMDevice_Activate(i32 %9, i32* @IID_IAudioClient, i32 %10, i32* null, i8** %11)
  store float %12, float* %6, align 4
  %13 = load float, float* %6, align 4
  %14 = load float, float* @S_OK, align 4
  %15 = fcmp oeq float %13, %14
  %16 = zext i1 %15 to i32
  %17 = load float, float* %6, align 4
  %18 = fpext float %17 to double
  %19 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), double %18)
  %20 = load float, float* %6, align 4
  %21 = load float, float* @S_OK, align 4
  %22 = fcmp une float %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  br label %356

24:                                               ; preds = %0
  %25 = load i32*, i32** %1, align 8
  %26 = call float @IAudioClient_GetMixFormat(i32* %25, %struct.TYPE_5__** %3)
  store float %26, float* %6, align 4
  %27 = load float, float* %6, align 4
  %28 = load float, float* @S_OK, align 4
  %29 = fcmp oeq float %27, %28
  %30 = zext i1 %29 to i32
  %31 = load float, float* %6, align 4
  %32 = fpext float %31 to double
  %33 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), double %32)
  %34 = load i32*, i32** %1, align 8
  %35 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %36 = load i32, i32* @AUDCLNT_STREAMFLAGS_NOPERSIST, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = call float @IAudioClient_Initialize(i32* %34, i32 %35, i32 %36, i32 5000000, i32 0, %struct.TYPE_5__* %37, i32* null)
  store float %38, float* %6, align 4
  %39 = load float, float* %6, align 4
  %40 = load float, float* @S_OK, align 4
  %41 = fcmp oeq float %39, %40
  %42 = zext i1 %41 to i32
  %43 = load float, float* %6, align 4
  %44 = fpext float %43 to double
  %45 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), double %44)
  %46 = load i32*, i32** %1, align 8
  %47 = bitcast i32** %2 to i8**
  %48 = call float @IAudioClient_GetService(i32* %46, i32* @IID_IChannelAudioVolume, i8** %47)
  store float %48, float* %6, align 4
  %49 = load float, float* %6, align 4
  %50 = load float, float* @S_OK, align 4
  %51 = fcmp oeq float %49, %50
  %52 = zext i1 %51 to i32
  %53 = load float, float* %6, align 4
  %54 = fpext float %53 to double
  %55 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), double %54)
  %56 = load float, float* %6, align 4
  %57 = load float, float* @S_OK, align 4
  %58 = fcmp une float %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %24
  br label %356

60:                                               ; preds = %24
  %61 = load i32*, i32** %2, align 8
  %62 = call float @IChannelAudioVolume_GetChannelCount(i32* %61, i64* null)
  store float %62, float* %6, align 4
  %63 = load float, float* %6, align 4
  %64 = load float, float* @NULL_PTR_ERR, align 4
  %65 = fcmp oeq float %63, %64
  %66 = zext i1 %65 to i32
  %67 = load float, float* %6, align 4
  %68 = fpext float %67 to double
  %69 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), double %68)
  %70 = load i32*, i32** %2, align 8
  %71 = call float @IChannelAudioVolume_GetChannelCount(i32* %70, i64* %4)
  store float %71, float* %6, align 4
  %72 = load float, float* %6, align 4
  %73 = load float, float* @S_OK, align 4
  %74 = fcmp oeq float %72, %73
  %75 = zext i1 %74 to i32
  %76 = load float, float* %6, align 4
  %77 = fpext float %76 to double
  %78 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %77)
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %4, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i64 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call float @IChannelAudioVolume_GetChannelVolume(i32* %87, i64 %90, float* null)
  store float %91, float* %6, align 4
  %92 = load float, float* %6, align 4
  %93 = load float, float* @NULL_PTR_ERR, align 4
  %94 = fcmp oeq float %92, %93
  %95 = zext i1 %94 to i32
  %96 = load float, float* %6, align 4
  %97 = fpext float %96 to double
  %98 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), double %97)
  %99 = load i32*, i32** %2, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call float @IChannelAudioVolume_GetChannelVolume(i32* %99, i64 %102, float* %7)
  store float %103, float* %6, align 4
  %104 = load float, float* %6, align 4
  %105 = load float, float* @E_INVALIDARG, align 4
  %106 = fcmp oeq float %104, %105
  %107 = zext i1 %106 to i32
  %108 = load float, float* %6, align 4
  %109 = fpext float %108 to double
  %110 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), double %109)
  %111 = load i32*, i32** %2, align 8
  %112 = call float @IChannelAudioVolume_GetChannelVolume(i32* %111, i64 0, float* null)
  store float %112, float* %6, align 4
  %113 = load float, float* %6, align 4
  %114 = load float, float* @NULL_PTR_ERR, align 4
  %115 = fcmp oeq float %113, %114
  %116 = zext i1 %115 to i32
  %117 = load float, float* %6, align 4
  %118 = fpext float %117 to double
  %119 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), double %118)
  %120 = load i32*, i32** %2, align 8
  %121 = call float @IChannelAudioVolume_GetChannelVolume(i32* %120, i64 0, float* %7)
  store float %121, float* %6, align 4
  %122 = load float, float* %6, align 4
  %123 = load float, float* @S_OK, align 4
  %124 = fcmp oeq float %122, %123
  %125 = zext i1 %124 to i32
  %126 = load float, float* %6, align 4
  %127 = fpext float %126 to double
  %128 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %127)
  %129 = load float, float* %7, align 4
  %130 = fcmp oeq float %129, 1.000000e+00
  %131 = zext i1 %130 to i32
  %132 = load float, float* %7, align 4
  %133 = fpext float %132 to double
  %134 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), double %133)
  %135 = load i32*, i32** %2, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call float @IChannelAudioVolume_SetChannelVolume(i32* %135, i64 %138, float -1.000000e+00, i32* null)
  store float %139, float* %6, align 4
  %140 = load float, float* %6, align 4
  %141 = load float, float* @E_INVALIDARG, align 4
  %142 = fcmp oeq float %140, %141
  %143 = zext i1 %142 to i32
  %144 = load float, float* %6, align 4
  %145 = fpext float %144 to double
  %146 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), double %145)
  %147 = load i32*, i32** %2, align 8
  %148 = call float @IChannelAudioVolume_SetChannelVolume(i32* %147, i64 0, float -1.000000e+00, i32* null)
  store float %148, float* %6, align 4
  %149 = load float, float* %6, align 4
  %150 = load float, float* @E_INVALIDARG, align 4
  %151 = fcmp oeq float %149, %150
  %152 = zext i1 %151 to i32
  %153 = load float, float* %6, align 4
  %154 = fpext float %153 to double
  %155 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), double %154)
  %156 = load i32*, i32** %2, align 8
  %157 = call float @IChannelAudioVolume_SetChannelVolume(i32* %156, i64 0, float 2.000000e+00, i32* null)
  store float %157, float* %6, align 4
  %158 = load float, float* %6, align 4
  %159 = load float, float* @E_INVALIDARG, align 4
  %160 = fcmp oeq float %158, %159
  %161 = zext i1 %160 to i32
  %162 = load float, float* %6, align 4
  %163 = fpext float %162 to double
  %164 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), double %163)
  %165 = load i32*, i32** %2, align 8
  %166 = call float @IChannelAudioVolume_SetChannelVolume(i32* %165, i64 0, float 0x3FC99999A0000000, i32* null)
  store float %166, float* %6, align 4
  %167 = load float, float* %6, align 4
  %168 = load float, float* @S_OK, align 4
  %169 = fcmp oeq float %167, %168
  %170 = zext i1 %169 to i32
  %171 = load float, float* %6, align 4
  %172 = fpext float %171 to double
  %173 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), double %172)
  %174 = load i32*, i32** %2, align 8
  %175 = call float @IChannelAudioVolume_GetChannelVolume(i32* %174, i64 0, float* %7)
  store float %175, float* %6, align 4
  %176 = load float, float* %6, align 4
  %177 = load float, float* @S_OK, align 4
  %178 = fcmp oeq float %176, %177
  %179 = zext i1 %178 to i32
  %180 = load float, float* %6, align 4
  %181 = fpext float %180 to double
  %182 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %181)
  %183 = load float, float* %7, align 4
  %184 = fsub float %183, 0x3FC99999A0000000
  %185 = call float @llvm.fabs.f32(float %184)
  %186 = fcmp olt float %185, 0x3FA99999A0000000
  %187 = zext i1 %186 to i32
  %188 = load float, float* %7, align 4
  %189 = fpext float %188 to double
  %190 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), double %189)
  %191 = load i32*, i32** %2, align 8
  %192 = call float @IChannelAudioVolume_GetAllVolumes(i32* %191, i32 0, float* null)
  store float %192, float* %6, align 4
  %193 = load float, float* %6, align 4
  %194 = load float, float* @NULL_PTR_ERR, align 4
  %195 = fcmp oeq float %193, %194
  %196 = zext i1 %195 to i32
  %197 = load float, float* %6, align 4
  %198 = fpext float %197 to double
  %199 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), double %198)
  %200 = load i32*, i32** %2, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = call float @IChannelAudioVolume_GetAllVolumes(i32* %200, i32 %204, float* null)
  store float %205, float* %6, align 4
  %206 = load float, float* %6, align 4
  %207 = load float, float* @NULL_PTR_ERR, align 4
  %208 = fcmp oeq float %206, %207
  %209 = zext i1 %208 to i32
  %210 = load float, float* %6, align 4
  %211 = fpext float %210 to double
  %212 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), double %211)
  %213 = call i32 (...) @GetProcessHeap()
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = mul i64 %216, 4
  %218 = trunc i64 %217 to i32
  %219 = call float* @HeapAlloc(i32 %213, i32 0, i32 %218)
  store float* %219, float** %8, align 8
  %220 = load float*, float** %8, align 8
  %221 = icmp ne float* %220, null
  %222 = zext i1 %221 to i32
  %223 = call i32 (i32, i8*, ...) @ok(i32 %222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %224 = load i32*, i32** %2, align 8
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = sub i64 %227, 1
  %229 = trunc i64 %228 to i32
  %230 = load float*, float** %8, align 8
  %231 = call float @IChannelAudioVolume_GetAllVolumes(i32* %224, i32 %229, float* %230)
  store float %231, float* %6, align 4
  %232 = load float, float* %6, align 4
  %233 = load float, float* @E_INVALIDARG, align 4
  %234 = fcmp oeq float %232, %233
  %235 = zext i1 %234 to i32
  %236 = load float, float* %6, align 4
  %237 = fpext float %236 to double
  %238 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), double %237)
  %239 = load i32*, i32** %2, align 8
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = load float*, float** %8, align 8
  %245 = call float @IChannelAudioVolume_GetAllVolumes(i32* %239, i32 %243, float* %244)
  store float %245, float* %6, align 4
  %246 = load float, float* %6, align 4
  %247 = load float, float* @S_OK, align 4
  %248 = fcmp oeq float %246, %247
  %249 = zext i1 %248 to i32
  %250 = load float, float* %6, align 4
  %251 = fpext float %250 to double
  %252 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), double %251)
  %253 = load float*, float** %8, align 8
  %254 = getelementptr inbounds float, float* %253, i64 0
  %255 = load float, float* %254, align 4
  %256 = fsub float %255, 0x3FC99999A0000000
  %257 = call float @llvm.fabs.f32(float %256)
  %258 = fcmp olt float %257, 0x3FA99999A0000000
  %259 = zext i1 %258 to i32
  %260 = load float, float* %7, align 4
  %261 = fpext float %260 to double
  %262 = call i32 (i32, i8*, ...) @ok(i32 %259, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), double %261)
  store i64 1, i64* %5, align 8
  br label %263

263:                                              ; preds = %283, %60
  %264 = load i64, i64* %5, align 8
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ult i64 %264, %267
  br i1 %268, label %269, label %286

269:                                              ; preds = %263
  %270 = load float*, float** %8, align 8
  %271 = load i64, i64* %5, align 8
  %272 = getelementptr inbounds float, float* %270, i64 %271
  %273 = load float, float* %272, align 4
  %274 = fcmp oeq float %273, 1.000000e+00
  %275 = zext i1 %274 to i32
  %276 = load i64, i64* %5, align 8
  %277 = load float*, float** %8, align 8
  %278 = load i64, i64* %5, align 8
  %279 = getelementptr inbounds float, float* %277, i64 %278
  %280 = load float, float* %279, align 4
  %281 = fpext float %280 to double
  %282 = call i32 (i32, i8*, ...) @ok(i32 %275, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i64 %276, double %281)
  br label %283

283:                                              ; preds = %269
  %284 = load i64, i64* %5, align 8
  %285 = add i64 %284, 1
  store i64 %285, i64* %5, align 8
  br label %263

286:                                              ; preds = %263
  %287 = load i32*, i32** %2, align 8
  %288 = call float @IChannelAudioVolume_SetAllVolumes(i32* %287, i32 0, float* null, i32* null)
  store float %288, float* %6, align 4
  %289 = load float, float* %6, align 4
  %290 = load float, float* @NULL_PTR_ERR, align 4
  %291 = fcmp oeq float %289, %290
  %292 = zext i1 %291 to i32
  %293 = load float, float* %6, align 4
  %294 = fpext float %293 to double
  %295 = call i32 (i32, i8*, ...) @ok(i32 %292, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), double %294)
  %296 = load i32*, i32** %2, align 8
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = trunc i64 %299 to i32
  %301 = call float @IChannelAudioVolume_SetAllVolumes(i32* %296, i32 %300, float* null, i32* null)
  store float %301, float* %6, align 4
  %302 = load float, float* %6, align 4
  %303 = load float, float* @NULL_PTR_ERR, align 4
  %304 = fcmp oeq float %302, %303
  %305 = zext i1 %304 to i32
  %306 = load float, float* %6, align 4
  %307 = fpext float %306 to double
  %308 = call i32 (i32, i8*, ...) @ok(i32 %305, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), double %307)
  %309 = load i32*, i32** %2, align 8
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = sub i64 %312, 1
  %314 = trunc i64 %313 to i32
  %315 = load float*, float** %8, align 8
  %316 = call float @IChannelAudioVolume_SetAllVolumes(i32* %309, i32 %314, float* %315, i32* null)
  store float %316, float* %6, align 4
  %317 = load float, float* %6, align 4
  %318 = load float, float* @E_INVALIDARG, align 4
  %319 = fcmp oeq float %317, %318
  %320 = zext i1 %319 to i32
  %321 = load float, float* %6, align 4
  %322 = fpext float %321 to double
  %323 = call i32 (i32, i8*, ...) @ok(i32 %320, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), double %322)
  %324 = load i32*, i32** %2, align 8
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = trunc i64 %327 to i32
  %329 = load float*, float** %8, align 8
  %330 = call float @IChannelAudioVolume_SetAllVolumes(i32* %324, i32 %328, float* %329, i32* null)
  store float %330, float* %6, align 4
  %331 = load float, float* %6, align 4
  %332 = load float, float* @S_OK, align 4
  %333 = fcmp oeq float %331, %332
  %334 = zext i1 %333 to i32
  %335 = load float, float* %6, align 4
  %336 = fpext float %335 to double
  %337 = call i32 (i32, i8*, ...) @ok(i32 %334, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), double %336)
  %338 = load i32*, i32** %2, align 8
  %339 = call float @IChannelAudioVolume_SetChannelVolume(i32* %338, i64 0, float 1.000000e+00, i32* null)
  store float %339, float* %6, align 4
  %340 = load float, float* %6, align 4
  %341 = load float, float* @S_OK, align 4
  %342 = fcmp oeq float %340, %341
  %343 = zext i1 %342 to i32
  %344 = load float, float* %6, align 4
  %345 = fpext float %344 to double
  %346 = call i32 (i32, i8*, ...) @ok(i32 %343, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), double %345)
  %347 = call i32 (...) @GetProcessHeap()
  %348 = load float*, float** %8, align 8
  %349 = call i32 @HeapFree(i32 %347, i32 0, float* %348)
  %350 = load i32*, i32** %2, align 8
  %351 = call i32 @IChannelAudioVolume_Release(i32* %350)
  %352 = load i32*, i32** %1, align 8
  %353 = call i32 @IAudioClient_Release(i32* %352)
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %355 = call i32 @CoTaskMemFree(%struct.TYPE_5__* %354)
  br label %356

356:                                              ; preds = %286, %59, %23
  ret void
}

declare dso_local float @IMMDevice_Activate(i32, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local float @IAudioClient_GetMixFormat(i32*, %struct.TYPE_5__**) #1

declare dso_local float @IAudioClient_Initialize(i32*, i32, i32, i32, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local float @IAudioClient_GetService(i32*, i32*, i8**) #1

declare dso_local float @IChannelAudioVolume_GetChannelCount(i32*, i64*) #1

declare dso_local float @IChannelAudioVolume_GetChannelVolume(i32*, i64, float*) #1

declare dso_local float @IChannelAudioVolume_SetChannelVolume(i32*, i64, float, i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @IChannelAudioVolume_GetAllVolumes(i32*, i32, float*) #1

declare dso_local float* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local float @IChannelAudioVolume_SetAllVolumes(i32*, i32, float*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, float*) #1

declare dso_local i32 @IChannelAudioVolume_Release(i32*) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
