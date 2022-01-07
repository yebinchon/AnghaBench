; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderDelete.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.decoder_owner = type { i32, i32, %struct.TYPE_9__, i32, i32, i64, i64, i32*, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@VIDEO_ES = common dso_local global i64 0, align 8
@MAX_CC_DECODERS = common dso_local global i32 0, align 4
@VLC_CODEC_CEA608 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_DecoderDelete(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.decoder_owner*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_10__* %5)
  store %struct.decoder_owner* %6, %struct.decoder_owner** %3, align 8
  %7 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %8 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @vlc_cancel(i32 %9)
  %11 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %12 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vlc_fifo_Lock(i32 %13)
  %15 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %16 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %18 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vlc_fifo_Unlock(i32 %19)
  %21 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %22 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %21, i32 0, i32 4
  %23 = call i32 @vlc_mutex_lock(i32* %22)
  %24 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %25 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %27 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %26, i32 0, i32 8
  %28 = call i32 @vlc_cond_signal(i32* %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VIDEO_ES, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %1
  %36 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %37 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %42 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %47 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %52 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @picture_pool_Cancel(i64 %53, i32 1)
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %40, %35, %1
  %57 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %58 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %57, i32 0, i32 4
  %59 = call i32 @vlc_mutex_unlock(i32* %58)
  %60 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %61 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @vlc_join(i32 %62, i32* null)
  %64 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %65 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %79, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @MAX_CC_DECODERS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = load i32, i32* @VLC_CODEC_CEA608, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @input_DecoderSetCcState(%struct.TYPE_10__* %75, i32 %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %70

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %85 = call i32 @DeleteDecoder(%struct.TYPE_10__* %84)
  ret void
}

declare dso_local %struct.decoder_owner* @dec_get_owner(%struct.TYPE_10__*) #1

declare dso_local i32 @vlc_cancel(i32) #1

declare dso_local i32 @vlc_fifo_Lock(i32) #1

declare dso_local i32 @vlc_fifo_Unlock(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @picture_pool_Cancel(i64, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

declare dso_local i32 @input_DecoderSetCcState(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @DeleteDecoder(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
