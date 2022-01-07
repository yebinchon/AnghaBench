; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_get_current_profile_level.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_get_current_profile_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.hxxx_helper_nal* }
%struct.hxxx_helper_nal = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@VLC_CODEC_H264 = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_CODEC_HEVC = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hxxx_helper_get_current_profile_level(%struct.hxxx_helper* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hxxx_helper*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hxxx_helper_nal*, align 8
  %9 = alloca %struct.hxxx_helper_nal*, align 8
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %11 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VLC_CODEC_H264, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %3
  %16 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %17 = call %struct.hxxx_helper_nal* @h264_helper_get_current_sps(%struct.hxxx_helper* %16)
  store %struct.hxxx_helper_nal* %17, %struct.hxxx_helper_nal** %8, align 8
  %18 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %8, align 8
  %19 = icmp ne %struct.hxxx_helper_nal* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %8, align 8
  %22 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %8, align 8
  %28 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %33, i32* %4, align 4
  br label %72

34:                                               ; preds = %15
  br label %70

35:                                               ; preds = %3
  %36 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %37 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VLC_CODEC_HEVC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %43 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %44, align 8
  %46 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %47 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %45, i64 %49
  store %struct.hxxx_helper_nal* %50, %struct.hxxx_helper_nal** %9, align 8
  %51 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %9, align 8
  %52 = icmp ne %struct.hxxx_helper_nal* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %41
  %54 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %9, align 8
  %55 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %9, align 8
  %60 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 @hevc_get_sps_profile_tier_level(i64 %61, i32* %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %67, i32* %4, align 4
  br label %72

68:                                               ; preds = %58, %53, %41
  br label %69

69:                                               ; preds = %68, %35
  br label %70

70:                                               ; preds = %69, %34
  %71 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %66, %20
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.hxxx_helper_nal* @h264_helper_get_current_sps(%struct.hxxx_helper*) #1

declare dso_local i64 @hevc_get_sps_profile_tier_level(i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
