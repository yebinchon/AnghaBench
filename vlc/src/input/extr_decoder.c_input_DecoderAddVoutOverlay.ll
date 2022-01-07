; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderAddVoutOverlay.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderAddVoutOverlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32, i64, i32, i32 }
%struct.decoder_owner = type { i32, i32 }

@VIDEO_ES = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_DecoderAddVoutOverlay(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.decoder_owner*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_10__* %10)
  store %struct.decoder_owner* %11, %struct.decoder_owner** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VIDEO_ES, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64*, i64** %7, align 8
  %24 = icmp ne i64* %23, null
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i1 [ false, %3 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %30 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %29, i32 0, i32 0
  %31 = call i32 @vlc_mutex_lock(i32* %30)
  %32 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %33 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %25
  %37 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %38 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %37, i32 0, i32 0
  %39 = call i32 @vlc_mutex_unlock(i32* %38)
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %4, align 4
  br label %77

41:                                               ; preds = %25
  %42 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %43 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vout_RegisterSubpictureChannel(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %50 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %49, i32 0, i32 0
  %51 = call i32 @vlc_mutex_unlock(i32* %50)
  %52 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %52, i32* %4, align 4
  br label %77

53:                                               ; preds = %41
  %54 = call i32 (...) @vlc_tick_now()
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %69 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = call i32 @vout_PutSubpicture(i32 %70, %struct.TYPE_9__* %71)
  %73 = load %struct.decoder_owner*, %struct.decoder_owner** %8, align 8
  %74 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %73, i32 0, i32 0
  %75 = call i32 @vlc_mutex_unlock(i32* %74)
  %76 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %53, %48, %36
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.decoder_owner* @dec_get_owner(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vout_RegisterSubpictureChannel(i32) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i32 @vout_PutSubpicture(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
