; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_capture.c_test_simplevolume.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_capture.c_test_simplevolume.c"
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
@E_INVALIDARG = common dso_local global float 0.000000e+00, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"SetMasterVolume gave wrong error: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"SetMasterVolume failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Master volume wasn't 0.2: %f\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"GetMute gave wrong error: %08x\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [22 x i8] c"GetMute failed: %08x\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"Session is already muted\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"SetMute failed: %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Session should have been muted\0A\00", align 1
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
  br label %227

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
  %44 = load i32*, i32** %1, align 8
  %45 = bitcast i32** %2 to i8**
  %46 = call float @IAudioClient_GetService(i32* %44, i32* @IID_ISimpleAudioVolume, i8** %45)
  store float %46, float* %4, align 4
  %47 = load float, float* %4, align 4
  %48 = load float, float* @S_OK, align 4
  %49 = fcmp oeq float %47, %48
  %50 = zext i1 %49 to i32
  %51 = load float, float* %4, align 4
  %52 = fpext float %51 to double
  %53 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), double %52)
  %54 = load float, float* %4, align 4
  %55 = load float, float* @S_OK, align 4
  %56 = fcmp une float %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %22
  br label %227

58:                                               ; preds = %22
  %59 = load i32*, i32** %2, align 8
  %60 = call float @ISimpleAudioVolume_GetMasterVolume(i32* %59, float* null)
  store float %60, float* %4, align 4
  %61 = load float, float* %4, align 4
  %62 = load float, float* @NULL_PTR_ERR, align 4
  %63 = fcmp oeq float %61, %62
  %64 = zext i1 %63 to i32
  %65 = load float, float* %4, align 4
  %66 = fpext float %65 to double
  %67 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), double %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call float @ISimpleAudioVolume_GetMasterVolume(i32* %68, float* %5)
  store float %69, float* %4, align 4
  %70 = load float, float* %4, align 4
  %71 = load float, float* @S_OK, align 4
  %72 = fcmp oeq float %70, %71
  %73 = zext i1 %72 to i32
  %74 = load float, float* %4, align 4
  %75 = fpext float %74 to double
  %76 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %77, float -1.000000e+00, i32* null)
  store float %78, float* %4, align 4
  %79 = load float, float* %4, align 4
  %80 = load float, float* @E_INVALIDARG, align 4
  %81 = fcmp oeq float %79, %80
  %82 = zext i1 %81 to i32
  %83 = load float, float* %4, align 4
  %84 = fpext float %83 to double
  %85 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), double %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %86, float 2.000000e+00, i32* null)
  store float %87, float* %4, align 4
  %88 = load float, float* %4, align 4
  %89 = load float, float* @E_INVALIDARG, align 4
  %90 = fcmp oeq float %88, %89
  %91 = zext i1 %90 to i32
  %92 = load float, float* %4, align 4
  %93 = fpext float %92 to double
  %94 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), double %93)
  %95 = load i32*, i32** %2, align 8
  %96 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %95, float 0x3FC99999A0000000, i32* null)
  store float %96, float* %4, align 4
  %97 = load float, float* %4, align 4
  %98 = load float, float* @S_OK, align 4
  %99 = fcmp oeq float %97, %98
  %100 = zext i1 %99 to i32
  %101 = load float, float* %4, align 4
  %102 = fpext float %101 to double
  %103 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), double %102)
  %104 = load i32*, i32** %2, align 8
  %105 = call float @ISimpleAudioVolume_GetMasterVolume(i32* %104, float* %5)
  store float %105, float* %4, align 4
  %106 = load float, float* %4, align 4
  %107 = load float, float* @S_OK, align 4
  %108 = fcmp oeq float %106, %107
  %109 = zext i1 %108 to i32
  %110 = load float, float* %4, align 4
  %111 = fpext float %110 to double
  %112 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %111)
  %113 = load float, float* %5, align 4
  %114 = fsub float %113, 0x3FC99999A0000000
  %115 = call float @llvm.fabs.f32(float %114)
  %116 = fcmp olt float %115, 0x3FA99999A0000000
  %117 = zext i1 %116 to i32
  %118 = load float, float* %5, align 4
  %119 = fpext float %118 to double
  %120 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), double %119)
  %121 = load i32*, i32** %2, align 8
  %122 = call float @ISimpleAudioVolume_GetMute(i32* %121, i64* null)
  store float %122, float* %4, align 4
  %123 = load float, float* %4, align 4
  %124 = load float, float* @NULL_PTR_ERR, align 4
  %125 = fcmp oeq float %123, %124
  %126 = zext i1 %125 to i32
  %127 = load float, float* %4, align 4
  %128 = fpext float %127 to double
  %129 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), double %128)
  %130 = load i64, i64* @TRUE, align 8
  store i64 %130, i64* %6, align 8
  %131 = load i32*, i32** %2, align 8
  %132 = call float @ISimpleAudioVolume_GetMute(i32* %131, i64* %6)
  store float %132, float* %4, align 4
  %133 = load float, float* %4, align 4
  %134 = load float, float* @S_OK, align 4
  %135 = fcmp oeq float %133, %134
  %136 = zext i1 %135 to i32
  %137 = load float, float* %4, align 4
  %138 = fpext float %137 to double
  %139 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), double %138)
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* @FALSE, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %145 = load i32*, i32** %2, align 8
  %146 = load i64, i64* @TRUE, align 8
  %147 = call float @ISimpleAudioVolume_SetMute(i32* %145, i64 %146, i32* null)
  store float %147, float* %4, align 4
  %148 = load float, float* %4, align 4
  %149 = load float, float* @S_OK, align 4
  %150 = fcmp oeq float %148, %149
  %151 = zext i1 %150 to i32
  %152 = load float, float* %4, align 4
  %153 = fpext float %152 to double
  %154 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), double %153)
  %155 = load i64, i64* @FALSE, align 8
  store i64 %155, i64* %6, align 8
  %156 = load i32*, i32** %2, align 8
  %157 = call float @ISimpleAudioVolume_GetMute(i32* %156, i64* %6)
  store float %157, float* %4, align 4
  %158 = load float, float* %4, align 4
  %159 = load float, float* @S_OK, align 4
  %160 = fcmp oeq float %158, %159
  %161 = zext i1 %160 to i32
  %162 = load float, float* %4, align 4
  %163 = fpext float %162 to double
  %164 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), double %163)
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* @TRUE, align 8
  %167 = icmp eq i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %170 = load i32*, i32** %2, align 8
  %171 = call float @ISimpleAudioVolume_GetMasterVolume(i32* %170, float* %5)
  store float %171, float* %4, align 4
  %172 = load float, float* %4, align 4
  %173 = load float, float* @S_OK, align 4
  %174 = fcmp oeq float %172, %173
  %175 = zext i1 %174 to i32
  %176 = load float, float* %4, align 4
  %177 = fpext float %176 to double
  %178 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), double %177)
  %179 = load float, float* %5, align 4
  %180 = fsub float %179, 0x3FC99999A0000000
  %181 = call float @llvm.fabs.f32(float %180)
  %182 = fcmp olt float %181, 0x3FA99999A0000000
  %183 = zext i1 %182 to i32
  %184 = load float, float* %5, align 4
  %185 = fpext float %184 to double
  %186 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), double %185)
  %187 = load i32*, i32** %2, align 8
  %188 = call float @ISimpleAudioVolume_SetMasterVolume(i32* %187, float 1.000000e+00, i32* null)
  store float %188, float* %4, align 4
  %189 = load float, float* %4, align 4
  %190 = load float, float* @S_OK, align 4
  %191 = fcmp oeq float %189, %190
  %192 = zext i1 %191 to i32
  %193 = load float, float* %4, align 4
  %194 = fpext float %193 to double
  %195 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), double %194)
  %196 = load i64, i64* @FALSE, align 8
  store i64 %196, i64* %6, align 8
  %197 = load i32*, i32** %2, align 8
  %198 = call float @ISimpleAudioVolume_GetMute(i32* %197, i64* %6)
  store float %198, float* %4, align 4
  %199 = load float, float* %4, align 4
  %200 = load float, float* @S_OK, align 4
  %201 = fcmp oeq float %199, %200
  %202 = zext i1 %201 to i32
  %203 = load float, float* %4, align 4
  %204 = fpext float %203 to double
  %205 = call i32 (i32, i8*, ...) @ok(i32 %202, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), double %204)
  %206 = load i64, i64* %6, align 8
  %207 = load i64, i64* @TRUE, align 8
  %208 = icmp eq i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 (i32, i8*, ...) @ok(i32 %209, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %211 = load i32*, i32** %2, align 8
  %212 = load i64, i64* @FALSE, align 8
  %213 = call float @ISimpleAudioVolume_SetMute(i32* %211, i64 %212, i32* null)
  store float %213, float* %4, align 4
  %214 = load float, float* %4, align 4
  %215 = load float, float* @S_OK, align 4
  %216 = fcmp oeq float %214, %215
  %217 = zext i1 %216 to i32
  %218 = load float, float* %4, align 4
  %219 = fpext float %218 to double
  %220 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), double %219)
  %221 = load i32*, i32** %2, align 8
  %222 = call i32 @ISimpleAudioVolume_Release(i32* %221)
  %223 = load i32*, i32** %1, align 8
  %224 = call i32 @IAudioClient_Release(i32* %223)
  %225 = load i32*, i32** %3, align 8
  %226 = call i32 @CoTaskMemFree(i32* %225)
  br label %227

227:                                              ; preds = %58, %57, %21
  ret void
}

declare dso_local float @IMMDevice_Activate(i32, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local float @IAudioClient_GetMixFormat(i32*, i32**) #1

declare dso_local float @IAudioClient_Initialize(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local float @IAudioClient_GetService(i32*, i32*, i8**) #1

declare dso_local float @ISimpleAudioVolume_GetMasterVolume(i32*, float*) #1

declare dso_local float @ISimpleAudioVolume_SetMasterVolume(i32*, float, i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @ISimpleAudioVolume_GetMute(i32*, i64*) #1

declare dso_local float @ISimpleAudioVolume_SetMute(i32*, i64, i32*) #1

declare dso_local i32 @ISimpleAudioVolume_Release(i32*) #1

declare dso_local i32 @IAudioClient_Release(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
