; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmpegps.h_ps_psm_fill.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmpegps.h_ps_psm_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i64, i32 }
%struct.TYPE_14__ = type { i64 }

@PS_TK_COUNT = common dso_local global i32 0, align 4
@PS_STREAM_ID_MAP = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@PS_STREAM_ID_EXTENDED = common dso_local global i32 0, align 4
@UNKNOWN_ES = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, i64, %struct.TYPE_15__*, i32*)* @ps_psm_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_psm_fill(%struct.TYPE_16__* %0, i32* %1, i64 %2, %struct.TYPE_15__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32, i32* @PS_TK_COUNT, align 4
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* %9, align 8
  %24 = icmp uge i64 %23, 4
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %30, 10
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PS_STREAM_ID_MAP, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %29, %5
  %39 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %39, i32* %6, align 4
  br label %298

40:                                               ; preds = %32
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = call i32 @GetWBE(i32* %42)
  %44 = add nsw i32 %43, 6
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %50, i32* %6, align 4
  br label %298

51:                                               ; preds = %40
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %58, i32* %6, align 4
  br label %298

59:                                               ; preds = %51
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 64
  store i32 %63, i32* %16, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 248
  store i32 %67, i32* %15, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %74, i32* %6, align 4
  br label %298

75:                                               ; preds = %59
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = call i32 @ps_psm_destroy(%struct.TYPE_16__* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 8
  %80 = call i32 @GetWBE(i32* %79)
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, 10
  %84 = load i64, i64* %12, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %87, i32* %6, align 4
  br label %298

88:                                               ; preds = %75
  %89 = load i64, i64* %13, align 8
  %90 = add i64 12, %89
  store i64 %90, i64* %14, align 8
  br label %91

91:                                               ; preds = %196, %88
  %92 = load i64, i64* %14, align 8
  %93 = add i64 %92, 4
  %94 = load i64, i64* %12, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %201

96:                                               ; preds = %91
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 12, %104
  %106 = trunc i64 %105 to i32
  %107 = call %struct.TYPE_17__* @realloc(%struct.TYPE_17__* %99, i32 %106)
  store %struct.TYPE_17__* %107, %struct.TYPE_17__** %17, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %109 = icmp eq %struct.TYPE_17__* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %96
  br label %201

111:                                              ; preds = %96
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  store %struct.TYPE_17__* %112, %struct.TYPE_17__** %114, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i64 %122
  store %struct.TYPE_17__* %123, %struct.TYPE_17__** %18, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load i64, i64* %14, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %8, align 8
  %131 = load i64, i64* %14, align 8
  %132 = add i64 %131, 1
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = load i64, i64* %14, align 8
  %139 = add i64 %138, 2
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = call i32 @GetWBE(i32* %140)
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %13, align 8
  %143 = load i64, i64* %14, align 8
  %144 = add i64 %143, 4
  %145 = load i64, i64* %13, align 8
  %146 = add i64 %144, %145
  %147 = load i64, i64* %12, align 8
  %148 = icmp ugt i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %111
  br label %201

150:                                              ; preds = %111
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @PS_STREAM_ID_EXTENDED, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %187

156:                                              ; preds = %150
  %157 = load i32, i32* %16, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %187

159:                                              ; preds = %156
  %160 = load i64, i64* %13, align 8
  %161 = icmp ult i64 %160, 3
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %201

163:                                              ; preds = %159
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 8
  %168 = load i32*, i32** %8, align 8
  %169 = load i64, i64* %14, align 8
  %170 = add i64 %169, 6
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 127
  %174 = or i32 %167, %173
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = load i64, i64* %14, align 8
  %179 = add i64 %178, 4
  %180 = add i64 %179, 3
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i64, i64* %13, align 8
  %183 = sub i64 %182, 3
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  %186 = call i32 @ps_parse_descriptors(i32* %181, i64 %183, i32* %185)
  br label %196

187:                                              ; preds = %156, %150
  %188 = load i32*, i32** %8, align 8
  %189 = load i64, i64* %14, align 8
  %190 = add i64 %189, 4
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i64, i64* %13, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  %195 = call i32 @ps_parse_descriptors(i32* %191, i64 %192, i32* %194)
  br label %196

196:                                              ; preds = %187, %163
  %197 = load i64, i64* %13, align 8
  %198 = add i64 4, %197
  %199 = load i64, i64* %14, align 8
  %200 = add i64 %199, %198
  store i64 %200, i64* %14, align 8
  br label %91

201:                                              ; preds = %162, %149, %110, %91
  %202 = load i32, i32* %15, align 4
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  store i32 0, i32* %19, align 4
  br label %205

205:                                              ; preds = %292, %201
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* @PS_TK_COUNT, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %295

209:                                              ; preds = %205
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %211 = load i32, i32* %19, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %209
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %219 = load i32, i32* %19, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %217, %209
  br label %292

226:                                              ; preds = %217
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %228 = load i32, i32* @UNKNOWN_ES, align 4
  %229 = call i32 @es_format_Init(%struct.TYPE_14__* %227, i32 %228, i32 0)
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %232 = load i32, i32* %19, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i32*, i32** %8, align 8
  %238 = load i64, i64* %9, align 8
  %239 = call i64 @ps_track_fill(%struct.TYPE_15__* %20, %struct.TYPE_16__* %230, i32 %236, i32* %237, i64 %238, i32 0)
  %240 = load i64, i64* @VLC_SUCCESS, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %226
  br label %292

243:                                              ; preds = %226
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %248 = load i32, i32* %19, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %246, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %243
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %257 = call i32 @es_format_Clean(%struct.TYPE_14__* %256)
  br label %292

258:                                              ; preds = %243
  %259 = load i32*, i32** %11, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %261 = load i32, i32* %19, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = call i32 @es_out_Del(i32* %259, i64 %265)
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %268 = load i32, i32* %19, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  %272 = call i32 @es_format_Clean(%struct.TYPE_14__* %271)
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i32 1, i32* %273, align 8
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %275 = load i32, i32* %19, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i64 %276
  %278 = bitcast %struct.TYPE_15__* %277 to i8*
  %279 = bitcast %struct.TYPE_15__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %278, i8* align 8 %279, i64 32, i1 false)
  %280 = load i32*, i32** %11, align 8
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %282 = load i32, i32* %19, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 1
  %286 = call i64 @es_out_Add(i32* %280, %struct.TYPE_14__* %285)
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %288 = load i32, i32* %19, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 2
  store i64 %286, i64* %291, align 8
  br label %292

292:                                              ; preds = %258, %255, %242, %225
  %293 = load i32, i32* %19, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %19, align 4
  br label %205

295:                                              ; preds = %205
  %296 = load i64, i64* @VLC_SUCCESS, align 8
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %6, align 4
  br label %298

298:                                              ; preds = %295, %86, %73, %57, %49, %38
  %299 = load i32, i32* %6, align 4
  ret i32 %299
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i32 @ps_psm_destroy(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @realloc(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ps_parse_descriptors(i32*, i64, i32*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @ps_track_fill(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32*, i64, i32) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_14__*) #1

declare dso_local i32 @es_out_Del(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @es_out_Add(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
