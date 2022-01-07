; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderChangePause.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderChangePause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_DecoderChangePause(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.decoder_owner*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.decoder_owner* @dec_get_owner(i32* %8)
  store %struct.decoder_owner* %9, %struct.decoder_owner** %7, align 8
  %10 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %11 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vlc_fifo_Lock(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %16 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %19 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %21 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %23 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vlc_fifo_Signal(i32 %24)
  %26 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %27 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vlc_fifo_Unlock(i32 %28)
  ret void
}

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @vlc_fifo_Lock(i32) #1

declare dso_local i32 @vlc_fifo_Signal(i32) #1

declare dso_local i32 @vlc_fifo_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
