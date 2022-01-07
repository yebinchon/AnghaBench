; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_MuxFrag.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_mp4.c_MuxFrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__**, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64, i32, i64, %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i64, i32, i64, %struct.TYPE_19__, i32, %struct.TYPE_26__*, i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_26__ = type { i32*, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i32, i32, i64 }
%struct.TYPE_25__ = type { i64 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@FRAGMENT_LENGTH = common dso_local global i64 0, align 8
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i64 0, align 8
@AUDIO_ES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @MuxFrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MuxFrag(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %4, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = call i32 @sout_MuxGetStream(%struct.TYPE_20__* %18, i32 1, i32* null)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %23, i32* %2, align 4
  br label %338

24:                                               ; preds = %1
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %27, i64 %29
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %6, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %7, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = call %struct.TYPE_24__* @BlockDequeue(%struct.TYPE_22__* %36, %struct.TYPE_23__* %37)
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %8, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %40 = icmp ne %struct.TYPE_24__* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %24
  %42 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %42, i32* %2, align 4
  br label %338

43:                                               ; preds = %24
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VLC_TICK_INVALID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VLC_TICK_INVALID, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %49
  br label %67

67:                                               ; preds = %66, %43
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %69, align 8
  %71 = icmp ne %struct.TYPE_26__* %70, null
  br i1 %71, label %72, label %165

72:                                               ; preds = %67
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %76, align 8
  store %struct.TYPE_24__* %77, %struct.TYPE_24__** %9, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %82, label %111

82:                                               ; preds = %72
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %89, %82
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %109 = call i32 @LengthLocalFixup(%struct.TYPE_20__* %106, %struct.TYPE_23__* %107, %struct.TYPE_24__* %108)
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %72
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @ENQUEUE_ENTRY(i64 %118, %struct.TYPE_26__* %116)
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 5
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %121, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %111
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %126
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @mp4mux_track_GetDuration(i32 %136)
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = load i64, i64* @FRAGMENT_LENGTH, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %133
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @mp4mux_track_GetDuration(i32 %147)
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 7
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %144, %133, %126, %111
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @mp4mux_track_GetDuration(i32 %157)
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @__MAX(i32 0, i32 %161)
  %163 = add nsw i64 %158, %162
  %164 = call i32 @mp4mux_track_ForceDuration(i32 %154, i64 %163)
  br label %165

165:                                              ; preds = %151, %67
  %166 = call %struct.TYPE_26__* @malloc(i32 4)
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 5
  store %struct.TYPE_26__* %166, %struct.TYPE_26__** %168, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 5
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %170, align 8
  %172 = icmp ne %struct.TYPE_26__* %171, null
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %165
  %178 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %178, i32* %2, align 4
  br label %338

179:                                              ; preds = %165
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 2
  store %struct.TYPE_24__* %180, %struct.TYPE_24__** %184, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 1
  store i32 %187, i32* %191, align 8
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 5
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 0
  store i32* null, i32** %195, align 8
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = call %struct.TYPE_25__* @mp4mux_track_GetFmt(i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @VIDEO_ES, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %245

204:                                              ; preds = %179
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %219, label %209

209:                                              ; preds = %204
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %209
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 1
  store i32 1, i32* %218, align 8
  br label %219

219:                                              ; preds = %216, %209, %204
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @mp4mux_track_HasBFrames(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %244, label %225

225:                                              ; preds = %219
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @VLC_TICK_INVALID, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %244

231:                                              ; preds = %225
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp sgt i64 %234, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %231
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @mp4mux_track_SetHasBFrames(i32 %242)
  br label %244

244:                                              ; preds = %239, %231, %225, %219
  br label %245

245:                                              ; preds = %244, %179
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i64 @mp4mux_track_GetDuration(i32 %248)
  store i64 %249, i64* %10, align 8
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %253

253:                                              ; preds = %308, %245
  %254 = load i32, i32* %12, align 4
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = icmp ult i32 %254, %257
  br i1 %258, label %259, label %311

259:                                              ; preds = %253
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 4
  %262 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %261, align 8
  %263 = load i32, i32* %12, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %262, i64 %264
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %265, align 8
  store %struct.TYPE_23__* %266, %struct.TYPE_23__** %13, align 8
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = call %struct.TYPE_25__* @mp4mux_track_GetFmt(i32 %269)
  %271 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @VIDEO_ES, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %259
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = call %struct.TYPE_25__* @mp4mux_track_GetFmt(i32 %278)
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @AUDIO_ES, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %275
  br label %308

285:                                              ; preds = %275, %259
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = call i64 @mp4mux_track_GetDuration(i32 %288)
  %290 = load i64, i64* %10, align 8
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %292, label %297

292:                                              ; preds = %285
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = call i64 @mp4mux_track_GetDuration(i32 %295)
  store i64 %296, i64* %10, align 8
  br label %297

297:                                              ; preds = %292, %285
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* %11, align 8
  %302 = icmp slt i64 %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %297
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %11, align 8
  br label %307

307:                                              ; preds = %303, %297
  br label %308

308:                                              ; preds = %307, %284
  %309 = load i32, i32* %12, align 4
  %310 = add i32 %309, 1
  store i32 %310, i32* %12, align 4
  br label %253

311:                                              ; preds = %253
  %312 = load i64, i64* %10, align 8
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 3
  store i64 %312, i64* %314, align 8
  %315 = load i64, i64* %11, align 8
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %316, i32 0, i32 1
  store i64 %315, i64* %317, align 8
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %336

323:                                              ; preds = %311
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = sub nsw i64 %326, %329
  %331 = load i64, i64* @FRAGMENT_LENGTH, align 8
  %332 = icmp sge i64 %330, %331
  br i1 %332, label %333, label %336

333:                                              ; preds = %323
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %335 = call i32 @WriteFragments(%struct.TYPE_20__* %334, i32 0)
  br label %336

336:                                              ; preds = %333, %323, %311
  %337 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %337, i32* %2, align 4
  br label %338

338:                                              ; preds = %336, %177, %41, %22
  %339 = load i32, i32* %2, align 4
  ret i32 %339
}

declare dso_local i32 @sout_MuxGetStream(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local %struct.TYPE_24__* @BlockDequeue(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @LengthLocalFixup(%struct.TYPE_20__*, %struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ENQUEUE_ENTRY(i64, %struct.TYPE_26__*) #1

declare dso_local i64 @mp4mux_track_GetDuration(i32) #1

declare dso_local i32 @mp4mux_track_ForceDuration(i32, i64) #1

declare dso_local i64 @__MAX(i32, i32) #1

declare dso_local %struct.TYPE_26__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_25__* @mp4mux_track_GetFmt(i32) #1

declare dso_local i32 @mp4mux_track_HasBFrames(i32) #1

declare dso_local i32 @mp4mux_track_SetHasBFrames(i32) #1

declare dso_local i32 @WriteFragments(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
