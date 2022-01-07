; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_auhal.c_DevicesListener.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_auhal.c_DevicesListener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"audio device configuration changed, resetting cache\00", align 1
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFNumberSInt32Type = common dso_local global i32 0, align 4
@AOUT_RESTART_OUTPUT = common dso_local global i32 0, align 4
@noErr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*)* @DevicesListener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DevicesListener(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @VLC_UNUSED(i32* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @VLC_UNUSED(i32* %16)
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @VLC_UNUSED(i32* %18)
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %10, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %70

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = call i32 @msg_Dbg(%struct.TYPE_6__* %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = call i32 @RebuildDeviceList(%struct.TYPE_6__* %31, i32* null)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = call i32 @vlc_mutex_lock(i32* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = call i32 @vlc_mutex_lock(i32* %37)
  %39 = load i32, i32* @kCFAllocatorDefault, align 4
  %40 = load i32, i32* @kCFNumberSInt32Type, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = call i32 @CFNumberCreate(i32 %39, i32 %40, i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CFArrayGetCount(i32 %46)
  %48 = call i32 @CFRangeMake(i32 0, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @CFArrayContainsValue(i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %25
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = load i32, i32* @AOUT_RESTART_OUTPUT, align 4
  %59 = call i32 @aout_RestartRequest(%struct.TYPE_6__* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %25
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @CFRelease(i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = call i32 @vlc_mutex_unlock(i32* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = call i32 @vlc_mutex_unlock(i32* %67)
  %69 = load i32, i32* @noErr, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %60, %24
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @RebuildDeviceList(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @CFNumberCreate(i32, i32, i32*) #1

declare dso_local i32 @CFRangeMake(i32, i32) #1

declare dso_local i32 @CFArrayGetCount(i32) #1

declare dso_local i32 @CFArrayContainsValue(i32, i32, i32) #1

declare dso_local i32 @aout_RestartRequest(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @CFRelease(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
