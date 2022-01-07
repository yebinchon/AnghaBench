; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideosink.c_gst_vlc_video_sink_setcaps.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideosink.c_gst_vlc_video_sink_setcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 (i32, i32*, i32)*, i32 }

@FALSE = common dso_local global i32 0, align 4
@GST_TYPE_CAPS = common dso_local global i32 0, align 4
@GST_TYPE_ELEMENT = common dso_local global i32 0, align 4
@SIGNAL_NEW_CAPS = common dso_local global i64 0, align 8
@gst_vlc_video_sink_signals = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @gst_vlc_video_sink_setcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gst_vlc_video_sink_setcaps(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_10__* @GST_VLC_VIDEO_SINK(i32* %9)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %6, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @gst_video_info_from_caps(i32* %7, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = call i32 @GST_ELEMENT_CAST(%struct.TYPE_10__* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 %23(i32 %25, i32* %26, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %17, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_10__* @GST_VLC_VIDEO_SINK(i32*) #1

declare dso_local i32 @gst_video_info_from_caps(i32*, i32*) #1

declare dso_local i32 @GST_ELEMENT_CAST(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
