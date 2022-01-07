; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xinput1_3/extr_xinput.c_test_get_dsoundaudiodevice.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xinput1_3/extr_xinput.c_test_get_dsoundaudiodevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.test_get_dsoundaudiodevice.testGuid = private unnamed_addr constant %struct.TYPE_8__ { i32 -1, i32 65535, i32 65535, %struct.TYPE_7__ { i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255 } }, align 4
@XUSER_MAX_COUNT = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_DEVICE_NOT_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"XInputGetDSoundAudioDeviceGuids failed with (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Controller %d is not connected\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Broken GUID returned for sound render device\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Headset phone not attached\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Broken GUID returned for sound capture device\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Headset microphone not attached\0A\00", align 1
@ERROR_BAD_ARGUMENTS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [47 x i8] c"XInputGetDSoundAudioDeviceGuids returned (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_dsoundaudiodevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_dsoundaudiodevice() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_8__* @__const.test_get_dsoundaudiodevice.testGuid to i8*), i64 44, i1 false)
  %8 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 44, i1 false)
  store i64 0, i64* %1, align 8
  br label %9

9:                                                ; preds = %61, %0
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @XUSER_MAX_COUNT, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %9
  %14 = bitcast %struct.TYPE_8__* %4 to i8*
  %15 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 44, i1 false)
  %16 = bitcast %struct.TYPE_8__* %3 to i8*
  %17 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 44, i1 false)
  %18 = load i64, i64* %1, align 8
  %19 = call i64 @pXInputGetDSoundAudioDeviceGuids(i64 %18, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4)
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %13
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @ERROR_DEVICE_NOT_CONNECTED, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i1 [ true, %13 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %2, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* @ERROR_DEVICE_NOT_CONNECTED, align 8
  %33 = load i64, i64* %2, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %61

38:                                               ; preds = %27
  %39 = call i32 @IsEqualGUID(%struct.TYPE_8__* %3, %struct.TYPE_8__* %6)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = call i32 @IsEqualGUID(%struct.TYPE_8__* %3, %struct.TYPE_8__* %5)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %49

47:                                               ; preds = %38
  %48 = call i32 @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %41
  %50 = call i32 @IsEqualGUID(%struct.TYPE_8__* %4, %struct.TYPE_8__* %6)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = call i32 @IsEqualGUID(%struct.TYPE_8__* %4, %struct.TYPE_8__* %5)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %60

58:                                               ; preds = %49
  %59 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %52
  br label %61

61:                                               ; preds = %60, %35
  %62 = load i64, i64* %1, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %1, align 8
  br label %9

64:                                               ; preds = %9
  %65 = load i64, i64* @XUSER_MAX_COUNT, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i64 @pXInputGetDSoundAudioDeviceGuids(i64 %66, %struct.TYPE_8__* %3, %struct.TYPE_8__* %4)
  store i64 %67, i64* %2, align 8
  %68 = load i64, i64* %2, align 8
  %69 = load i64, i64* @ERROR_BAD_ARGUMENTS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %2, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %72)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @pXInputGetDSoundAudioDeviceGuids(i64, %struct.TYPE_8__*, %struct.TYPE_8__*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @skip(i8*, i64) #2

declare dso_local i32 @IsEqualGUID(%struct.TYPE_8__*, %struct.TYPE_8__*) #2

declare dso_local i32 @trace(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
