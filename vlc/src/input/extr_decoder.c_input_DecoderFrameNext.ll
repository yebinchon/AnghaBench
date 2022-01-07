; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderFrameNext.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderFrameNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i64, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@VIDEO_ES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_DecoderFrameNext(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.decoder_owner*, align 8
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.decoder_owner* @dec_get_owner(i32* %6)
  store %struct.decoder_owner* %7, %struct.decoder_owner** %5, align 8
  %8 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %9 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @assert(i32 %10)
  %12 = load i64*, i64** %4, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %14 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @vlc_fifo_Lock(i32 %15)
  %17 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %18 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %22 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @vlc_fifo_Signal(i32 %23)
  %25 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %26 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @vlc_fifo_Unlock(i32 %27)
  %29 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %30 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %29, i32 0, i32 0
  %31 = call i32 @vlc_mutex_lock(i32* %30)
  %32 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %33 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VIDEO_ES, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %2
  %39 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %40 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %45 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = call i32 @vout_NextPicture(i64 %46, i64* %47)
  br label %49

49:                                               ; preds = %43, %38
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %52 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %51, i32 0, i32 0
  %53 = call i32 @vlc_mutex_unlock(i32* %52)
  ret void
}

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_fifo_Lock(i32) #1

declare dso_local i32 @vlc_fifo_Signal(i32) #1

declare dso_local i32 @vlc_fifo_Unlock(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vout_NextPicture(i64, i64*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
