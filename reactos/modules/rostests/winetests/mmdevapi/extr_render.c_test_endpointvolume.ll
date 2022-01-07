; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_endpointvolume.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mmdevapi/extr_render.c_test_endpointvolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev = common dso_local global i32 0, align 4
@IID_IAudioEndpointVolume = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Activation failed with %08x\0A\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"GetVolumeRange should have failed with E_POINTER: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GetVolumeRange failed: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"got range: [%f,%f]/%f\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"SetMasterVolumeLevel failed: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"GetMasterVolumeLevel failed: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"GetMute failed: %08x\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"SetMute failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_endpointvolume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_endpointvolume() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @dev, align 4
  %9 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %10 = bitcast i32** %2 to i8**
  %11 = call i64 @IMMDevice_Activate(i32 %8, i32* @IID_IAudioEndpointVolume, i32 %9, i32* null, i8** %10)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %96

22:                                               ; preds = %0
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @IAudioEndpointVolume_GetVolumeRange(i32* %23, float* %3, float* null, float* null)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @E_POINTER, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i64 @IAudioEndpointVolume_GetVolumeRange(i32* %31, float* %3, float* %4, float* %5)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load float, float* %3, align 4
  %40 = load float, float* %4, align 4
  %41 = load float, float* %5, align 4
  %42 = call i32 @trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), float %39, float %40, float %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load float, float* %3, align 4
  %45 = load float, float* %5, align 4
  %46 = fsub float %44, %45
  %47 = call i64 @IAudioEndpointVolume_SetMasterVolumeLevel(i32* %43, float %46, i32* null)
  store i64 %47, i64* %1, align 8
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @E_INVALIDARG, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %1, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i64 @IAudioEndpointVolume_GetMasterVolumeLevel(i32* %54, float* %6)
  store i64 %55, i64* %1, align 8
  %56 = load i64, i64* %1, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %1, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load float, float* %6, align 4
  %64 = call i64 @IAudioEndpointVolume_SetMasterVolumeLevel(i32* %62, float %63, i32* null)
  store i64 %64, i64* %1, align 8
  %65 = load i64, i64* %1, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %1, align 8
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i64 @IAudioEndpointVolume_GetMute(i32* %71, i32* %7)
  store i64 %72, i64* %1, align 8
  %73 = load i64, i64* %1, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %1, align 8
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @IAudioEndpointVolume_SetMute(i32* %79, i32 %80, i32* null)
  store i64 %81, i64* %1, align 8
  %82 = load i64, i64* %1, align 8
  %83 = load i64, i64* @S_OK, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %22
  %86 = load i64, i64* %1, align 8
  %87 = load i64, i64* @S_FALSE, align 8
  %88 = icmp eq i64 %86, %87
  br label %89

89:                                               ; preds = %85, %22
  %90 = phi i1 [ true, %22 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %1, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @IAudioEndpointVolume_Release(i32* %94)
  br label %96

96:                                               ; preds = %89, %21
  ret void
}

declare dso_local i64 @IMMDevice_Activate(i32, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IAudioEndpointVolume_GetVolumeRange(i32*, float*, float*, float*) #1

declare dso_local i32 @trace(i8*, float, float, float) #1

declare dso_local i64 @IAudioEndpointVolume_SetMasterVolumeLevel(i32*, float, i32*) #1

declare dso_local i64 @IAudioEndpointVolume_GetMasterVolumeLevel(i32*, float*) #1

declare dso_local i64 @IAudioEndpointVolume_GetMute(i32*, i32*) #1

declare dso_local i64 @IAudioEndpointVolume_SetMute(i32*, i32, i32*) #1

declare dso_local i32 @IAudioEndpointVolume_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
