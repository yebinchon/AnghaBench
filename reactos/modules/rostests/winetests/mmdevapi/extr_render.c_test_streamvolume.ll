; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_streamvolume.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_streamvolume.c"
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
@.str.2 = private unnamed_addr constant [25 x i8] c"Initialize failed: %08x\0A\00", align 1
@IID_IAudioStreamVolume = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"GetService failed: %08x\0A\00", align 1
@E_POINTER = common dso_local global float 0.000000e+00, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_streamvolume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_streamvolume() #0 {
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
  br label %355

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
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = call float @IAudioClient_Initialize(i32* %34, i32 %35, i32 0, i32 5000000, i32 0, %struct.TYPE_5__* %36, i32* null)
  store float %37, float* %6, align 4
  %38 = load float, float* %6, align 4
  %39 = load float, float* @S_OK, align 4
  %40 = fcmp oeq float %38, %39
  %41 = zext i1 %40 to i32
  %42 = load float, float* %6, align 4
  %43 = fpext float %42 to double
  %44 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), double %43)
  %45 = load float, float* %6, align 4
  %46 = load float, float* @S_OK, align 4
  %47 = fcmp oeq float %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %24
  %49 = load i32*, i32** %1, align 8
  %50 = bitcast i32** %2 to i8**
  %51 = call float @IAudioClient_GetService(i32* %49, i32* @IID_IAudioStreamVolume, i8** %50)
  store float %51, float* %6, align 4
  %52 = load float, float* %6, align 4
  %53 = load float, float* @S_OK, align 4
  %54 = fcmp oeq float %52, %53
  %55 = zext i1 %54 to i32
  %56 = load float, float* %6, align 4
  %57 = fpext float %56 to double
  %58 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), double %57)
  br label %59

