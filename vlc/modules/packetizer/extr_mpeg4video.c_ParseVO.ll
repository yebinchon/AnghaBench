; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_mpeg4video.c_ParseVO.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_mpeg4video.c_ParseVO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32* }

@COLOR_PRIMARIES_UNDEF = common dso_local global i64 0, align 8
@COLOR_RANGE_FULL = common dso_local global i32 0, align 4
@COLOR_RANGE_LIMITED = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @ParseVO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseVO(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 4
  %19 = call i32 @bs_init(i32* %5, i32* %14, i64 %18)
  %20 = call i64 @bs_read1(i32* %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @bs_skip(i32* %5, i32 7)
  br label %24

24:                                               ; preds = %22, %2
  %25 = call i8* @bs_read(i32* %5, i32 4)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %89

32:                                               ; preds = %29, %24
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %33 = call i64 @bs_read1(i32* %5)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = call i8* @bs_read(i32* %5, i32 3)
  %37 = call i8* @bs_read(i32* %5, i32 1)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = call i8* @bs_read(i32* %5, i32 1)
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = call i8* @bs_read(i32* %5, i32 8)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = call i8* @bs_read(i32* %5, i32 8)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = call i8* @bs_read(i32* %5, i32 8)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %41, %35
  br label %49

49:                                               ; preds = %48, %32
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @COLOR_PRIMARIES_UNDEF, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @iso_23001_8_cp_to_vlc_primaries(i32 %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @iso_23001_8_tc_to_vlc_xfer(i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @iso_23001_8_mc_to_vlc_coeffs(i32 %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %57
  %79 = load i32, i32* @COLOR_RANGE_FULL, align 4
  br label %82

80:                                               ; preds = %57
  %81 = load i32, i32* @COLOR_RANGE_LIMITED, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  br label %88

88:                                               ; preds = %82, %49
  br label %89

89:                                               ; preds = %88, %29
  %90 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %90
}

declare dso_local i32 @bs_init(i32*, i32*, i64) #1

declare dso_local i64 @bs_read1(i32*) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i32 @iso_23001_8_cp_to_vlc_primaries(i32) #1

declare dso_local i32 @iso_23001_8_tc_to_vlc_xfer(i32) #1

declare dso_local i32 @iso_23001_8_mc_to_vlc_coeffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
