; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_simplevolume.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_simplevolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev = common dso_local global i32 0, align 4
@IID_IAudioClient = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@S_OK = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [29 x i8] c"Activation failed with %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"GetMixFormat failed: %08x\0A\00", align 1
@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@AUDCLNT_STREAMFLAGS_NOPERSIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Initialize failed: %08x\0A\00", align 1
@IID_ISimpleAudioVolume = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"GetService failed: %08x\0A\00", align 1
@NULL_PTR_ERR = common dso_local global float 0.000000e+00, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"GetMasterVolume gave wrong error: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"GetMasterVolume failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Master volume wasn't 1: %f\0A\00", align 1
@E_INVALIDARG = common dso_local global float 0.000000e+00, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"SetMasterVolume gave wrong error: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"SetMasterVolume failed: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Master volume wasn't 0.2: %f\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"GetMute gave wrong error: %08x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"GetMute failed: %08x\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"Session is already muted\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"SetMute failed: %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Session should have been muted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_simplevolume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_simplevolume() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i64, align 8
  %7 = load i32, i32* @dev, align 4
  %8 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %9 = bitcast i32** %1 to i8**
  %10 = call float @IMMDevice_Activate(i32 %7, i32* @IID_IAudioClient, i32 %8, i32* null, i8** %9)
  store float %10, float* %4, align 4
  %11 = load float, float* %4, align 4
  %12 = load float, float* @S_OK, align 4
  %13 = fcmp oeq float %11, %12
  %14 = zext i1 %13 to i32
  %15 = load float, float* %4, align 4
  %16 = fpext float %15 to double
  %17 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), double %16)
  %18 = load float, float* %4, align 4
  %19 = load float, float* @S_OK, align 4
  %20 = fcmp une float %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %242

22:                                               ; preds = %0
  %23 = load i32*, i32** %1, align 8
  %24 = call float @IAudioClient_GetMixFormat(i32* %23, i32** %3)
  store float %24, float* %4, align 4
  %25 = load float, float* %4, align 4
  %26 = load float, float* @S_OK, align 4
  %27 = fcmp oeq float %25, %26
  %28 = zext i1 %27 to i32
  %29 = load float, float* %4, align 4
  %30 = fpext float %29 to double
  %31 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), double %30)
  %32 = load i32*, i32** %1, align 8
  %33 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %34 = load i32, i32* @AUDCLNT_STREAMFLAGS_NOPERSIST, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = call float @IAudioClient_Initialize(i32* %32, i32 %33, i32 %34, i32 5000000, i32 0, i32* %35, i32* null)
  store float %36, float* %4, align 4
  %37 = load float, float* %4, align 4
  %38 = load float, float* @S_OK, align 4
  %39 = fcmp oeq float %37, %38
  %40 = zext i1 %39 to i32
  %41 = load float, float* %4, align 4
  %42 = fpext float %41 to double
  %43 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), double %42)
  %44 = load float, float* %4, align 4
  %45 = load float, float* @S_OK, align 4
  %46 = fcmp oeq float %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %22
  %48 = load i32*, i32** %1, align 8
  %49 = bitcast i32** %2 to i8**
  %50 = call float @IAudioClient_GetService(i32* %48, i32* @IID_ISimpleAudioVolume, i8** %49)
  store float %50, float* %4, align 4
  %51 = load float, float* %4, align 4
  %52 = load float, float* @S_OK, align 4
  %53 = fcmp oeq float %51, %52
  %54 = zext i1 %53 to i32
  %55 = load float, float* %4, align 4
  %56 = fpext float %55 to double
  %57 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), double %56)
  br label %58

