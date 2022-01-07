; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideosink.c_gst_vlc_video_sink_propose_allocation.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideosink.c_gst_vlc_video_sink_propose_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@GST_VIDEO_META_API_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"failed to create the pool\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"no caps in allocation query\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"invalid caps in allocation query\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @gst_vlc_video_sink_propose_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gst_vlc_video_sink_propose_allocation(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_7__* @GST_VLC_VIDEO_SINK(i32* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  store i32* null, i32** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @gst_query_parse_allocation(i32* %14, i32** %7, i64* %8)
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %68

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @gst_video_info_from_caps(%struct.TYPE_8__* %11, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %74

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @gst_vlc_video_sink_create_pool(%struct.TYPE_7__* %33, i32* %34, i32 %36, i32 2)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %62

42:                                               ; preds = %32
  %43 = load i32*, i32** %9, align 8
  %44 = call %struct.TYPE_9__* @GST_VLC_VIDEO_POOL_CAST(i32* %43)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = call i32 @GST_VIDEO_INFO_SIZE(i32* %45)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %42, %24, %19
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @gst_query_add_allocation_pool(i32* %51, i32* %52, i32 %53, i32 2, i32 0)
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @gst_object_unref(i32* %55)
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @GST_VIDEO_META_API_TYPE, align 4
  %60 = call i32 @gst_query_add_allocation_meta(i32* %58, i32 %59, i32* null)
  %61 = load i64, i64* @TRUE, align 8
  store i64 %61, i64* %3, align 8
  br label %80

62:                                               ; preds = %41
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @msg_Err(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %67 = load i64, i64* @FALSE, align 8
  store i64 %67, i64* %3, align 8
  br label %80

68:                                               ; preds = %18
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @msg_Err(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i64, i64* @FALSE, align 8
  store i64 %73, i64* %3, align 8
  br label %80

74:                                               ; preds = %31
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @msg_Err(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i64, i64* @FALSE, align 8
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %74, %68, %62, %57
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local %struct.TYPE_7__* @GST_VLC_VIDEO_SINK(i32*) #1

declare dso_local i32 @gst_query_parse_allocation(i32*, i32**, i64*) #1

declare dso_local i32 @gst_video_info_from_caps(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @gst_vlc_video_sink_create_pool(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @GST_VIDEO_INFO_SIZE(i32*) #1

declare dso_local %struct.TYPE_9__* @GST_VLC_VIDEO_POOL_CAST(i32*) #1

declare dso_local i32 @gst_query_add_allocation_pool(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @gst_object_unref(i32*) #1

declare dso_local i32 @gst_query_add_allocation_meta(i32*, i32, i32*) #1

declare dso_local i32 @msg_Err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
