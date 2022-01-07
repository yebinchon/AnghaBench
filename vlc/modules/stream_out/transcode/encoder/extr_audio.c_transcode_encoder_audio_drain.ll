; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_audio.c_transcode_encoder_audio_drain.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_audio.c_transcode_encoder_audio_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transcode_encoder_audio_drain(i32* %0, i32** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32** %1, i32*** %4, align 8
  br label %6

6:                                                ; preds = %12, %2
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @transcode_encoder_audio_encode(i32* %7, i32* null)
  store i32* %8, i32** %5, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @block_ChainAppend(i32** %9, i32* %10)
  br label %12

12:                                               ; preds = %6
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %6, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %16
}

declare dso_local i32* @transcode_encoder_audio_encode(i32*, i32*) #1

declare dso_local i32 @block_ChainAppend(i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
