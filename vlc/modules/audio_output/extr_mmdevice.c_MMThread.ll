; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_mmdevice.c_MMThread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_mmdevice.c_MMThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32* }

@MMThread_DevicesEnum_Added = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cannot enumerate audio endpoints (error 0x%lX)\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @MMThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @MMThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = call i32 (...) @EnterMTA()
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call i32 @IMMDeviceEnumerator_RegisterEndpointNotificationCallback(i32* %16, i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @MMThread_DevicesEnum_Added, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = call i32 @DevicesEnum(i32* %20, i32 %21, %struct.TYPE_6__* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @msg_Warn(%struct.TYPE_6__* %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = call i32 @EnterCriticalSection(i32* %33)
  br label %35

35:                                               ; preds = %54, %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @MMSession(%struct.TYPE_6__* %41, i32* %42)
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40, %35
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* @INFINITE, align 4
  %52 = call i32 @SleepConditionVariableCS(i32* %48, i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %35, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = call i32 @LeaveCriticalSection(i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = call i32 @IMMDeviceEnumerator_UnregisterEndpointNotificationCallback(i32* %63, i32* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @IMMDeviceEnumerator_Release(i32* %67)
  %69 = call i32 (...) @LeaveMTA()
  ret i8* null
}

declare dso_local i32 @EnterMTA(...) #1

declare dso_local i32 @IMMDeviceEnumerator_RegisterEndpointNotificationCallback(i32*, i32*) #1

declare dso_local i32 @DevicesEnum(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @MMSession(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @SleepConditionVariableCS(i32*, i32*, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @IMMDeviceEnumerator_UnregisterEndpointNotificationCallback(i32*, i32*) #1

declare dso_local i32 @IMMDeviceEnumerator_Release(i32*) #1

declare dso_local i32 @LeaveMTA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
