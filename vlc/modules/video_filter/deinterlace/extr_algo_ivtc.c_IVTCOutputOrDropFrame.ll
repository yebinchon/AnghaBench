; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_ivtc.c_IVTCOutputOrDropFrame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/deinterlace/extr_algo_ivtc.c_IVTCOutputOrDropFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_15__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__** }
%struct.TYPE_17__ = type { i64, i32, i64, i64, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i64, i32, i64 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@IVTC_MODE_TELECINED_NTSC_HARD = common dso_local global i64 0, align 8
@CADENCE_POS_INVALID = common dso_local global i64 0, align 8
@TFD_INVALID = common dso_local global i64 0, align 8
@pi_reconstruction_ops = common dso_local global i32** null, align 8
@IVTC_OP_DROP_FRAME = common dso_local global i32 0, align 4
@IVTC_OP_COPY_N = common dso_local global i32 0, align 4
@FIELD_PAIR_TNBN = common dso_local global i64 0, align 8
@IVTC_OP_COPY_C = common dso_local global i32 0, align 4
@FIELD_PAIR_TCBC = common dso_local global i64 0, align 8
@IVTC_OP_COMPOSE_TNBC = common dso_local global i32 0, align 4
@FIELD_PAIR_TNBC = common dso_local global i64 0, align 8
@IVTC_OP_COMPOSE_TCBN = common dso_local global i32 0, align 4
@FIELD_PAIR_TCBN = common dso_local global i64 0, align 8
@IVTC_DETECTION_HISTORY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Rejected cadence-based frame construction: interlace score %d (running average %d)\00", align 1
@VEKTOR_CADENCE_POS_ALL = common dso_local global i32 0, align 4
@IVTC_LATEST = common dso_local global i64 0, align 8
@pi_timestamp_deltas = common dso_local global i32* null, align 8
@IVTC_MODE_TELECINED_NTSC_SOFT = common dso_local global i64 0, align 8
@CC_ALTLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_16__*)* @IVTCOutputOrDropFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IVTCOutputOrDropFrame(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = icmp ne %struct.TYPE_18__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = icmp ne %struct.TYPE_16__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %6, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  store %struct.TYPE_17__* %33, %struct.TYPE_17__** %7, align 8
  %34 = load i64, i64* @VLC_TICK_INVALID, align 8
  store i64 %34, i64* %8, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %38, i64 1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %9, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %44, i64 2
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %10, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %48 = icmp ne %struct.TYPE_16__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = icmp ne %struct.TYPE_16__* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  store i32 -1, i32* %11, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IVTC_MODE_TELECINED_NTSC_HARD, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %287

60:                                               ; preds = %2
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %193

65:                                               ; preds = %60
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CADENCE_POS_INVALID, align 8
  %70 = icmp ne i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TFD_INVALID, align 8
  %77 = icmp ne i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32**, i32*** @pi_reconstruction_ops, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32*, i32** %80, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @IVTC_OP_DROP_FRAME, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %65
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  %99 = urem i64 %98, 5
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  store i32 0, i32* %3, align 4
  br label %421

102:                                              ; preds = %65
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @IVTC_OP_COPY_N, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @FIELD_PAIR_TNBN, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %11, align 4
  br label %149

113:                                              ; preds = %102
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @IVTC_OP_COPY_C, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @FIELD_PAIR_TCBC, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %11, align 4
  br label %148

124:                                              ; preds = %113
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @IVTC_OP_COMPOSE_TNBC, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @FIELD_PAIR_TNBC, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %11, align 4
  br label %147

135:                                              ; preds = %124
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @IVTC_OP_COMPOSE_TCBN, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @FIELD_PAIR_TCBN, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %139, %135
  br label %147

147:                                              ; preds = %146, %128
  br label %148

148:                                              ; preds = %147, %117
  br label %149

149:                                              ; preds = %148, %106
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %164, %149
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @IVTC_DETECTION_HISTORY_SIZE, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %13, align 4
  br label %164

164:                                              ; preds = %154
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %14, align 4
  br label %150

167:                                              ; preds = %150
  %168 = load i32, i32* @IVTC_DETECTION_HISTORY_SIZE, align 4
  %169 = load i32, i32* %13, align 4
  %170 = sdiv i32 %169, %168
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp sgt i32 %171, 1000
  br i1 %172, label %173, label %191

173:                                              ; preds = %167
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %13, align 4
  %176 = mul nsw i32 2, %175
  %177 = icmp sgt i32 %174, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %173
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  store i32 0, i32* %180, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @msg_Dbg(%struct.TYPE_18__* %181, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %182, i32 %183)
  %185 = load i32, i32* @VEKTOR_CADENCE_POS_ALL, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 6
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @IVTC_LATEST, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32 %185, i32* %190, align 4
  br label %191

191:                                              ; preds = %178, %173, %167
  br label %192

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %192, %60
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %244, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* @FIELD_PAIR_TNBN, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %15, align 4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @FIELD_PAIR_TNBC, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %16, align 4
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 4
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @FIELD_PAIR_TCBN, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %17, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %198
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* %16, align 4
  %224 = icmp sle i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i32, i32* @IVTC_OP_COPY_N, align 4
  store i32 %226, i32* %12, align 4
  %227 = load i32, i32* %15, align 4
  store i32 %227, i32* %11, align 4
  br label %231

228:                                              ; preds = %221
  %229 = load i32, i32* @IVTC_OP_COMPOSE_TNBC, align 4
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* %16, align 4
  store i32 %230, i32* %11, align 4
  br label %231

231:                                              ; preds = %228, %225
  br label %243

232:                                              ; preds = %198
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* %17, align 4
  %235 = icmp sle i32 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load i32, i32* @IVTC_OP_COPY_N, align 4
  store i32 %237, i32* %12, align 4
  %238 = load i32, i32* %15, align 4
  store i32 %238, i32* %11, align 4
  br label %242

239:                                              ; preds = %232
  %240 = load i32, i32* @IVTC_OP_COMPOSE_TCBN, align 4
  store i32 %240, i32* %12, align 4
  %241 = load i32, i32* %17, align 4
  store i32 %241, i32* %11, align 4
  br label %242

242:                                              ; preds = %239, %236
  br label %243

243:                                              ; preds = %242, %231
  br label %244

244:                                              ; preds = %243, %193
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %275

249:                                              ; preds = %244
  %250 = load i32*, i32** @pi_timestamp_deltas, align 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %18, align 4
  %256 = load i32, i32* %18, align 4
  %257 = icmp sge i32 %256, 0
  %258 = zext i1 %257 to i32
  %259 = call i32 @assert(i32 %258)
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = sub nsw i64 %265, %268
  %270 = load i32, i32* %18, align 4
  %271 = sext i32 %270 to i64
  %272 = mul nsw i64 %269, %271
  %273 = sdiv i64 %272, 4
  %274 = add nsw i64 %262, %273
  store i64 %274, i64* %8, align 8
  br label %279

275:                                              ; preds = %244
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %8, align 8
  br label %279

279:                                              ; preds = %275, %249
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = add i64 %282, 1
  %284 = urem i64 %283, 5
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 2
  store i64 %284, i64* %286, align 8
  br label %337

287:                                              ; preds = %2
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @IVTC_MODE_TELECINED_NTSC_SOFT, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %325

293:                                              ; preds = %287
  %294 = load i32, i32* @IVTC_OP_COPY_C, align 4
  store i32 %294, i32* %12, align 4
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 4
  %297 = load i32*, i32** %296, align 8
  %298 = load i64, i64* @FIELD_PAIR_TCBC, align 8
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %11, align 4
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = icmp eq i32 %303, 3
  br i1 %304, label %305, label %320

305:                                              ; preds = %293
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = sub nsw i64 %308, %311
  %313 = sdiv i64 %312, 3
  %314 = sdiv i64 %313, 2
  store i64 %314, i64* %19, align 8
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %19, align 8
  %319 = add nsw i64 %317, %318
  store i64 %319, i64* %8, align 8
  br label %324

320:                                              ; preds = %293
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %8, align 8
  br label %324

324:                                              ; preds = %320, %305
  br label %336

325:                                              ; preds = %287
  %326 = load i32, i32* @IVTC_OP_COPY_N, align 4
  store i32 %326, i32* %12, align 4
  %327 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 4
  %329 = load i32*, i32** %328, align 8
  %330 = load i64, i64* @FIELD_PAIR_TNBN, align 8
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %11, align 4
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %8, align 8
  br label %336

336:                                              ; preds = %325, %324
  br label %337

337:                                              ; preds = %336, %279
  %338 = load i32, i32* %12, align 4
  %339 = load i32, i32* @IVTC_OP_DROP_FRAME, align 4
  %340 = icmp ne i32 %338, %339
  %341 = zext i1 %340 to i32
  %342 = call i32 @assert(i32 %341)
  %343 = load i32, i32* %12, align 4
  %344 = load i32, i32* @IVTC_OP_COPY_N, align 4
  %345 = icmp eq i32 %343, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %337
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %349 = call i32 @picture_Copy(%struct.TYPE_16__* %347, %struct.TYPE_16__* %348)
  br label %383

350:                                              ; preds = %337
  %351 = load i32, i32* %12, align 4
  %352 = load i32, i32* @IVTC_OP_COPY_C, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %358

354:                                              ; preds = %350
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %357 = call i32 @picture_Copy(%struct.TYPE_16__* %355, %struct.TYPE_16__* %356)
  br label %382

358:                                              ; preds = %350
  %359 = load i32, i32* %12, align 4
  %360 = load i32, i32* @IVTC_OP_COMPOSE_TNBC, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %369

362:                                              ; preds = %358
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %367 = load i32, i32* @CC_ALTLINE, align 4
  %368 = call i32 @ComposeFrame(%struct.TYPE_18__* %363, %struct.TYPE_16__* %364, %struct.TYPE_16__* %365, %struct.TYPE_16__* %366, i32 %367, i32 0)
  br label %381

369:                                              ; preds = %358
  %370 = load i32, i32* %12, align 4
  %371 = load i32, i32* @IVTC_OP_COMPOSE_TCBN, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %380

373:                                              ; preds = %369
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %378 = load i32, i32* @CC_ALTLINE, align 4
  %379 = call i32 @ComposeFrame(%struct.TYPE_18__* %374, %struct.TYPE_16__* %375, %struct.TYPE_16__* %376, %struct.TYPE_16__* %377, i32 %378, i32 0)
  br label %380

380:                                              ; preds = %373, %369
  br label %381

381:                                              ; preds = %380, %362
  br label %382

382:                                              ; preds = %381, %354
  br label %383

383:                                              ; preds = %382, %346
  store i32 1, i32* %20, align 4
  br label %384

384:                                              ; preds = %403, %383
  %385 = load i32, i32* %20, align 4
  %386 = load i32, i32* @IVTC_DETECTION_HISTORY_SIZE, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %406

388:                                              ; preds = %384
  %389 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 5
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %20, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 5
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %20, align 4
  %400 = sub nsw i32 %399, 1
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %398, i64 %401
  store i32 %395, i32* %402, align 4
  br label %403

403:                                              ; preds = %388
  %404 = load i32, i32* %20, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %20, align 4
  br label %384

406:                                              ; preds = %384
  %407 = load i32, i32* %11, align 4
  %408 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %408, i32 0, i32 5
  %410 = load i32*, i32** %409, align 8
  %411 = load i64, i64* @IVTC_LATEST, align 8
  %412 = getelementptr inbounds i32, i32* %410, i64 %411
  store i32 %407, i32* %412, align 4
  %413 = load i64, i64* %8, align 8
  %414 = load i64, i64* @VLC_TICK_INVALID, align 8
  %415 = icmp ne i64 %413, %414
  br i1 %415, label %416, label %420

416:                                              ; preds = %406
  %417 = load i64, i64* %8, align 8
  %418 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 0
  store i64 %417, i64* %419, align 8
  br label %420

420:                                              ; preds = %416, %406
  store i32 1, i32* %3, align 4
  br label %421

421:                                              ; preds = %420, %94
  %422 = load i32, i32* %3, align 4
  ret i32 %422
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_18__*, i8*, i32, i32) #1

declare dso_local i32 @picture_Copy(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ComposeFrame(%struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
