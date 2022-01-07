; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_DisplayInfo.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_DisplayInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i64 }

@WEBP_MUX_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Canvas size: %d x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to retrieve features\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"No features present.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Features present:\00", align 1
@ANIMATION_FLAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c" animation\00", align 1
@ICCP_FLAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c" ICC profile\00", align 1
@EXIF_FLAG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c" EXIF metadata\00", align 1
@XMP_FLAG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c" XMP metadata\00", align 1
@ALPHA_FLAG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c" transparency\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@WEBP_CHUNK_ANMF = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Background color : 0x%.8X  Loop Count : %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Number of %ss: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"No.: width height alpha x_offset y_offset \00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"duration   dispose blend \00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"image_size  compression\0A\00", align 1
@VP8_STATUS_OK = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [26 x i8] c"%3d: %5d %5d %5s %8d %8d \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@WEBP_MUX_DISPOSE_NONE = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"background\00", align 1
@WEBP_MUX_BLEND = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"%8d %10s %5s \00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"%10d %11s\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"lossy\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"lossless\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Failed to retrieve %s#%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"ICCP\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"Size of the ICC profile data: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"EXIF\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Size of the EXIF metadata: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"XMP \00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"Size of the XMP metadata: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"Size of the image (with alpha): %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"Failed to retrieve the image\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @DisplayInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DisplayInfo(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca %struct.TYPE_12__, align 8
  %20 = alloca %struct.TYPE_12__, align 8
  %21 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @WebPMuxGetCanvasSize(i32* %22, i32* %4, i32* %5)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @WEBP_MUX_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @WebPMuxGetFeatures(i32* %32, i32* %6)
  store i64 %33, i64* %7, align 8
  %34 = call i32 @RETURN_IF_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %2, align 8
  br label %275

40:                                               ; preds = %1
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ANIMATION_FLAG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ICCP_FLAG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @EXIF_FLAG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @XMP_FLAG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @ALPHA_FLAG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @ANIMATION_FLAG, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %196

82:                                               ; preds = %76
  %83 = load i32, i32* @WEBP_CHUNK_ANMF, align 4
  store i32 %83, i32* %8, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = call i64 @WebPMuxGetAnimationParams(i32* %84, %struct.TYPE_11__* %11)
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @WEBP_MUX_OK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %92, i32 %94)
  %96 = load i32*, i32** %3, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @WebPMuxNumChunks(i32* %96, i32 %97, i32* %10)
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @WEBP_MUX_OK, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %195

108:                                              ; preds = %82
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %112

112:                                              ; preds = %191, %108
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %194

116:                                              ; preds = %112
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i64 @WebPMuxGetFrame(i32* %117, i32 %118, %struct.TYPE_10__* %13)
  store i64 %119, i64* %7, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* @WEBP_MUX_OK, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %186

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @WebPGetFeatures(i32 %126, i64 %129, %struct.TYPE_13__* %14)
  store i64 %130, i64* %15, align 8
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* @VP8_STATUS_OK, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i64, i64* %15, align 8
  %137 = load i32, i32* %12, align 4
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %137, i32 %139, i32 %141, i8* %146, i32 %148, i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @WEBP_MUX_DISPOSE_NONE, align 8
  %155 = icmp eq i64 %153, %154
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0)
  store i8* %157, i8** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @WEBP_MUX_BLEND, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)
  store i8* %163, i8** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load i8*, i8** %16, align 8
  %167 = load i8*, i8** %17, align 8
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %165, i8* %166, i8* %167)
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %123
  br label %183

177:                                              ; preds = %123
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 2
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)
  br label %183

183:                                              ; preds = %177, %176
  %184 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), %176 ], [ %182, %177 ]
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32 %172, i8* %184)
  br label %186

186:                                              ; preds = %183, %116
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 5
  %188 = call i32 @WebPDataClear(%struct.TYPE_14__* %187)
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @RETURN_IF_ERROR3(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %189)
  br label %191

191:                                              ; preds = %186
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %112

194:                                              ; preds = %112
  br label %195

195:                                              ; preds = %194, %82
  br label %196

196:                                              ; preds = %195, %76
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @ICCP_FLAG, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %196
  %202 = load i32*, i32** %3, align 8
  %203 = call i64 @WebPMuxGetChunk(i32* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), %struct.TYPE_12__* %18)
  store i64 %203, i64* %7, align 8
  %204 = load i64, i64* %7, align 8
  %205 = load i64, i64* @WEBP_MUX_OK, align 8
  %206 = icmp eq i64 %204, %205
  %207 = zext i1 %206 to i32
  %208 = call i32 @assert(i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %201, %196
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @EXIF_FLAG, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %213
  %219 = load i32*, i32** %3, align 8
  %220 = call i64 @WebPMuxGetChunk(i32* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), %struct.TYPE_12__* %19)
  store i64 %220, i64* %7, align 8
  %221 = load i64, i64* %7, align 8
  %222 = load i64, i64* @WEBP_MUX_OK, align 8
  %223 = icmp eq i64 %221, %222
  %224 = zext i1 %223 to i32
  %225 = call i32 @assert(i32 %224)
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %218, %213
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* @XMP_FLAG, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %230
  %236 = load i32*, i32** %3, align 8
  %237 = call i64 @WebPMuxGetChunk(i32* %236, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), %struct.TYPE_12__* %20)
  store i64 %237, i64* %7, align 8
  %238 = load i64, i64* %7, align 8
  %239 = load i64, i64* @WEBP_MUX_OK, align 8
  %240 = icmp eq i64 %238, %239
  %241 = zext i1 %240 to i32
  %242 = call i32 @assert(i32 %241)
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = trunc i64 %244 to i32
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), i32 %245)
  br label %247

247:                                              ; preds = %235, %230
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* @ALPHA_FLAG, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %273

252:                                              ; preds = %247
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* @ANIMATION_FLAG, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %273, label %257

257:                                              ; preds = %252
  %258 = load i32*, i32** %3, align 8
  %259 = call i64 @WebPMuxGetFrame(i32* %258, i32 1, %struct.TYPE_10__* %21)
  store i64 %259, i64* %7, align 8
  %260 = load i64, i64* %7, align 8
  %261 = load i64, i64* @WEBP_MUX_OK, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 5
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = trunc i64 %266 to i32
  %268 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i32 %267)
  br label %269

269:                                              ; preds = %263, %257
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 5
  %271 = call i32 @WebPDataClear(%struct.TYPE_14__* %270)
  %272 = call i32 @RETURN_IF_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0))
  br label %273

273:                                              ; preds = %269, %252, %247
  %274 = load i64, i64* @WEBP_MUX_OK, align 8
  store i64 %274, i64* %2, align 8
  br label %275

275:                                              ; preds = %273, %37
  %276 = load i64, i64* %2, align 8
  ret i64 %276
}

declare dso_local i64 @WebPMuxGetCanvasSize(i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @WebPMuxGetFeatures(i32*, i32*) #1

declare dso_local i32 @RETURN_IF_ERROR(i8*) #1

declare dso_local i64 @WebPMuxGetAnimationParams(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @WebPMuxNumChunks(i32*, i32, i32*) #1

declare dso_local i64 @WebPMuxGetFrame(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @WebPGetFeatures(i32, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @WebPDataClear(%struct.TYPE_14__*) #1

declare dso_local i32 @RETURN_IF_ERROR3(i8*, i8*, i32) #1

declare dso_local i64 @WebPMuxGetChunk(i32*, i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
