; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_dwebp.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_dwebp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Library version mismatch!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-alpha\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"-nofancy\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"-nofilter\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"-pam\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-ppm\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"-bmp\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"-tiff\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@quiet = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d.%d.%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"-pgm\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"-yuv\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"-pixel_format\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"BGR\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"BGRA\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"ARGB\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"RGBA_4444\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"RGB_565\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"rgbA\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"bgrA\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Argb\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"rgbA_4444\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"YUV\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"YUVA\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Can't parse pixel_format %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"-external_memory\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"Can't parse 'external_memory' value %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"-mt\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"-alpha_dither\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"-nodither\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"-dither\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"-crop\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"-scale\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"-resize\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"-flip\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"-noasm\00", align 1
@VP8GetCPUInfo = common dso_local global i32* null, align 8
@.str.43 = private unnamed_addr constant [13 x i8] c"-incremental\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"Unknown option '%s'\0A\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"missing input file!!\0A\00", align 1
@VP8_STATUS_OK = common dso_local global i64 0, align 8
@MODE_RGBA = common dso_local global i8* null, align 8
@MODE_RGB = common dso_local global i8* null, align 8
@MODE_BGRA = common dso_local global i8* null, align 8
@MODE_BGR = common dso_local global i8* null, align 8
@MODE_YUVA = common dso_local global i8* null, align 8
@MODE_YUV = common dso_local global i8* null, align 8
@MODE_ARGB = common dso_local global i8* null, align 8
@MODE_RGBA_4444 = common dso_local global i8* null, align 8
@MODE_RGB_565 = common dso_local global i8* null, align 8
@MODE_rgbA = common dso_local global i8* null, align 8
@MODE_bgrA = common dso_local global i8* null, align 8
@MODE_Argb = common dso_local global i8* null, align 8
@MODE_rgbA_4444 = common dso_local global i8* null, align 8
@.str.47 = private unnamed_addr constant [31 x i8] c"Time to decode picture: %.3fs\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Decoded %s.\00", align 1
@.str.49 = private unnamed_addr constant [52 x i8] c" Dimensions: %d x %d %s. Format: %s. Now saving...\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c" (with alpha)\00", align 1
@.str.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kFormatType = common dso_local global i8** null, align 8
@.str.52 = private unnamed_addr constant [24 x i8] c"File %s can be decoded \00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"(dimensions: %d x %d %s. Format: %s).\0A\00", align 1
@.str.54 = private unnamed_addr constant [62 x i8] c"Nothing written; use -o flag to save the result as e.g. PNG.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 2
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %11, align 8
  store i32 140, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32* null, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @INIT_WARGV(i32 %27, i8** %28)
  %30 = call i32 @WebPInitDecoderConfig(%struct.TYPE_13__* %9)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @FREE_WARGV_AND_RETURN(i32 -1)
  br label %36

36:                                               ; preds = %32, %2
  store i32 1, i32* %17, align 4
  br label %37

37:                                               ; preds = %603, %36
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %606

41:                                               ; preds = %37
  store i32 0, i32* %18, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49, %41
  %58 = call i32 (...) @Help()
  %59 = call i32 @FREE_WARGV_AND_RETURN(i32 0)
  br label %596

60:                                               ; preds = %49
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  %77 = call i64 @GET_WARGV(i8** %74, i32 %76)
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %8, align 8
  br label %595

79:                                               ; preds = %68, %60
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 148, i32* %12, align 4
  br label %594

88:                                               ; preds = %79
  %89 = load i8**, i8*** %5, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %593

99:                                               ; preds = %88
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  br label %592

110:                                              ; preds = %99
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %110
  store i32 142, i32* %12, align 4
  br label %591

119:                                              ; preds = %110
  %120 = load i8**, i8*** %5, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %119
  store i32 139, i32* %12, align 4
  br label %590

128:                                              ; preds = %119
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %128
  store i32 143, i32* %12, align 4
  br label %589

137:                                              ; preds = %128
  %138 = load i8**, i8*** %5, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  store i32 133, i32* %12, align 4
  br label %588

146:                                              ; preds = %137
  %147 = load i8**, i8*** %5, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %146
  store i32 1, i32* @quiet, align 4
  br label %587

155:                                              ; preds = %146
  %156 = load i8**, i8*** %5, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %155
  %164 = call i32 (...) @WebPGetDecoderVersion()
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* %19, align 4
  %166 = ashr i32 %165, 16
  %167 = and i32 %166, 255
  %168 = load i32, i32* %19, align 4
  %169 = ashr i32 %168, 8
  %170 = and i32 %169, 255
  %171 = load i32, i32* %19, align 4
  %172 = and i32 %171, 255
  %173 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %167, i32 %170, i32 %172)
  %174 = call i32 @FREE_WARGV_AND_RETURN(i32 0)
  br label %586

