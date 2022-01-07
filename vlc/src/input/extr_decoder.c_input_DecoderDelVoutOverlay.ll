; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderDelVoutOverlay.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderDelVoutOverlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.decoder_owner = type { i32, i32 }

@VIDEO_ES = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_DecoderDelVoutOverlay(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.decoder_owner*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_6__* %7)
  store %struct.decoder_owner* %8, %struct.decoder_owner** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VIDEO_ES, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %18 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %17, i32 0, i32 0
  %19 = call i32 @vlc_mutex_lock(i32* %18)
  %20 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %21 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %26 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %25, i32 0, i32 0
  %27 = call i32 @vlc_mutex_unlock(i32* %26)
  %28 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %2
  %30 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %31 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @vout_UnregisterSubpictureChannel(i32 %32, i64 %33)
  %35 = load %struct.decoder_owner*, %struct.decoder_owner** %6, align 8
  %36 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %35, i32 0, i32 0
  %37 = call i32 @vlc_mutex_unlock(i32* %36)
  %38 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %24
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.decoder_owner* @dec_get_owner(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vout_UnregisterSubpictureChannel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
