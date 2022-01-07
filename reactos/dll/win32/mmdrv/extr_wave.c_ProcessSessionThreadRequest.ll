; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_wave.c_ProcessSessionThreadRequest.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_wave.c_ProcessSessionThreadRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@IOCTL_WAVE_SET_PITCH = common dso_local global i32 0, align 4
@IOCTL_WAVE_GET_PITCH = common dso_local global i32 0, align 4
@IOCTL_WAVE_SET_PLAYBACK_RATE = common dso_local global i32 0, align 4
@IOCTL_WAVE_GET_PLAYBACK_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Thread was asked if OK to close device\0A\00", align 1
@WAVERR_STILLPLAYING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Terminating thread...\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"INVALID FUNCTION\0A\00", align 1
@MMSYSERR_ERROR = common dso_local global i32 0, align 4
@IOCTL_WAVE_GET_VOLUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProcessSessionThreadRequest(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %76 [
    i32 128, label %9
    i32 133, label %16
    i32 134, label %17
    i32 132, label %18
    i32 136, label %19
    i32 131, label %20
    i32 138, label %30
    i32 129, label %40
    i32 135, label %41
    i32 130, label %42
    i32 137, label %52
    i32 139, label %62
    i32 140, label %73
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @QueueWaveBuffer(%struct.TYPE_6__* %10, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %79

16:                                               ; preds = %1
  br label %79

17:                                               ; preds = %1
  br label %79

18:                                               ; preds = %1
  br label %79

19:                                               ; preds = %1
  br label %79

20:                                               ; preds = %1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IOCTL_WAVE_SET_PITCH, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SetDeviceData(i32 %23, i32 %24, i32 %28, i32 4)
  store i32 %29, i32* %3, align 4
  br label %79

30:                                               ; preds = %1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IOCTL_WAVE_GET_PITCH, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i32, i32, ...) @GetDeviceData(i32 %33, i32 %34, i32 %38, i64 4)
  store i32 %39, i32* %3, align 4
  br label %79

40:                                               ; preds = %1
  br label %79

41:                                               ; preds = %1
  br label %79

42:                                               ; preds = %1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IOCTL_WAVE_SET_PLAYBACK_RATE, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @SetDeviceData(i32 %45, i32 %46, i32 %50, i32 4)
  store i32 %51, i32* %3, align 4
  br label %79

52:                                               ; preds = %1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IOCTL_WAVE_GET_PLAYBACK_RATE, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i32, i32, ...) @GetDeviceData(i32 %55, i32 %56, i32 %60, i64 4)
  store i32 %61, i32* %3, align 4
  br label %79

62:                                               ; preds = %1
  %63 = call i32 @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @WAVERR_STILLPLAYING, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %62
  %71 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %68
  br label %79

73:                                               ; preds = %1
  %74 = call i32 @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %75, i32* %3, align 4
  br label %79

76:                                               ; preds = %1
  %77 = call i32 @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @MMSYSERR_ERROR, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %73, %72, %52, %42, %41, %40, %30, %20, %19, %18, %17, %16, %9
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @QueueWaveBuffer(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @SetDeviceData(i32, i32, i32, i32) #1

declare dso_local i32 @GetDeviceData(i32, i32, i32, ...) #1

declare dso_local i32 @DPRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
