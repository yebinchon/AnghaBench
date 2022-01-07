; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_clean.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_hxxx_helper.c_hxxx_helper_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hxxx_helper = type { i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hxxx_helper_nal = type { i32, i32, i32, i32, i32 }

@H264_SPS_ID_MAX = common dso_local global i32 0, align 4
@H264_PPS_ID_MAX = common dso_local global i32 0, align 4
@HEVC_VPS_ID_MAX = common dso_local global i32 0, align 4
@HEVC_SPS_ID_MAX = common dso_local global i32 0, align 4
@HEVC_PPS_ID_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hxxx_helper_clean(%struct.hxxx_helper* %0) #0 {
  %2 = alloca %struct.hxxx_helper*, align 8
  %3 = alloca %struct.hxxx_helper_nal*, align 8
  store %struct.hxxx_helper* %0, %struct.hxxx_helper** %2, align 8
  %4 = load %struct.hxxx_helper*, %struct.hxxx_helper** %2, align 8
  %5 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %67 [
    i32 129, label %7
    i32 128, label %31
  ]

7:                                                ; preds = %1
  %8 = load %struct.hxxx_helper*, %struct.hxxx_helper** %2, align 8
  %9 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @H264_SPS_ID_MAX, align 4
  %13 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %3, align 8
  %14 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @h264_release_sps(i32 %15)
  %17 = call i32 @RELEASE_NALS(i32 %11, i32 %12, i32 %16)
  %18 = load %struct.hxxx_helper*, %struct.hxxx_helper** %2, align 8
  %19 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @H264_PPS_ID_MAX, align 4
  %23 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %3, align 8
  %24 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @h264_release_pps(i32 %25)
  %27 = call i32 @RELEASE_NALS(i32 %21, i32 %22, i32 %26)
  %28 = load %struct.hxxx_helper*, %struct.hxxx_helper** %2, align 8
  %29 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %28, i32 0, i32 2
  %30 = call i32 @memset(%struct.TYPE_2__* %29, i32 0, i32 12)
  br label %69

31:                                               ; preds = %1
  %32 = load %struct.hxxx_helper*, %struct.hxxx_helper** %2, align 8
  %33 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HEVC_VPS_ID_MAX, align 4
  %37 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %3, align 8
  %38 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hevc_rbsp_release_vps(i32 %39)
  %41 = call i32 @RELEASE_NALS(i32 %35, i32 %36, i32 %40)
  %42 = load %struct.hxxx_helper*, %struct.hxxx_helper** %2, align 8
  %43 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HEVC_SPS_ID_MAX, align 4
  %47 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %3, align 8
  %48 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hevc_rbsp_release_sps(i32 %49)
  %51 = call i32 @RELEASE_NALS(i32 %45, i32 %46, i32 %50)
  %52 = load %struct.hxxx_helper*, %struct.hxxx_helper** %2, align 8
  %53 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HEVC_PPS_ID_MAX, align 4
  %57 = load %struct.hxxx_helper_nal*, %struct.hxxx_helper_nal** %3, align 8
  %58 = getelementptr inbounds %struct.hxxx_helper_nal, %struct.hxxx_helper_nal* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @hevc_rbsp_release_pps(i32 %59)
  %61 = call i32 @RELEASE_NALS(i32 %55, i32 %56, i32 %60)
  %62 = load %struct.hxxx_helper*, %struct.hxxx_helper** %2, align 8
  %63 = call i32 @helper_clear_sei(%struct.hxxx_helper* %62)
  %64 = load %struct.hxxx_helper*, %struct.hxxx_helper** %2, align 8
  %65 = getelementptr inbounds %struct.hxxx_helper, %struct.hxxx_helper* %64, i32 0, i32 1
  %66 = call i32 @memset(%struct.TYPE_2__* %65, i32 0, i32 12)
  br label %69

67:                                               ; preds = %1
  %68 = call i32 (...) @vlc_assert_unreachable()
  br label %69

69:                                               ; preds = %67, %31, %7
  ret void
}

declare dso_local i32 @RELEASE_NALS(i32, i32, i32) #1

declare dso_local i32 @h264_release_sps(i32) #1

declare dso_local i32 @h264_release_pps(i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @hevc_rbsp_release_vps(i32) #1

declare dso_local i32 @hevc_rbsp_release_sps(i32) #1

declare dso_local i32 @hevc_rbsp_release_pps(i32) #1

declare dso_local i32 @helper_clear_sei(%struct.hxxx_helper*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
