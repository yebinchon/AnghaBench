; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_audio.c_InitAudioDec.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_audio.c_InitAudioDec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, i32, i32, %struct.TYPE_18__, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, i32, i64, i64, i64, i32*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@DecodeAudio = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@FF_PROFILE_UNKNOWN = common dso_local global i64 0, align 8
@FF_LEVEL_UNKNOWN = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitAudioDec(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %9, %struct.TYPE_21__** %4, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = call %struct.TYPE_23__* @ffmpeg_AllocContext(%struct.TYPE_21__* %10, i32** %5)
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %6, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %13 = icmp eq %struct.TYPE_23__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %15, i32* %2, align 4
  br label %133

16:                                               ; preds = %1
  %17 = call %struct.TYPE_22__* @malloc(i32 48)
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %7, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %19 = icmp eq %struct.TYPE_22__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 @avcodec_free_context(%struct.TYPE_23__** %6)
  %25 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %25, i32* %2, align 4
  br label %133

26:                                               ; preds = %16
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 4
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %29, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 6
  store %struct.TYPE_23__* %30, %struct.TYPE_23__** %32, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 5
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %38 = call i32 @InitDecoderConfig(%struct.TYPE_21__* %36, %struct.TYPE_23__* %37)
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %40 = call i64 @OpenAudioCodec(%struct.TYPE_21__* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %26
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %44 = call i32 @free(%struct.TYPE_22__* %43)
  %45 = call i32 @avcodec_free_context(%struct.TYPE_23__** %6)
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %2, align 4
  br label %133

47:                                               ; preds = %26
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %57 = call i32 @SetupOutputFormat(%struct.TYPE_21__* %56, i32 0)
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %47
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  store i64 %69, i64* %73, align 8
  br label %74

74:                                               ; preds = %64, %47
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @date_Init(i32* %83, i64 %88, i32 1)
  br label %90

90:                                               ; preds = %81, %74
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  %100 = load i32, i32* @DecodeAudio, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @Flush, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @FF_PROFILE_UNKNOWN, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %90
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  br label %118

118:                                              ; preds = %111, %90
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @FF_LEVEL_UNKNOWN, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  store i64 %127, i64* %130, align 8
  br label %131

131:                                              ; preds = %124, %118
  %132 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %42, %23, %14
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_23__* @ffmpeg_AllocContext(%struct.TYPE_21__*, i32**) #1

declare dso_local %struct.TYPE_22__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @avcodec_free_context(%struct.TYPE_23__**) #1

declare dso_local i32 @InitDecoderConfig(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i64 @OpenAudioCodec(%struct.TYPE_21__*) #1

declare dso_local i32 @free(%struct.TYPE_22__*) #1

declare dso_local i32 @SetupOutputFormat(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @date_Init(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