59:                                               ; preds = %48, %24
  %60 = load float, float* %6, align 4
  %61 = load float, float* @S_OK, align 4
  %62 = fcmp une float %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @IAudioClient_Release(i32* %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = call i32 @CoTaskMemFree(%struct.TYPE_5__* %66)
  br label %355

68:                                               ; preds = %59
  %69 = load i32*, i32** %2, align 8
  %70 = call float @IAudioStreamVolume_GetChannelCount(i32* %69, i64* null)
  store float %70, float* %6, align 4
  %71 = load float, float* %6, align 4
  %72 = load float, float* @E_POINTER, align 4
  %73 = fcmp oeq float %71, %72
  %74 = zext i1 %73 to i32
  %75 = load float, float* %6, align 4
  %76 = fpext float %75 to double
  %77 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), double %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call float @IAudioStreamVolume_GetChannelCount(i32* %78, i64* %4)
  store float %79, float* %6, align 4
  %80 = load float, float* %6, align 4
  %81 = load float, float* @S_OK, align 4
  %82 = fcmp oeq float %80, %81
  %83 = zext i1 %82 to i32
  %84 = load float, float* %6, align 4
  %85 = fpext float %84 to double
  %86 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %85)
  %87 = load i64, i64* %4, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %4, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i64 %93)
  %95 = load i32*, i32** %2, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call float @IAudioStreamVolume_GetChannelVolume(i32* %95, i64 %98, float* null)
  store float %99, float* %6, align 4
  %100 = load float, float* %6, align 4
  %101 = load float, float* @E_POINTER, align 4
  %102 = fcmp oeq float %100, %101
  %103 = zext i1 %102 to i32
  %104 = load float, float* %6, align 4
  %105 = fpext float %104 to double
  %106 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), double %105)
  %107 = load i32*, i32** %2, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call float @IAudioStreamVolume_GetChannelVolume(i32* %107, i64 %110, float* %7)
  store float %111, float* %6, align 4
  %112 = load float, float* %6, align 4
  %113 = load float, float* @E_INVALIDARG, align 4
  %114 = fcmp oeq float %112, %113
  %115 = zext i1 %114 to i32
  %116 = load float, float* %6, align 4
  %117 = fpext float %116 to double
  %118 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), double %117)
  %119 = load i32*, i32** %2, align 8
  %120 = call float @IAudioStreamVolume_GetChannelVolume(i32* %119, i64 0, float* null)
  store float %120, float* %6, align 4
  %121 = load float, float* %6, align 4
  %122 = load float, float* @E_POINTER, align 4
  %123 = fcmp oeq float %121, %122
  %124 = zext i1 %123 to i32
  %125 = load float, float* %6, align 4
  %126 = fpext float %125 to double
  %127 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), double %126)
  %128 = load i32*, i32** %2, align 8
  %129 = call float @IAudioStreamVolume_GetChannelVolume(i32* %128, i64 0, float* %7)
  store float %129, float* %6, align 4
  %130 = load float, float* %6, align 4
  %131 = load float, float* @S_OK, align 4
  %132 = fcmp oeq float %130, %131
  %133 = zext i1 %132 to i32
  %134 = load float, float* %6, align 4
  %135 = fpext float %134 to double
  %136 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %135)
  %137 = load float, float* %7, align 4
  %138 = fcmp oeq float %137, 1.000000e+00
  %139 = zext i1 %138 to i32
  %140 = load float, float* %7, align 4
  %141 = fpext float %140 to double
  %142 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), double %141)
  %143 = load i32*, i32** %2, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call float @IAudioStreamVolume_SetChannelVolume(i32* %143, i64 %146, float -1.000000e+00)
  store float %147, float* %6, align 4
  %148 = load float, float* %6, align 4
  %149 = load float, float* @E_INVALIDARG, align 4
  %150 = fcmp oeq float %148, %149
  %151 = zext i1 %150 to i32
  %152 = load float, float* %6, align 4
  %153 = fpext float %152 to double
  %154 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), double %153)
  %155 = load i32*, i32** %2, align 8
  %156 = call float @IAudioStreamVolume_SetChannelVolume(i32* %155, i64 0, float -1.000000e+00)
  store float %156, float* %6, align 4
  %157 = load float, float* %6, align 4
  %158 = load float, float* @E_INVALIDARG, align 4
  %159 = fcmp oeq float %157, %158
  %160 = zext i1 %159 to i32
  %161 = load float, float* %6, align 4
  %162 = fpext float %161 to double
  %163 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), double %162)
  %164 = load i32*, i32** %2, align 8
  %165 = call float @IAudioStreamVolume_SetChannelVolume(i32* %164, i64 0, float 2.000000e+00)
  store float %165, float* %6, align 4
  %166 = load float, float* %6, align 4
  %167 = load float, float* @E_INVALIDARG, align 4
  %168 = fcmp oeq float %166, %167
  %169 = zext i1 %168 to i32
  %170 = load float, float* %6, align 4
  %171 = fpext float %170 to double
  %172 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), double %171)
  %173 = load i32*, i32** %2, align 8
  %174 = call float @IAudioStreamVolume_SetChannelVolume(i32* %173, i64 0, float 0x3FC99999A0000000)
  store float %174, float* %6, align 4
  %175 = load float, float* %6, align 4
  %176 = load float, float* @S_OK, align 4
  %177 = fcmp oeq float %175, %176
  %178 = zext i1 %177 to i32
  %179 = load float, float* %6, align 4
  %180 = fpext float %179 to double
  %181 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), double %180)
  %182 = load i32*, i32** %2, align 8
  %183 = call float @IAudioStreamVolume_GetChannelVolume(i32* %182, i64 0, float* %7)
  store float %183, float* %6, align 4
  %184 = load float, float* %6, align 4
  %185 = load float, float* @S_OK, align 4
  %186 = fcmp oeq float %184, %185
  %187 = zext i1 %186 to i32
  %188 = load float, float* %6, align 4
  %189 = fpext float %188 to double
  %190 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %189)
  %191 = load float, float* %7, align 4
  %192 = fsub float %191, 0x3FC99999A0000000
  %193 = call float @llvm.fabs.f32(float %192)
  %194 = fcmp olt float %193, 0x3FA99999A0000000
  %195 = zext i1 %194 to i32
  %196 = load float, float* %7, align 4
  %197 = fpext float %196 to double
  %198 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), double %197)
  %199 = load i32*, i32** %2, align 8
  %200 = call float @IAudioStreamVolume_GetAllVolumes(i32* %199, i32 0, float* null)
  store float %200, float* %6, align 4
  %201 = load float, float* %6, align 4
  %202 = load float, float* @E_POINTER, align 4
  %203 = fcmp oeq float %201, %202
  %204 = zext i1 %203 to i32
  %205 = load float, float* %6, align 4
  %206 = fpext float %205 to double
  %207 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), double %206)
  %208 = load i32*, i32** %2, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = call float @IAudioStreamVolume_GetAllVolumes(i32* %208, i32 %212, float* null)
  store float %213, float* %6, align 4
  %214 = load float, float* %6, align 4
  %215 = load float, float* @E_POINTER, align 4
  %216 = fcmp oeq float %214, %215
  %217 = zext i1 %216 to i32
  %218 = load float, float* %6, align 4
  %219 = fpext float %218 to double
  %220 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), double %219)
  %221 = call i32 (...) @GetProcessHeap()
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = mul i64 %224, 4
  %226 = trunc i64 %225 to i32
  %227 = call float* @HeapAlloc(i32 %221, i32 0, i32 %226)
  store float* %227, float** %8, align 8
  %228 = load float*, float** %8, align 8
  %229 = icmp ne float* %228, null
  %230 = zext i1 %229 to i32
  %231 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %232 = load i32*, i32** %2, align 8
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = sub i64 %235, 1
  %237 = trunc i64 %236 to i32
  %238 = load float*, float** %8, align 8
  %239 = call float @IAudioStreamVolume_GetAllVolumes(i32* %232, i32 %237, float* %238)
  store float %239, float* %6, align 4
  %240 = load float, float* %6, align 4
  %241 = load float, float* @E_INVALIDARG, align 4
  %242 = fcmp oeq float %240, %241
  %243 = zext i1 %242 to i32
  %244 = load float, float* %6, align 4
  %245 = fpext float %244 to double
  %246 = call i32 (i32, i8*, ...) @ok(i32 %243, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), double %245)
  %247 = load i32*, i32** %2, align 8
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = trunc i64 %250 to i32
  %252 = load float*, float** %8, align 8
  %253 = call float @IAudioStreamVolume_GetAllVolumes(i32* %247, i32 %251, float* %252)
  store float %253, float* %6, align 4
  %254 = load float, float* %6, align 4
  %255 = load float, float* @S_OK, align 4
  %256 = fcmp oeq float %254, %255
  %257 = zext i1 %256 to i32
  %258 = load float, float* %6, align 4
  %259 = fpext float %258 to double
  %260 = call i32 (i32, i8*, ...) @ok(i32 %257, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), double %259)
  %261 = load float*, float** %8, align 8
  %262 = getelementptr inbounds float, float* %261, i64 0
  %263 = load float, float* %262, align 4
  %264 = fsub float %263, 0x3FC99999A0000000
  %265 = call float @llvm.fabs.f32(float %264)
  %266 = fcmp olt float %265, 0x3FA99999A0000000
  %267 = zext i1 %266 to i32
  %268 = load float, float* %7, align 4
  %269 = fpext float %268 to double
  %270 = call i32 (i32, i8*, ...) @ok(i32 %267, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), double %269)
  store i64 1, i64* %5, align 8
  br label %271

