; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_extradata.c_eac3_extradata_builder_Feed.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_extradata.c_eac3_extradata_builder_Feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.vlc_a52_bitstream_info = type { i64, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@VLC_A52_MIN_HEADER_SIZE = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8
@__const.eac3_extradata_builder_Feed.rgi_fscod_samplerates = private unnamed_addr constant [3 x i32] [i32 48000, i32 44100, i32 32000], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i64)* @eac3_extradata_builder_Feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eac3_extradata_builder_Feed(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vlc_a52_bitstream_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @VLC_A52_MIN_HEADER_SIZE, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 11
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 119
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %21, %17, %3
  br label %104

32:                                               ; preds = %26
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, 2
  %37 = call i64 @vlc_a52_ParseEac3BitstreamInfo(%struct.vlc_a52_bitstream_info* %7, i32* %34, i64 %36)
  %38 = load i64, i64* @VLC_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %104

41:                                               ; preds = %32
  %42 = call i32 @malloc(i32 5)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %104

50:                                               ; preds = %41
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 5, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bs_write_init(i32* %8, i32 %55, i32 %58)
  %60 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 bitcast ([3 x i32]* @__const.eac3_extradata_builder_Feed.rgi_fscod_samplerates to i8*), i64 12, i1 false)
  %61 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %7, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  %65 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %7, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ugt i32 %69, 3
  br i1 %70, label %71, label %72

71:                                               ; preds = %50
  store i32 6, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %50
  %73 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %7, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %10, align 4
  %78 = mul i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 %79, 4
  %81 = udiv i32 %78, %80
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @bs_write(i32* %8, i32 13, i32 %82)
  %84 = call i32 @bs_write(i32* %8, i32 3, i32 0)
  %85 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %7, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @bs_write(i32* %8, i32 2, i32 %87)
  %89 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %7, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @bs_write(i32* %8, i32 5, i32 %90)
  %92 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %7, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @bs_write(i32* %8, i32 5, i32 %93)
  %95 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %7, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @bs_write(i32* %8, i32 3, i32 %96)
  %98 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %7, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bs_write(i32* %8, i32 1, i32 %99)
  %101 = call i32 @bs_write(i32* %8, i32 3, i32 0)
  %102 = call i32 @bs_write(i32* %8, i32 4, i32 0)
  %103 = call i32 @bs_write(i32* %8, i32 1, i32 0)
  br label %104

104:                                              ; preds = %72, %49, %40, %31
  ret void
}

declare dso_local i64 @vlc_a52_ParseEac3BitstreamInfo(%struct.vlc_a52_bitstream_info*, i32*, i64) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @bs_write_init(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bs_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
