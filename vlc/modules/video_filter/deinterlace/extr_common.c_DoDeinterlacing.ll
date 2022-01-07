; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_common.c_DoDeinterlacing.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_common.c_DoDeinterlacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.deinterlace_ctx = type { i32, %struct.TYPE_32__, %struct.TYPE_31__*, %struct.TYPE_33__**, i64 (%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i32, i32)*, i64 (%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*)* }
%struct.TYPE_32__ = type { i32, i64, i64 }
%struct.TYPE_31__ = type { i64, i32, i32 }
%struct.TYPE_33__ = type { i64, i32, i32, i32, %struct.TYPE_33__* }

@DEINTERLACE_DST_SIZE = common dso_local global i32 0, align 4
@HISTORY_SIZE = common dso_local global i32 0, align 4
@METADATA_SIZE = common dso_local global i32 0, align 4
@CUSTOM_PTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [106 x i8] c"Framerate doubler: output buffer too small; fields = %d, buffer size = %d. Dropping the remaining fields.\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Framerate doubler: could not allocate output frame %d\00", align 1
@VLC_TICK_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_33__* @DoDeinterlacing(%struct.TYPE_34__* %0, %struct.deinterlace_ctx* %1, %struct.TYPE_33__* %2) #0 {
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.deinterlace_ctx*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_33__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store %struct.deinterlace_ctx* %1, %struct.deinterlace_ctx** %6, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %7, align 8
  %26 = load i32, i32* @DEINTERLACE_DST_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %8, align 8
  %29 = alloca %struct.TYPE_33__*, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %31 = call %struct.TYPE_33__* @AllocPicture(%struct.TYPE_34__* %30)
  %32 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 0
  store %struct.TYPE_33__* %31, %struct.TYPE_33__** %32, align 16
  %33 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 0
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %33, align 16
  %35 = icmp eq %struct.TYPE_33__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %38 = call i32 @picture_Release(%struct.TYPE_33__* %37)
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %535

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 0
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %40, align 16
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %43 = call i32 @picture_CopyProperties(%struct.TYPE_33__* %41, %struct.TYPE_33__* %42)
  store i32 1, i32* %15, align 4
  br label %44

44:                                               ; preds = %52, %39
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @DEINTERLACE_DST_SIZE, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %50
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %51, align 8
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %44

55:                                               ; preds = %44
  %56 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %109

61:                                               ; preds = %55
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %63 = call %struct.TYPE_33__* @picture_Hold(%struct.TYPE_33__* %62)
  store %struct.TYPE_33__* %63, %struct.TYPE_33__** %16, align 8
  %64 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %64, i32 0, i32 3
  %66 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %66, i64 0
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %67, align 8
  %69 = icmp ne %struct.TYPE_33__* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %71, i32 0, i32 3
  %73 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %73, i64 0
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %74, align 8
  %76 = call i32 @picture_Release(%struct.TYPE_33__* %75)
  br label %77

77:                                               ; preds = %70, %61
  store i32 1, i32* %17, align 4
  br label %78

78:                                               ; preds = %97, %77
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @HISTORY_SIZE, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %84 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %83, i32 0, i32 3
  %85 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %85, i64 %87
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %88, align 8
  %90 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %91 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %90, i32 0, i32 3
  %92 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %92, i64 %95
  store %struct.TYPE_33__* %89, %struct.TYPE_33__** %96, align 8
  br label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %78

100:                                              ; preds = %78
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %102 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %103 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %102, i32 0, i32 3
  %104 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %103, align 8
  %105 = load i32, i32* @HISTORY_SIZE, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %104, i64 %107
  store %struct.TYPE_33__* %101, %struct.TYPE_33__** %108, align 8
  br label %109

109:                                              ; preds = %100, %55
  store i32 1, i32* %18, align 4
  br label %110

110:                                              ; preds = %130, %109
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* @METADATA_SIZE, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  %115 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %116 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %115, i32 0, i32 2
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %116, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %117, i64 %120
  %122 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %123 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %122, i32 0, i32 2
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %123, align 8
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i64 %126
  %128 = bitcast %struct.TYPE_31__* %121 to i8*
  %129 = bitcast %struct.TYPE_31__* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 16, i1 false)
  br label %130

