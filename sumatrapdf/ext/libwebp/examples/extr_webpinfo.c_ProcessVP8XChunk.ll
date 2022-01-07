; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ProcessVP8XChunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ProcessVP8XChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64* }

@CHUNK_VP8 = common dso_local global i64 0, align 8
@CHUNK_VP8L = common dso_local global i64 0, align 8
@CHUNK_VP8X = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Already seen a VP8/VP8L/VP8X chunk when parsing VP8X chunk.\00", align 1
@WEBP_INFO_PARSE_ERROR = common dso_local global i32 0, align 4
@VP8X_CHUNK_SIZE = common dso_local global i64 0, align 8
@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Corrupted VP8X chunk.\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"  ICCP: %d\0A  Alpha: %d\0A  EXIF: %d\0A  XMP: %d\0A  Animation: %d\0A\00", align 1
@ICCP_FLAG = common dso_local global i32 0, align 4
@ALPHA_FLAG = common dso_local global i32 0, align 4
@EXIF_FLAG = common dso_local global i32 0, align 4
@XMP_FLAG = common dso_local global i32 0, align 4
@ANIMATION_FLAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"  Canvas size %d x %d\0A\00", align 1
@MAX_CANVAS_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Canvas width is out of range in VP8X chunk.\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Canvas height is out of range in VP8X chunk.\00", align 1
@MAX_IMAGE_AREA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Canvas area is out of range in VP8X chunk.\00", align 1
@WEBP_INFO_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*)* @ProcessVP8XChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessVP8XChunk(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @CHUNK_VP8, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @CHUNK_VP8L, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @CHUNK_VP8X, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25, %17, %2
  %34 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @WEBP_INFO_PARSE_ERROR, align 4
  store i32 %35, i32* %3, align 4
  br label %149

36:                                               ; preds = %25
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VP8X_CHUNK_SIZE, align 8
  %41 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @WEBP_INFO_PARSE_ERROR, align 4
  store i32 %46, i32* %3, align 4
  br label %149

47:                                               ; preds = %36
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @CHUNK_VP8X, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32* %60, i32** %6, align 8
  %61 = call i8* @ReadLE24(i32** %6)
  %62 = getelementptr i8, i8* %61, i64 1
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = call i8* @ReadLE24(i32** %6)
  %67 = getelementptr i8, i8* %66, i64 1
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %119, label %75

75:                                               ; preds = %47
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ICCP_FLAG, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ALPHA_FLAG, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @EXIF_FLAG, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @XMP_FLAG, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @ANIMATION_FLAG, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %89, i32 %96, i32 %103, i32 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %75, %47
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MAX_CANVAS_SIZE, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = call i32 @LOG_WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %119
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @MAX_CANVAS_SIZE, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = call i32 @LOG_WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %127
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = mul nsw i32 %138, %141
  %143 = load i32, i32* @MAX_IMAGE_AREA, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = call i32 @LOG_WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %135
  %148 = load i32, i32* @WEBP_INFO_OK, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %44, %33
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i8* @ReadLE24(i32**) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i32 @LOG_WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
