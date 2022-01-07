; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_audio.c_transcode_audio_process.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_audio.c_transcode_audio_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i64 (i32, i64)*, i64, i32, i32*, i32, %struct.TYPE_30__, i32, %struct.TYPE_33__*, i64, %struct.TYPE_29__*, i64 (i32*, i32*, i32)*, %struct.TYPE_28__, i32, %struct.TYPE_27__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_29__*, %struct.TYPE_32__*)*, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_32__ = type { i64, i64, i32, %struct.TYPE_32__* }
%struct.TYPE_34__ = type { i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Audio changed, trying to reinitialize filters\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot output transcoded stream %4.4s\00", align 1
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transcode_audio_process(i32* %0, %struct.TYPE_31__* %1, %struct.TYPE_32__* %2, %struct.TYPE_32__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_32__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %7, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %8, align 8
  store %struct.TYPE_32__** %3, %struct.TYPE_32__*** %9, align 8
  %16 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %9, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %16, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 10
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_29__*, %struct.TYPE_32__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_32__*)** %20, align 8
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 10
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %26 = call i32 %21(%struct.TYPE_29__* %24, %struct.TYPE_32__* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @VLCDEC_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %5, align 4
  br label %368

32:                                               ; preds = %4
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %34 = call %struct.TYPE_32__* @transcode_dequeue_all_audios(%struct.TYPE_31__* %33)
  store %struct.TYPE_32__* %34, %struct.TYPE_32__** %11, align 8
  br label %35

35:                                               ; preds = %327, %32
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  store %struct.TYPE_32__* %36, %struct.TYPE_32__** %12, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %38 = icmp eq %struct.TYPE_32__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %330

40:                                               ; preds = %35
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %42, align 8
  store %struct.TYPE_32__* %43, %struct.TYPE_32__** %11, align 8
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 3
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %45, align 8
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %52 = call i32 @block_Release(%struct.TYPE_32__* %51)
  br label %327

53:                                               ; preds = %40
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 0
  %57 = call i32 @vlc_mutex_lock(i32* %56)
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %59 = icmp ne %struct.TYPE_32__* %58, null
  br i1 %59, label %60, label %225

60:                                               ; preds = %53
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @transcode_encoder_opened(i32 %63)
  %65 = icmp ne i64 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %60
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 14
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 12
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 0
  %76 = call i32 @transcode_audio_format_IsSimilar(%struct.TYPE_27__* %72, %struct.TYPE_27__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %225, label %78

78:                                               ; preds = %70, %60
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @transcode_encoder_opened(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %78
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 8
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %86, align 8
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %88, i32 0, i32 12
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @transcode_encoder_audio_configure(%struct.TYPE_33__* %87, %struct.TYPE_27__* %90, i32 %93, i32 1)
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 14
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 12
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 0
  %100 = bitcast %struct.TYPE_27__* %96 to i8*
  %101 = bitcast %struct.TYPE_27__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 4, i1 false)
  br label %125

102:                                              ; preds = %78
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @msg_Info(i32* %103, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @aout_FiltersDelete(i32* %110, i32* %113)
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 4
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %109, %102
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 14
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 12
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = bitcast %struct.TYPE_27__* %119 to i8*
  %124 = bitcast %struct.TYPE_27__* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %123, i8* align 8 %124, i64 4, i1 false)
  br label %125

125:                                              ; preds = %117, %84
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %152, label %130

130:                                              ; preds = %125
  %131 = load i32*, i32** %6, align 8
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 13
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 12
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call %struct.TYPE_34__* @transcode_encoder_format_in(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 4
  %145 = call i64 @transcode_audio_filters_init(i32* %131, i32 %134, %struct.TYPE_27__* %137, i32* %142, i32** %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %130
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 0
  %151 = call i32 @vlc_mutex_unlock(i32* %150)
  br label %318

152:                                              ; preds = %130, %125
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 12
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @date_Init(i32* %154, i32 %159, i32 1)
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %161, i32 0, i32 5
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @date_Set(i32* %162, i64 %165)
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @transcode_encoder_opened(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %152
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 8
  %178 = load %struct.TYPE_33__*, %struct.TYPE_33__** %177, align 8
  %179 = call i64 @transcode_encoder_open(i32 %175, %struct.TYPE_33__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %172
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 0
  %185 = call i32 @vlc_mutex_unlock(i32* %184)
  br label %318

186:                                              ; preds = %172, %152
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 9
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %207, label %191

191:                                              ; preds = %186
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 11
  %194 = load i64 (i32*, i32*, i32)*, i64 (i32*, i32*, i32)** %193, align 8
  %195 = load i32*, i32** %6, align 8
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i32 0, i32 10
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @transcode_encoder_format_out(i32 %202)
  %204 = call i64 %194(i32* %195, i32* %199, i32 %203)
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 9
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %191, %186
  %208 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %208, i32 0, i32 9
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %224, label %212

212:                                              ; preds = %207
  %213 = load i32*, i32** %6, align 8
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i32 0, i32 8
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 0
  %218 = bitcast i32* %217 to i8*
  %219 = call i32 @msg_Err(i32* %213, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %218)
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %221, i32 0, i32 0
  %223 = call i32 @vlc_mutex_unlock(i32* %222)
  br label %318

224:                                              ; preds = %207
  br label %225

225:                                              ; preds = %224, %70, %53
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 6
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 0
  %229 = call i32 @vlc_mutex_unlock(i32* %228)
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 1
  %232 = load i64 (i32, i64)*, i64 (i32, i64)** %231, align 8
  %233 = icmp ne i64 (i32, i64)* %232, null
  br i1 %233, label %234, label %288

234:                                              ; preds = %225
  %235 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %235, i32 0, i32 5
  %237 = call i64 @date_Get(i32* %236)
  store i64 %237, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @VLC_TICK_INVALID, align 8
  %242 = icmp ne i64 %240, %241
  %243 = zext i1 %242 to i32
  %244 = call i64 @likely(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %234
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* %13, align 8
  %251 = sub nsw i64 %249, %250
  store i64 %251, i64* %14, align 8
  br label %252

252:                                              ; preds = %246, %234
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 1
  %255 = load i64 (i32, i64)*, i64 (i32, i64)** %254, align 8
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %256, i32 0, i32 7
  %258 = load i32, i32* %257, align 8
  %259 = load i64, i64* %14, align 8
  %260 = call i64 %255(i32 %258, i64 %259)
  %261 = load i64, i64* @VLC_SUCCESS, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %270

263:                                              ; preds = %252
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %264, i32 0, i32 5
  %266 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @date_Set(i32* %265, i64 %268)
  store i64 0, i64* %14, align 8
  br label %270

270:                                              ; preds = %263, %252
  %271 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %271, i32 0, i32 6
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 0
  %274 = call i32 @vlc_mutex_lock(i32* %273)
  %275 = load i64, i64* %14, align 8
  %276 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %276, i32 0, i32 2
  store i64 %275, i64* %277, align 8
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %278, i32 0, i32 6
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 0
  %281 = call i32 @vlc_mutex_unlock(i32* %280)
  %282 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %282, i32 0, i32 5
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @date_Increment(i32* %283, i32 %286)
  br label %288

288:                                              ; preds = %270, %225
  %289 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %292, i32 0, i32 1
  store i64 %291, i64* %293, align 8
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %294, i32 0, i32 4
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %298 = call %struct.TYPE_32__* @aout_FiltersPlay(i32* %296, %struct.TYPE_32__* %297, float 1.000000e+00)
  store %struct.TYPE_32__* %298, %struct.TYPE_32__** %12, align 8
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %300 = icmp ne %struct.TYPE_32__* %299, null
  br i1 %300, label %301, label %317

301:                                              ; preds = %288
  %302 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %305, i32 0, i32 1
  store i64 %304, i64* %306, align 8
  %307 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %311 = call %struct.TYPE_32__* @transcode_encoder_encode(i32 %309, %struct.TYPE_32__* %310)
  store %struct.TYPE_32__* %311, %struct.TYPE_32__** %15, align 8
  %312 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %9, align 8
  %313 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %314 = call i32 @block_ChainAppend(%struct.TYPE_32__** %312, %struct.TYPE_32__* %313)
  %315 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %316 = call i32 @block_Release(%struct.TYPE_32__* %315)
  br label %317

317:                                              ; preds = %301, %288
  br label %327

318:                                              ; preds = %212, %181, %147
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %320 = icmp ne %struct.TYPE_32__* %319, null
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %323 = call i32 @block_Release(%struct.TYPE_32__* %322)
  br label %324

324:                                              ; preds = %321, %318
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %325, i32 0, i32 0
  store i32 1, i32* %326, align 8
  br label %327

327:                                              ; preds = %324, %317, %50
  %328 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %329 = icmp ne %struct.TYPE_32__* %328, null
  br i1 %329, label %35, label %330

330:                                              ; preds = %327, %39
  %331 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %330
  %336 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %337 = icmp eq %struct.TYPE_32__* %336, null
  br label %338

338:                                              ; preds = %335, %330
  %339 = phi i1 [ false, %330 ], [ %337, %335 ]
  %340 = zext i1 %339 to i32
  %341 = call i64 @unlikely(i32 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %355

343:                                              ; preds = %338
  %344 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 8
  %347 = call i64 @transcode_encoder_opened(i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %355

349:                                              ; preds = %343
  %350 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %351 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %9, align 8
  %354 = call i32 @transcode_encoder_drain(i32 %352, %struct.TYPE_32__** %353)
  br label %355

355:                                              ; preds = %349, %343, %338
  %356 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = load i32, i32* @VLC_EGENERIC, align 4
  %362 = sext i32 %361 to i64
  br label %365

363:                                              ; preds = %355
  %364 = load i64, i64* @VLC_SUCCESS, align 8
  br label %365

365:                                              ; preds = %363, %360
  %366 = phi i64 [ %362, %360 ], [ %364, %363 ]
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %5, align 4
  br label %368

368:                                              ; preds = %365, %30
  %369 = load i32, i32* %5, align 4
  ret i32 %369
}

declare dso_local %struct.TYPE_32__* @transcode_dequeue_all_audios(%struct.TYPE_31__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_32__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @transcode_encoder_opened(i32) #1

declare dso_local i32 @transcode_audio_format_IsSimilar(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @transcode_encoder_audio_configure(%struct.TYPE_33__*, %struct.TYPE_27__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @msg_Info(i32*, i8*) #1

declare dso_local i32 @aout_FiltersDelete(i32*, i32*) #1

declare dso_local i64 @transcode_audio_filters_init(i32*, i32, %struct.TYPE_27__*, i32*, i32**) #1

declare dso_local %struct.TYPE_34__* @transcode_encoder_format_in(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @date_Init(i32*, i32, i32) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i64 @transcode_encoder_open(i32, %struct.TYPE_33__*) #1

declare dso_local i32 @transcode_encoder_format_out(i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @date_Increment(i32*, i32) #1

declare dso_local %struct.TYPE_32__* @aout_FiltersPlay(i32*, %struct.TYPE_32__*, float) #1

declare dso_local %struct.TYPE_32__* @transcode_encoder_encode(i32, %struct.TYPE_32__*) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_32__**, %struct.TYPE_32__*) #1

declare dso_local i32 @transcode_encoder_drain(i32, %struct.TYPE_32__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