130:                                              ; preds = %114
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %110

133:                                              ; preds = %110
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %138 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %137, i32 0, i32 2
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %138, align 8
  %140 = load i32, i32* @METADATA_SIZE, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 0
  store i64 %136, i64* %144, align 8
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %149 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %148, i32 0, i32 2
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %149, align 8
  %151 = load i32, i32* @METADATA_SIZE, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 1
  store i32 %147, i32* %155, align 8
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %160 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %159, i32 0, i32 2
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %160, align 8
  %162 = load i32, i32* @METADATA_SIZE, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %165, i32 0, i32 2
  store i32 %158, i32* %166, align 4
  %167 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %168 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* @METADATA_SIZE, align 4
  %171 = sub nsw i32 %170, 1
  %172 = load i32, i32* %11, align 4
  %173 = sub nsw i32 %171, %172
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* @CUSTOM_PTS, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %194

177:                                              ; preds = %133
  %178 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %179 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %178, i32 0, i32 2
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %13, align 4
  %186 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %187 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %186, i32 0, i32 2
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  store i32 %193, i32* %19, align 4
  br label %209

194:                                              ; preds = %133
  %195 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %196 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %13, align 4
  %206 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  store i32 %208, i32* %19, align 4
  br label %209

209:                                              ; preds = %194, %177
  store i32 0, i32* %10, align 4
  %210 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %211 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %266

215:                                              ; preds = %209
  %216 = load i32, i32* %19, align 4
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* @DEINTERLACE_DST_SIZE, align 4
  %219 = icmp sgt i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* @DEINTERLACE_DST_SIZE, align 4
  %224 = call i32 (%struct.TYPE_34__*, i8*, i32, ...) @msg_Err(%struct.TYPE_34__* %221, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %222, i32 %223)
  %225 = load i32, i32* @DEINTERLACE_DST_SIZE, align 4
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %220, %215
  store i32 1, i32* %20, align 4
  br label %227

227:                                              ; preds = %262, %226
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %265

231:                                              ; preds = %227
  %232 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %233 = call %struct.TYPE_33__* @AllocPicture(%struct.TYPE_34__* %232)
  %234 = load i32, i32* %20, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %235
  store %struct.TYPE_33__* %233, %struct.TYPE_33__** %236, align 8
  %237 = load i32, i32* %20, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %239
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 4
  store %struct.TYPE_33__* %233, %struct.TYPE_33__** %242, align 8
  %243 = load i32, i32* %20, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %244
  %246 = load %struct.TYPE_33__*, %struct.TYPE_33__** %245, align 8
  %247 = icmp ne %struct.TYPE_33__* %246, null
  br i1 %247, label %248, label %255

248:                                              ; preds = %231
  %249 = load i32, i32* %20, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %250
  %252 = load %struct.TYPE_33__*, %struct.TYPE_33__** %251, align 8
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %254 = call i32 @picture_CopyProperties(%struct.TYPE_33__* %252, %struct.TYPE_33__* %253)
  br label %261

255:                                              ; preds = %231
  %256 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %257 = load i32, i32* %20, align 4
  %258 = add nsw i32 %257, 1
  %259 = call i32 (%struct.TYPE_34__*, i8*, i32, ...) @msg_Err(%struct.TYPE_34__* %256, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %258)
  %260 = load i32, i32* %20, align 4
  store i32 %260, i32* %10, align 4
  br label %265

261:                                              ; preds = %248
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %20, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %20, align 4
  br label %227

265:                                              ; preds = %255, %227
  br label %266

266:                                              ; preds = %265, %209
  %267 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %268 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 1
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %273, align 8
  %275 = icmp eq %struct.TYPE_33__* %274, null
  br label %276

276:                                              ; preds = %272, %266
  %277 = phi i1 [ true, %266 ], [ %275, %272 ]
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  %280 = load i32, i32* %19, align 4
  %281 = icmp sgt i32 %280, 2
  br i1 %281, label %286, label %282

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 2
  %284 = load %struct.TYPE_33__*, %struct.TYPE_33__** %283, align 16
  %285 = icmp eq %struct.TYPE_33__* %284, null
  br label %286

