; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_sharpen.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/vdpau/extr_sharpen.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%union.anon = type { i32 }

@VLC_CODEC_VDPAU_VIDEO_420 = common dso_local global i64 0, align 8
@VLC_CODEC_VDPAU_VIDEO_422 = common dso_local global i64 0, align 8
@VLC_CODEC_VDPAU_VIDEO_444 = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VDP_STATUS_OK = common dso_local global i64 0, align 8
@VDP_VIDEO_MIXER_FEATURE_SHARPNESS = common dso_local global i32 0, align 4
@VDP_FALSE = common dso_local global i64 0, align 8
@VDP_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"sharpening/blurring not supported by VDPAU device\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@Sharpen = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"sharpen-\00", align 1
@options = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"sharpen-sigma\00", align 1
@SharpenCallback = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %union.anon, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VLC_CODEC_VDPAU_VIDEO_420, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VLC_CODEC_VDPAU_VIDEO_422, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VLC_CODEC_VDPAU_VIDEO_444, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %2, align 4
  br label %112

38:                                               ; preds = %28, %20, %1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = call i32 @video_format_IsSimilar(%struct.TYPE_16__* %41, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %48, i32* %2, align 4
  br label %112

49:                                               ; preds = %38
  %50 = call i64 @vdp_get_x11(i32* null, i32 -1, i32** %5, i32* %6)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @VDP_STATUS_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %55, i32* %2, align 4
  br label %112

56:                                               ; preds = %49
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @VDP_VIDEO_MIXER_FEATURE_SHARPNESS, align 4
  %60 = call i64 @vdp_video_mixer_query_feature_support(i32* %57, i32 %58, i32 %59, i64* %8)
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @VDP_STATUS_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i64, i64* @VDP_FALSE, align 8
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %64, %56
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @vdp_release_x11(i32* %67)
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @VDP_TRUE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = call i32 @msg_Err(%struct.TYPE_14__* %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %75, i32* %2, align 4
  br label %112

76:                                               ; preds = %66
  %77 = call %struct.TYPE_15__* @malloc(i32 4)
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %9, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = icmp eq %struct.TYPE_15__* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %84, i32* %2, align 4
  br label %112

85:                                               ; preds = %76
  %86 = load i32, i32* @Sharpen, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = load i32, i32* @options, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @config_ChainParse(%struct.TYPE_14__* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = load i32, i32* @SharpenCallback, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = call i32 @var_AddCallback(%struct.TYPE_14__* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %99, %struct.TYPE_15__* %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = call i32 @var_CreateGetFloatCommand(%struct.TYPE_14__* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %104 = call float @vlc_to_vdp_sigma(i32 %103)
  %105 = bitcast %union.anon* %10 to float*
  store float %104, float* %105, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = bitcast %union.anon* %10 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @atomic_init(i32* %107, i32 %109)
  %111 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %85, %83, %72, %54, %47, %36
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @video_format_IsSimilar(%struct.TYPE_16__*, i32*) #1

declare dso_local i64 @vdp_get_x11(i32*, i32, i32**, i32*) #1

declare dso_local i64 @vdp_video_mixer_query_feature_support(i32*, i32, i32, i64*) #1

declare dso_local i32 @vdp_release_x11(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*) #1

declare dso_local %struct.TYPE_15__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @config_ChainParse(%struct.TYPE_14__*, i8*, i32, i32) #1

declare dso_local i32 @var_AddCallback(%struct.TYPE_14__*, i8*, i32, %struct.TYPE_15__*) #1

declare dso_local float @vlc_to_vdp_sigma(i32) #1

declare dso_local i32 @var_CreateGetFloatCommand(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @atomic_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
