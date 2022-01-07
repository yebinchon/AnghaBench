; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_trivial.c_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/channel_mixer/extr_trivial.c_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_13__ }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@Equals = common dso_local global i8* null, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@AOUT_CHAN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%d channels will be dropped.\00", align 1
@Extract = common dso_local global i8* null, align 8
@VLC_CODEC_FL32 = common dso_local global i64 0, align 8
@pi_vlc_chan_order_wg4 = common dso_local global i32* null, align 8
@AOUT_CHANS_FRONT = common dso_local global i32 0, align 4
@AOUT_CHANS_MIDDLE = common dso_local global i32 0, align 4
@AOUT_CHANS_REAR = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@Upmix = common dso_local global i8* null, align 8
@Downmix = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Create(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %4, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %5, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %6, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %82

34:                                               ; preds = %1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %46, i32* %2, align 4
  br label %411

47:                                               ; preds = %34
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %48)
  %50 = zext i32 %49 to i64
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i8*, i8** @Equals, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %59, i32* %2, align 4
  br label %411

60:                                               ; preds = %47
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp sgt i64 %63, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %71, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @msg_Info(%struct.TYPE_11__* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %67, %60
  %78 = load i8*, i8** @Extract, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %81, i32* %2, align 4
  br label %411

82:                                               ; preds = %1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %104, label %90

90:                                               ; preds = %82
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %90
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VLC_CODEC_FL32, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98, %90, %82
  %105 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %105, i32* %2, align 4
  br label %411

106:                                              ; preds = %98
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %106
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %123, i32* %2, align 4
  br label %411

124:                                              ; preds = %114, %106
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %126, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %127)
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %139

130:                                              ; preds = %124
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %131)
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load i8*, i8** @Equals, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %138, i32* %2, align 4
  br label %411

139:                                              ; preds = %130, %124
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %7, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %148 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %149 = zext i32 %148 to i64
  %150 = call i8* @llvm.stacksave()
  store i8* %150, i8** %10, align 8
  %151 = alloca i32, i64 %149, align 16
  store i64 %149, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %174, %139
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %152
  %157 = load i32*, i32** @pi_vlc_chan_order_wg4, align 8
  %158 = load i32, i32* %12, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %169

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168, %165
  %170 = phi i32 [ %166, %165 ], [ -1, %168 ]
  %171 = load i32, i32* %12, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %151, i64 %172
  store i32 %170, i32* %173, align 4
  br label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %12, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %152

177:                                              ; preds = %152
  store i32 0, i32* %13, align 4
  %178 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %179 = zext i32 %178 to i64
  %180 = alloca i32, i64 %179, align 16
  store i64 %179, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %181

181:                                              ; preds = %309, %177
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %185, label %312

185:                                              ; preds = %181
  %186 = load i32*, i32** @pi_vlc_chan_order_wg4, align 8
  %187 = load i32, i32* %15, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %8, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %185
  br label %309

196:                                              ; preds = %185
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %198 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %197)
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %214

200:                                              ; preds = %196
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* @AOUT_CHANS_FRONT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* %13, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %180, i64 %207
  store i32 0, i32* %208, align 4
  br label %213

209:                                              ; preds = %200
  %210 = load i32, i32* %13, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %180, i64 %211
  store i32 -1, i32* %212, align 4
  br label %213

213:                                              ; preds = %209, %205
  br label %306

214:                                              ; preds = %196
  %215 = load i32, i32* %15, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %151, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, -1
  br i1 %219, label %220, label %232

220:                                              ; preds = %214
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %7, align 4
  %223 = and i32 %221, %222
  %224 = call i32 @assert(i32 %223)
  %225 = load i32, i32* %15, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %151, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %13, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %180, i64 %230
  store i32 %228, i32* %231, align 4
  br label %305

232:                                              ; preds = %214
  %233 = load i32, i32* %16, align 4
  %234 = load i32, i32* @AOUT_CHANS_MIDDLE, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %266

237:                                              ; preds = %232
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @AOUT_CHANS_REAR, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %266, label %242

242:                                              ; preds = %237
  %243 = load i32, i32* %15, align 4
  %244 = add i32 %243, 2
  %245 = load i32, i32* @AOUT_CHAN_MAX, align 4
  %246 = icmp ult i32 %244, %245
  %247 = zext i1 %246 to i32
  %248 = call i32 @assert(i32 %247)
  %249 = load i32*, i32** @pi_vlc_chan_order_wg4, align 8
  %250 = load i32, i32* %15, align 4
  %251 = add i32 %250, 2
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %249, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @AOUT_CHANS_REAR, align 4
  %256 = and i32 %254, %255
  %257 = call i32 @assert(i32 %256)
  %258 = load i32, i32* %15, align 4
  %259 = add i32 %258, 2
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %151, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %13, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %180, i64 %264
  store i32 %262, i32* %265, align 4
  br label %304

266:                                              ; preds = %237, %232
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* @AOUT_CHANS_REAR, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %299

271:                                              ; preds = %266
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @AOUT_CHANS_MIDDLE, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %299, label %276

