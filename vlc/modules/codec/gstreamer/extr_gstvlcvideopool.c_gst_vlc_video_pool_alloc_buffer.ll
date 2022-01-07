; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideopool.c_gst_vlc_video_pool_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideopool.c_gst_vlc_video_pool_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"buffer allocation failed\00", align 1
@GST_FLOW_EOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"meta video enabled\00", align 1
@GST_VIDEO_FRAME_FLAG_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"allocated buffer %p\00", align 1
@GST_FLOW_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32*)* @gst_vlc_video_pool_alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gst_vlc_video_pool_alloc_buffer(i32* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @VLC_UNUSED(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_8__* @GST_VLC_VIDEO_POOL_CAST(i32* %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  %16 = call i32* (...) @gst_buffer_new()
  %17 = load i32**, i32*** %6, align 8
  store i32* %16, i32** %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32**, i32*** %6, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @gst_vlc_picture_plane_allocator_alloc(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @msg_Err(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @GST_FLOW_EOS, align 4
  store i32 %30, i32* %4, align 4
  br label %67

31:                                               ; preds = %3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @msg_Dbg(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32**, i32*** %6, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @GST_VIDEO_FRAME_FLAG_NONE, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = call i32 @GST_VIDEO_INFO_FORMAT(%struct.TYPE_9__* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = call i32 @GST_VIDEO_INFO_WIDTH(%struct.TYPE_9__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = call i32 @GST_VIDEO_INFO_HEIGHT(%struct.TYPE_9__* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = call i32 @GST_VIDEO_INFO_N_PLANES(%struct.TYPE_9__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @gst_buffer_add_video_meta_full(i32* %42, i32 %43, i32 %45, i32 %47, i32 %49, i32 %51, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %36, %31
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32**, i32*** %6, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 (i32, i8*, ...) @msg_Dbg(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %64)
  %66 = load i32, i32* @GST_FLOW_OK, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %59, %25
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local %struct.TYPE_8__* @GST_VLC_VIDEO_POOL_CAST(i32*) #1

declare dso_local i32* @gst_buffer_new(...) #1

declare dso_local i32 @gst_vlc_picture_plane_allocator_alloc(i32, i32*) #1

declare dso_local i32 @msg_Err(i32, i8*) #1

declare dso_local i32 @msg_Dbg(i32, i8*, ...) #1

declare dso_local i32 @gst_buffer_add_video_meta_full(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GST_VIDEO_INFO_FORMAT(%struct.TYPE_9__*) #1

declare dso_local i32 @GST_VIDEO_INFO_WIDTH(%struct.TYPE_9__*) #1

declare dso_local i32 @GST_VIDEO_INFO_HEIGHT(%struct.TYPE_9__*) #1

declare dso_local i32 @GST_VIDEO_INFO_N_PLANES(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
