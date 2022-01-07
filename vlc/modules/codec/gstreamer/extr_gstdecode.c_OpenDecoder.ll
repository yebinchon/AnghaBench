; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstdecode.c_OpenDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstdecode.c_OpenDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i32, i32, %struct.TYPE_47__*, i32 }
%struct.TYPE_47__ = type { i32, i32, %struct.TYPE_44__*, %struct.TYPE_44__*, %struct.TYPE_44__*, %struct.TYPE_44__*, %struct.TYPE_44__*, i32, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i64 }
%struct.TYPE_43__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_48__ = type { i32, i32*, i32* }
%struct.TYPE_45__ = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to register vlcvideosink\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"use-decodebin\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Using decodebin? %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"yes \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"video/x-raw\00", align 1
@GST_ELEMENT_FACTORY_TYPE_DECODER = common dso_local global i32 0, align 4
@GST_RANK_MARGINAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"no decoder list found\00", align 1
@VLC_ENOMOD = common dso_local global i32 0, align 4
@gst_plugin_feature_rank_compare_func = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to sort decoders list\00", align 1
@find_decoder_func = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"no suitable decoder found\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"failed to create decoder\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"failed to create queue\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"appsrc\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"appsrc not found\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"caps\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"emit-signals\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@GST_FORMAT_BYTES = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"stream-type\00", align 1
@GST_APP_STREAM_TYPE_SEEKABLE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"max-bytes\00", align 1
@seek_data_cb = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"decodebin\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"decodebin not found\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"pad-added\00", align 1
@pad_added_cb = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"vlcvideosink\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"vlcvideosink not found\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"use-vlcpool\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Using vlc pool? %s\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@FALSE = common dso_local global i32* null, align 8
@.str.27 = private unnamed_addr constant [10 x i8] c"allocator\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"use-pool\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"new-buffer\00", align 1
@frame_handoff_cb = common dso_local global i32 0, align 4
@caps_handoff_cb = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"decoder\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"bin not found\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"failed to create bus\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"failed to link src <-> in\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"failed to link in <-> out\00", align 1
@GST_STATE_PLAYING = common dso_local global i32 0, align 4
@GST_STATE_CHANGE_FAILURE = common dso_local global i32* null, align 8
@.str.36 = private unnamed_addr constant [18 x i8] c"set state failure\00", align 1
@DecodeBlock = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDecoder(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_46__*, align 8
  %5 = alloca %struct.TYPE_47__*, align 8
  %6 = alloca %struct.TYPE_44__*, align 8
  %7 = alloca %struct.TYPE_44__*, align 8
  %8 = alloca %struct.TYPE_43__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_48__, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_44__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_44__*, align 8
  %16 = alloca %struct.TYPE_44__*, align 8
  store i32* %0, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %18, %struct.TYPE_46__** %4, align 8
  %19 = bitcast %struct.TYPE_43__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %20, i32* %11, align 4
  %21 = call i32 (...) @vlc_gst_init()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %25 = call i32 @msg_Err(%struct.TYPE_46__* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %2, align 4
  br label %404

27:                                               ; preds = %1
  %28 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %28, i32 0, i32 3
  %30 = call i32* @vlc_to_gst_fmt(i32* %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %2, align 4
  br label %404

35:                                               ; preds = %27
  %36 = call %struct.TYPE_47__* @calloc(i32 1, i32 64)
  %37 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %37, i32 0, i32 2
  store %struct.TYPE_47__* %36, %struct.TYPE_47__** %38, align 8
  store %struct.TYPE_47__* %36, %struct.TYPE_47__** %5, align 8
  %39 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %40 = icmp eq %struct.TYPE_47__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @gst_structure_free(i32* %42)
  %44 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %44, i32* %2, align 4
  br label %404

45:                                               ; preds = %35
  %46 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %47 = call i32 @var_CreateGetBool(%struct.TYPE_46__* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %53 = call i32 @msg_Dbg(%struct.TYPE_46__* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = call i32* (...) @gst_caps_new_empty()
  %55 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 1
  store i32* %54, i32** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @gst_caps_append_structure(i32* %57, i32* %58)
  %60 = call i32* @gst_caps_new_empty_simple(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %61 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 0
  store i32* %60, i32** %61, align 8
  %62 = load i32, i32* @GST_ELEMENT_FACTORY_TYPE_DECODER, align 4
  %63 = load i32, i32* @GST_RANK_MARGINAL, align 4
  %64 = call %struct.TYPE_44__* @gst_element_factory_list_get_elements(i32 %62, i32 %63)
  store %struct.TYPE_44__* %64, %struct.TYPE_44__** %12, align 8
  %65 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %66 = icmp eq %struct.TYPE_44__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %45
  %68 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %69 = call i32 @msg_Err(%struct.TYPE_46__* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* @VLC_ENOMOD, align 4
  store i32 %70, i32* %11, align 4
  br label %377

71:                                               ; preds = %45
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %76 = load i32, i32* @gst_plugin_feature_rank_compare_func, align 4
  %77 = call %struct.TYPE_44__* @g_list_sort(%struct.TYPE_44__* %75, i32 %76)
  store %struct.TYPE_44__* %77, %struct.TYPE_44__** %12, align 8
  %78 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %79 = icmp eq %struct.TYPE_44__* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %82 = call i32 @msg_Err(%struct.TYPE_46__* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %83 = load i32, i32* @VLC_ENOMOD, align 4
  store i32 %83, i32* %11, align 4
  br label %377

84:                                               ; preds = %74
  %85 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %86 = load i32, i32* @find_decoder_func, align 4
  %87 = call %struct.TYPE_44__* @g_list_find_custom(%struct.TYPE_44__* %85, %struct.TYPE_43__* %8, i32 %86)
  store %struct.TYPE_44__* %87, %struct.TYPE_44__** %15, align 8
  %88 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %89 = icmp eq %struct.TYPE_44__* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %92 = call i32 @msg_Err(%struct.TYPE_46__* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %93 = load i32, i32* @VLC_ENOMOD, align 4
  store i32 %93, i32* %11, align 4
  br label %377

94:                                               ; preds = %84
  %95 = load %struct.TYPE_44__*, %struct.TYPE_44__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = call %struct.TYPE_44__* @gst_element_factory_create(i32* %98, i32* null)
  %100 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %100, i32 0, i32 4
  store %struct.TYPE_44__* %99, %struct.TYPE_44__** %101, align 8
  %102 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_44__*, %struct.TYPE_44__** %103, align 8
  %105 = icmp eq %struct.TYPE_44__* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %94
  %107 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %108 = call i32 @msg_Err(%struct.TYPE_46__* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %109 = load i32, i32* @VLC_ENOMOD, align 4
  store i32 %109, i32* %11, align 4
  br label %377

110:                                              ; preds = %94
  br label %122

111:                                              ; preds = %71
  %112 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %113 = load i32, i32* @find_decoder_func, align 4
  %114 = call %struct.TYPE_44__* @g_list_find_custom(%struct.TYPE_44__* %112, %struct.TYPE_43__* %8, i32 %113)
  store %struct.TYPE_44__* %114, %struct.TYPE_44__** %16, align 8
  %115 = load %struct.TYPE_44__*, %struct.TYPE_44__** %16, align 8
  %116 = icmp eq %struct.TYPE_44__* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %119 = call i32 @msg_Err(%struct.TYPE_46__* %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %120 = load i32, i32* @VLC_ENOMOD, align 4
  store i32 %120, i32* %11, align 4
  br label %377

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %110
  %123 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %124 = call i32 @gst_plugin_feature_list_free(%struct.TYPE_44__* %123)
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @gst_caps_unref(i32* %126)
  %128 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 0
  store i32* null, i32** %128, align 8
  %129 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  %131 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %131, i32 0, i32 1
  store i32 0, i32* %132, align 4
  %133 = call %struct.TYPE_44__* @gst_atomic_queue_new(i32 0)
  %134 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %134, i32 0, i32 8
  store %struct.TYPE_44__* %133, %struct.TYPE_44__** %135, align 8
  %136 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %136, i32 0, i32 8
  %138 = load %struct.TYPE_44__*, %struct.TYPE_44__** %137, align 8
  %139 = icmp eq %struct.TYPE_44__* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %122
  %141 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %142 = call i32 @msg_Err(%struct.TYPE_46__* %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %143 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %143, i32* %11, align 4
  br label %377

144:                                              ; preds = %122
  %145 = call i8* @gst_element_factory_make(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32* null)
  %146 = bitcast i8* %145 to %struct.TYPE_44__*
  %147 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %147, i32 0, i32 5
  store %struct.TYPE_44__* %146, %struct.TYPE_44__** %148, align 8
  %149 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_44__*, %struct.TYPE_44__** %150, align 8
  %152 = icmp eq %struct.TYPE_44__* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %144
  %154 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %155 = call i32 @msg_Err(%struct.TYPE_46__* %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %156 = load i32, i32* @VLC_ENOMOD, align 4
  store i32 %156, i32* %11, align 4
  br label %377

157:                                              ; preds = %144
  %158 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %158, i32 0, i32 5
  %160 = load %struct.TYPE_44__*, %struct.TYPE_44__** %159, align 8
  %161 = call i32 @G_OBJECT(%struct.TYPE_44__* %160)
  %162 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* @TRUE, align 4
  %165 = load i32, i32* @GST_FORMAT_BYTES, align 4
  %166 = load i32, i32* @GST_APP_STREAM_TYPE_SEEKABLE, align 4
  %167 = load i32, i32* @TRUE, align 4
  %168 = call i32 (i32, i8*, i32*, i8*, i32, i8*, i32, i8*, i32, i8*, ...) @g_object_set(i32 %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1, i8* null)
  %169 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @gst_caps_unref(i32* %170)
  %172 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 1
  store i32* null, i32** %172, align 8
  %173 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %10, i32 0, i32 2
  store i32* null, i32** %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %10, i32 0, i32 1
  store i32* null, i32** %174, align 8
  %175 = load i32, i32* @seek_data_cb, align 4
  %176 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %10, i32 0, i32 0
  store i32 %175, i32* %176, align 8
  %177 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_44__*, %struct.TYPE_44__** %178, align 8
  %180 = call i32 @GST_APP_SRC(%struct.TYPE_44__* %179)
  %181 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %182 = call i32 @gst_app_src_set_callbacks(i32 %180, %struct.TYPE_48__* %10, %struct.TYPE_46__* %181, i32* null)
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %207

185:                                              ; preds = %157
  %186 = call i8* @gst_element_factory_make(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32* null)
  %187 = bitcast i8* %186 to %struct.TYPE_44__*
  %188 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %188, i32 0, i32 4
  store %struct.TYPE_44__* %187, %struct.TYPE_44__** %189, align 8
  %190 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_44__*, %struct.TYPE_44__** %191, align 8
  %193 = icmp eq %struct.TYPE_44__* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %185
  %195 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %196 = call i32 @msg_Err(%struct.TYPE_46__* %195, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  %197 = load i32, i32* @VLC_ENOMOD, align 4
  store i32 %197, i32* %11, align 4
  br label %377

198:                                              ; preds = %185
  %199 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_44__*, %struct.TYPE_44__** %200, align 8
  %202 = call i32 @G_OBJECT(%struct.TYPE_44__* %201)
  %203 = load i32, i32* @pad_added_cb, align 4
  %204 = call i32 @G_CALLBACK(i32 %203)
  %205 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %206 = call i32 @g_signal_connect(i32 %202, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 %204, %struct.TYPE_46__* %205)
  br label %207

207:                                              ; preds = %198, %157
  %208 = call i8* @gst_element_factory_make(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32* null)
  %209 = bitcast i8* %208 to %struct.TYPE_44__*
  %210 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %210, i32 0, i32 3
  store %struct.TYPE_44__* %209, %struct.TYPE_44__** %211, align 8
  %212 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_44__*, %struct.TYPE_44__** %213, align 8
  %215 = icmp eq %struct.TYPE_44__* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %207
  %217 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %218 = call i32 @msg_Err(%struct.TYPE_46__* %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  %219 = load i32, i32* @VLC_ENOMOD, align 4
  store i32 %219, i32* %11, align 4
  br label %377

220:                                              ; preds = %207
  %221 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %222 = call i32 @var_CreateGetBool(%struct.TYPE_46__* %221, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  store i32 %222, i32* %14, align 4
  %223 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %224 = load i32, i32* %14, align 4
  %225 = icmp ne i32 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %228 = call i32 @msg_Dbg(%struct.TYPE_46__* %223, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8* %227)
  %229 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %230 = ptrtoint %struct.TYPE_46__* %229 to i32
  %231 = call i32 @gst_vlc_picture_plane_allocator_new(i32 %230)
  %232 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %232, i32 0, i32 7
  store i32 %231, i32* %233, align 8
  %234 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %234, i32 0, i32 3
  %236 = load %struct.TYPE_44__*, %struct.TYPE_44__** %235, align 8
  %237 = call i32 @G_OBJECT(%struct.TYPE_44__* %236)
  %238 = load i32*, i32** @FALSE, align 8
  %239 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %243 = ptrtoint %struct.TYPE_46__* %242 to i32
  %244 = load i32, i32* %14, align 4
  %245 = call i32 (i32, i8*, i32*, i8*, i32, i8*, i32, i8*, i32, i8*, ...) @g_object_set(i32 %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32* %238, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i32 %241, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 %243, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32 %244, i8* null)
  %246 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_44__*, %struct.TYPE_44__** %247, align 8
  %249 = call i32 @G_OBJECT(%struct.TYPE_44__* %248)
  %250 = load i32, i32* @frame_handoff_cb, align 4
  %251 = call i32 @G_CALLBACK(i32 %250)
  %252 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %253 = call i32 @g_signal_connect(i32 %249, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i32 %251, %struct.TYPE_46__* %252)
  %254 = load i32, i32* @caps_handoff_cb, align 4
  %255 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_44__*, %struct.TYPE_44__** %256, align 8
  %258 = call %struct.TYPE_45__* @GST_VLC_VIDEO_SINK(%struct.TYPE_44__* %257)
  %259 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %258, i32 0, i32 0
  store i32 %254, i32* %259, align 4
  %260 = call i32 @gst_bin_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0))
  %261 = call %struct.TYPE_44__* @GST_ELEMENT(i32 %260)
  %262 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %262, i32 0, i32 2
  store %struct.TYPE_44__* %261, %struct.TYPE_44__** %263, align 8
  %264 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %264, i32 0, i32 2
  %266 = load %struct.TYPE_44__*, %struct.TYPE_44__** %265, align 8
  %267 = icmp eq %struct.TYPE_44__* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %220
  %269 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %270 = call i32 @msg_Err(%struct.TYPE_46__* %269, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0))
  %271 = load i32, i32* @VLC_ENOMOD, align 4
  store i32 %271, i32* %11, align 4
  br label %377

272:                                              ; preds = %220
  %273 = call %struct.TYPE_44__* (...) @gst_bus_new()
  %274 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %274, i32 0, i32 6
  store %struct.TYPE_44__* %273, %struct.TYPE_44__** %275, align 8
  %276 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %276, i32 0, i32 6
  %278 = load %struct.TYPE_44__*, %struct.TYPE_44__** %277, align 8
  %279 = icmp eq %struct.TYPE_44__* %278, null
  br i1 %279, label %280, label %284

280:                                              ; preds = %272
  %281 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %282 = call i32 @msg_Err(%struct.TYPE_46__* %281, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0))
  %283 = load i32, i32* @VLC_ENOMOD, align 4
  store i32 %283, i32* %11, align 4
  br label %377

284:                                              ; preds = %272
  %285 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_44__*, %struct.TYPE_44__** %286, align 8
  %288 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %288, i32 0, i32 6
  %290 = load %struct.TYPE_44__*, %struct.TYPE_44__** %289, align 8
  %291 = call i32 @gst_element_set_bus(%struct.TYPE_44__* %287, %struct.TYPE_44__* %290)
  %292 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_44__*, %struct.TYPE_44__** %293, align 8
  %295 = call i32 @GST_BIN(%struct.TYPE_44__* %294)
  %296 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %296, i32 0, i32 5
  %298 = load %struct.TYPE_44__*, %struct.TYPE_44__** %297, align 8
  %299 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %299, i32 0, i32 4
  %301 = load %struct.TYPE_44__*, %struct.TYPE_44__** %300, align 8
  %302 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_44__*, %struct.TYPE_44__** %303, align 8
  %305 = call i32 @gst_bin_add_many(i32 %295, %struct.TYPE_44__* %298, %struct.TYPE_44__* %301, %struct.TYPE_44__* %304, i32* null)
  %306 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %306, i32 0, i32 5
  %308 = load %struct.TYPE_44__*, %struct.TYPE_44__** %307, align 8
  %309 = call i32 @gst_object_ref(%struct.TYPE_44__* %308)
  %310 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %310, i32 0, i32 4
  %312 = load %struct.TYPE_44__*, %struct.TYPE_44__** %311, align 8
  %313 = call i32 @gst_object_ref(%struct.TYPE_44__* %312)
  %314 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %314, i32 0, i32 3
  %316 = load %struct.TYPE_44__*, %struct.TYPE_44__** %315, align 8
  %317 = call i32 @gst_object_ref(%struct.TYPE_44__* %316)
  %318 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %318, i32 0, i32 5
  %320 = load %struct.TYPE_44__*, %struct.TYPE_44__** %319, align 8
  %321 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %321, i32 0, i32 4
  %323 = load %struct.TYPE_44__*, %struct.TYPE_44__** %322, align 8
  %324 = call %struct.TYPE_44__* @gst_element_link(%struct.TYPE_44__* %320, %struct.TYPE_44__* %323)
  store %struct.TYPE_44__* %324, %struct.TYPE_44__** %7, align 8
  %325 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %326 = load i32*, i32** @FALSE, align 8
  %327 = bitcast i32* %326 to %struct.TYPE_44__*
  %328 = icmp eq %struct.TYPE_44__* %325, %327
  br i1 %328, label %329, label %333

329:                                              ; preds = %284
  %330 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %331 = call i32 @msg_Err(%struct.TYPE_46__* %330, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0))
  %332 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %332, i32* %11, align 4
  br label %377

333:                                              ; preds = %284
  %334 = load i32, i32* %13, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %353, label %336

336:                                              ; preds = %333
  %337 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %337, i32 0, i32 4
  %339 = load %struct.TYPE_44__*, %struct.TYPE_44__** %338, align 8
  %340 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %340, i32 0, i32 3
  %342 = load %struct.TYPE_44__*, %struct.TYPE_44__** %341, align 8
  %343 = call %struct.TYPE_44__* @gst_element_link(%struct.TYPE_44__* %339, %struct.TYPE_44__* %342)
  store %struct.TYPE_44__* %343, %struct.TYPE_44__** %7, align 8
  %344 = load %struct.TYPE_44__*, %struct.TYPE_44__** %7, align 8
  %345 = load i32*, i32** @FALSE, align 8
  %346 = bitcast i32* %345 to %struct.TYPE_44__*
  %347 = icmp eq %struct.TYPE_44__* %344, %346
  br i1 %347, label %348, label %352

348:                                              ; preds = %336
  %349 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %350 = call i32 @msg_Err(%struct.TYPE_46__* %349, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0))
  %351 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %351, i32* %11, align 4
  br label %377

352:                                              ; preds = %336
  br label %353

353:                                              ; preds = %352, %333
  %354 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %354, i32 0, i32 2
  %356 = load %struct.TYPE_44__*, %struct.TYPE_44__** %355, align 8
  %357 = load i32, i32* @GST_STATE_PLAYING, align 4
  %358 = call %struct.TYPE_44__* @gst_element_set_state(%struct.TYPE_44__* %356, i32 %357)
  store %struct.TYPE_44__* %358, %struct.TYPE_44__** %6, align 8
  %359 = load %struct.TYPE_44__*, %struct.TYPE_44__** %6, align 8
  %360 = load i32*, i32** @GST_STATE_CHANGE_FAILURE, align 8
  %361 = bitcast i32* %360 to %struct.TYPE_44__*
  %362 = icmp eq %struct.TYPE_44__* %359, %361
  br i1 %362, label %363, label %367

363:                                              ; preds = %353
  %364 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %365 = call i32 @msg_Err(%struct.TYPE_46__* %364, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0))
  %366 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %366, i32* %11, align 4
  br label %377

367:                                              ; preds = %353
  %368 = load %struct.TYPE_47__*, %struct.TYPE_47__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %368, i32 0, i32 1
  store i32 1, i32* %369, align 4
  %370 = load i32, i32* @DecodeBlock, align 4
  %371 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %371, i32 0, i32 1
  store i32 %370, i32* %372, align 4
  %373 = load i32, i32* @Flush, align 4
  %374 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %374, i32 0, i32 0
  store i32 %373, i32* %375, align 8
  %376 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %376, i32* %2, align 4
  br label %404

377:                                              ; preds = %363, %348, %329, %280, %268, %216, %194, %153, %140, %117, %106, %90, %80, %67
  %378 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = icmp ne i32* %379, null
  br i1 %380, label %381, label %385

381:                                              ; preds = %377
  %382 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = call i32 @gst_caps_unref(i32* %383)
  br label %385

385:                                              ; preds = %381, %377
  %386 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = icmp ne i32* %387, null
  br i1 %388, label %389, label %393

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %8, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = call i32 @gst_caps_unref(i32* %391)
  br label %393

393:                                              ; preds = %389, %385
  %394 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %395 = icmp ne %struct.TYPE_44__* %394, null
  br i1 %395, label %396, label %399

396:                                              ; preds = %393
  %397 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %398 = call i32 @gst_plugin_feature_list_free(%struct.TYPE_44__* %397)
  br label %399

399:                                              ; preds = %396, %393
  %400 = load %struct.TYPE_46__*, %struct.TYPE_46__** %4, align 8
  %401 = bitcast %struct.TYPE_46__* %400 to i32*
  %402 = call i32 @CloseDecoder(i32* %401)
  %403 = load i32, i32* %11, align 4
  store i32 %403, i32* %2, align 4
  br label %404

404:                                              ; preds = %399, %367, %41, %33, %23
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vlc_gst_init(...) #2

declare dso_local i32 @msg_Err(%struct.TYPE_46__*, i8*) #2

declare dso_local i32* @vlc_to_gst_fmt(i32*) #2

declare dso_local %struct.TYPE_47__* @calloc(i32, i32) #2

declare dso_local i32 @gst_structure_free(i32*) #2

declare dso_local i32 @var_CreateGetBool(%struct.TYPE_46__*, i8*) #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_46__*, i8*, i8*) #2

declare dso_local i32* @gst_caps_new_empty(...) #2

declare dso_local i32 @gst_caps_append_structure(i32*, i32*) #2

declare dso_local i32* @gst_caps_new_empty_simple(i8*) #2

declare dso_local %struct.TYPE_44__* @gst_element_factory_list_get_elements(i32, i32) #2

declare dso_local %struct.TYPE_44__* @g_list_sort(%struct.TYPE_44__*, i32) #2

declare dso_local %struct.TYPE_44__* @g_list_find_custom(%struct.TYPE_44__*, %struct.TYPE_43__*, i32) #2

declare dso_local %struct.TYPE_44__* @gst_element_factory_create(i32*, i32*) #2

declare dso_local i32 @gst_plugin_feature_list_free(%struct.TYPE_44__*) #2

declare dso_local i32 @gst_caps_unref(i32*) #2

declare dso_local %struct.TYPE_44__* @gst_atomic_queue_new(i32) #2

declare dso_local i8* @gst_element_factory_make(i8*, i32*) #2

declare dso_local i32 @g_object_set(i32, i8*, i32*, i8*, i32, i8*, i32, i8*, i32, i8*, ...) #2

declare dso_local i32 @G_OBJECT(%struct.TYPE_44__*) #2

declare dso_local i32 @gst_app_src_set_callbacks(i32, %struct.TYPE_48__*, %struct.TYPE_46__*, i32*) #2

declare dso_local i32 @GST_APP_SRC(%struct.TYPE_44__*) #2

declare dso_local i32 @g_signal_connect(i32, i8*, i32, %struct.TYPE_46__*) #2

declare dso_local i32 @G_CALLBACK(i32) #2

declare dso_local i32 @gst_vlc_picture_plane_allocator_new(i32) #2

declare dso_local %struct.TYPE_45__* @GST_VLC_VIDEO_SINK(%struct.TYPE_44__*) #2

declare dso_local %struct.TYPE_44__* @GST_ELEMENT(i32) #2

declare dso_local i32 @gst_bin_new(i8*) #2

declare dso_local %struct.TYPE_44__* @gst_bus_new(...) #2

declare dso_local i32 @gst_element_set_bus(%struct.TYPE_44__*, %struct.TYPE_44__*) #2

declare dso_local i32 @gst_bin_add_many(i32, %struct.TYPE_44__*, %struct.TYPE_44__*, %struct.TYPE_44__*, i32*) #2

declare dso_local i32 @GST_BIN(%struct.TYPE_44__*) #2

declare dso_local i32 @gst_object_ref(%struct.TYPE_44__*) #2

declare dso_local %struct.TYPE_44__* @gst_element_link(%struct.TYPE_44__*, %struct.TYPE_44__*) #2

declare dso_local %struct.TYPE_44__* @gst_element_set_state(%struct.TYPE_44__*, i32) #2

declare dso_local i32 @CloseDecoder(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