286:                                              ; preds = %282, %276
  %287 = phi i1 [ true, %276 ], [ %285, %282 ]
  %288 = zext i1 %287 to i32
  %289 = call i32 @assert(i32 %288)
  %290 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %291 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %307, label %295

295:                                              ; preds = %286
  %296 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %297 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %296, i32 0, i32 5
  %298 = load i64 (%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*)*, i64 (%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*)** %297, align 8
  %299 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 0
  %301 = load %struct.TYPE_33__*, %struct.TYPE_33__** %300, align 16
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %303 = call i64 %298(%struct.TYPE_34__* %299, %struct.TYPE_33__* %301, %struct.TYPE_33__* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %295
  br label %508

306:                                              ; preds = %295
  br label %354

307:                                              ; preds = %286
  %308 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %309 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %308, i32 0, i32 4
  %310 = load i64 (%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i32, i32)*, i64 (%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i32, i32)** %309, align 8
  %311 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 0
  %313 = load %struct.TYPE_33__*, %struct.TYPE_33__** %312, align 16
  %314 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %315 = load i32, i32* %13, align 4
  %316 = icmp ne i32 %315, 0
  %317 = xor i1 %316, true
  %318 = zext i1 %317 to i32
  %319 = call i64 %310(%struct.TYPE_34__* %311, %struct.TYPE_33__* %313, %struct.TYPE_33__* %314, i32 0, i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %307
  br label %508

322:                                              ; preds = %307
  %323 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 1
  %324 = load %struct.TYPE_33__*, %struct.TYPE_33__** %323, align 8
  %325 = icmp ne %struct.TYPE_33__* %324, null
  br i1 %325, label %326, label %336

326:                                              ; preds = %322
  %327 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %328 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %327, i32 0, i32 4
  %329 = load i64 (%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i32, i32)*, i64 (%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i32, i32)** %328, align 8
  %330 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 1
  %332 = load %struct.TYPE_33__*, %struct.TYPE_33__** %331, align 8
  %333 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %334 = load i32, i32* %13, align 4
  %335 = call i64 %329(%struct.TYPE_34__* %330, %struct.TYPE_33__* %332, %struct.TYPE_33__* %333, i32 1, i32 %334)
  br label %336

336:                                              ; preds = %326, %322
  %337 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 2
  %338 = load %struct.TYPE_33__*, %struct.TYPE_33__** %337, align 16
  %339 = icmp ne %struct.TYPE_33__* %338, null
  br i1 %339, label %340, label %353

340:                                              ; preds = %336
  %341 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %342 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %341, i32 0, i32 4
  %343 = load i64 (%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i32, i32)*, i64 (%struct.TYPE_34__*, %struct.TYPE_33__*, %struct.TYPE_33__*, i32, i32)** %342, align 8
  %344 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 2
  %346 = load %struct.TYPE_33__*, %struct.TYPE_33__** %345, align 16
  %347 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %348 = load i32, i32* %13, align 4
  %349 = icmp ne i32 %348, 0
  %350 = xor i1 %349, true
  %351 = zext i1 %350 to i32
  %352 = call i64 %343(%struct.TYPE_34__* %344, %struct.TYPE_33__* %346, %struct.TYPE_33__* %347, i32 2, i32 %351)
  br label %353

353:                                              ; preds = %340, %336
  br label %354

354:                                              ; preds = %353, %306
  %355 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %356 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %404

360:                                              ; preds = %354
  %361 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %362 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @assert(i32 %364)
  %366 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %367 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %366, i32 0, i32 3
  %368 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %368, i64 0
  %370 = load %struct.TYPE_33__*, %struct.TYPE_33__** %369, align 8
  %371 = icmp ne %struct.TYPE_33__* %370, null
  br i1 %371, label %372, label %383

372:                                              ; preds = %360
  %373 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %374 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %373, i32 0, i32 3
  %375 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %375, i64 1
  %377 = load %struct.TYPE_33__*, %struct.TYPE_33__** %376, align 8
  %378 = icmp ne %struct.TYPE_33__* %377, null
  br i1 %378, label %379, label %383

379:                                              ; preds = %372
  %380 = load i32, i32* @CUSTOM_PTS, align 4
  %381 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %382 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %381, i32 0, i32 0
  store i32 %380, i32* %382, align 8
  br label %403

383:                                              ; preds = %372, %360
  %384 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %385 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %384, i32 0, i32 3
  %386 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %386, i64 0
  %388 = load %struct.TYPE_33__*, %struct.TYPE_33__** %387, align 8
  %389 = icmp ne %struct.TYPE_33__* %388, null
  br i1 %389, label %398, label %390

390:                                              ; preds = %383
  %391 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %392 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %391, i32 0, i32 3
  %393 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %393, i64 1
  %395 = load %struct.TYPE_33__*, %struct.TYPE_33__** %394, align 8
  %396 = icmp ne %struct.TYPE_33__* %395, null
  br i1 %396, label %398, label %397

397:                                              ; preds = %390
  br label %402

398:                                              ; preds = %390, %383
  %399 = load i32, i32* @CUSTOM_PTS, align 4
  %400 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %401 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %400, i32 0, i32 0
  store i32 %399, i32* %401, align 8
  br label %402

402:                                              ; preds = %398, %397
  br label %403

403:                                              ; preds = %402, %379
  br label %404

404:                                              ; preds = %403, %354
  %405 = load i32, i32* %11, align 4
  %406 = load i32, i32* @METADATA_SIZE, align 4
  %407 = icmp sle i32 %405, %406
  br i1 %407, label %412, label %408

408:                                              ; preds = %404
  %409 = load i32, i32* %11, align 4
  %410 = load i32, i32* @CUSTOM_PTS, align 4
  %411 = icmp eq i32 %409, %410
  br label %412

412:                                              ; preds = %408, %404
  %413 = phi i1 [ true, %404 ], [ %411, %408 ]
  %414 = zext i1 %413 to i32
  %415 = call i32 @assert(i32 %414)
  %416 = load i32, i32* %11, align 4
  %417 = load i32, i32* @CUSTOM_PTS, align 4
  %418 = icmp ne i32 %416, %417
  br i1 %418, label %419, label %477

419:                                              ; preds = %412
  %420 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %421 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %420, i32 0, i32 2
  %422 = load %struct.TYPE_31__*, %struct.TYPE_31__** %421, align 8
  %423 = load i32, i32* %12, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  store i64 %427, i64* %21, align 8
  %428 = load i64, i64* %21, align 8
  %429 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 0
  %430 = load %struct.TYPE_33__*, %struct.TYPE_33__** %429, align 16
  %431 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %430, i32 0, i32 0
  store i64 %428, i64* %431, align 8
  %432 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %433 = getelementptr inbounds %struct.deinterlace_ctx, %struct.deinterlace_ctx* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %476

437:                                              ; preds = %419
  %438 = load %struct.deinterlace_ctx*, %struct.deinterlace_ctx** %6, align 8
  %439 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %443 = call i64 @GetFieldDuration(%struct.deinterlace_ctx* %438, i32* %441, %struct.TYPE_33__* %442)
  store i64 %443, i64* %22, align 8
  store i32 1, i32* %23, align 4
  br label %444

444:                                              ; preds = %472, %437
  %445 = load i32, i32* %23, align 4
  %446 = load i32, i32* %10, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %475

448:                                              ; preds = %444
  %449 = load i64, i64* %21, align 8
  %450 = load i64, i64* @VLC_TICK_INVALID, align 8
  %451 = icmp ne i64 %449, %450
  br i1 %451, label %452, label %464

452:                                              ; preds = %448
  %453 = load i64, i64* %21, align 8
  %454 = load i32, i32* %23, align 4
  %455 = sext i32 %454 to i64
  %456 = load i64, i64* %22, align 8
  %457 = mul nsw i64 %455, %456
  %458 = add nsw i64 %453, %457
  %459 = load i32, i32* %23, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %460
  %462 = load %struct.TYPE_33__*, %struct.TYPE_33__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %462, i32 0, i32 0
  store i64 %458, i64* %463, align 8
  br label %471

464:                                              ; preds = %448
  %465 = load i64, i64* @VLC_TICK_INVALID, align 8
  %466 = load i32, i32* %23, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %467
  %469 = load %struct.TYPE_33__*, %struct.TYPE_33__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %469, i32 0, i32 0
  store i64 %465, i64* %470, align 8
  br label %471

471:                                              ; preds = %464, %452
  br label %472

472:                                              ; preds = %471
  %473 = load i32, i32* %23, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %23, align 4
  br label %444

475:                                              ; preds = %444
  br label %476

476:                                              ; preds = %475, %419
  br label %477

477:                                              ; preds = %476, %412
  store i32 0, i32* %24, align 4
  br label %478

478:                                              ; preds = %500, %477
  %479 = load i32, i32* %24, align 4
  %480 = load i32, i32* @DEINTERLACE_DST_SIZE, align 4
  %481 = icmp slt i32 %479, %480
  br i1 %481, label %482, label %503

482:                                              ; preds = %478
  %483 = load i32, i32* %24, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %484
  %486 = load %struct.TYPE_33__*, %struct.TYPE_33__** %485, align 8
  %487 = icmp ne %struct.TYPE_33__* %486, null
  br i1 %487, label %488, label %499

488:                                              ; preds = %482
  %489 = load i32, i32* %24, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %490
  %492 = load %struct.TYPE_33__*, %struct.TYPE_33__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %492, i32 0, i32 3
  store i32 1, i32* %493, align 8
  %494 = load i32, i32* %24, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %495
  %497 = load %struct.TYPE_33__*, %struct.TYPE_33__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %497, i32 0, i32 1
  store i32 2, i32* %498, align 8
  br label %499

499:                                              ; preds = %488, %482
  br label %500

500:                                              ; preds = %499
  %501 = load i32, i32* %24, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %24, align 4
  br label %478

503:                                              ; preds = %478
  %504 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %505 = call i32 @picture_Release(%struct.TYPE_33__* %504)
  %506 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 0
  %507 = load %struct.TYPE_33__*, %struct.TYPE_33__** %506, align 16
  store %struct.TYPE_33__* %507, %struct.TYPE_33__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %535

508:                                              ; preds = %321, %305
  %509 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 0
  %510 = load %struct.TYPE_33__*, %struct.TYPE_33__** %509, align 16
  %511 = call i32 @picture_Release(%struct.TYPE_33__* %510)
  store i32 1, i32* %25, align 4
  br label %512

512:                                              ; preds = %529, %508
  %513 = load i32, i32* %25, align 4
  %514 = load i32, i32* @DEINTERLACE_DST_SIZE, align 4
  %515 = icmp slt i32 %513, %514
  br i1 %515, label %516, label %532

516:                                              ; preds = %512
  %517 = load i32, i32* %25, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %518
  %520 = load %struct.TYPE_33__*, %struct.TYPE_33__** %519, align 8
  %521 = icmp ne %struct.TYPE_33__* %520, null
  br i1 %521, label %522, label %528

522:                                              ; preds = %516
  %523 = load i32, i32* %25, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %524
  %526 = load %struct.TYPE_33__*, %struct.TYPE_33__** %525, align 8
  %527 = call i32 @picture_Release(%struct.TYPE_33__* %526)
  br label %528

528:                                              ; preds = %522, %516
  br label %529

529:                                              ; preds = %528
  %530 = load i32, i32* %25, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %25, align 4
  br label %512

532:                                              ; preds = %512
  %533 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %534 = call i32 @picture_Release(%struct.TYPE_33__* %533)
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %4, align 8
  store i32 1, i32* %14, align 4
  br label %535

535:                                              ; preds = %532, %503, %36
  %536 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %536)
  %537 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  ret %struct.TYPE_33__* %537
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_33__* @AllocPicture(%struct.TYPE_34__*) #2

declare dso_local i32 @picture_Release(%struct.TYPE_33__*) #2

declare dso_local i32 @picture_CopyProperties(%struct.TYPE_33__*, %struct.TYPE_33__*) #2

declare dso_local %struct.TYPE_33__* @picture_Hold(%struct.TYPE_33__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @msg_Err(%struct.TYPE_34__*, i8*, i32, ...) #2

declare dso_local i64 @GetFieldDuration(%struct.deinterlace_ctx*, i32*, %struct.TYPE_33__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
