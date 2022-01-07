; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_sndio.c_VolumeChanged.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_sndio.c_VolumeChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SIO_MAXVOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @VolumeChanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VolumeChanged(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = uitofp i32 %13 to float
  %15 = load i64, i64* @SIO_MAXVOL, align 8
  %16 = sitofp i64 %15 to float
  %17 = fdiv float %14, %16
  store float %17, float* %7, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load float, float* %7, align 4
  %20 = call i32 @aout_VolumeReport(%struct.TYPE_5__* %18, float %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @aout_MuteReport(%struct.TYPE_5__* %21, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @aout_VolumeReport(%struct.TYPE_5__*, float) #1

declare dso_local i32 @aout_MuteReport(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
