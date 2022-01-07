; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mpeg4.h_MPEG4_Codec_By_ObjectType.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mpeg4.h_MPEG4_Codec_By_ObjectType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_CODEC_MP4V = common dso_local global i32 0, align 4
@VLC_CODEC_H264 = common dso_local global i32 0, align 4
@VLC_CODEC_MP4A = common dso_local global i32 0, align 4
@VLC_CODEC_ALS = common dso_local global i32 0, align 4
@VLC_CODEC_MPGV = common dso_local global i32 0, align 4
@VLC_CODEC_MPGA = common dso_local global i32 0, align 4
@VLC_CODEC_JPEG = common dso_local global i32 0, align 4
@VLC_CODEC_PNG = common dso_local global i32 0, align 4
@VLC_CODEC_VC1 = common dso_local global i32 0, align 4
@VLC_CODEC_DIRAC = common dso_local global i32 0, align 4
@VLC_CODEC_A52 = common dso_local global i32 0, align 4
@VLC_CODEC_EAC3 = common dso_local global i32 0, align 4
@VLC_CODEC_DTS = common dso_local global i32 0, align 4
@PROFILE_DTS_HD = common dso_local global i32 0, align 4
@PROFILE_DTS_EXPRESS = common dso_local global i32 0, align 4
@VLC_CODEC_VORBIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64, i32*, i32*)* @MPEG4_Codec_By_ObjectType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MPEG4_Codec_By_ObjectType(i32 %0, i32* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %91 [
    i32 32, label %13
    i32 33, label %16
    i32 64, label %19
    i32 65, label %19
    i32 96, label %39
    i32 97, label %39
    i32 98, label %39
    i32 99, label %39
    i32 100, label %39
    i32 101, label %39
    i32 102, label %42
    i32 103, label %42
    i32 104, label %42
    i32 105, label %45
    i32 106, label %48
    i32 107, label %51
    i32 108, label %54
    i32 109, label %57
    i32 110, label %60
    i32 163, label %63
    i32 164, label %66
    i32 165, label %69
    i32 166, label %72
    i32 169, label %75
    i32 170, label %78
    i32 171, label %78
    i32 172, label %83
    i32 221, label %88
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* @VLC_CODEC_MP4V, align 4
  %15 = load i32*, i32** %10, align 8
  store i32 %14, i32* %15, align 4
  br label %92

16:                                               ; preds = %5
  %17 = load i32, i32* @VLC_CODEC_H264, align 4
  %18 = load i32*, i32** %10, align 8
  store i32 %17, i32* %18, align 4
  br label %92

19:                                               ; preds = %5, %5
  %20 = load i32, i32* @VLC_CODEC_MP4A, align 4
  %21 = load i32*, i32** %10, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i64, i64* %9, align 8
  %23 = icmp uge i64 %22, 2
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 248
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 224
  %34 = icmp eq i32 %33, 128
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @VLC_CODEC_ALS, align 4
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %29, %24, %19
  br label %92

39:                                               ; preds = %5, %5, %5, %5, %5, %5
  %40 = load i32, i32* @VLC_CODEC_MPGV, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  br label %92

42:                                               ; preds = %5, %5, %5
  %43 = load i32, i32* @VLC_CODEC_MP4A, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  br label %92

45:                                               ; preds = %5
  %46 = load i32, i32* @VLC_CODEC_MPGA, align 4
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  br label %92

48:                                               ; preds = %5
  %49 = load i32, i32* @VLC_CODEC_MPGV, align 4
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  br label %92

51:                                               ; preds = %5
  %52 = load i32, i32* @VLC_CODEC_MPGA, align 4
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  br label %92

54:                                               ; preds = %5
  %55 = load i32, i32* @VLC_CODEC_JPEG, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  br label %92

57:                                               ; preds = %5
  %58 = load i32, i32* @VLC_CODEC_PNG, align 4
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  br label %92

60:                                               ; preds = %5
  %61 = call i32 @VLC_FOURCC(i8 signext 77, i8 signext 74, i8 signext 50, i8 signext 67)
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  br label %92

63:                                               ; preds = %5
  %64 = load i32, i32* @VLC_CODEC_VC1, align 4
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  br label %92

66:                                               ; preds = %5
  %67 = load i32, i32* @VLC_CODEC_DIRAC, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  br label %92

69:                                               ; preds = %5
  %70 = load i32, i32* @VLC_CODEC_A52, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  br label %92

72:                                               ; preds = %5
  %73 = load i32, i32* @VLC_CODEC_EAC3, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  br label %92

75:                                               ; preds = %5
  %76 = load i32, i32* @VLC_CODEC_DTS, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  br label %92

78:                                               ; preds = %5, %5
  %79 = load i32, i32* @PROFILE_DTS_HD, align 4
  %80 = load i32*, i32** %11, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @VLC_CODEC_DTS, align 4
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  br label %92

83:                                               ; preds = %5
  %84 = load i32, i32* @PROFILE_DTS_EXPRESS, align 4
  %85 = load i32*, i32** %11, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @VLC_CODEC_DTS, align 4
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  br label %92

88:                                               ; preds = %5
  %89 = load i32, i32* @VLC_CODEC_VORBIS, align 4
  %90 = load i32*, i32** %10, align 8
  store i32 %89, i32* %90, align 4
  br label %92

91:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %93

92:                                               ; preds = %88, %83, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %38, %16, %13
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
