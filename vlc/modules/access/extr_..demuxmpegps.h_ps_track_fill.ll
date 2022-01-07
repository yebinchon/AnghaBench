; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmpegps.h_ps_track_fill.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmpegps.h_ps_track_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i64*, i8* }

@AUDIO_ES = common dso_local global i64 0, align 8
@VLC_CODEC_DTS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_CODEC_EAC3 = common dso_local global i32 0, align 4
@VLC_CODEC_A52 = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i64 0, align 8
@VLC_CODEC_CVD = common dso_local global i32 0, align 4
@VLC_CODEC_TELETEXT = common dso_local global i32 0, align 4
@VLC_CODEC_SPU = common dso_local global i32 0, align 4
@VLC_CODEC_OGT = common dso_local global i32 0, align 4
@VLC_CODEC_DVD_LPCM = common dso_local global i32 0, align 4
@VLC_CODEC_TRUEHD = common dso_local global i32 0, align 4
@UNKNOWN_ES = common dso_local global i64 0, align 8
@VIDEO_ES = common dso_local global i64 0, align 8
@VLC_CODEC_VC1 = common dso_local global i32 0, align 4
@VLC_CODEC_DVDA_LPCM = common dso_local global i32 0, align 4
@VLC_CODEC_MLP = common dso_local global i32 0, align 4
@VLC_CODEC_MPGV = common dso_local global i32 0, align 4
@VLC_CODEC_MP1V = common dso_local global i8* null, align 8
@VLC_CODEC_MP4V = common dso_local global i32 0, align 4
@VLC_CODEC_H264 = common dso_local global i32 0, align 4
@VLC_CODEC_HEVC = common dso_local global i32 0, align 4
@VLC_CODEC_MPGA = common dso_local global i32 0, align 4
@VLC_CODEC_MP4A = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32*, i64, i32)* @ps_track_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_track_fill(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 65280
  %27 = icmp eq i32 %26, 48384
  br i1 %27, label %28, label %199

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 248
  %31 = icmp eq i32 %30, 136
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 248
  %35 = icmp eq i32 %34, 152
  br i1 %35, label %36, label %44

36:                                               ; preds = %32, %28
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64, i64* @AUDIO_ES, align 8
  %40 = load i32, i32* @VLC_CODEC_DTS, align 4
  %41 = call i32 @es_format_Change(%struct.TYPE_5__* %38, i64 %39, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 4, i32* %43, align 8
  br label %198

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 248
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 240
  %51 = icmp eq i32 %50, 192
  br i1 %51, label %52, label %119

52:                                               ; preds = %48, %44
  store i32 0, i32* %14, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 240
  %55 = icmp eq i32 %54, 192
  br i1 %55, label %56, label %104

56:                                               ; preds = %52
  %57 = load i32*, i32** %11, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %12, align 8
  %61 = icmp ult i64 %60, 9
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %63, i32* %7, align 4
  br label %533

64:                                               ; preds = %59
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 9, %67
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = add i32 %69, 9
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* %12, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %64
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %15, align 4
  %77 = add i32 %76, 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 11
  br i1 %81, label %90, label %82

82:                                               ; preds = %74
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %15, align 4
  %85 = add i32 %84, 5
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 119
  br i1 %89, label %90, label %102

90:                                               ; preds = %82, %74
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %15, align 4
  %93 = add i32 %92, 9
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 3
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp sgt i32 %98, 10
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  store i32 1, i32* %14, align 4
  br label %101

101:                                              ; preds = %100, %90
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %64
  br label %104

104:                                              ; preds = %103, %52
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i64, i64* @AUDIO_ES, align 8
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @VLC_CODEC_EAC3, align 4
  br label %114

112:                                              ; preds = %104
  %113 = load i32, i32* @VLC_CODEC_A52, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = call i32 @es_format_Change(%struct.TYPE_5__* %106, i64 %107, i32 %115)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 4, i32* %118, align 8
  br label %197

119:                                              ; preds = %48
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %120, 252
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i64, i64* @SPU_ES, align 8
  %127 = load i32, i32* @VLC_CODEC_CVD, align 4
  %128 = call i32 @es_format_Change(%struct.TYPE_5__* %125, i64 %126, i32 %127)
  br label %196

129:                                              ; preds = %119
  %130 = load i32, i32* %10, align 4
  %131 = and i32 %130, 255
  %132 = icmp eq i32 %131, 16
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i64, i64* @SPU_ES, align 8
  %137 = load i32, i32* @VLC_CODEC_TELETEXT, align 4
  %138 = call i32 @es_format_Change(%struct.TYPE_5__* %135, i64 %136, i32 %137)
  br label %195

139:                                              ; preds = %129
  %140 = load i32, i32* %10, align 4
  %141 = and i32 %140, 224
  %142 = icmp eq i32 %141, 32
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i64, i64* @SPU_ES, align 8
  %147 = load i32, i32* @VLC_CODEC_SPU, align 4
  %148 = call i32 @es_format_Change(%struct.TYPE_5__* %145, i64 %146, i32 %147)
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  br label %194

151:                                              ; preds = %139
  %152 = load i32, i32* %10, align 4
  %153 = and i32 %152, 255
  %154 = icmp eq i32 %153, 112
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i64, i64* @SPU_ES, align 8
  %159 = load i32, i32* @VLC_CODEC_OGT, align 4
  %160 = call i32 @es_format_Change(%struct.TYPE_5__* %157, i64 %158, i32 %159)
  br label %193

161:                                              ; preds = %151
  %162 = load i32, i32* %10, align 4
  %163 = and i32 %162, 240
  %164 = icmp eq i32 %163, 160
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load i64, i64* @AUDIO_ES, align 8
  %169 = load i32, i32* @VLC_CODEC_DVD_LPCM, align 4
  %170 = call i32 @es_format_Change(%struct.TYPE_5__* %167, i64 %168, i32 %169)
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  br label %192

173:                                              ; preds = %161
  %174 = load i32, i32* %10, align 4
  %175 = and i32 %174, 240
  %176 = icmp eq i32 %175, 176
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = load i64, i64* @AUDIO_ES, align 8
  %181 = load i32, i32* @VLC_CODEC_TRUEHD, align 4
  %182 = call i32 @es_format_Change(%struct.TYPE_5__* %179, i64 %180, i32 %181)
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  store i32 5, i32* %184, align 8
  br label %191

185:                                              ; preds = %173
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i64, i64* @UNKNOWN_ES, align 8
  %189 = call i32 @es_format_Change(%struct.TYPE_5__* %187, i64 %188, i32 0)
  %190 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %190, i32* %7, align 4
  br label %533

191:                                              ; preds = %177
  br label %192

192:                                              ; preds = %191, %165
  br label %193

193:                                              ; preds = %192, %155
  br label %194

194:                                              ; preds = %193, %143
  br label %195

195:                                              ; preds = %194, %133
  br label %196

196:                                              ; preds = %195, %123
  br label %197

197:                                              ; preds = %196, %114
  br label %198

198:                                              ; preds = %197, %36
  br label %478

199:                                              ; preds = %6
  %200 = load i32, i32* %10, align 4
  %201 = and i32 %200, 65280
  %202 = icmp eq i32 %201, 64768
  br i1 %202, label %203, label %230

203:                                              ; preds = %199
  %204 = load i32, i32* %10, align 4
  %205 = and i32 %204, 255
  store i32 %205, i32* %17, align 4
  %206 = load i32, i32* %17, align 4
  %207 = icmp sge i32 %206, 85
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* %17, align 4
  %210 = icmp sle i32 %209, 95
  br i1 %210, label %217, label %211

211:                                              ; preds = %208, %203
  %212 = load i32, i32* %17, align 4
  %213 = icmp sge i32 %212, 117
  br i1 %213, label %214, label %223

214:                                              ; preds = %211
  %215 = load i32, i32* %17, align 4
  %216 = icmp sle i32 %215, 127
  br i1 %216, label %217, label %223

217:                                              ; preds = %214, %208
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 2
  %220 = load i64, i64* @VIDEO_ES, align 8
  %221 = load i32, i32* @VLC_CODEC_VC1, align 4
  %222 = call i32 @es_format_Change(%struct.TYPE_5__* %219, i64 %220, i32 %221)
  br label %229

223:                                              ; preds = %214, %211
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  %226 = load i64, i64* @UNKNOWN_ES, align 8
  %227 = call i32 @es_format_Change(%struct.TYPE_5__* %225, i64 %226, i32 0)
  %228 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %228, i32* %7, align 4
  br label %533

229:                                              ; preds = %217
  br label %477

230:                                              ; preds = %199
  %231 = load i32, i32* %10, align 4
  %232 = and i32 %231, 65280
  %233 = icmp eq i32 %232, 40960
  br i1 %233, label %234, label %266

234:                                              ; preds = %230
  %235 = load i32, i32* %10, align 4
  %236 = and i32 %235, 7
  store i32 %236, i32* %18, align 4
  %237 = load i32, i32* %18, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %234
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  %242 = load i64, i64* @AUDIO_ES, align 8
  %243 = load i32, i32* @VLC_CODEC_DVDA_LPCM, align 4
  %244 = call i32 @es_format_Change(%struct.TYPE_5__* %241, i64 %242, i32 %243)
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  store i32 1, i32* %246, align 8
  br label %265

247:                                              ; preds = %234
  %248 = load i32, i32* %18, align 4
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %258

250:                                              ; preds = %247
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 2
  %253 = load i64, i64* @AUDIO_ES, align 8
  %254 = load i32, i32* @VLC_CODEC_MLP, align 4
  %255 = call i32 @es_format_Change(%struct.TYPE_5__* %252, i64 %253, i32 %254)
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  store i32 -1, i32* %257, align 8
  br label %264

258:                                              ; preds = %247
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 2
  %261 = load i64, i64* @UNKNOWN_ES, align 8
  %262 = call i32 @es_format_Change(%struct.TYPE_5__* %260, i64 %261, i32 0)
  %263 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %263, i32* %7, align 4
  br label %533

264:                                              ; preds = %250
  br label %265

265:                                              ; preds = %264, %239
  br label %476

266:                                              ; preds = %230
  %267 = load i32*, i32** %9, align 8
  %268 = load i32, i32* %10, align 4
  %269 = call i32 @ps_id_to_type(i32* %267, i32 %268)
  store i32 %269, i32* %19, align 4
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 2
  %272 = load i64, i64* @UNKNOWN_ES, align 8
  %273 = call i32 @es_format_Change(%struct.TYPE_5__* %271, i64 %272, i32 0)
  %274 = load i32, i32* %10, align 4
  %275 = and i32 %274, 240
  %276 = icmp eq i32 %275, 224
  br i1 %276, label %277, label %405

277:                                              ; preds = %266
  %278 = load i32, i32* %19, align 4
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %290

280:                                              ; preds = %277
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 2
  %283 = load i64, i64* @VIDEO_ES, align 8
  %284 = load i32, i32* @VLC_CODEC_MPGV, align 4
  %285 = call i32 @es_format_Change(%struct.TYPE_5__* %282, i64 %283, i32 %284)
  %286 = load i8*, i8** @VLC_CODEC_MP1V, align 8
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 4
  store i8* %286, i8** %289, align 8
  br label %404

290:                                              ; preds = %277
  %291 = load i32, i32* %19, align 4
  %292 = icmp eq i32 %291, 2
  br i1 %292, label %293, label %299

293:                                              ; preds = %290
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 2
  %296 = load i64, i64* @VIDEO_ES, align 8
  %297 = load i32, i32* @VLC_CODEC_MPGV, align 4
  %298 = call i32 @es_format_Change(%struct.TYPE_5__* %295, i64 %296, i32 %297)
  br label %403

299:                                              ; preds = %290
  %300 = load i32, i32* %19, align 4
  %301 = icmp eq i32 %300, 16
  br i1 %301, label %302, label %308

302:                                              ; preds = %299
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 2
  %305 = load i64, i64* @VIDEO_ES, align 8
  %306 = load i32, i32* @VLC_CODEC_MP4V, align 4
  %307 = call i32 @es_format_Change(%struct.TYPE_5__* %304, i64 %305, i32 %306)
  br label %402

308:                                              ; preds = %299
  %309 = load i32, i32* %19, align 4
  %310 = icmp eq i32 %309, 27
  br i1 %310, label %311, label %317

311:                                              ; preds = %308
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 2
  %314 = load i64, i64* @VIDEO_ES, align 8
  %315 = load i32, i32* @VLC_CODEC_H264, align 4
  %316 = call i32 @es_format_Change(%struct.TYPE_5__* %313, i64 %314, i32 %315)
  br label %401

317:                                              ; preds = %308
  %318 = load i32, i32* %19, align 4
  %319 = icmp eq i32 %318, 36
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 2
  %323 = load i64, i64* @VIDEO_ES, align 8
  %324 = load i32, i32* @VLC_CODEC_HEVC, align 4
  %325 = call i32 @es_format_Change(%struct.TYPE_5__* %322, i64 %323, i32 %324)
  br label %400

326:                                              ; preds = %317
  %327 = load i32, i32* %10, align 4
  %328 = icmp eq i32 %327, 226
  br i1 %328, label %332, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* %10, align 4
  %331 = icmp eq i32 %330, 227
  br i1 %331, label %332, label %338

332:                                              ; preds = %329, %326
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 2
  %335 = load i64, i64* @VIDEO_ES, align 8
  %336 = load i32, i32* @VLC_CODEC_H264, align 4
  %337 = call i32 @es_format_Change(%struct.TYPE_5__* %334, i64 %335, i32 %336)
  br label %399

338:                                              ; preds = %329
  %339 = load i32*, i32** %11, align 8
  %340 = icmp ne i32* %339, null
  br i1 %340, label %341, label %378

341:                                              ; preds = %338
  %342 = load i32, i32* %19, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %378

344:                                              ; preds = %341
  %345 = load i64, i64* %12, align 8
  %346 = icmp ugt i64 %345, 14
  br i1 %346, label %347, label %378

347:                                              ; preds = %344
  %348 = load i64, i64* %12, align 8
  %349 = load i32*, i32** %11, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 8
  %351 = load i32, i32* %350, align 4
  %352 = add i32 14, %351
  %353 = zext i32 %352 to i64
  %354 = icmp ugt i64 %348, %353
  br i1 %354, label %355, label %378

355:                                              ; preds = %347
  %356 = load i32*, i32** %11, align 8
  %357 = load i32*, i32** %11, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 8
  %359 = load i32, i32* %358, align 4
  %360 = add nsw i32 9, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %356, i64 %361
  %363 = load i64, i64* %12, align 8
  %364 = sub i64 %363, 9
  %365 = load i32*, i32** %11, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 8
  %367 = load i32, i32* %366, align 4
  %368 = sext i32 %367 to i64
  %369 = sub i64 %364, %368
  %370 = call i64 @ps_is_H264(i32* %362, i64 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %355
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 2
  %375 = load i64, i64* @VIDEO_ES, align 8
  %376 = load i32, i32* @VLC_CODEC_H264, align 4
  %377 = call i32 @es_format_Change(%struct.TYPE_5__* %374, i64 %375, i32 %376)
  br label %398

378:                                              ; preds = %355, %347, %344, %341, %338
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @UNKNOWN_ES, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %385, label %397

385:                                              ; preds = %378
  %386 = load i32*, i32** %11, align 8
  %387 = icmp ne i32* %386, null
  br i1 %387, label %391, label %388

388:                                              ; preds = %385
  %389 = load i32, i32* %13, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %397

391:                                              ; preds = %388, %385
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 2
  %394 = load i64, i64* @VIDEO_ES, align 8
  %395 = load i32, i32* @VLC_CODEC_MPGV, align 4
  %396 = call i32 @es_format_Change(%struct.TYPE_5__* %393, i64 %394, i32 %395)
  br label %397

397:                                              ; preds = %391, %388, %378
  br label %398

398:                                              ; preds = %397, %372
  br label %399

399:                                              ; preds = %398, %332
  br label %400

400:                                              ; preds = %399, %320
  br label %401

401:                                              ; preds = %400, %311
  br label %402

402:                                              ; preds = %401, %302
  br label %403

403:                                              ; preds = %402, %293
  br label %404

404:                                              ; preds = %403, %280
  br label %475

405:                                              ; preds = %266
  %406 = load i32, i32* %10, align 4
  %407 = and i32 %406, 224
  %408 = icmp eq i32 %407, 192
  br i1 %408, label %409, label %464

409:                                              ; preds = %405
  %410 = load i32, i32* %19, align 4
  %411 = icmp eq i32 %410, 3
  br i1 %411, label %415, label %412

412:                                              ; preds = %409
  %413 = load i32, i32* %19, align 4
  %414 = icmp eq i32 %413, 4
  br i1 %414, label %415, label %421

415:                                              ; preds = %412, %409
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 2
  %418 = load i64, i64* @AUDIO_ES, align 8
  %419 = load i32, i32* @VLC_CODEC_MPGA, align 4
  %420 = call i32 @es_format_Change(%struct.TYPE_5__* %417, i64 %418, i32 %419)
  br label %463

421:                                              ; preds = %412
  %422 = load i32, i32* %19, align 4
  %423 = icmp eq i32 %422, 15
  br i1 %423, label %424, label %434

424:                                              ; preds = %421
  %425 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 2
  %427 = load i64, i64* @AUDIO_ES, align 8
  %428 = load i32, i32* @VLC_CODEC_MP4A, align 4
  %429 = call i32 @es_format_Change(%struct.TYPE_5__* %426, i64 %427, i32 %428)
  %430 = call i8* @VLC_FOURCC(i8 signext 65, i8 signext 68, i8 signext 84, i8 signext 83)
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 4
  store i8* %430, i8** %433, align 8
  br label %462

434:                                              ; preds = %421
  %435 = load i32, i32* %19, align 4
  %436 = icmp eq i32 %435, 17
  br i1 %436, label %437, label %447

437:                                              ; preds = %434
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 2
  %440 = load i64, i64* @AUDIO_ES, align 8
  %441 = load i32, i32* @VLC_CODEC_MP4A, align 4
  %442 = call i32 @es_format_Change(%struct.TYPE_5__* %439, i64 %440, i32 %441)
  %443 = call i8* @VLC_FOURCC(i8 signext 76, i8 signext 65, i8 signext 84, i8 signext 77)
  %444 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 4
  store i8* %443, i8** %446, align 8
  br label %461

447:                                              ; preds = %434
  %448 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 2
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @UNKNOWN_ES, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %460

454:                                              ; preds = %447
  %455 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 2
  %457 = load i64, i64* @AUDIO_ES, align 8
  %458 = load i32, i32* @VLC_CODEC_MPGA, align 4
  %459 = call i32 @es_format_Change(%struct.TYPE_5__* %456, i64 %457, i32 %458)
  br label %460

460:                                              ; preds = %454, %447
  br label %461

461:                                              ; preds = %460, %437
  br label %462

462:                                              ; preds = %461, %424
  br label %463

463:                                              ; preds = %462, %415
  br label %474

464:                                              ; preds = %405
  %465 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i32 0, i32 2
  %467 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @UNKNOWN_ES, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %471, label %473

471:                                              ; preds = %464
  %472 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %472, i32* %7, align 4
  br label %533

473:                                              ; preds = %464
  br label %474

474:                                              ; preds = %473, %463
  br label %475

475:                                              ; preds = %474, %404
  br label %476

476:                                              ; preds = %475, %265
  br label %477

477:                                              ; preds = %476, %229
  br label %478

478:                                              ; preds = %477, %198
  %479 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %480 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %479, i32 0, i32 2
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 1
  store i32 0, i32* %481, align 8
  %482 = load i32, i32* %10, align 4
  %483 = xor i32 %482, -1
  %484 = and i32 %483, 15
  %485 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %486 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %485, i32 0, i32 2
  %487 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %486, i32 0, i32 2
  store i32 %484, i32* %487, align 4
  %488 = load i32*, i32** %9, align 8
  %489 = load i32, i32* %10, align 4
  %490 = call i64 @ps_id_to_lang(i32* %488, i32 %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %517

492:                                              ; preds = %478
  %493 = call i64* @malloc(i32 4)
  %494 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %495 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %494, i32 0, i32 2
  %496 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %495, i32 0, i32 3
  store i64* %493, i64** %496, align 8
  %497 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 2
  %499 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %498, i32 0, i32 3
  %500 = load i64*, i64** %499, align 8
  %501 = icmp ne i64* %500, null
  br i1 %501, label %502, label %516

502:                                              ; preds = %492
  %503 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %504 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %503, i32 0, i32 2
  %505 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %504, i32 0, i32 3
  %506 = load i64*, i64** %505, align 8
  %507 = load i32*, i32** %9, align 8
  %508 = load i32, i32* %10, align 4
  %509 = call i64 @ps_id_to_lang(i32* %507, i32 %508)
  %510 = call i32 @memcpy(i64* %506, i64 %509, i32 3)
  %511 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 2
  %513 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %512, i32 0, i32 3
  %514 = load i64*, i64** %513, align 8
  %515 = getelementptr inbounds i64, i64* %514, i64 3
  store i64 0, i64* %515, align 8
  br label %516

516:                                              ; preds = %502, %492
  br label %517

517:                                              ; preds = %516, %478
  %518 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %519 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %518, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i32 0, i32 0
  %521 = load i64, i64* %520, align 8
  %522 = load i64, i64* @UNKNOWN_ES, align 8
  %523 = icmp ne i64 %521, %522
  br i1 %523, label %527, label %524

524:                                              ; preds = %517
  %525 = load i32*, i32** %11, align 8
  %526 = icmp ne i32* %525, null
  br i1 %526, label %527, label %529

527:                                              ; preds = %524, %517
  %528 = load i32, i32* @VLC_SUCCESS, align 4
  br label %531

529:                                              ; preds = %524
  %530 = load i32, i32* @VLC_EGENERIC, align 4
  br label %531

531:                                              ; preds = %529, %527
  %532 = phi i32 [ %528, %527 ], [ %530, %529 ]
  store i32 %532, i32* %7, align 4
  br label %533

533:                                              ; preds = %531, %471, %258, %223, %185, %62
  %534 = load i32, i32* %7, align 4
  ret i32 %534
}

declare dso_local i32 @es_format_Change(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @ps_id_to_type(i32*, i32) #1

declare dso_local i64 @ps_is_H264(i32*, i64) #1

declare dso_local i8* @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @ps_id_to_lang(i32*, i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
