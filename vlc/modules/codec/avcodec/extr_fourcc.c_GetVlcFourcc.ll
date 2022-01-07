; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_fourcc.c_GetVlcFourcc.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_fourcc.c_GetVlcFourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@video_codecs = common dso_local global %struct.TYPE_5__* null, align 8
@AV_CODEC_ID_RAWVIDEO = common dso_local global i32 0, align 4
@VLC_CODEC_UNKNOWN = common dso_local global i32 0, align 4
@audio_codecs = common dso_local global %struct.TYPE_5__* null, align 8
@spu_codecs = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetVlcFourcc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @video_codecs, align 8
  %10 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @AV_CODEC_ID_RAWVIDEO, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @VLC_CODEC_UNKNOWN, align 4
  store i32 %17, i32* %2, align 4
  br label %86

18:                                               ; preds = %12
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @video_codecs, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @video_codecs, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %4, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %7

36:                                               ; preds = %7
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @audio_codecs, align 8
  %40 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %39)
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @audio_codecs, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @audio_codecs, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %2, align 4
  br label %86

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %5, align 8
  br label %37

60:                                               ; preds = %37
  store i64 0, i64* %6, align 8
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @spu_codecs, align 8
  %64 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %63)
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %61
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @spu_codecs, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @spu_codecs, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %2, align 4
  br label %86

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %6, align 8
  br label %61

84:                                               ; preds = %61
  %85 = load i32, i32* @VLC_CODEC_UNKNOWN, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %74, %50, %26, %16
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
