; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_TimeGet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_directsound.c_TimeGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }

@DS_OK = common dso_local global i64 0, align 8
@DSBSTATUS_PLAYING = common dso_local global i32 0, align 4
@DSERR_INVALIDCALL = common dso_local global i64 0, align 8
@DSERR_GENERIC = common dso_local global i64 0, align 8
@DS_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32*)* @TimeGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TimeGet(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @IDirectSoundBuffer_GetStatus(i32 %12, i32* %7)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @DS_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %3, align 8
  br label %88

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @DSBSTATUS_PLAYING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @DSERR_INVALIDCALL, align 8
  store i64 %25, i64* %3, align 8
  br label %88

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IDirectSoundBuffer_GetCurrentPosition(i32 %29, i32* %6, i32* null)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @DS_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %3, align 8
  br label %88

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* @DSERR_GENERIC, align 8
  store i64 %46, i64* %3, align 8
  br label %88

47:                                               ; preds = %36
  %48 = load i64, i64* %9, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* @DS_BUF_SIZE, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = call i32 @Flush(%struct.TYPE_4__* %70)
  br label %72

72:                                               ; preds = %69, %55
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = sdiv i64 %75, %79
  %81 = trunc i64 %80 to i32
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @vlc_tick_from_samples(i32 %81, i32 %84)
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i64, i64* @DS_OK, align 8
  store i64 %87, i64* %3, align 8
  br label %88

88:                                               ; preds = %72, %45, %34, %24, %17
  %89 = load i64, i64* %3, align 8
  ret i64 %89
}

declare dso_local i64 @IDirectSoundBuffer_GetStatus(i32, i32*) #1

declare dso_local i64 @IDirectSoundBuffer_GetCurrentPosition(i32, i32*, i32*) #1

declare dso_local i32 @Flush(%struct.TYPE_4__*) #1

declare dso_local i32 @vlc_tick_from_samples(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
