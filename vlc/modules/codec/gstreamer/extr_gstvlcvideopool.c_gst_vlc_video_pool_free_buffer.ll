; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideopool.c_gst_vlc_video_pool_free_buffer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideopool.c_gst_vlc_video_pool_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (i32*, i32*)* }

@.str = private unnamed_addr constant [16 x i8] c"freed buffer %p\00", align 1
@parent_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @gst_vlc_video_pool_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gst_vlc_video_pool_free_buffer(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_4__* @GST_VLC_VIDEO_POOL_CAST(i32* %6)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @gst_vlc_picture_plane_allocator_release(i32 %10, i32* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @msg_Dbg(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load i32, i32* @parent_class, align 4
  %19 = call %struct.TYPE_5__* @GST_BUFFER_POOL_CLASS(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %20, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 %21(i32* %22, i32* %23)
  ret void
}

declare dso_local %struct.TYPE_4__* @GST_VLC_VIDEO_POOL_CAST(i32*) #1

declare dso_local i32 @gst_vlc_picture_plane_allocator_release(i32, i32*) #1

declare dso_local i32 @msg_Dbg(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @GST_BUFFER_POOL_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
