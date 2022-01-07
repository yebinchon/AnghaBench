; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_get_colorimetry.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_get_colorimetry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.hxxx_helper_nal* }
%struct.hxxx_helper_nal = type { i32*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hxxx_helper_get_colorimetry(%struct.hxxx_helper* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
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
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %75 [
    i32 129, label %17
    i32 128, label %40
  ]

17:                                               ; preds = %5
  %18 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %19 = call %struct.hxxx_helper_nal* @h264_helper_get_current_sps(%struct.hxxx_helper* %18)
  store %struct.hxxx_helper_nal* %19, %struct.hxxx_helper_nal** %12, align 8
  %20 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %12, align 8
  %21 = icmp eq %struct.hxxx_helper_nal* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %23, i32* %6, align 4
  br label %77

24:                                               ; preds = %17
  %25 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %12, align 8
  %26 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @h264_get_colorimetry(i32 %27, i32* %28, i32* %29, i32* %30, i32* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @VLC_SUCCESS, align 4
  br label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %6, align 4
  br label %77

40:                                               ; preds = %5
  %41 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %42 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %43, align 8
  %45 = load %struct.hxxx_helper*, %struct.hxxx_helper** %7, align 8
  %46 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %44, i64 %48
  store %struct.hxxx_helper_nal* %49, %struct.hxxx_helper_nal** %13, align 8
  %50 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %13, align 8
  %51 = icmp eq %struct.hxxx_helper_nal* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %40
  %53 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %13, align 8
  %54 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %40
  %58 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %58, i32* %6, align 4
  br label %77

59:                                               ; preds = %52
  %60 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %13, align 8
  %61 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @hevc_get_colorimetry(i32* %62, i32* %63, i32* %64, i32* %65, i32* %66)
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @VLC_SUCCESS, align 4
  br label %73

71:                                               ; preds = %59
  %72 = load i32, i32* @VLC_EGENERIC, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %6, align 4
  br label %77

75:                                               ; preds = %5
  %76 = call i32 (...) @vlc_assert_unreachable()
  br label %77

77:                                               ; preds = %22, %38, %57, %73, %75
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.hxxx_helper_nal* @h264_helper_get_current_sps(%struct.hxxx_helper*) #1

declare dso_local i32 @h264_get_colorimetry(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @hevc_get_colorimetry(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