271:                                              ; preds = %291, %68
  %272 = load i64, i64* %5, align 8
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ult i64 %272, %275
  br i1 %276, label %277, label %294

277:                                              ; preds = %271
  %278 = load float*, float** %8, align 8
  %279 = load i64, i64* %5, align 8
  %280 = getelementptr inbounds float, float* %278, i64 %279
  %281 = load float, float* %280, align 4
  %282 = fcmp oeq float %281, 1.000000e+00
  %283 = zext i1 %282 to i32
  %284 = load i64, i64* %5, align 8
  %285 = load float*, float** %8, align 8
  %286 = load i64, i64* %5, align 8
  %287 = getelementptr inbounds float, float* %285, i64 %286
  %288 = load float, float* %287, align 4
  %289 = fpext float %288 to double
  %290 = call i32 (i32, i8*, ...) @ok(i32 %283, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i64 %284, double %289)
  br label %291

291:                                              ; preds = %277
  %292 = load i64, i64* %5, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %5, align 8
  br label %271

294:                                              ; preds = %271
  %295 = load i32*, i32** %2, align 8
  %296 = call float @IAudioStreamVolume_SetAllVolumes(i32* %295, i32 0, float* null)
  store float %296, float* %6, align 4
  %297 = load float, float* %6, align 4
  %298 = load float, float* @E_POINTER, align 4
  %299 = fcmp oeq float %297, %298
  %300 = zext i1 %299 to i32
  %301 = load float, float* %6, align 4
  %302 = fpext float %301 to double
  %303 = call i32 (i32, i8*, ...) @ok(i32 %300, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), double %302)
  %304 = load i32*, i32** %2, align 8
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = call float @IAudioStreamVolume_SetAllVolumes(i32* %304, i32 %308, float* null)
  store float %309, float* %6, align 4
  %310 = load float, float* %6, align 4
  %311 = load float, float* @E_POINTER, align 4
  %312 = fcmp oeq float %310, %311
  %313 = zext i1 %312 to i32
  %314 = load float, float* %6, align 4
  %315 = fpext float %314 to double
  %316 = call i32 (i32, i8*, ...) @ok(i32 %313, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), double %315)
  %317 = load i32*, i32** %2, align 8
  %318 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = sub i64 %320, 1
  %322 = trunc i64 %321 to i32
  %323 = load float*, float** %8, align 8
  %324 = call float @IAudioStreamVolume_SetAllVolumes(i32* %317, i32 %322, float* %323)
  store float %324, float* %6, align 4
  %325 = load float, float* %6, align 4
  %326 = load float, float* @E_INVALIDARG, align 4
  %327 = fcmp oeq float %325, %326
  %328 = zext i1 %327 to i32
  %329 = load float, float* %6, align 4
  %330 = fpext float %329 to double
  %331 = call i32 (i32, i8*, ...) @ok(i32 %328, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), double %330)
  %332 = load i32*, i32** %2, align 8
  %333 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = trunc i64 %335 to i32
  %337 = load float*, float** %8, align 8
  %338 = call float @IAudioStreamVolume_SetAllVolumes(i32* %332, i32 %336, float* %337)
  store float %338, float* %6, align 4
  %339 = load float, float* %6, align 4
  %340 = load float, float* @S_OK, align 4
  %341 = fcmp oeq float %339, %340
  %342 = zext i1 %341 to i32
  %343 = load float, float* %6, align 4
  %344 = fpext float %343 to double
  %345 = call i32 (i32, i8*, ...) @ok(i32 %342, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), double %344)
  %346 = call i32 (...) @GetProcessHeap()
  %347 = load float*, float** %8, align 8
  %348 = call i32 @HeapFree(i32 %346, i32 0, float* %347)
  %349 = load i32*, i32** %2, align 8
  %350 = call i32 @IAudioStreamVolume_Release(i32* %349)
  %351 = load i32*, i32** %1, align 8
  %352 = call i32 @IAudioClient_Release(i32* %351)
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %354 = call i32 @CoTaskMemFree(%struct.TYPE_5__* %353)
  br label %355

355:                                              ; preds = %294, %63, %23
  ret void
}

declare dso_local float @IMMDevice_Activate(i32, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local float @IAudioClient_GetMixFormat(i32*, %struct.TYPE_5__**) #1

declare dso_local float @IAudioClient_Initialize(i32*, i32, i32, i32, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local float @IAudioClient_GetService(i32*, i32*, i8**) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_5__*) #1

declare dso_local float @IAudioStreamVolume_GetChannelCount(i32*, i64*) #1

declare dso_local float @IAudioStreamVolume_GetChannelVolume(i32*, i64, float*) #1

declare dso_local float @IAudioStreamVolume_SetChannelVolume(i32*, i64, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @IAudioStreamVolume_GetAllVolumes(i32*, i32, float*) #1

declare dso_local float* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local float @IAudioStreamVolume_SetAllVolumes(i32*, i32, float*) #1

declare dso_local i32 @HeapFree(i32, i32, float*) #1

declare dso_local i32 @IAudioStreamVolume_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
