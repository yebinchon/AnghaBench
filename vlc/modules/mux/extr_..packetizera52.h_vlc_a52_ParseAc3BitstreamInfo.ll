; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_..packetizera52.h_vlc_a52_ParseAc3BitstreamInfo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_..packetizera52.h_vlc_a52_ParseAc3BitstreamInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_a52_bitstream_info = type { i32, i32, i32, i8*, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vlc_a52_bitstream_info*, i32*, i64)* @vlc_a52_ParseAc3BitstreamInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_a52_ParseAc3BitstreamInfo(%struct.vlc_a52_bitstream_info* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_a52_bitstream_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vlc_a52_bitstream_info* %0, %struct.vlc_a52_bitstream_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @bs_init(i32* %8, i32* %9, i64 %10)
  %12 = call i8* @bs_read(i32* %8, i32 2)
  %13 = ptrtoint i8* %12 to i32
  %14 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %15 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %17 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %4, align 4
  br label %81

22:                                               ; preds = %3
  %23 = call i8* @bs_read(i32* %8, i32 6)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %26 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %28 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 38
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %32, i32* %4, align 4
  br label %81

33:                                               ; preds = %22
  %34 = call i8* @bs_read(i32* %8, i32 5)
  %35 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %36 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = call i8* @bs_read(i32* %8, i32 3)
  %38 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %39 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = call i8* @bs_read(i32* %8, i32 3)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %43 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %45 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %33
  %50 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %51 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @bs_skip(i32* %8, i32 2)
  br label %56

56:                                               ; preds = %54, %49, %33
  %57 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %58 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @bs_skip(i32* %8, i32 2)
  br label %64

64:                                               ; preds = %62, %56
  %65 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %66 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i8* @bs_read(i32* %8, i32 2)
  br label %72

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i8* [ %70, %69 ], [ null, %71 ]
  %74 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %75 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  %77 = call i8* @bs_read(i32* %8, i32 1)
  %78 = load %struct.vlc_a52_bitstream_info*, %struct.vlc_a52_bitstream_info** %5, align 8
  %79 = getelementptr inbounds %struct.vlc_a52_bitstream_info, %struct.vlc_a52_bitstream_info* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %72, %31, %20
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @bs_init(i32*, i32*, i64) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
