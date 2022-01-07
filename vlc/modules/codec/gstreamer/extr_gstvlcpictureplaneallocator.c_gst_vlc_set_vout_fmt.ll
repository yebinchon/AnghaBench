; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcpictureplaneallocator.c_gst_vlc_set_vout_fmt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcpictureplaneallocator.c_gst_vlc_set_vout_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@VIDEO_ES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"video chroma type not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gst_vlc_set_vout_fmt(i32* %0, %struct.TYPE_12__* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %11, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @gst_caps_get_structure(i32* %21, i32 0)
  store i32* %22, i32** %12, align 8
  %23 = load i32, i32* @VIDEO_ES, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @gst_structure_get_string(i32* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @vlc_fourcc_GetCodecFromString(i32 %23, i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 %26, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = call i32 @msg_Err(%struct.TYPE_11__* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %86

34:                                               ; preds = %4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @GST_VIDEO_INFO_WIDTH(i32* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @GST_VIDEO_INFO_HEIGHT(i32* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* %15, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @GST_VIDEO_INFO_WIDTH(i32* %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @GST_VIDEO_INFO_HEIGHT(i32* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @GST_VIDEO_INFO_PAR_N(i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @GST_VIDEO_INFO_PAR_D(i32* %65)
  %67 = call i32 @video_format_Setup(%struct.TYPE_9__* %55, i32 %56, i32 %57, i32 %58, i32 %60, i32 %62, i32 %64, i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @GST_VIDEO_INFO_FPS_N(i32* %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @GST_VIDEO_INFO_FPS_D(i32* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %34, %31
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32* @gst_caps_get_structure(i32*, i32) #1

declare dso_local i32 @vlc_fourcc_GetCodecFromString(i32, i32) #1

declare dso_local i32 @gst_structure_get_string(i32*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @GST_VIDEO_INFO_WIDTH(i32*) #1

declare dso_local i32 @GST_VIDEO_INFO_HEIGHT(i32*) #1

declare dso_local i32 @video_format_Setup(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GST_VIDEO_INFO_PAR_N(i32*) #1

declare dso_local i32 @GST_VIDEO_INFO_PAR_D(i32*) #1

declare dso_local i32 @GST_VIDEO_INFO_FPS_N(i32*) #1

declare dso_local i32 @GST_VIDEO_INFO_FPS_D(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
