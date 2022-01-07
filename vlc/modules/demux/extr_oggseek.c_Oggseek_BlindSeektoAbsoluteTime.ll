; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_oggseek.c_Oggseek_BlindSeektoAbsoluteTime.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_oggseek.c_Oggseek_BlindSeektoAbsoluteTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@AUDIO_ES = common dso_local global i64 0, align 8
@VLC_TICK_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Oggseek_BlindSeektoAbsoluteTime(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @Ogg_GetBoundsUsingSkeletonIndex(%struct.TYPE_14__* %17, i32 %18, i32* %11, i32* %12)
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  br label %23

23:                                               ; preds = %22, %4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @OggSeekIndexFind(%struct.TYPE_14__* %27, i32 %28, i32* %11, i32* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %13, align 4
  br label %32

32:                                               ; preds = %31, %26, %23
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %68, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AUDIO_ES, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %35
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = call i32 @Ogg_GetKeyframeGranule(%struct.TYPE_14__* %53, i32 -16711936)
  %55 = icmp eq i32 %54, -16711936
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* @VLC_TICK_0, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @VLC_TICK_0, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = call i32 @INT64_C(i32 8000000)
  %66 = sdiv i32 %64, %65
  %67 = add nsw i32 %57, %66
  store i32 %67, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %68

68:                                               ; preds = %56, %52, %47, %42, %35, %32
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @OggBisectSearchByTime(%struct.TYPE_15__* %75, %struct.TYPE_14__* %76, i32 %77, i32 %80, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, -1
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %74, %71, %68
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i32 -1, i32* %5, align 4
  br label %118

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp sgt i32 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98, %92
  store i32 -1, i32* %5, align 4
  br label %118

105:                                              ; preds = %98
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @seek_byte(%struct.TYPE_15__* %109, i32 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = call i32 @ogg_stream_reset(i32* %115)
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %105, %104, %91
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @Ogg_GetBoundsUsingSkeletonIndex(%struct.TYPE_14__*, i32, i32*, i32*) #1

declare dso_local i64 @OggSeekIndexFind(%struct.TYPE_14__*, i32, i32*, i32*) #1

declare dso_local i32 @Ogg_GetKeyframeGranule(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i32 @OggBisectSearchByTime(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @seek_byte(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ogg_stream_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
