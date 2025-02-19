; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideopool.c_gst_vlc_video_pool_acquire_buffer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideopool.c_gst_vlc_video_pool_acquire_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 (i32*, i32**, i32*)* }

@parent_class = common dso_local global i32 0, align 4
@GST_FLOW_OK = common dso_local global i64 0, align 8
@GST_FLOW_EOS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**, i32*)* @gst_vlc_video_pool_acquire_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gst_vlc_video_pool_acquire_buffer(i32* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_4__* @GST_VLC_VIDEO_POOL_CAST(i32* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load i32, i32* @parent_class, align 4
  %12 = call %struct.TYPE_5__* @GST_BUFFER_POOL_CLASS(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64 (i32*, i32**, i32*)*, i64 (i32*, i32**, i32*)** %13, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32**, i32*** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 %14(i32* %15, i32** %16, i32* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @GST_FLOW_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @gst_vlc_picture_plane_allocator_hold(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i64, i64* @GST_FLOW_EOS, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %30, %22, %3
  %33 = load i64, i64* %8, align 8
  ret i64 %33
}

declare dso_local %struct.TYPE_4__* @GST_VLC_VIDEO_POOL_CAST(i32*) #1

declare dso_local %struct.TYPE_5__* @GST_BUFFER_POOL_CLASS(i32) #1

declare dso_local i32 @gst_vlc_picture_plane_allocator_hold(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
