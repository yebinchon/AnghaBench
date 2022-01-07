; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstdecode.c_vlc_to_gst_fmt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/gstreamer/extr_gstdecode.c_vlc_to_gst_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"video/x-h264\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"alignment\00", align 1
@G_TYPE_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"au\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"stream-format\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"avc\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"byte-stream\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"video/mpeg\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"mpegversion\00", align 1
@G_TYPE_INT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"systemstream\00", align 1
@G_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"video/x-vp8\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"video/x-flash-video\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"flvversion\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"video/x-wmv\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"wmvversion\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"WMV1\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"WMV2\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"WMV3\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"WVC1\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@GST_TYPE_FRACTION = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"pixel-aspect-ratio\00", align 1
@GST_MEMORY_FLAG_READONLY = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"codec_data\00", align 1
@GST_TYPE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*)* @vlc_to_gst_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vlc_to_gst_fmt(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %75 [
    i32 135, label %12
    i32 134, label %30
    i32 131, label %37
    i32 133, label %39
    i32 136, label %46
    i32 130, label %51
    i32 129, label %57
    i32 128, label %63
    i32 132, label %69
  ]

12:                                               ; preds = %1
  %13 = call i32* @gst_structure_new_empty(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @G_TYPE_STRING, align 4
  %16 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* null)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @G_TYPE_STRING, align 4
  %24 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* null)
  br label %29

25:                                               ; preds = %12
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @G_TYPE_STRING, align 4
  %28 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* null)
  br label %29

29:                                               ; preds = %25, %21
  br label %76

30:                                               ; preds = %1
  %31 = call i32* @gst_structure_new_empty(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @G_TYPE_INT, align 4
  %34 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %33, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %34, i32 %35, i8* null)
  br label %76

37:                                               ; preds = %1
  %38 = call i32* @gst_structure_new_empty(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  store i32* %38, i32** %5, align 8
  br label %76

39:                                               ; preds = %1
  %40 = call i32* @gst_structure_new_empty(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @G_TYPE_INT, align 4
  %43 = load i32, i32* @G_TYPE_BOOLEAN, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %42, i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %43, i32 %44, i8* null)
  br label %76

46:                                               ; preds = %1
  %47 = call i32* @gst_structure_new_empty(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  store i32* %47, i32** %5, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @G_TYPE_INT, align 4
  %50 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %49, i32 1, i8* null)
  br label %76

51:                                               ; preds = %1
  %52 = call i32* @gst_structure_new_empty(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @G_TYPE_INT, align 4
  %55 = load i32, i32* @G_TYPE_STRING, align 4
  %56 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %54, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* null)
  br label %76

57:                                               ; preds = %1
  %58 = call i32* @gst_structure_new_empty(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i32* %58, i32** %5, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @G_TYPE_INT, align 4
  %61 = load i32, i32* @G_TYPE_STRING, align 4
  %62 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %60, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* null)
  br label %76

63:                                               ; preds = %1
  %64 = call i32* @gst_structure_new_empty(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i32* %64, i32** %5, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @G_TYPE_INT, align 4
  %67 = load i32, i32* @G_TYPE_STRING, align 4
  %68 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %66, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* null)
  br label %76

69:                                               ; preds = %1
  %70 = call i32* @gst_structure_new_empty(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i32* %70, i32** %5, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @G_TYPE_INT, align 4
  %73 = load i32, i32* @G_TYPE_STRING, align 4
  %74 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %72, i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* null)
  br label %76

75:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %168

76:                                               ; preds = %69, %63, %57, %51, %46, %39, %37, %30, %29
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @G_TYPE_INT, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @G_TYPE_INT, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 %88, i64 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %92, i64 %95, i8* null)
  br label %97

97:                                               ; preds = %86, %81, %76
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* @GST_TYPE_FRACTION, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 %109, i64 %112, i32 %115, i8* null)
  br label %117

117:                                              ; preds = %107, %102, %97
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %117
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* @GST_TYPE_FRACTION, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %129, i64 %132, i32 %135, i8* null)
  br label %137

137:                                              ; preds = %127, %122, %117
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %166

142:                                              ; preds = %137
  %143 = load i32, i32* @GST_MEMORY_FLAG_READONLY, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i8* @gst_buffer_new_wrapped_full(i32 %143, i32 %146, i64 %149, i32 0, i64 %152, i32* null, i32* null)
  store i8* %153, i8** %6, align 8
  %154 = load i8*, i8** %6, align 8
  %155 = icmp eq i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %142
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @gst_structure_free(i32* %157)
  store i32* null, i32** %2, align 8
  br label %168

159:                                              ; preds = %142
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* @GST_TYPE_BUFFER, align 4
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 (i32*, i8*, i32, ...) @gst_structure_set(i32* %160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 %161, i8* %162, i8* null)
  %164 = load i8*, i8** %6, align 8
  %165 = call i32 @gst_buffer_unref(i8* %164)
  br label %166

166:                                              ; preds = %159, %137
  %167 = load i32*, i32** %5, align 8
  store i32* %167, i32** %2, align 8
  br label %168

168:                                              ; preds = %166, %156, %75
  %169 = load i32*, i32** %2, align 8
  ret i32* %169
}

declare dso_local i32* @gst_structure_new_empty(i8*) #1

declare dso_local i32 @gst_structure_set(i32*, i8*, i32, ...) #1

declare dso_local i8* @gst_buffer_new_wrapped_full(i32, i32, i64, i32, i64, i32*, i32*) #1

declare dso_local i32 @gst_structure_free(i32*) #1

declare dso_local i32 @gst_buffer_unref(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