276:                                              ; preds = %271
  %277 = load i32, i32* %15, align 4
  %278 = sub nsw i32 %277, 2
  %279 = icmp sge i32 %278, 0
  %280 = zext i1 %279 to i32
  %281 = call i32 @assert(i32 %280)
  %282 = load i32*, i32** @pi_vlc_chan_order_wg4, align 8
  %283 = load i32, i32* %15, align 4
  %284 = sub i32 %283, 2
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @AOUT_CHANS_MIDDLE, align 4
  %289 = and i32 %287, %288
  %290 = call i32 @assert(i32 %289)
  %291 = load i32, i32* %15, align 4
  %292 = sub i32 %291, 2
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %151, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %13, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %180, i64 %297
  store i32 %295, i32* %298, align 4
  br label %303

299:                                              ; preds = %271, %266
  %300 = load i32, i32* %13, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %180, i64 %301
  store i32 -1, i32* %302, align 4
  br label %303

303:                                              ; preds = %299, %276
  br label %304

304:                                              ; preds = %303, %242
  br label %305

305:                                              ; preds = %304, %220
  br label %306

306:                                              ; preds = %305, %213
  %307 = load i32, i32* %13, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %13, align 4
  br label %309

309:                                              ; preds = %306, %195
  %310 = load i32, i32* %15, align 4
  %311 = add i32 %310, 1
  store i32 %311, i32* %15, align 4
  br label %181

312:                                              ; preds = %181
  store i32 0, i32* %17, align 4
  br label %313

313:                                              ; preds = %336, %312
  %314 = load i32, i32* %17, align 4
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %316 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %315)
  %317 = icmp ult i32 %314, %316
  br i1 %317, label %318, label %339

318:                                              ; preds = %313
  %319 = load i32, i32* %17, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %180, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %322, -1
  br i1 %323, label %332, label %324

324:                                              ; preds = %318
  %325 = load i32, i32* %17, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %180, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %330 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %329)
  %331 = icmp ult i32 %328, %330
  br label %332

332:                                              ; preds = %324, %318
  %333 = phi i1 [ true, %318 ], [ %331, %324 ]
  %334 = zext i1 %333 to i32
  %335 = call i32 @assert(i32 %334)
  br label %336

336:                                              ; preds = %332
  %337 = load i32, i32* %17, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %17, align 4
  br label %313

339:                                              ; preds = %313
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %341 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %340)
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %343 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %342)
  %344 = icmp eq i32 %341, %343
  br i1 %344, label %345, label %378

345:                                              ; preds = %339
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %346

346:                                              ; preds = %366, %345
  %347 = load i32, i32* %19, align 4
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %349 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %348)
  %350 = icmp ult i32 %347, %349
  br i1 %350, label %351, label %369

351:                                              ; preds = %346
  %352 = load i32, i32* %19, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %180, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = icmp eq i32 %355, -1
  br i1 %356, label %364, label %357

357:                                              ; preds = %351
  %358 = load i32, i32* %19, align 4
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %180, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %19, align 4
  %363 = icmp ne i32 %361, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %357, %351
  store i32 0, i32* %18, align 4
  br label %369

365:                                              ; preds = %357
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %19, align 4
  %368 = add i32 %367, 1
  store i32 %368, i32* %19, align 4
  br label %346

369:                                              ; preds = %364, %346
  %370 = load i32, i32* %18, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %369
  %373 = load i8*, i8** @Equals, align 8
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 0
  store i8* %373, i8** %375, align 8
  %376 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %376, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %409

377:                                              ; preds = %369
  br label %378

378:                                              ; preds = %377, %339
  %379 = call %struct.TYPE_12__* @malloc(i32 4)
  store %struct.TYPE_12__* %379, %struct.TYPE_12__** %21, align 8
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %381 = icmp ne %struct.TYPE_12__* %380, null
  br i1 %381, label %384, label %382

382:                                              ; preds = %378
  %383 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %383, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %409

384:                                              ; preds = %378
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %386 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 1
  store %struct.TYPE_12__* %385, %struct.TYPE_12__** %387, align 8
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = mul nuw i64 4, %179
  %392 = trunc i64 %391 to i32
  %393 = call i32 @memcpy(i32 %390, i32* %180, i32 %392)
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %395 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %394)
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %397 = call i32 @aout_FormatNbChannels(%struct.TYPE_13__* %396)
  %398 = icmp ugt i32 %395, %397
  br i1 %398, label %399, label %403

399:                                              ; preds = %384
  %400 = load i8*, i8** @Upmix, align 8
  %401 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 0
  store i8* %400, i8** %402, align 8
  br label %407

403:                                              ; preds = %384
  %404 = load i8*, i8** @Downmix, align 8
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 0
  store i8* %404, i8** %406, align 8
  br label %407

407:                                              ; preds = %403, %399
  %408 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %408, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %409

409:                                              ; preds = %407, %382, %372
  %410 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %410)
  br label %411

411:                                              ; preds = %409, %134, %122, %104, %77, %55, %45
  %412 = load i32, i32* %2, align 4
  ret i32 %412
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @aout_FormatNbChannels(%struct.TYPE_13__*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_11__*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
