; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ProcessImageChunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ProcessImageChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i64, i64, i32, i64, i32, i64*, i64, i32*, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@CHUNK_HEADER_SIZE = common dso_local global i32 0, align 4
@VP8_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"VP8/VP8L bitstream error.\00", align 1
@WEBP_INFO_BITSTREAM_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"  Width: %d\0A  Height: %d\0A  Alpha: %d\0A  Animation: %d\0A  Format: %s (%d)\0A\00", align 1
@kFormats = common dso_local global i8** null, align 8
@CHUNK_VP8 = common dso_local global i64 0, align 8
@CHUNK_VP8L = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"Both VP8L and ALPH sub-chunks are present in an ANMF chunk.\00", align 1
@WEBP_INFO_PARSE_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"Frame size in VP8/VP8L sub-chunk differs from ANMF header.\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Consecutive VP8/VP8L sub-chunks in an ANMF chunk.\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Multiple VP8/VP8L chunks detected.\00", align 1
@CHUNK_ALPHA = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"Both VP8L and ALPH chunks are detected.\00", align 1
@CHUNK_ANIM = common dso_local global i64 0, align 8
@CHUNK_ANMF = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [54 x i8] c"VP8/VP8L chunk and ANIM/ANMF chunk are both detected.\00", align 1
@CHUNK_VP8X = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"Image size in VP8/VP8L chunk differs from VP8X chunk.\00", align 1
@MAX_CANVAS_SIZE = common dso_local global i32 0, align 4
@MAX_IMAGE_AREA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"Invalid parameters in VP8/VP8L chunk.\00", align 1
@WEBP_INFO_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_11__*)* @ProcessImageChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ProcessImageChunk(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %15 = sub nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @WebPGetFeatures(i32* %18, i32 %21, %struct.TYPE_12__* %7)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @VP8_STATUS_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @WEBP_INFO_BITSTREAM_ERROR, align 8
  store i64 %28, i64* %3, align 8
  br label %311

29:                                               ; preds = %2
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 2
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ false, %34 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i8**, i8*** @kFormats, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %49, i32 %51, i32 %53, i8* %59, i64 %62)
  br label %64

64:                                               ; preds = %42, %29
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 11
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %127

69:                                               ; preds = %64
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 10
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CHUNK_VP8, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %72, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CHUNK_VP8L, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %69
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 9
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i64, i64* @WEBP_INFO_PARSE_ERROR, align 8
  store i64 %96, i64* %3, align 8
  br label %311

97:                                               ; preds = %89, %69
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %97
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %105, %97
  %114 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i64, i64* @WEBP_INFO_PARSE_ERROR, align 8
  store i64 %115, i64* %3, align 8
  br label %311

116:                                              ; preds = %105
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i64, i64* @WEBP_INFO_PARSE_ERROR, align 8
  store i64 %123, i64* %3, align 8
  br label %311

124:                                              ; preds = %116
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  store i32 1, i32* %126, align 8
  br label %269

127:                                              ; preds = %64
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 8
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* @CHUNK_VP8, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %127
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 8
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* @CHUNK_VP8L, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %135, %127
  %144 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %145 = load i64, i64* @WEBP_INFO_PARSE_ERROR, align 8
  store i64 %145, i64* %3, align 8
  br label %311

146:                                              ; preds = %135
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @CHUNK_VP8L, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %146
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 8
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* @CHUNK_ALPHA, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = call i32 @LOG_WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %152, %146
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 8
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* @CHUNK_ANIM, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %162
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 8
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* @CHUNK_ANMF, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %170, %162
  %179 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %180 = load i64, i64* @WEBP_INFO_PARSE_ERROR, align 8
  store i64 %180, i64* %3, align 8
  br label %311

181:                                              ; preds = %170
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 8
  %184 = load i64*, i64** %183, align 8
  %185 = load i64, i64* @CHUNK_VP8X, align 8
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %209

189:                                              ; preds = %181
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp ne i64 %192, %195
  br i1 %196, label %205, label %197

197:                                              ; preds = %189
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = icmp ne i64 %200, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %197, %189
  %206 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  %207 = load i64, i64* @WEBP_INFO_PARSE_ERROR, align 8
  store i64 %207, i64* %3, align 8
  br label %311

208:                                              ; preds = %197
  br label %259

209:                                              ; preds = %181
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 3
  store i64 %212, i64* %214, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 4
  store i64 %217, i64* %219, align 8
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %222, 1
  br i1 %223, label %256, label %224

224:                                              ; preds = %209
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = icmp slt i64 %227, 1
  br i1 %228, label %256, label %229

229:                                              ; preds = %224
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* @MAX_CANVAS_SIZE, align 4
  %234 = sext i32 %233 to i64
  %235 = icmp sgt i64 %232, %234
  br i1 %235, label %256, label %236

236:                                              ; preds = %229
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* @MAX_CANVAS_SIZE, align 4
  %241 = sext i32 %240 to i64
  %242 = icmp sgt i64 %239, %241
  br i1 %242, label %256, label %243

243:                                              ; preds = %236
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = trunc i64 %246 to i32
  %248 = sext i32 %247 to i64
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = mul nsw i64 %248, %251
  %253 = load i32, i32* @MAX_IMAGE_AREA, align 4
  %254 = sext i32 %253 to i64
  %255 = icmp sgt i64 %252, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %243, %236, %229, %224, %209
  %257 = call i32 @LOG_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %258

258:                                              ; preds = %256, %243
  br label %259

259:                                              ; preds = %258, %208
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 8
  %262 = load i64*, i64** %261, align 8
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds i64, i64* %262, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %267, 1
  store i64 %268, i64* %266, align 8
  br label %269

269:                                              ; preds = %259, %124
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %271, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 6
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %309

284:                                              ; preds = %269
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @CHUNK_VP8, align 8
  %289 = icmp eq i64 %287, %288
  %290 = zext i1 %289 to i32
  store i32 %290, i32* %9, align 4
  %291 = load i32, i32* %9, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %284
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %296 = call i64 @ParseLossyHeader(%struct.TYPE_13__* %294, %struct.TYPE_11__* %295)
  br label %301

297:                                              ; preds = %284
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %300 = call i64 @ParseLosslessHeader(%struct.TYPE_13__* %298, %struct.TYPE_11__* %299)
  br label %301

301:                                              ; preds = %297, %293
  %302 = phi i64 [ %296, %293 ], [ %300, %297 ]
  store i64 %302, i64* %10, align 8
  %303 = load i64, i64* %10, align 8
  %304 = load i64, i64* @WEBP_INFO_OK, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = load i64, i64* %10, align 8
  store i64 %307, i64* %3, align 8
  br label %311

308:                                              ; preds = %301
  br label %309

309:                                              ; preds = %308, %269
  %310 = load i64, i64* @WEBP_INFO_OK, align 8
  store i64 %310, i64* %3, align 8
  br label %311

311:                                              ; preds = %309, %306, %205, %178, %143, %121, %113, %94, %26
  %312 = load i64, i64* %3, align 8
  ret i64 %312
}

declare dso_local i64 @WebPGetFeatures(i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @LOG_WARN(i8*) #1

declare dso_local i64 @ParseLossyHeader(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

declare dso_local i64 @ParseLosslessHeader(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
