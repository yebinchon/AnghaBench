; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_get_current_picture_size.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_get_current_picture_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.hxxx_helper_nal* }
%struct.hxxx_helper_nal = type { i64, i32 }

@VLC_CODEC_H264 = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_CODEC_HEVC = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hxxx_helper_get_current_picture_size(%struct.hxxx_helper* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hxxx_helper*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.hxxx_helper_nal*, align 8
  %13 = alloca %struct.hxxx_helper_nal*, align 8
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %15 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VLC_CODEC_H264, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %5
  %20 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %21 = call %struct.hxxx_helper_nal* @h264_helper_get_current_sps(%struct.hxxx_helper* %20)
  store %struct.hxxx_helper_nal* %21, %struct.hxxx_helper_nal** %12, align 8
  %22 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %12, align 8
  %23 = icmp ne %struct.hxxx_helper_nal* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %12, align 8
  %26 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i64 @h264_get_picture_size(i32 %27, i32* %28, i32* %29, i32* %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %35, i32* %6, align 4
  br label %76

36:                                               ; preds = %24, %19
  br label %74

37:                                               ; preds = %5
  %38 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %39 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VLC_CODEC_HEVC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %37
  %44 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %45 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %46, align 8
  %48 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %49 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %47, i64 %51
  store %struct.hxxx_helper_nal* %52, %struct.hxxx_helper_nal** %13, align 8
  %53 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %13, align 8
  %54 = icmp ne %struct.hxxx_helper_nal* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %43
  %56 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %13, align 8
  %57 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %13, align 8
  %62 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i64 @hevc_get_picture_size(i64 %63, i32* %64, i32* %65, i32* %66, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %71, i32* %6, align 4
  br label %76

72:                                               ; preds = %60, %55, %43
  br label %73

73:                                               ; preds = %72, %37
  br label %74

74:                                               ; preds = %73, %36
  %75 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %70, %34
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.hxxx_helper_nal* @h264_helper_get_current_sps(%struct.hxxx_helper*) #1

declare dso_local i64 @h264_get_picture_size(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @hevc_get_picture_size(i64, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
