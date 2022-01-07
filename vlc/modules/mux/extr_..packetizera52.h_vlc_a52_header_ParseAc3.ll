; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_..packetizera52.h_vlc_a52_header_ParseAc3.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_..packetizera52.h_vlc_a52_header_ParseAc3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vlc_a52_bitstream_info }
%struct.vlc_a52_bitstream_info = type { i64, i32, i64, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@VLC_A52_MIN_HEADER_SIZE = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@vlc_a52_header_ParseAc3.ppi_frmsizcod_fscod_sizes = internal constant [38 x [3 x i32]] [[3 x i32] [i32 96, i32 69, i32 64], [3 x i32] [i32 96, i32 70, i32 64], [3 x i32] [i32 120, i32 87, i32 80], [3 x i32] [i32 120, i32 88, i32 80], [3 x i32] [i32 144, i32 104, i32 96], [3 x i32] [i32 144, i32 105, i32 96], [3 x i32] [i32 168, i32 121, i32 112], [3 x i32] [i32 168, i32 122, i32 112], [3 x i32] [i32 192, i32 139, i32 128], [3 x i32] [i32 192, i32 140, i32 128], [3 x i32] [i32 240, i32 174, i32 160], [3 x i32] [i32 240, i32 175, i32 160], [3 x i32] [i32 288, i32 208, i32 192], [3 x i32] [i32 288, i32 209, i32 192], [3 x i32] [i32 336, i32 243, i32 224], [3 x i32] [i32 336, i32 244, i32 224], [3 x i32] [i32 384, i32 278, i32 256], [3 x i32] [i32 384, i32 279, i32 256], [3 x i32] [i32 480, i32 348, i32 320], [3 x i32] [i32 480, i32 349, i32 320], [3 x i32] [i32 576, i32 417, i32 384], [3 x i32] [i32 576, i32 418, i32 384], [3 x i32] [i32 672, i32 487, i32 448], [3 x i32] [i32 672, i32 488, i32 448], [3 x i32] [i32 768, i32 557, i32 512], [3 x i32] [i32 768, i32 558, i32 512], [3 x i32] [i32 960, i32 696, i32 640], [3 x i32] [i32 960, i32 697, i32 640], [3 x i32] [i32 1152, i32 835, i32 768], [3 x i32] [i32 1152, i32 836, i32 768], [3 x i32] [i32 1344, i32 975, i32 896], [3 x i32] [i32 1344, i32 976, i32 896], [3 x i32] [i32 1536, i32 1114, i32 1024], [3 x i32] [i32 1536, i32 1115, i32 1024], [3 x i32] [i32 1728, i32 1253, i32 1152], [3 x i32] [i32 1728, i32 1254, i32 1152], [3 x i32] [i32 1920, i32 1393, i32 1280], [3 x i32] [i32 1920, i32 1394, i32 1280]], align 16
@vlc_a52_header_ParseAc3.pi_frmsizcod_bitrates = internal constant [19 x i32] [i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320, i32 384, i32 448, i32 512, i32 576, i32 640], align 16
@AOUT_CHANMODE_DOLBYSTEREO = common dso_local global i32 0, align 4
@AOUT_CHANMODE_DUALMONO = common dso_local global i32 0, align 4
@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i32*)* @vlc_a52_header_ParseAc3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_a52_header_ParseAc3(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vlc_a52_bitstream_info*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 9
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = load i64, i64* @VLC_A52_MIN_HEADER_SIZE, align 8
  %17 = sub nsw i64 %16, 4
  %18 = call i64 @vlc_a52_ParseAc3BitstreamInfo(%struct.vlc_a52_bitstream_info* %13, i32* %15, i64 %17)
  %19 = load i64, i64* @VLC_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %5, align 4
  br label %129

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 9
  store %struct.vlc_a52_bitstream_info* %25, %struct.vlc_a52_bitstream_info** %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %28 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 8
  store i32 0, i32* %35, align 8
  %36 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %37 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %47

41:                                               ; preds = %23
  %42 = load i32, i32* @AOUT_CHANMODE_DOLBYSTEREO, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %23
  %48 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %49 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @AOUT_CHANMODE_DUALMONO, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %60 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @vlc_popcount(i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %77 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @VLC_CLIP(i32 %78, i32 8, i32 11)
  %80 = sub nsw i32 %79, 8
  store i32 %80, i32* %11, align 4
  %81 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %82 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [19 x i32], [19 x i32]* @vlc_a52_header_ParseAc3.pi_frmsizcod_bitrates, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %87, 1000
  %89 = load i32, i32* %11, align 4
  %90 = ashr i32 %88, %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %95 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = lshr i32 %98, %99
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %104 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [38 x [3 x i32]], [38 x [3 x i32]]* @vlc_a52_header_ParseAc3.ppi_frmsizcod_fscod_sizes, i64 0, i64 %106
  %108 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %10, align 8
  %109 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sub i64 2, %110
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %107, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 2
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  store i32 6, i32* %118, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %121, 256
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 5
  store i32 0, i32* %126, align 4
  %127 = load i64, i64* @VLC_SUCCESS, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %69, %21
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i64 @vlc_a52_ParseAc3BitstreamInfo(%struct.vlc_a52_bitstream_info*, i32*, i64) #1

declare dso_local i32 @vlc_popcount(i32) #1

declare dso_local i32 @VLC_CLIP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
