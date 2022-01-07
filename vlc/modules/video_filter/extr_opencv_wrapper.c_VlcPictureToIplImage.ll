; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_opencv_wrapper.c_VlcPictureToIplImage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_opencv_wrapper.c_VlcPictureToIplImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i64, i32, %struct.TYPE_23__, %struct.TYPE_28__*, i32*, %struct.TYPE_28__*, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32 }

@CINPUT = common dso_local global i64 0, align 8
@RGB = common dso_local global i64 0, align 8
@VLC_CODEC_RGB24 = common dso_local global i32 0, align 4
@GREY = common dso_local global i64 0, align 8
@VLC_CODEC_I420 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"can't convert (unsupported formats?), aborting...\00", align 1
@IPL_DEPTH_8U = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VlcPictureToIplImageRgb() completed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_25__*)* @VlcPictureToIplImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VlcPictureToIplImage(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cvSize(i32 %16, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %24, %struct.TYPE_27__** %8, align 8
  %25 = call i32 @memset(%struct.TYPE_24__* %7, i32 0, i32 12)
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CINPUT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %95

36:                                               ; preds = %30, %2
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 1
  %39 = bitcast %struct.TYPE_24__* %7 to i8*
  %40 = bitcast %struct.TYPE_24__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 12, i1 false)
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RGB, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %36
  %65 = load i32, i32* @VLC_CODEC_RGB24, align 4
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  br label %77

67:                                               ; preds = %36
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @GREY, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @VLC_CODEC_I420, align 4
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %67
  br label %77

77:                                               ; preds = %76, %64
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  %84 = call %struct.TYPE_28__* @image_Convert(i32 %80, %struct.TYPE_25__* %81, %struct.TYPE_24__* %83, %struct.TYPE_24__* %7)
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 4
  store %struct.TYPE_28__* %84, %struct.TYPE_28__** %86, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %88, align 8
  %90 = icmp ne %struct.TYPE_28__* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %77
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %93 = call i32 @msg_Err(%struct.TYPE_26__* %92, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %222

94:                                               ; preds = %77
  br label %105

95:                                               ; preds = %30
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %97 = call %struct.TYPE_28__* @filter_NewPicture(%struct.TYPE_26__* %96)
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 4
  store %struct.TYPE_28__* %97, %struct.TYPE_28__** %99, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %101, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %104 = call i32 @picture_Copy(%struct.TYPE_28__* %102, %struct.TYPE_25__* %103)
  br label %105

105:                                              ; preds = %95, %94
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %107, align 8
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 6
  store %struct.TYPE_28__* %108, %struct.TYPE_28__** %110, align 8
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %206, %105
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %209

123:                                              ; preds = %119
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %133, %143
  %145 = call i32 @abs(i32 %144) #4
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @abs(i32 %155) #4
  %157 = call i32 @cvSize(i32 %145, i32 %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @IPL_DEPTH_8U, align 4
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @cvCreateImageHeader(i32 %158, i32 %159, i32 %169)
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %170, i32* %176, align 4
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @cvSetData(i32 %183, i8* %194, i32 %204)
  br label %206

206:                                              ; preds = %123
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %119

209:                                              ; preds = %119
  %210 = load i32, i32* %5, align 4
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 4
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  store i32 %215, i32* %219, align 4
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %221 = call i32 @msg_Dbg(%struct.TYPE_26__* %220, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %222

222:                                              ; preds = %209, %91
  ret void
}

declare dso_local i32 @cvSize(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_28__* @image_Convert(i32, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_26__*, i8*) #1

declare dso_local %struct.TYPE_28__* @filter_NewPicture(%struct.TYPE_26__*) #1

declare dso_local i32 @picture_Copy(%struct.TYPE_28__*, %struct.TYPE_25__*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @cvCreateImageHeader(i32, i32, i32) #1

declare dso_local i32 @cvSetData(i32, i8*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_26__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
