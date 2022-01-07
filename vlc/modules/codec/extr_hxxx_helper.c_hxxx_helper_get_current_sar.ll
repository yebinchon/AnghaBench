; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_get_current_sar.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_get_current_sar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.hxxx_helper_nal* }
%struct.hxxx_helper_nal = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@VLC_CODEC_H264 = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_CODEC_HEVC = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hxxx_helper_get_current_sar(%struct.hxxx_helper* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hxxx_helper*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hxxx_helper_nal*, align 8
  %9 = alloca %struct.hxxx_helper_nal*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %13 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VLC_CODEC_H264, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %19 = call %struct.hxxx_helper_nal* @h264_helper_get_current_sps(%struct.hxxx_helper* %18)
  store %struct.hxxx_helper_nal* %19, %struct.hxxx_helper_nal** %8, align 8
  %20 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %8, align 8
  %21 = icmp ne %struct.hxxx_helper_nal* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %8, align 8
  %24 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %8, align 8
  %31 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %37, i32* %4, align 4
  br label %78

38:                                               ; preds = %17
  br label %76

39:                                               ; preds = %3
  %40 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %41 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VLC_CODEC_HEVC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %39
  %46 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %47 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %48, align 8
  %50 = load %struct.hxxx_helper*, %struct.hxxx_helper** %5, align 8
  %51 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %49, i64 %53
  store %struct.hxxx_helper_nal* %54, %struct.hxxx_helper_nal** %9, align 8
  %55 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %9, align 8
  %56 = icmp ne %struct.hxxx_helper_nal* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %45
  %58 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %9, align 8
  %59 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %9, align 8
  %64 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @hevc_get_aspect_ratio(i64 %65, i32* %10, i32* %11)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %73, i32* %4, align 4
  br label %78

74:                                               ; preds = %62, %57, %45
  br label %75

75:                                               ; preds = %74, %39
  br label %76

76:                                               ; preds = %75, %38
  %77 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %68, %22
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.hxxx_helper_nal* @h264_helper_get_current_sps(%struct.hxxx_helper*) #1

declare dso_local i64 @hevc_get_aspect_ratio(i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
