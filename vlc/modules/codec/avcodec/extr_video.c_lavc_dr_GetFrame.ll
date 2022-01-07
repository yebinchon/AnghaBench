; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_lavc_dr_GetFrame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_lavc_dr_GetFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVCodecContext = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32*, %struct.TYPE_14__*, i32**, i32** }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32* }

@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_NUM_DATA_POINTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"plane %d: pitch not aligned (%d%%%d): disabling direct rendering\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"plane %d not aligned: disabling direct rendering\00", align 1
@PICTURE_PLANE_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"Oops!\00", align 1
@lavc_ReleaseFrame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVCodecContext*, %struct.TYPE_17__*)* @lavc_dr_GetFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lavc_dr_GetFrame(%struct.AVCodecContext* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.AVCodecContext*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.AVCodecContext* %0, %struct.AVCodecContext** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %18 = load %struct.AVCodecContext*, %struct.AVCodecContext** %4, align 8
  %19 = getelementptr inbounds %struct.AVCodecContext, %struct.AVCodecContext* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %6, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %7, align 8
  %24 = load %struct.AVCodecContext*, %struct.AVCodecContext** %4, align 8
  %25 = getelementptr inbounds %struct.AVCodecContext, %struct.AVCodecContext* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %277

30:                                               ; preds = %2
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = call %struct.TYPE_14__* @decoder_NewPicture(%struct.TYPE_15__* %31)
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %8, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = icmp eq %struct.TYPE_14__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %277

36:                                               ; preds = %30
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %11, align 8
  %46 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %12, align 8
  %47 = load %struct.AVCodecContext*, %struct.AVCodecContext** %4, align 8
  %48 = call i32 @avcodec_align_dimensions2(%struct.AVCodecContext* %47, i32* %9, i32* %10, i32* %46)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %55, %61
  %63 = icmp sge i32 %54, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = icmp sge i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %147, %36
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %150

82:                                               ; preds = %76
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %46, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = srem i32 %90, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %82
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = call i32 @atomic_exchange(i32* %99, i32 1)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %46, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (%struct.TYPE_15__*, i8*, i32, ...) @msg_Warn(%struct.TYPE_15__* %103, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %102, %97
  br label %272

119:                                              ; preds = %82
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = ptrtoint i32* %127 to i64
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %46, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = urem i64 %128, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %119
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = call i32 @atomic_exchange(i32* %138, i32 1)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 (%struct.TYPE_15__*, i8*, i32, ...) @msg_Warn(%struct.TYPE_15__* %142, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %136
  br label %272

146:                                              ; preds = %119
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %76

150:                                              ; preds = %76
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* @PICTURE_PLANE_MAX, align 8
  %156 = icmp slt i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i64, i64* @PICTURE_PLANE_MAX, align 8
  %160 = load i32, i32* @AV_NUM_DATA_POINTERS, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp sle i64 %159, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @static_assert(i32 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %165

165:                                              ; preds = %257, %150
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %260

171:                                              ; preds = %165
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  store i32* %179, i32** %15, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %181, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 %187, %195
  store i32 %196, i32* %16, align 4
  %197 = load i32*, i32** %15, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 5
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  store i32* %197, i32** %203, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %211, i32* %217, align 4
  %218 = load i32*, i32** %15, align 8
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* @lavc_ReleaseFrame, align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %222 = call i32* @av_buffer_create(i32* %218, i32 %219, i32 %220, %struct.TYPE_14__* %221, i32 0)
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 4
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  store i32* %222, i32** %228, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 4
  %231 = load i32**, i32*** %230, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32*, i32** %231, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = icmp eq i32* %235, null
  %237 = zext i1 %236 to i32
  %238 = call i64 @unlikely(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %171
  br label %241

241:                                              ; preds = %244, %240
  %242 = load i32, i32* %14, align 4
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %241
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 4
  %247 = load i32**, i32*** %246, align 8
  %248 = load i32, i32* %14, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %247, i64 %250
  %252 = call i32 @av_buffer_unref(i32** %251)
  br label %241

253:                                              ; preds = %241
  br label %272

254:                                              ; preds = %171
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %256 = call i32 @picture_Hold(%struct.TYPE_14__* %255)
  br label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %14, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %14, align 4
  br label %165

260:                                              ; preds = %165
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 3
  store %struct.TYPE_14__* %261, %struct.TYPE_14__** %263, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp sgt i32 %266, 0
  %268 = zext i1 %267 to i32
  %269 = call i32 @assert(i32 %268)
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %271 = call i32 @picture_Release(%struct.TYPE_14__* %270)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %275

272:                                              ; preds = %253, %145, %118
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %274 = call i32 @picture_Release(%struct.TYPE_14__* %273)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %275

275:                                              ; preds = %272, %260
  %276 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %276)
  br label %277

277:                                              ; preds = %275, %35, %29
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local %struct.TYPE_14__* @decoder_NewPicture(%struct.TYPE_15__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @avcodec_align_dimensions2(%struct.AVCodecContext*, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @atomic_exchange(i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_15__*, i8*, i32, ...) #1

declare dso_local i32 @static_assert(i32, i8*) #1

declare dso_local i32* @av_buffer_create(i32*, i32, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @av_buffer_unref(i32**) #1

declare dso_local i32 @picture_Hold(%struct.TYPE_14__*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_14__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
