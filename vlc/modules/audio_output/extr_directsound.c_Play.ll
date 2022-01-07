; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_Play.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_Play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@DS_OK = common dso_local global i64 0, align 8
@DSBPLAY_LOOPING = common dso_local global i32 0, align 4
@DSERR_BUFFERLOST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"cannot start playing buffer: (hr=0x%lX)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_4__*, i32*)* @Play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Play(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @FillBuffer(i32* %9, %struct.TYPE_4__* %10, i32* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @DS_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %4, align 8
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DSBPLAY_LOOPING, align 4
  %23 = call i64 @IDirectSoundBuffer_Play(i32 %21, i32 0, i32 0, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @DSERR_BUFFERLOST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IDirectSoundBuffer_Restore(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DSBPLAY_LOOPING, align 4
  %36 = call i64 @IDirectSoundBuffer_Play(i32 %34, i32 0, i32 0, i32 %35)
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %27, %18
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @DS_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @msg_Err(i32* %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %43)
  br label %57

45:                                               ; preds = %37
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = call i32 @vlc_mutex_lock(i32* %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = call i32 @vlc_cond_signal(i32* %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i32 @vlc_mutex_unlock(i32* %55)
  br label %57

57:                                               ; preds = %45, %41
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %57, %16
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i64 @FillBuffer(i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i64 @IDirectSoundBuffer_Play(i32, i32, i32, i32) #1

declare dso_local i32 @IDirectSoundBuffer_Restore(i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i64) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
