; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideopool.c_gst_vlc_video_pool_set_config.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstvlcvideopool.c_gst_vlc_video_pool_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__*, i32, %struct.TYPE_10__, i32, i8*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 (i32*, i32*)* }

@GST_BUFFER_POOL_OPTION_VIDEO_META = common dso_local global i32 0, align 4
@GST_BUFFER_POOL_OPTION_VIDEO_ALIGNMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"setting the following config on the pool: %s,             size: %lu, min buffers: %u, max buffers: %u\00", align 1
@parent_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"wrong pool config\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"no input caps in config\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"invalid caps\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"format unsupported\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"allocator unsupported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @gst_vlc_video_pool_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gst_vlc_video_pool_set_config(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_9__* @GST_VLC_VIDEO_POOL_CAST(i32* %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @gst_buffer_pool_config_get_params(i32* %17, i32** %7, i32* %10, i32* %11, i32* %12)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %145

21:                                               ; preds = %2
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %151

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @gst_buffer_pool_config_get_allocator(i32* %26, i32** %13, i32* %14)
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @GST_IS_VLC_PICTURE_PLANE_ALLOCATOR(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %169

35:                                               ; preds = %30
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @gst_object_unref(i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32*, i32** %13, align 8
  %47 = call i64 @gst_object_ref(i32* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 6
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @gst_video_info_from_caps(%struct.TYPE_10__* %8, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %157

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @GST_BUFFER_POOL_OPTION_VIDEO_META, align 4
  %59 = call i8* @gst_buffer_pool_config_has_option(i32* %57, i32 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @GST_BUFFER_POOL_OPTION_VIDEO_ALIGNMENT, align 4
  %65 = call i8* @gst_buffer_pool_config_has_option(i32* %63, i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 5
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @gst_buffer_pool_config_get_video_alignment(i32* %75, i32* %9)
  br label %79

77:                                               ; preds = %56
  %78 = call i32 @gst_video_alignment_reset(i32* %9)
  br label %79

79:                                               ; preds = %77, %72
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32 16, i32* %83, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @gst_vlc_picture_plane_allocator_query_format(i64 %86, %struct.TYPE_10__* %8, i32* %9, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  br label %163

91:                                               ; preds = %79
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @gst_buffer_pool_config_set_video_alignment(i32* %97, i32* %9)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @gst_caps_unref(i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @gst_caps_ref(i32* %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = bitcast %struct.TYPE_10__* %115 to i8*
  %117 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @gst_caps_to_string(i32* %124)
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @msg_Dbg(%struct.TYPE_11__* %123, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %127, i32 %128, i32 %129)
  %131 = load i32*, i32** %5, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @gst_buffer_pool_config_set_params(i32* %131, i32* %132, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* @parent_class, align 4
  %139 = call %struct.TYPE_12__* @GST_BUFFER_POOL_CLASS(i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %140, align 8
  %142 = load i32*, i32** %4, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 %141(i32* %142, i32* %143)
  store i32 %144, i32* %3, align 4
  br label %175

145:                                              ; preds = %20
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %147, align 8
  %149 = call i32 @msg_Err(%struct.TYPE_11__* %148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %3, align 4
  br label %175

151:                                              ; preds = %24
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = call i32 @msg_Err(%struct.TYPE_11__* %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %3, align 4
  br label %175

157:                                              ; preds = %55
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = call i32 @msg_Err(%struct.TYPE_11__* %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %162 = load i32, i32* @FALSE, align 4
  store i32 %162, i32* %3, align 4
  br label %175

163:                                              ; preds = %90
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = call i32 @msg_Err(%struct.TYPE_11__* %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %168 = load i32, i32* @FALSE, align 4
  store i32 %168, i32* %3, align 4
  br label %175

169:                                              ; preds = %34
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = call i32 @msg_Err(%struct.TYPE_11__* %172, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %174 = load i32, i32* @FALSE, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %169, %163, %157, %151, %145, %109
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.TYPE_9__* @GST_VLC_VIDEO_POOL_CAST(i32*) #1

declare dso_local i32 @gst_buffer_pool_config_get_params(i32*, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @gst_buffer_pool_config_get_allocator(i32*, i32**, i32*) #1

declare dso_local i32 @GST_IS_VLC_PICTURE_PLANE_ALLOCATOR(i32*) #1

declare dso_local i32 @gst_object_unref(i64) #1

declare dso_local i64 @gst_object_ref(i32*) #1

declare dso_local i32 @gst_video_info_from_caps(%struct.TYPE_10__*, i32*) #1

declare dso_local i8* @gst_buffer_pool_config_has_option(i32*, i32) #1

declare dso_local i32 @gst_buffer_pool_config_get_video_alignment(i32*, i32*) #1

declare dso_local i32 @gst_video_alignment_reset(i32*) #1

declare dso_local i32 @gst_vlc_picture_plane_allocator_query_format(i64, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @gst_buffer_pool_config_set_video_alignment(i32*, i32*) #1

declare dso_local i32 @gst_caps_unref(i32) #1

declare dso_local i32 @gst_caps_ref(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_11__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @gst_caps_to_string(i32*) #1

declare dso_local i32 @gst_buffer_pool_config_set_params(i32*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @GST_BUFFER_POOL_CLASS(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