58:                                               ; preds = %47, %22
  %59 = load float, float* %4, align 4
  %60 = load float, float* @S_OK, align 4
  %61 = fcmp une float %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @IAudioClient_Release(i32* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @CoTaskMemFree(i32* %65)
  br label %242

67:                                               ; preds = %58
  %68 = load i32*, i32** %2, align 8
  %69 = call float @ISimpleAudioVolume_GetMasterVolume(i32* %68, float* null)
  store float %69, float* %4, align 4
  %70 = load float, float* %4, align 4
  %71 = load float, float* @NULL_PTR_ERR, align 4
  %72 = fcmp oeq float %70, %71
  %73 = zext i1 %72 to i32
  %74 = load float, float* %4, align 4
  %75 = fpext float %74 to double
  %76 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), double %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call float @ISimpleAudioVolume_GetMasterVolume(i32* %77, float* %5)
  store float %78, float* %4, align 4
  %79 = load float, float* %4, align 4
  %80 = load float, float* @S_OK, align 4
  %81 = fcmp oeq float %79, %80
  %82 = zext i1 %81 to i32
  %83 = load float, float* %4, align 4
  %84 = fpext float %83 to double
  %85 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %84)
  %86 = load float, float* %5, align 4
  %87 = fcmp oeq float %86, 1.000000e+00
  %88 = zext i1 %87 to i32
  %89 = load float, float* %5, align 4
  %90 = fpext float %89 to double
  %91 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), double %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %92, float -1.000000e+00, i32* null)
  store float %93, float* %4, align 4
  %94 = load float, float* %4, align 4
  %95 = load float, float* @E_INVALIDARG, align 4
  %96 = fcmp oeq float %94, %95
  %97 = zext i1 %96 to i32
  %98 = load float, float* %4, align 4
  %99 = fpext float %98 to double
  %100 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), double %99)
  %101 = load i32*, i32** %2, align 8
  %102 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %101, float 2.000000e+00, i32* null)
  store float %102, float* %4, align 4
  %103 = load float, float* %4, align 4
  %104 = load float, float* @E_INVALIDARG, align 4
  %105 = fcmp oeq float %103, %104
  %106 = zext i1 %105 to i32
  %107 = load float, float* %4, align 4
  %108 = fpext float %107 to double
  %109 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), double %108)
  %110 = load i32*, i32** %2, align 8
  %111 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %110, float 0x3FC99999A0000000, i32* null)
  store float %111, float* %4, align 4
  %112 = load float, float* %4, align 4
  %113 = load float, float* @S_OK, align 4
  %114 = fcmp oeq float %112, %113
  %115 = zext i1 %114 to i32
  %116 = load float, float* %4, align 4
  %117 = fpext float %116 to double
  %118 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), double %117)
  %119 = load i32*, i32** %2, align 8
  %120 = call float @ISimpleAudioVolume_GetMasterVolume(i32* %119, float* %5)
  store float %120, float* %4, align 4
  %121 = load float, float* %4, align 4
  %122 = load float, float* @S_OK, align 4
  %123 = fcmp oeq float %121, %122
  %124 = zext i1 %123 to i32
  %125 = load float, float* %4, align 4
  %126 = fpext float %125 to double
  %127 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %126)
  %128 = load float, float* %5, align 4
  %129 = fsub float %128, 0x3FC99999A0000000
  %130 = call float @llvm.fabs.f32(float %129)
  %131 = fcmp olt float %130, 0x3FA99999A0000000
  %132 = zext i1 %131 to i32
  %133 = load float, float* %5, align 4
  %134 = fpext float %133 to double
  %135 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), double %134)
  %136 = load i32*, i32** %2, align 8
  %137 = call float @ISimpleAudioVolume_GetMute(i32* %136, i64* null)
  store float %137, float* %4, align 4
  %138 = load float, float* %4, align 4
  %139 = load float, float* @NULL_PTR_ERR, align 4
  %140 = fcmp oeq float %138, %139
  %141 = zext i1 %140 to i32
  %142 = load float, float* %4, align 4
  %143 = fpext float %142 to double
  %144 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), double %143)
  %145 = load i64, i64* @TRUE, align 8
  store i64 %145, i64* %6, align 8
  %146 = load i32*, i32** %2, align 8
  %147 = call float @ISimpleAudioVolume_GetMute(i32* %146, i64* %6)
  store float %147, float* %4, align 4
  %148 = load float, float* %4, align 4
  %149 = load float, float* @S_OK, align 4
  %150 = fcmp oeq float %148, %149
  %151 = zext i1 %150 to i32
  %152 = load float, float* %4, align 4
  %153 = fpext float %152 to double
  %154 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), double %153)
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @FALSE, align 8
  %157 = icmp eq i64 %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %160 = load i32*, i32** %2, align 8
  %161 = load i64, i64* @TRUE, align 8
  %162 = call float @ISimpleAudioVolume_SetMute(i32* %160, i64 %161, i32* null)
  store float %162, float* %4, align 4
  %163 = load float, float* %4, align 4
  %164 = load float, float* @S_OK, align 4
  %165 = fcmp oeq float %163, %164
  %166 = zext i1 %165 to i32
  %167 = load float, float* %4, align 4
  %168 = fpext float %167 to double
  %169 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), double %168)
  %170 = load i64, i64* @FALSE, align 8
  store i64 %170, i64* %6, align 8
  %171 = load i32*, i32** %2, align 8
  %172 = call float @ISimpleAudioVolume_GetMute(i32* %171, i64* %6)
  store float %172, float* %4, align 4
  %173 = load float, float* %4, align 4
  %174 = load float, float* @S_OK, align 4
  %175 = fcmp oeq float %173, %174
  %176 = zext i1 %175 to i32
  %177 = load float, float* %4, align 4
  %178 = fpext float %177 to double
  %179 = call i32 (i32, i8*, ...) @ok(i32 %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), double %178)
  %180 = load i64, i64* %6, align 8
  %181 = load i64, i64* @TRUE, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %185 = load i32*, i32** %2, align 8
  %186 = call float @ISimpleAudioVolume_GetMasterVolume(i32* %185, float* %5)
  store float %186, float* %4, align 4
  %187 = load float, float* %4, align 4
  %188 = load float, float* @S_OK, align 4
  %189 = fcmp oeq float %187, %188
  %190 = zext i1 %189 to i32
  %191 = load float, float* %4, align 4
  %192 = fpext float %191 to double
  %193 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %192)
  %194 = load float, float* %5, align 4
  %195 = fsub float %194, 0x3FC99999A0000000
  %196 = call float @llvm.fabs.f32(float %195)
  %197 = fcmp olt float %196, 0x3FA99999A0000000
  %198 = zext i1 %197 to i32
  %199 = load float, float* %5, align 4
  %200 = fpext float %199 to double
  %201 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), double %200)
  %202 = load i32*, i32** %2, align 8
  %203 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %202, float 1.000000e+00, i32* null)
  store float %203, float* %4, align 4
  %204 = load float, float* %4, align 4
  %205 = load float, float* @S_OK, align 4
  %206 = fcmp oeq float %204, %205
  %207 = zext i1 %206 to i32
  %208 = load float, float* %4, align 4
  %209 = fpext float %208 to double
  %210 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), double %209)
  %211 = load i64, i64* @FALSE, align 8
  store i64 %211, i64* %6, align 8
  %212 = load i32*, i32** %2, align 8
  %213 = call float @ISimpleAudioVolume_GetMute(i32* %212, i64* %6)
  store float %213, float* %4, align 4
  %214 = load float, float* %4, align 4
  %215 = load float, float* @S_OK, align 4
  %216 = fcmp oeq float %214, %215
  %217 = zext i1 %216 to i32
  %218 = load float, float* %4, align 4
  %219 = fpext float %218 to double
  %220 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), double %219)
  %221 = load i64, i64* %6, align 8
  %222 = load i64, i64* @TRUE, align 8
  %223 = icmp eq i64 %221, %222
  %224 = zext i1 %223 to i32
  %225 = call i32 (i32, i8*, ...) @ok(i32 %224, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %226 = load i32*, i32** %2, align 8
  %227 = load i64, i64* @FALSE, align 8
  %228 = call float @ISimpleAudioVolume_SetMute(i32* %226, i64 %227, i32* null)
  store float %228, float* %4, align 4
  %229 = load float, float* %4, align 4
  %230 = load float, float* @S_OK, align 4
  %231 = fcmp oeq float %229, %230
  %232 = zext i1 %231 to i32
  %233 = load float, float* %4, align 4
  %234 = fpext float %233 to double
  %235 = call i32 (i32, i8*, ...) @ok(i32 %232, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), double %234)
  %236 = load i32*, i32** %2, align 8
  %237 = call i32 @ISimpleAudioVolume_Release(i32* %236)
  %238 = load i32*, i32** %1, align 8
  %239 = call i32 @IAudioClient_Release(i32* %238)
  %240 = load i32*, i32** %3, align 8
  %241 = call i32 @CoTaskMemFree(i32* %240)
  br label %242

242:                                              ; preds = %67, %62, %21
  ret void
}

declare dso_local float @IMMDevice_Activate(i32, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local float @IAudioClient_GetMixFormat(i32*, i32**) #1

declare dso_local float @IAudioClient_Initialize(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local float @IAudioClient_GetService(i32*, i32*, i8**) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local float @ISimpleAudioVolume_GetMasterVolume(i32*, float*) #1

declare dso_local float @ISimpleAudioVolume_SetMasterVolume(i32*, float, i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @ISimpleAudioVolume_GetMute(i32*, i64*) #1

declare dso_local float @ISimpleAudioVolume_SetMute(i32*, i64, i32*) #1

declare dso_local i32 @ISimpleAudioVolume_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
