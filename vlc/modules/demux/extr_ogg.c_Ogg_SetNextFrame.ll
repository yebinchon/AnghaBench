; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_SetNextFrame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_SetNextFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_23__, %struct.TYPE_20__, %struct.TYPE_19__, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VIDEO_ES = common dso_local global i64 0, align 8
@AUDIO_ES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_22__*, %struct.TYPE_21__*)* @Ogg_SetNextFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ogg_SetNextFrame(i32* %0, %struct.TYPE_22__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @VLC_UNUSED(i32* %10)
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @Ogg_GranuleIsValid(%struct.TYPE_22__* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %3
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @Ogg_GranuleToTime(%struct.TYPE_22__* %20, i32 %21, i32 0, i32 0)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @VLC_TICK_INVALID, align 8
  %30 = icmp ne i64 %28, %29
  br label %31

31:                                               ; preds = %27, %19
  %32 = phi i1 [ true, %19 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @VLC_TICK_INVALID, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @date_Set(%struct.TYPE_23__* %40, i64 %41)
  br label %130

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = call i64 @date_Get(%struct.TYPE_23__* %46)
  %48 = load i64, i64* @VLC_TICK_INVALID, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %130

50:                                               ; preds = %44
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VIDEO_ES, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = call i32 @date_Increment(%struct.TYPE_23__* %59, i32 1)
  br label %129

61:                                               ; preds = %50
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AUDIO_ES, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %128

68:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %88 [
    i32 130, label %73
    i32 129, label %76
  ]

73:                                               ; preds = %68
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = call i32 @Ogg_OpusPacketDuration(%struct.TYPE_21__* %74)
  store i32 %75, i32* %9, align 4
  br label %116

76:                                               ; preds = %68
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %81, %86
  store i32 %87, i32* %9, align 4
  br label %116

88:                                               ; preds = %68
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %88
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 8, %97
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %98, %102
  store i32 %103, i32* %9, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %107, %111
  %113 = load i32, i32* %9, align 4
  %114 = sdiv i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %94, %88
  br label %116

116:                                              ; preds = %115, %76, %73
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  br label %127

122:                                              ; preds = %116
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @date_Increment(%struct.TYPE_23__* %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %119
  br label %128

128:                                              ; preds = %127, %61
  br label %129

129:                                              ; preds = %128, %57
  br label %130

130:                                              ; preds = %38, %129, %44
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i64 @Ogg_GranuleIsValid(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @Ogg_GranuleToTime(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @date_Set(%struct.TYPE_23__*, i64) #1

declare dso_local i64 @date_Get(%struct.TYPE_23__*) #1

declare dso_local i32 @date_Increment(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @Ogg_OpusPacketDuration(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