175:                                              ; preds = %155
  %176 = load i8**, i8*** %5, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @strcmp(i8* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %175
  store i32 141, i32* %12, align 4
  br label %585

184:                                              ; preds = %175
  %185 = load i8**, i8*** %5, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %184
  store i32 138, i32* %12, align 4
  br label %584

193:                                              ; preds = %184
  %194 = load i8**, i8*** %5, align 8
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %294, label %201

201:                                              ; preds = %193
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %4, align 4
  %204 = sub nsw i32 %203, 1
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %294

206:                                              ; preds = %201
  %207 = load i8**, i8*** %5, align 8
  %208 = load i32, i32* %17, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %207, i64 %210
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** %20, align 8
  %213 = load i8*, i8** %20, align 8
  %214 = call i32 @strcmp(i8* %213, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %206
  store i32 137, i32* %12, align 4
  br label %293

217:                                              ; preds = %206
  %218 = load i8*, i8** %20, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %217
  store i32 136, i32* %12, align 4
  br label %292

222:                                              ; preds = %217
  %223 = load i8*, i8** %20, align 8
  %224 = call i32 @strcmp(i8* %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  store i32 145, i32* %12, align 4
  br label %291

227:                                              ; preds = %222
  %228 = load i8*, i8** %20, align 8
  %229 = call i32 @strcmp(i8* %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %227
  store i32 144, i32* %12, align 4
  br label %290

232:                                              ; preds = %227
  %233 = load i8*, i8** %20, align 8
  %234 = call i32 @strcmp(i8* %233, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  store i32 147, i32* %12, align 4
  br label %289

237:                                              ; preds = %232
  %238 = load i8*, i8** %20, align 8
  %239 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %237
  store i32 135, i32* %12, align 4
  br label %288

242:                                              ; preds = %237
  %243 = load i8*, i8** %20, align 8
  %244 = call i32 @strcmp(i8* %243, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %242
  store i32 134, i32* %12, align 4
  br label %287

247:                                              ; preds = %242
  %248 = load i8*, i8** %20, align 8
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %247
  store i32 129, i32* %12, align 4
  br label %286

252:                                              ; preds = %247
  %253 = load i8*, i8** %20, align 8
  %254 = call i32 @strcmp(i8* %253, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %257, label %256

256:                                              ; preds = %252
  store i32 130, i32* %12, align 4
  br label %285

257:                                              ; preds = %252
  %258 = load i8*, i8** %20, align 8
  %259 = call i32 @strcmp(i8* %258, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0))
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %257
  store i32 146, i32* %12, align 4
  br label %284

262:                                              ; preds = %257
  %263 = load i8*, i8** %20, align 8
  %264 = call i32 @strcmp(i8* %263, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %262
  store i32 128, i32* %12, align 4
  br label %283

267:                                              ; preds = %262
  %268 = load i8*, i8** %20, align 8
  %269 = call i32 @strcmp(i8* %268, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %267
  store i32 132, i32* %12, align 4
  br label %282

272:                                              ; preds = %267
  %273 = load i8*, i8** %20, align 8
  %274 = call i32 @strcmp(i8* %273, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %272
  store i32 131, i32* %12, align 4
  br label %281

277:                                              ; preds = %272
  %278 = load i32, i32* @stderr, align 4
  %279 = load i8*, i8** %20, align 8
  %280 = call i32 (i32, i8*, ...) @fprintf(i32 %278, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i8* %279)
  store i32 1, i32* %18, align 4
  br label %281

281:                                              ; preds = %277, %276
  br label %282

282:                                              ; preds = %281, %271
  br label %283

283:                                              ; preds = %282, %266
  br label %284

284:                                              ; preds = %283, %261
  br label %285

285:                                              ; preds = %284, %256
  br label %286

286:                                              ; preds = %285, %251
  br label %287

287:                                              ; preds = %286, %246
  br label %288

288:                                              ; preds = %287, %241
  br label %289

289:                                              ; preds = %288, %236
  br label %290

290:                                              ; preds = %289, %231
  br label %291

291:                                              ; preds = %290, %226
  br label %292

292:                                              ; preds = %291, %221
  br label %293

293:                                              ; preds = %292, %216
  br label %583

294:                                              ; preds = %201, %193
  %295 = load i8**, i8*** %5, align 8
  %296 = load i32, i32* %17, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i8*, i8** %295, i64 %297
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @strcmp(i8* %299, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %337, label %302

302:                                              ; preds = %294
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* %4, align 4
  %305 = sub nsw i32 %304, 1
  %306 = icmp slt i32 %303, %305
  br i1 %306, label %307, label %337

307:                                              ; preds = %302
  %308 = load i8**, i8*** %5, align 8
  %309 = load i32, i32* %17, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %17, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8*, i8** %308, i64 %311
  %313 = load i8*, i8** %312, align 8
  %314 = call i8* @ExUtilGetInt(i8* %313, i32 0, i32* %18)
  %315 = ptrtoint i8* %314 to i32
  store i32 %315, i32* %14, align 4
  %316 = load i32, i32* %14, align 4
  %317 = icmp sgt i32 %316, 2
  br i1 %317, label %321, label %318

318:                                              ; preds = %307
  %319 = load i32, i32* %14, align 4
  %320 = icmp slt i32 %319, 0
  br label %321

321:                                              ; preds = %318, %307
  %322 = phi i1 [ true, %307 ], [ %320, %318 ]
  %323 = zext i1 %322 to i32
  %324 = load i32, i32* %18, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %18, align 4
  %326 = load i32, i32* %18, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %321
  %329 = load i32, i32* @stderr, align 4
  %330 = load i8**, i8*** %5, align 8
  %331 = load i32, i32* %17, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8*, i8** %330, i64 %332
  %334 = load i8*, i8** %333, align 8
  %335 = call i32 (i32, i8*, ...) @fprintf(i32 %329, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0), i8* %334)
  br label %336

336:                                              ; preds = %328, %321
  br label %582

337:                                              ; preds = %302, %294
  %338 = load i8**, i8*** %5, align 8
  %339 = load i32, i32* %17, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8*, i8** %338, i64 %340
  %342 = load i8*, i8** %341, align 8
  %343 = call i32 @strcmp(i8* %342, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %337
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 2
  store i32 1, i32* %347, align 8
  br label %581

348:                                              ; preds = %337
  %349 = load i8**, i8*** %5, align 8
  %350 = load i32, i32* %17, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8*, i8** %349, i64 %351
  %353 = load i8*, i8** %352, align 8
  %354 = call i32 @strcmp(i8* %353, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %359, label %356

356:                                              ; preds = %348
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 3
  store i32 100, i32* %358, align 4
  br label %580

359:                                              ; preds = %348
  %360 = load i8**, i8*** %5, align 8
  %361 = load i32, i32* %17, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8*, i8** %360, i64 %362
  %364 = load i8*, i8** %363, align 8
  %365 = call i32 @strcmp(i8* %364, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0))
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %359
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 13
  store i8* null, i8** %369, align 8
  br label %579

370:                                              ; preds = %359
  %371 = load i8**, i8*** %5, align 8
  %372 = load i32, i32* %17, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8*, i8** %371, i64 %373
  %375 = load i8*, i8** %374, align 8
  %376 = call i32 @strcmp(i8* %375, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0))
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %393, label %378

378:                                              ; preds = %370
  %379 = load i32, i32* %17, align 4
  %380 = load i32, i32* %4, align 4
  %381 = sub nsw i32 %380, 1
  %382 = icmp slt i32 %379, %381
  br i1 %382, label %383, label %393

383:                                              ; preds = %378
  %384 = load i8**, i8*** %5, align 8
  %385 = load i32, i32* %17, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %17, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8*, i8** %384, i64 %387
  %389 = load i8*, i8** %388, align 8
  %390 = call i8* @ExUtilGetInt(i8* %389, i32 0, i32* %18)
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 13
  store i8* %390, i8** %392, align 8
  br label %578

393:                                              ; preds = %378, %370
  %394 = load i8**, i8*** %5, align 8
  %395 = load i32, i32* %17, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8*, i8** %394, i64 %396
  %398 = load i8*, i8** %397, align 8
  %399 = call i32 @strcmp(i8* %398, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0))
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %445, label %401

401:                                              ; preds = %393
  %402 = load i32, i32* %17, align 4
  %403 = load i32, i32* %4, align 4
  %404 = sub nsw i32 %403, 4
  %405 = icmp slt i32 %402, %404
  br i1 %405, label %406, label %445

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 4
  store i32 1, i32* %408, align 8
  %409 = load i8**, i8*** %5, align 8
  %410 = load i32, i32* %17, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %17, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8*, i8** %409, i64 %412
  %414 = load i8*, i8** %413, align 8
  %415 = call i8* @ExUtilGetInt(i8* %414, i32 0, i32* %18)
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %416, i32 0, i32 12
  store i8* %415, i8** %417, align 8
  %418 = load i8**, i8*** %5, align 8
  %419 = load i32, i32* %17, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %17, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8*, i8** %418, i64 %421
  %423 = load i8*, i8** %422, align 8
  %424 = call i8* @ExUtilGetInt(i8* %423, i32 0, i32* %18)
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 11
  store i8* %424, i8** %426, align 8
  %427 = load i8**, i8*** %5, align 8
  %428 = load i32, i32* %17, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %17, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8*, i8** %427, i64 %430
  %432 = load i8*, i8** %431, align 8
  %433 = call i8* @ExUtilGetInt(i8* %432, i32 0, i32* %18)
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 10
  store i8* %433, i8** %435, align 8
  %436 = load i8**, i8*** %5, align 8
  %437 = load i32, i32* %17, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %17, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8*, i8** %436, i64 %439
  %441 = load i8*, i8** %440, align 8
  %442 = call i8* @ExUtilGetInt(i8* %441, i32 0, i32* %18)
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 9
  store i8* %442, i8** %444, align 8
  br label %577

445:                                              ; preds = %401, %393
  %446 = load i8**, i8*** %5, align 8
  %447 = load i32, i32* %17, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8*, i8** %446, i64 %448
  %450 = load i8*, i8** %449, align 8
  %451 = call i32 @strcmp(i8* %450, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0))
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %461

453:                                              ; preds = %445
  %454 = load i8**, i8*** %5, align 8
  %455 = load i32, i32* %17, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8*, i8** %454, i64 %456
  %458 = load i8*, i8** %457, align 8
  %459 = call i32 @strcmp(i8* %458, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0))
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %487, label %461

461:                                              ; preds = %453, %445
  %462 = load i32, i32* %17, align 4
  %463 = load i32, i32* %4, align 4
  %464 = sub nsw i32 %463, 2
  %465 = icmp slt i32 %462, %464
  br i1 %465, label %466, label %487

466:                                              ; preds = %461
  %467 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 5
  store i32 1, i32* %468, align 4
  %469 = load i8**, i8*** %5, align 8
  %470 = load i32, i32* %17, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %17, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i8*, i8** %469, i64 %472
  %474 = load i8*, i8** %473, align 8
  %475 = call i8* @ExUtilGetInt(i8* %474, i32 0, i32* %18)
  %476 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %476, i32 0, i32 8
  store i8* %475, i8** %477, align 8
  %478 = load i8**, i8*** %5, align 8
  %479 = load i32, i32* %17, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %17, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8*, i8** %478, i64 %481
  %483 = load i8*, i8** %482, align 8
  %484 = call i8* @ExUtilGetInt(i8* %483, i32 0, i32* %18)
  %485 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %485, i32 0, i32 7
  store i8* %484, i8** %486, align 8
  br label %576

487:                                              ; preds = %461, %453
  %488 = load i8**, i8*** %5, align 8
  %489 = load i32, i32* %17, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8*, i8** %488, i64 %490
  %492 = load i8*, i8** %491, align 8
  %493 = call i32 @strcmp(i8* %492, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0))
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %498, label %495

495:                                              ; preds = %487
  %496 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %496, i32 0, i32 6
  store i32 1, i32* %497, align 8
  br label %575

498:                                              ; preds = %487
  %499 = load i8**, i8*** %5, align 8
  %500 = load i32, i32* %17, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i8*, i8** %499, i64 %501
  %503 = load i8*, i8** %502, align 8
  %504 = call i32 @strcmp(i8* %503, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %507, label %506

506:                                              ; preds = %498
  store i32 1, i32* @verbose, align 4
  br label %574

507:                                              ; preds = %498
  %508 = load i8**, i8*** %5, align 8
  %509 = load i32, i32* %17, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i8*, i8** %508, i64 %510
  %512 = load i8*, i8** %511, align 8
  %513 = call i32 @strcmp(i8* %512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %516, label %515

515:                                              ; preds = %507
  store i32* null, i32** @VP8GetCPUInfo, align 8
  br label %573

516:                                              ; preds = %507
  %517 = load i8**, i8*** %5, align 8
  %518 = load i32, i32* %17, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i8*, i8** %517, i64 %519
  %521 = load i8*, i8** %520, align 8
  %522 = call i32 @strcmp(i8* %521, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i64 0, i64 0))
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %525, label %524

524:                                              ; preds = %516
  store i32 1, i32* %16, align 4
  br label %572

525:                                              ; preds = %516
  %526 = load i8**, i8*** %5, align 8
  %527 = load i32, i32* %17, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i8*, i8** %526, i64 %528
  %530 = load i8*, i8** %529, align 8
  %531 = call i32 @strcmp(i8* %530, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0))
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %545, label %533

533:                                              ; preds = %525
  %534 = load i32, i32* %17, align 4
  %535 = load i32, i32* %4, align 4
  %536 = sub nsw i32 %535, 1
  %537 = icmp slt i32 %534, %536
  br i1 %537, label %538, label %544

538:                                              ; preds = %533
  %539 = load i8**, i8*** %5, align 8
  %540 = load i32, i32* %17, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %17, align 4
  %542 = call i64 @GET_WARGV(i8** %539, i32 %541)
  %543 = inttoptr i64 %542 to i8*
  store i8* %543, i8** %7, align 8
  br label %544

544:                                              ; preds = %538, %533
  br label %606

545:                                              ; preds = %525
  %546 = load i8**, i8*** %5, align 8
  %547 = load i32, i32* %17, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i8*, i8** %546, i64 %548
  %550 = load i8*, i8** %549, align 8
  %551 = getelementptr inbounds i8, i8* %550, i64 0
  %552 = load i8, i8* %551, align 1
  %553 = sext i8 %552 to i32
  %554 = icmp eq i32 %553, 45
  br i1 %554, label %555, label %565

555:                                              ; preds = %545
  %556 = load i32, i32* @stderr, align 4
  %557 = load i8**, i8*** %5, align 8
  %558 = load i32, i32* %17, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i8*, i8** %557, i64 %559
  %561 = load i8*, i8** %560, align 8
  %562 = call i32 (i32, i8*, ...) @fprintf(i32 %556, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i8* %561)
  %563 = call i32 (...) @Help()
  %564 = call i32 @FREE_WARGV_AND_RETURN(i32 -1)
  br label %570

565:                                              ; preds = %545
  %566 = load i8**, i8*** %5, align 8
  %567 = load i32, i32* %17, align 4
  %568 = call i64 @GET_WARGV(i8** %566, i32 %567)
  %569 = inttoptr i64 %568 to i8*
  store i8* %569, i8** %7, align 8
  br label %570

570:                                              ; preds = %565, %555
  br label %571

571:                                              ; preds = %570
  br label %572

572:                                              ; preds = %571, %524
  br label %573

573:                                              ; preds = %572, %515
  br label %574

574:                                              ; preds = %573, %506
  br label %575

575:                                              ; preds = %574, %495
  br label %576

576:                                              ; preds = %575, %466
  br label %577

577:                                              ; preds = %576, %406
  br label %578

578:                                              ; preds = %577, %383
  br label %579

579:                                              ; preds = %578, %367
  br label %580

580:                                              ; preds = %579, %356
  br label %581

581:                                              ; preds = %580, %345
  br label %582

582:                                              ; preds = %581, %336
  br label %583

583:                                              ; preds = %582, %293
  br label %584

584:                                              ; preds = %583, %192
  br label %585

585:                                              ; preds = %584, %183
  br label %586

586:                                              ; preds = %585, %163
  br label %587

587:                                              ; preds = %586, %154
  br label %588

588:                                              ; preds = %587, %145
  br label %589

589:                                              ; preds = %588, %136
  br label %590

590:                                              ; preds = %589, %127
  br label %591

591:                                              ; preds = %590, %118
  br label %592

592:                                              ; preds = %591, %107
  br label %593

593:                                              ; preds = %592, %96
  br label %594

594:                                              ; preds = %593, %87
  br label %595

595:                                              ; preds = %594, %73
  br label %596

596:                                              ; preds = %595, %57
  %597 = load i32, i32* %18, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %602

599:                                              ; preds = %596
  %600 = call i32 (...) @Help()
  %601 = call i32 @FREE_WARGV_AND_RETURN(i32 -1)
  br label %602

602:                                              ; preds = %599, %596
  br label %603

603:                                              ; preds = %602
  %604 = load i32, i32* %17, align 4
  %605 = add nsw i32 %604, 1
  store i32 %605, i32* %17, align 4
  br label %37

606:                                              ; preds = %544, %37
  %607 = load i8*, i8** %7, align 8
  %608 = icmp eq i8* %607, null
  br i1 %608, label %609, label %614

609:                                              ; preds = %606
  %610 = load i32, i32* @stderr, align 4
  %611 = call i32 (i32, i8*, ...) @fprintf(i32 %610, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0))
  %612 = call i32 (...) @Help()
  %613 = call i32 @FREE_WARGV_AND_RETURN(i32 -1)
  br label %614

614:                                              ; preds = %609, %606
  %615 = load i32, i32* @quiet, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %618

617:                                              ; preds = %614
  store i32 0, i32* @verbose, align 4
  br label %618

618:                                              ; preds = %617, %614
  %619 = load i64, i64* @VP8_STATUS_OK, align 8
  store i64 %619, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %620 = load i8*, i8** %7, align 8
  %621 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %622 = call i32 @LoadWebP(i8* %620, i32** %15, i64* %22, %struct.TYPE_15__* %621)
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %626, label %624

624:                                              ; preds = %618
  %625 = call i32 @FREE_WARGV_AND_RETURN(i32 -1)
  br label %626

626:                                              ; preds = %624, %618
  %627 = load i32, i32* %12, align 4
  switch i32 %627, label %744 [
    i32 140, label %628
    i32 142, label %641
    i32 139, label %645
    i32 143, label %649
    i32 133, label %662
    i32 141, label %675
    i32 138, label %675
    i32 148, label %688
    i32 137, label %692
    i32 136, label %696
    i32 145, label %700
    i32 144, label %704
    i32 147, label %708
    i32 135, label %712
    i32 134, label %716
    i32 129, label %720
    i32 130, label %724
    i32 146, label %728
    i32 128, label %732
    i32 132, label %736
    i32 131, label %740
  ]

628:                                              ; preds = %626
  %629 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %630 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %629, i32 0, i32 1
  %631 = load i64, i64* %630, align 8
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %635

633:                                              ; preds = %628
  %634 = load i8*, i8** @MODE_RGBA, align 8
  br label %637

635:                                              ; preds = %628
  %636 = load i8*, i8** @MODE_RGB, align 8
  br label %637

637:                                              ; preds = %635, %633
  %638 = phi i8* [ %634, %633 ], [ %636, %635 ]
  %639 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %640 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %639, i32 0, i32 2
  store i8* %638, i8** %640, align 8
  br label %745

641:                                              ; preds = %626
  %642 = load i8*, i8** @MODE_RGBA, align 8
  %643 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %644 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %643, i32 0, i32 2
  store i8* %642, i8** %644, align 8
  br label %745

645:                                              ; preds = %626
  %646 = load i8*, i8** @MODE_RGB, align 8
  %647 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %648 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %647, i32 0, i32 2
  store i8* %646, i8** %648, align 8
  br label %745

649:                                              ; preds = %626
  %650 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %651 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %650, i32 0, i32 1
  %652 = load i64, i64* %651, align 8
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %654, label %656

654:                                              ; preds = %649
  %655 = load i8*, i8** @MODE_BGRA, align 8
  br label %658

656:                                              ; preds = %649
  %657 = load i8*, i8** @MODE_BGR, align 8
  br label %658

658:                                              ; preds = %656, %654
  %659 = phi i8* [ %655, %654 ], [ %657, %656 ]
  %660 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %661 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %660, i32 0, i32 2
  store i8* %659, i8** %661, align 8
  br label %745

662:                                              ; preds = %626
  %663 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %664 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %663, i32 0, i32 1
  %665 = load i64, i64* %664, align 8
  %666 = icmp ne i64 %665, 0
  br i1 %666, label %667, label %669

667:                                              ; preds = %662
  %668 = load i8*, i8** @MODE_RGBA, align 8
  br label %671

669:                                              ; preds = %662
  %670 = load i8*, i8** @MODE_RGB, align 8
  br label %671

671:                                              ; preds = %669, %667
  %672 = phi i8* [ %668, %667 ], [ %670, %669 ]
  %673 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %674 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %673, i32 0, i32 2
  store i8* %672, i8** %674, align 8
  br label %745

675:                                              ; preds = %626, %626
  %676 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %677 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %676, i32 0, i32 1
  %678 = load i64, i64* %677, align 8
  %679 = icmp ne i64 %678, 0
  br i1 %679, label %680, label %682

680:                                              ; preds = %675
  %681 = load i8*, i8** @MODE_YUVA, align 8
  br label %684

682:                                              ; preds = %675
  %683 = load i8*, i8** @MODE_YUV, align 8
  br label %684

684:                                              ; preds = %682, %680
  %685 = phi i8* [ %681, %680 ], [ %683, %682 ]
  %686 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %687 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %686, i32 0, i32 2
  store i8* %685, i8** %687, align 8
  br label %745

688:                                              ; preds = %626
  %689 = load i8*, i8** @MODE_YUVA, align 8
  %690 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %691 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %690, i32 0, i32 2
  store i8* %689, i8** %691, align 8
  br label %745

692:                                              ; preds = %626
  %693 = load i8*, i8** @MODE_RGB, align 8
  %694 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %695 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %694, i32 0, i32 2
  store i8* %693, i8** %695, align 8
  br label %745

696:                                              ; preds = %626
  %697 = load i8*, i8** @MODE_RGBA, align 8
  %698 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %699 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %698, i32 0, i32 2
  store i8* %697, i8** %699, align 8
  br label %745

700:                                              ; preds = %626
  %701 = load i8*, i8** @MODE_BGR, align 8
  %702 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %703 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %702, i32 0, i32 2
  store i8* %701, i8** %703, align 8
  br label %745

704:                                              ; preds = %626
  %705 = load i8*, i8** @MODE_BGRA, align 8
  %706 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %707 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %706, i32 0, i32 2
  store i8* %705, i8** %707, align 8
  br label %745

708:                                              ; preds = %626
  %709 = load i8*, i8** @MODE_ARGB, align 8
  %710 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %711 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %710, i32 0, i32 2
  store i8* %709, i8** %711, align 8
  br label %745

712:                                              ; preds = %626
  %713 = load i8*, i8** @MODE_RGBA_4444, align 8
  %714 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %715 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %714, i32 0, i32 2
  store i8* %713, i8** %715, align 8
  br label %745

716:                                              ; preds = %626
  %717 = load i8*, i8** @MODE_RGB_565, align 8
  %718 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %719 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %718, i32 0, i32 2
  store i8* %717, i8** %719, align 8
  br label %745

720:                                              ; preds = %626
  %721 = load i8*, i8** @MODE_rgbA, align 8
  %722 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %723 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %722, i32 0, i32 2
  store i8* %721, i8** %723, align 8
  br label %745

724:                                              ; preds = %626
  %725 = load i8*, i8** @MODE_bgrA, align 8
  %726 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %727 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %726, i32 0, i32 2
  store i8* %725, i8** %727, align 8
  br label %745

728:                                              ; preds = %626
  %729 = load i8*, i8** @MODE_Argb, align 8
  %730 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %731 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %730, i32 0, i32 2
  store i8* %729, i8** %731, align 8
  br label %745

732:                                              ; preds = %626
  %733 = load i8*, i8** @MODE_rgbA_4444, align 8
  %734 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %735 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %734, i32 0, i32 2
  store i8* %733, i8** %735, align 8
  br label %745

736:                                              ; preds = %626
  %737 = load i8*, i8** @MODE_YUV, align 8
  %738 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %739 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %738, i32 0, i32 2
  store i8* %737, i8** %739, align 8
  br label %745

740:                                              ; preds = %626
  %741 = load i8*, i8** @MODE_YUVA, align 8
  %742 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %743 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %742, i32 0, i32 2
  store i8* %741, i8** %743, align 8
  br label %745

744:                                              ; preds = %626
  br label %862

745:                                              ; preds = %740, %736, %732, %728, %724, %720, %716, %712, %708, %704, %700, %696, %692, %688, %684, %671, %658, %645, %641, %637
  %746 = load i32, i32* %14, align 4
  %747 = icmp sgt i32 %746, 0
  br i1 %747, label %748, label %759

748:                                              ; preds = %745
  %749 = load i32, i32* %12, align 4
  %750 = icmp sge i32 %749, 137
  br i1 %750, label %751, label %759

751:                                              ; preds = %748
  %752 = load i32, i32* %12, align 4
  %753 = load i32, i32* %14, align 4
  %754 = call i32* @AllocateExternalBuffer(%struct.TYPE_13__* %9, i32 %752, i32 %753)
  store i32* %754, i32** %13, align 8
  %755 = load i32*, i32** %13, align 8
  %756 = icmp eq i32* %755, null
  br i1 %756, label %757, label %758

757:                                              ; preds = %751
  br label %862

758:                                              ; preds = %751
  br label %759

759:                                              ; preds = %758, %748, %745
  %760 = load i32, i32* @verbose, align 4
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %762, label %764

762:                                              ; preds = %759
  %763 = call i32 @StopwatchReset(i32* %23)
  br label %764

764:                                              ; preds = %762, %759
  %765 = load i32, i32* %16, align 4
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %771

767:                                              ; preds = %764
  %768 = load i32*, i32** %15, align 8
  %769 = load i64, i64* %22, align 8
  %770 = call i64 @DecodeWebPIncremental(i32* %768, i64 %769, %struct.TYPE_13__* %9)
  store i64 %770, i64* %21, align 8
  br label %775

771:                                              ; preds = %764
  %772 = load i32*, i32** %15, align 8
  %773 = load i64, i64* %22, align 8
  %774 = call i64 @DecodeWebP(i32* %772, i64 %773, %struct.TYPE_13__* %9)
  store i64 %774, i64* %21, align 8
  br label %775

775:                                              ; preds = %771, %767
  %776 = load i32, i32* @verbose, align 4
  %777 = icmp ne i32 %776, 0
  br i1 %777, label %778, label %783

778:                                              ; preds = %775
  %779 = call double @StopwatchReadAndReset(i32* %23)
  store double %779, double* %24, align 8
  %780 = load i32, i32* @stderr, align 4
  %781 = load double, double* %24, align 8
  %782 = call i32 (i32, i8*, ...) @fprintf(i32 %780, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i64 0, i64 0), double %781)
  br label %783

783:                                              ; preds = %778, %775
  %784 = load i64, i64* %21, align 8
  %785 = load i64, i64* @VP8_STATUS_OK, align 8
  %786 = icmp eq i64 %784, %785
  %787 = zext i1 %786 to i32
  store i32 %787, i32* %6, align 4
  %788 = load i32, i32* %6, align 4
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %794, label %790

790:                                              ; preds = %783
  %791 = load i8*, i8** %7, align 8
  %792 = load i64, i64* %21, align 8
  %793 = call i32 @PrintWebPError(i8* %791, i64 %792)
  br label %862

794:                                              ; preds = %783
  %795 = load i8*, i8** %8, align 8
  %796 = icmp ne i8* %795, null
  br i1 %796, label %797, label %830

797:                                              ; preds = %794
  %798 = load i32, i32* @quiet, align 4
  %799 = icmp ne i32 %798, 0
  br i1 %799, label %825, label %800

800:                                              ; preds = %797
  %801 = load i32, i32* @stderr, align 4
  %802 = load i8*, i8** %7, align 8
  %803 = bitcast i8* %802 to i32*
  %804 = call i32 @WFPRINTF(i32 %801, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i32* %803)
  %805 = load i32, i32* @stderr, align 4
  %806 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %807 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %806, i32 0, i32 0
  %808 = load i32, i32* %807, align 8
  %809 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %810 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %809, i32 0, i32 1
  %811 = load i32, i32* %810, align 4
  %812 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %813 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %812, i32 0, i32 1
  %814 = load i64, i64* %813, align 8
  %815 = icmp ne i64 %814, 0
  %816 = zext i1 %815 to i64
  %817 = select i1 %815, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0)
  %818 = load i8**, i8*** @kFormatType, align 8
  %819 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %820 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %819, i32 0, i32 0
  %821 = load i64, i64* %820, align 8
  %822 = getelementptr inbounds i8*, i8** %818, i64 %821
  %823 = load i8*, i8** %822, align 8
  %824 = call i32 (i32, i8*, ...) @fprintf(i32 %805, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.49, i64 0, i64 0), i32 %808, i32 %811, i8* %817, i8* %823)
  br label %825

825:                                              ; preds = %800, %797
  %826 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %827 = load i32, i32* %12, align 4
  %828 = load i8*, i8** %8, align 8
  %829 = call i32 @SaveOutput(%struct.TYPE_14__* %826, i32 %827, i8* %828)
  store i32 %829, i32* %6, align 4
  br label %861

830:                                              ; preds = %794
  %831 = load i32, i32* @quiet, align 4
  %832 = icmp ne i32 %831, 0
  br i1 %832, label %860, label %833

833:                                              ; preds = %830
  %834 = load i32, i32* @stderr, align 4
  %835 = load i8*, i8** %7, align 8
  %836 = bitcast i8* %835 to i32*
  %837 = call i32 @WFPRINTF(i32 %834, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i64 0, i64 0), i32* %836)
  %838 = load i32, i32* @stderr, align 4
  %839 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %840 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %839, i32 0, i32 0
  %841 = load i32, i32* %840, align 8
  %842 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %843 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %842, i32 0, i32 1
  %844 = load i32, i32* %843, align 4
  %845 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %846 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %845, i32 0, i32 1
  %847 = load i64, i64* %846, align 8
  %848 = icmp ne i64 %847, 0
  %849 = zext i1 %848 to i64
  %850 = select i1 %848, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.51, i64 0, i64 0)
  %851 = load i8**, i8*** @kFormatType, align 8
  %852 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %853 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %852, i32 0, i32 0
  %854 = load i64, i64* %853, align 8
  %855 = getelementptr inbounds i8*, i8** %851, i64 %854
  %856 = load i8*, i8** %855, align 8
  %857 = call i32 (i32, i8*, ...) @fprintf(i32 %838, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i64 0, i64 0), i32 %841, i32 %844, i8* %850, i8* %856)
  %858 = load i32, i32* @stderr, align 4
  %859 = call i32 (i32, i8*, ...) @fprintf(i32 %858, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.54, i64 0, i64 0))
  br label %860

