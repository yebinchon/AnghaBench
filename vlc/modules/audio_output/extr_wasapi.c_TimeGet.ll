; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_wasapi.c_TimeGet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_wasapi.c_TimeGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@STARTED_STATE_OK = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i32 0, align 4
@IID_IAudioClock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot get clock (error 0x%lX)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot get position (error 0x%lX)\00", align 1
@CLOCK_FREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Frequency conversion broken\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*)* @TimeGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TimeGet(%struct.TYPE_5__* %0, i64* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64* %1, i64** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = call i64 @atomic_load(i32* %19)
  %21 = load i64, i64* @STARTED_STATE_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @E_FAIL, align 4
  store i32 %24, i32* %3, align 4
  br label %86

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IAudioClient_GetService(i32 %28, i32* @IID_IAudioClock, i8** %7)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @msg_Err(%struct.TYPE_5__* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %3, align 4
  br label %86

38:                                               ; preds = %25
  %39 = load i8*, i8** %7, align 8
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @IAudioClock_GetPosition(i32* %41, i64* %8, i64* %9)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @SUCCEEDED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @IAudioClock_GetFrequency(i32* %47, i64* %10)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @IAudioClock_Release(i32* %50)
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @FAILED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @msg_Err(%struct.TYPE_5__* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %86

60:                                               ; preds = %49
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @vlc_tick_from_frac(i64 %63, i64 %66)
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @vlc_tick_from_frac(i64 %68, i64 %69)
  store i64 %70, i64* %14, align 8
  %71 = load i32, i32* @CLOCK_FREQ, align 4
  %72 = srem i32 10000000, %71
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @static_assert(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %14, align 8
  %78 = sub nsw i64 %76, %77
  %79 = call i64 (...) @GetQPC()
  %80 = load i64, i64* %9, align 8
  %81 = sub nsw i64 %79, %80
  %82 = call i64 @VLC_TICK_FROM_MSFTIME(i64 %81)
  %83 = sub nsw i64 %78, %82
  %84 = load i64*, i64** %5, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %60, %55, %33, %23
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @IAudioClient_GetService(i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @IAudioClock_GetPosition(i32*, i64*, i64*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IAudioClock_GetFrequency(i32*, i64*) #1

declare dso_local i32 @IAudioClock_Release(i32*) #1

declare dso_local i64 @vlc_tick_from_frac(i64, i64) #1

declare dso_local i32 @static_assert(i32, i8*) #1

declare dso_local i64 @VLC_TICK_FROM_MSFTIME(i64) #1

declare dso_local i64 @GetQPC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
