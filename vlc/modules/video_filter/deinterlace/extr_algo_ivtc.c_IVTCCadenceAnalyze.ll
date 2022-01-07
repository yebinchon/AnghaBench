; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_ivtc.c_IVTCCadenceAnalyze.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_ivtc.c_IVTCCadenceAnalyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32, i32*, i64, i32, i32 }

@IVTC_LATEST = common dso_local global i64 0, align 8
@CADENCE_POS_INVALID = common dso_local global i32 0, align 4
@pi_detected_pos_to_cadence_pos = common dso_local global i32* null, align 8
@IVTC_DETECTION_HISTORY_SIZE = common dso_local global i32 0, align 4
@pi_detected_pos_to_tfd = common dso_local global i32* null, align 8
@TFD_INVALID = common dso_local global i32 0, align 4
@TFD_TFF = common dso_local global i32 0, align 4
@TFD_BFF = common dso_local global i32 0, align 4
@IVTC_MODE_TELECINED_NTSC_HARD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"IVTC: 3:2 pulldown: NTSC TFF hard telecine detected.\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"IVTC: 3:2 pulldown: NTSC BFF hard telecine detected.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"IVTC: 3:2 pulldown: progressive signal detected.\00", align 1
@IVTC_MODE_DETECTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @IVTCCadenceAnalyze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IVTCCadenceAnalyze(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %3, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %4, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %5, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %58, i64 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %6, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %64, i64 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %7, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = icmp ne %struct.TYPE_9__* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = icmp ne %struct.TYPE_9__* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @IVTC_LATEST, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @IVTC_LATEST, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @IVTC_LATEST, align 8
  %96 = sub i64 %95, 2
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @CADENCE_POS_INVALID, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %1
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @CADENCE_POS_INVALID, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = load i32*, i32** @pi_detected_pos_to_cadence_pos, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %12, align 4
  %112 = load i32*, i32** @pi_detected_pos_to_cadence_pos, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  %120 = srem i32 %119, 5
  %121 = icmp eq i32 %117, %120
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %106, %102, %1
  store i32 0, i32* %14, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @CADENCE_POS_INVALID, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @CADENCE_POS_INVALID, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %127
  %132 = load i32*, i32** @pi_detected_pos_to_cadence_pos, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %15, align 4
  %137 = load i32*, i32** @pi_detected_pos_to_cadence_pos, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  %145 = srem i32 %144, 5
  %146 = icmp eq i32 %142, %145
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %131, %127, %123
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @IVTC_LATEST, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %17, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* @IVTC_LATEST, align 8
  %159 = sub i64 %158, 1
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %18, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 2
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %19, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %179

171:                                              ; preds = %148
  %172 = load i32, i32* %18, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br label %177

177:                                              ; preds = %174, %171
  %178 = phi i1 [ true, %171 ], [ %176, %174 ]
  br label %179

179:                                              ; preds = %177, %148
  %180 = phi i1 [ false, %148 ], [ %178, %177 ]
  %181 = zext i1 %180 to i32
  store i32 %181, i32* %20, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 2
  br i1 %185, label %186, label %194

186:                                              ; preds = %179
  %187 = load i32, i32* %17, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br label %192

192:                                              ; preds = %189, %186
  %193 = phi i1 [ true, %186 ], [ %191, %189 ]
  br label %194

194:                                              ; preds = %192, %179
  %195 = phi i1 [ false, %179 ], [ %193, %192 ]
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %21, align 4
  %197 = load i32, i32* %19, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load i32, i32* %20, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* %21, align 4
  %204 = icmp ne i32 %203, 0
  br label %205

205:                                              ; preds = %202, %199, %194
  %206 = phi i1 [ false, %199 ], [ false, %194 ], [ %204, %202 ]
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %22, align 4
  %208 = load i32, i32* %22, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %232

210:                                              ; preds = %205
  store i32 0, i32* %23, align 4
  br label %211

211:                                              ; preds = %228, %210
  %212 = load i32, i32* %23, align 4
  %213 = load i32, i32* @IVTC_DETECTION_HISTORY_SIZE, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %211
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %23, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %24, align 4
  %223 = load i32, i32* %24, align 4
  %224 = load i32, i32* @CADENCE_POS_INVALID, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %215
  store i32 0, i32* %22, align 4
  br label %231

227:                                              ; preds = %215
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %23, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %23, align 4
  br label %211

231:                                              ; preds = %226, %211
  br label %232

232:                                              ; preds = %231, %205
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 2
  store i32 0, i32* %234, align 8
  %235 = load i32, i32* %22, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %476

237:                                              ; preds = %232
  %238 = load i32, i32* @IVTC_DETECTION_HISTORY_SIZE, align 4
  %239 = zext i32 %238 to i64
  %240 = call i8* @llvm.stacksave()
  store i8* %240, i8** %25, align 8
  %241 = alloca i32, i64 %239, align 16
  store i64 %239, i64* %26, align 8
  %242 = load i32, i32* @IVTC_DETECTION_HISTORY_SIZE, align 4
  %243 = zext i32 %242 to i64
  %244 = alloca i32, i64 %243, align 16
  store i64 %243, i64* %27, align 8
  store i32 0, i32* %28, align 4
  br label %245

245:                                              ; preds = %273, %237
  %246 = load i32, i32* %28, align 4
  %247 = load i32, i32* @IVTC_DETECTION_HISTORY_SIZE, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %276

249:                                              ; preds = %245
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %28, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %29, align 4
  %257 = load i32*, i32** @pi_detected_pos_to_cadence_pos, align 8
  %258 = load i32, i32* %29, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %28, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %244, i64 %263
  store i32 %261, i32* %264, align 4
  %265 = load i32*, i32** @pi_detected_pos_to_tfd, align 8
  %266 = load i32, i32* %29, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %28, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %241, i64 %271
  store i32 %269, i32* %272, align 4
  br label %273

273:                                              ; preds = %249
  %274 = load i32, i32* %28, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %28, align 4
  br label %245

276:                                              ; preds = %245
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 2
  store i32 1, i32* %278, align 8
  %279 = getelementptr inbounds i32, i32* %244, i64 0
  %280 = load i32, i32* %279, align 16
  %281 = icmp eq i32 %280, 3
  %282 = zext i1 %281 to i32
  store i32 %282, i32* %30, align 4
  %283 = getelementptr inbounds i32, i32* %244, i64 0
  %284 = load i32, i32* %283, align 16
  store i32 %284, i32* %31, align 4
  store i32 1, i32* %32, align 4
  br label %285

285:                                              ; preds = %309, %276
  %286 = load i32, i32* %32, align 4
  %287 = load i32, i32* @IVTC_DETECTION_HISTORY_SIZE, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %312

289:                                              ; preds = %285
  %290 = load i32, i32* %32, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %244, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %31, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %31, align 4
  %296 = srem i32 %295, 5
  %297 = icmp ne i32 %293, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %289
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 2
  store i32 0, i32* %300, align 8
  br label %301

301:                                              ; preds = %298, %289
  %302 = load i32, i32* %32, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %244, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 3
  br i1 %306, label %307, label %308

307:                                              ; preds = %301
  store i32 0, i32* %30, align 4
  br label %308

308:                                              ; preds = %307, %301
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %32, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %32, align 4
  br label %285

312:                                              ; preds = %285
  %313 = load i32, i32* %30, align 4
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 3
  %316 = load i32*, i32** %315, align 8
  %317 = load i64, i64* @IVTC_LATEST, align 8
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32 %313, i32* %318, align 4
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %428

323:                                              ; preds = %312
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  br label %324

324:                                              ; preds = %361, %323
  %325 = load i32, i32* %36, align 4
  %326 = load i32, i32* @IVTC_DETECTION_HISTORY_SIZE, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %364

328:                                              ; preds = %324
  %329 = load i32, i32* %36, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %241, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @TFD_INVALID, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %328
  %336 = load i32, i32* %33, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %33, align 4
  br label %360

338:                                              ; preds = %328
  %339 = load i32, i32* %36, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %241, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @TFD_TFF, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %348

345:                                              ; preds = %338
  %346 = load i32, i32* %34, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %34, align 4
  br label %359

348:                                              ; preds = %338
  %349 = load i32, i32* %36, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %241, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @TFD_BFF, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %358

355:                                              ; preds = %348
  %356 = load i32, i32* %35, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %35, align 4
  br label %358

358:                                              ; preds = %355, %348
  br label %359

359:                                              ; preds = %358, %345
  br label %360

360:                                              ; preds = %359, %335
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %36, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %36, align 4
  br label %324

364:                                              ; preds = %324
  %365 = load i32, i32* @TFD_INVALID, align 4
  store i32 %365, i32* %37, align 4
  %366 = load i32, i32* %34, align 4
  %367 = icmp sge i32 %366, 2
  br i1 %367, label %368, label %370

368:                                              ; preds = %364
  %369 = load i32, i32* @TFD_TFF, align 4
  store i32 %369, i32* %37, align 4
  br label %376

370:                                              ; preds = %364
  %371 = load i32, i32* %35, align 4
  %372 = icmp sge i32 %371, 2
  br i1 %372, label %373, label %375

373:                                              ; preds = %370
  %374 = load i32, i32* @TFD_BFF, align 4
  store i32 %374, i32* %37, align 4
  br label %375

375:                                              ; preds = %373, %370
  br label %376

376:                                              ; preds = %375, %368
  %377 = load i32, i32* %37, align 4
  %378 = load i32, i32* @TFD_TFF, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %380, label %401

380:                                              ; preds = %376
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 4
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @IVTC_MODE_TELECINED_NTSC_HARD, align 8
  %385 = icmp ne i64 %383, %384
  br i1 %385, label %386, label %389

386:                                              ; preds = %380
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %388 = call i32 @msg_Dbg(%struct.TYPE_11__* %387, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %389

389:                                              ; preds = %386, %380
  %390 = load i64, i64* @IVTC_MODE_TELECINED_NTSC_HARD, align 8
  %391 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 4
  store i64 %390, i64* %392, align 8
  %393 = load i64, i64* @IVTC_LATEST, align 8
  %394 = getelementptr inbounds i32, i32* %244, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %396, i32 0, i32 5
  store i32 %395, i32* %397, align 8
  %398 = load i32, i32* @TFD_TFF, align 4
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 6
  store i32 %398, i32* %400, align 4
  br label %427

401:                                              ; preds = %376
  %402 = load i32, i32* %37, align 4
  %403 = load i32, i32* @TFD_BFF, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %405, label %426

405:                                              ; preds = %401
  %406 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 4
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* @IVTC_MODE_TELECINED_NTSC_HARD, align 8
  %410 = icmp ne i64 %408, %409
  br i1 %410, label %411, label %414

411:                                              ; preds = %405
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %413 = call i32 @msg_Dbg(%struct.TYPE_11__* %412, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %414

414:                                              ; preds = %411, %405
  %415 = load i64, i64* @IVTC_MODE_TELECINED_NTSC_HARD, align 8
  %416 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 4
  store i64 %415, i64* %417, align 8
  %418 = load i64, i64* @IVTC_LATEST, align 8
  %419 = getelementptr inbounds i32, i32* %244, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 5
  store i32 %420, i32* %422, align 8
  %423 = load i32, i32* @TFD_BFF, align 4
  %424 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %424, i32 0, i32 6
  store i32 %423, i32* %425, align 4
  br label %426

426:                                              ; preds = %414, %401
  br label %427

427:                                              ; preds = %426, %389
  br label %474

428:                                              ; preds = %312
  %429 = load i32, i32* %30, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %473

431:                                              ; preds = %428
  store i32 1, i32* %38, align 4
  store i32 0, i32* %39, align 4
  br label %432

432:                                              ; preds = %447, %431
  %433 = load i32, i32* %39, align 4
  %434 = load i32, i32* @IVTC_DETECTION_HISTORY_SIZE, align 4
  %435 = icmp slt i32 %433, %434
  br i1 %435, label %436, label %450

436:                                              ; preds = %432
  %437 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i32 0, i32 3
  %439 = load i32*, i32** %438, align 8
  %440 = load i32, i32* %39, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %436
  store i32 0, i32* %38, align 4
  br label %450

446:                                              ; preds = %436
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %39, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %39, align 4
  br label %432

450:                                              ; preds = %445, %432
  %451 = load i32, i32* %38, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %472

453:                                              ; preds = %450
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 4
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @IVTC_MODE_TELECINED_NTSC_HARD, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %462

459:                                              ; preds = %453
  %460 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %461 = call i32 @msg_Dbg(%struct.TYPE_11__* %460, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %462

462:                                              ; preds = %459, %453
  %463 = load i64, i64* @IVTC_MODE_DETECTING, align 8
  %464 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i32 0, i32 4
  store i64 %463, i64* %465, align 8
  %466 = load i32, i32* @CADENCE_POS_INVALID, align 4
  %467 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %467, i32 0, i32 5
  store i32 %466, i32* %468, align 8
  %469 = load i32, i32* @TFD_INVALID, align 4
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 6
  store i32 %469, i32* %471, align 4
  br label %472

472:                                              ; preds = %462, %450
  br label %473

473:                                              ; preds = %472, %428
  br label %474

474:                                              ; preds = %473, %427
  %475 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %475)
  br label %476

476:                                              ; preds = %474, %232
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @msg_Dbg(%struct.TYPE_11__*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