860:                                              ; preds = %833, %830
  br label %861

861:                                              ; preds = %860, %825
  br label %862

862:                                              ; preds = %861, %790, %757, %744
  %863 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %864 = call i32 @WebPFreeDecBuffer(%struct.TYPE_14__* %863)
  %865 = load i32*, i32** %13, align 8
  %866 = bitcast i32* %865 to i8*
  %867 = call i32 @WebPFree(i8* %866)
  %868 = load i32*, i32** %15, align 8
  %869 = bitcast i32* %868 to i8*
  %870 = call i32 @WebPFree(i8* %869)
  %871 = load i32, i32* %6, align 4
  %872 = icmp ne i32 %871, 0
  %873 = zext i1 %872 to i64
  %874 = select i1 %872, i32 0, i32 -1
  %875 = call i32 @FREE_WARGV_AND_RETURN(i32 %874)
  %876 = load i32, i32* %3, align 4
  ret i32 %876
}

declare dso_local i32 @INIT_WARGV(i32, i8**) #1

declare dso_local i32 @WebPInitDecoderConfig(%struct.TYPE_13__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @FREE_WARGV_AND_RETURN(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @Help(...) #1

declare dso_local i64 @GET_WARGV(i8**, i32) #1

declare dso_local i32 @WebPGetDecoderVersion(...) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i8* @ExUtilGetInt(i8*, i32, i32*) #1

declare dso_local i32 @LoadWebP(i8*, i32**, i64*, %struct.TYPE_15__*) #1

declare dso_local i32* @AllocateExternalBuffer(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @StopwatchReset(i32*) #1

declare dso_local i64 @DecodeWebPIncremental(i32*, i64, %struct.TYPE_13__*) #1

declare dso_local i64 @DecodeWebP(i32*, i64, %struct.TYPE_13__*) #1

declare dso_local double @StopwatchReadAndReset(i32*) #1

declare dso_local i32 @PrintWebPError(i8*, i64) #1

declare dso_local i32 @WFPRINTF(i32, i8*, i32*) #1

declare dso_local i32 @SaveOutput(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @WebPFreeDecBuffer(%struct.TYPE_14__*) #1

declare dso_local i32 @WebPFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
