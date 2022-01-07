; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_....packetizera52.h_vlc_a52_header_ParseEac3.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_....packetizera52.h_vlc_a52_header_ParseEac3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vlc_a52_bitstream_info }
%struct.vlc_a52_bitstream_info = type { i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }

@VLC_A52_MIN_HEADER_SIZE = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@vlc_a52_header_ParseEac3.pi_numblkscod = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 6], align 16
@AOUT_CHANMODE_DUALMONO = common dso_local global i32 0, align 4
@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32*)* @vlc_a52_header_ParseEac3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_a52_header_ParseEac3(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vlc_a52_bitstream_info*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 9
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i64, i64* @VLC_A52_MIN_HEADER_SIZE, align 8
  %16 = sub nsw i64 %15, 2
  %17 = call i64 @vlc_a52_ParseEac3BitstreamInfo(%struct.vlc_a52_bitstream_info* %12, i32* %14, i64 %16)
  %18 = load i64, i64* @VLC_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %5, align 4
  br label %132

22:                                               ; preds = %4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 9
  store %struct.vlc_a52_bitstream_info* %24, %struct.vlc_a52_bitstream_info** %10, align 8
  %25 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %26 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = mul nsw i32 2, %29
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %34 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %50

37:                                               ; preds = %22
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %40 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = udiv i32 %44, 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 6, i32* %49, align 8
  br label %68

50:                                               ; preds = %22
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %53 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %61 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* @vlc_a52_header_ParseEac3.pi_numblkscod, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %50, %37
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %71 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 8
  store i32 0, i32* %78, align 8
  %79 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %80 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %68
  %84 = load i32, i32* @AOUT_CHANMODE_DUALMONO, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %68
  %90 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %91 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %89
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @vlc_popcount(i32 %103)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 8, %109
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul i32 %110, %113
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %117, 256
  %119 = udiv i32 %114, %118
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %124, 256
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  store i32 1, i32* %129, align 4
  %130 = load i64, i64* @VLC_SUCCESS, align 8
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %100, %20
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i64 @vlc_a52_ParseEac3BitstreamInfo(%struct.vlc_a52_bitstream_info*, i32*, i64) #1

declare dso_local i32 @vlc_popcount(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
