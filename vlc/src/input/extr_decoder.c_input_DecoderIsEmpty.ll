; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderIsEmpty.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderIsEmpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i64, i64, %struct.TYPE_2__, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@VIDEO_ES = common dso_local global i64 0, align 8
@AUDIO_ES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_DecoderIsEmpty(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.decoder_owner*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.decoder_owner* @dec_get_owner(i32* %6)
  store %struct.decoder_owner* %7, %struct.decoder_owner** %4, align 8
  %8 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %9 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %16 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @vlc_fifo_Lock(i32 %17)
  %19 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %20 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vlc_fifo_IsEmpty(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %26 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %1
  %30 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %31 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @vlc_fifo_Unlock(i32 %32)
  store i32 0, i32* %2, align 4
  br label %85

34:                                               ; preds = %24
  %35 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %36 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @vlc_fifo_Unlock(i32 %37)
  %39 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %40 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %39, i32 0, i32 0
  %41 = call i32 @vlc_mutex_lock(i32* %40)
  %42 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %43 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VIDEO_ES, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %34
  %49 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %50 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %55 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @vout_IsEmpty(i32* %56)
  store i32 %57, i32* %5, align 4
  br label %80

58:                                               ; preds = %48, %34
  %59 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %60 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AUDIO_ES, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %67 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %72 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i1 [ true, %65 ], [ %74, %70 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %79

78:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %75
  br label %80

80:                                               ; preds = %79, %53
  %81 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %82 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %81, i32 0, i32 0
  %83 = call i32 @vlc_mutex_unlock(i32* %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %29
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_fifo_Lock(i32) #1

declare dso_local i32 @vlc_fifo_IsEmpty(i32) #1

declare dso_local i32 @vlc_fifo_Unlock(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vout_IsEmpty(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
