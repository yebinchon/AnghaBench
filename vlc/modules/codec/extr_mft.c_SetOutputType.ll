; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_SetOutputType.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_SetOutputType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i64, %struct.TYPE_19__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@MF_E_NO_MORE_TYPES = common dso_local global i64 0, align 8
@MF_E_TRANSFORM_TYPE_NOT_SET = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@MF_MT_SUBTYPE = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i64 0, align 8
@MFVideoFormat_YV12 = common dso_local global i32 0, align 4
@MFVideoFormat_I420 = common dso_local global i32 0, align 4
@d3d_format_table = common dso_local global i32 0, align 4
@MF_MT_AUDIO_BITS_PER_SAMPLE = common dso_local global i32 0, align 4
@MFAudioFormat_Float = common dso_local global i32 0, align 4
@ORIENT_BOTTOM_LEFT = common dso_local global i32 0, align 4
@MF_MT_AUDIO_NUM_CHANNELS = common dso_local global i32 0, align 4
@MF_MT_AUDIO_SAMPLES_PER_SECOND = common dso_local global i32 0, align 4
@pi_channels_maps = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Error in SetOutputType()\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32**)* @SetOutputType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetOutputType(%struct.TYPE_16__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %8, align 8
  %25 = load i32**, i32*** %7, align 8
  store i32* null, i32** %25, align 8
  store i32* null, i32** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %109, %3
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %112

30:                                               ; preds = %26
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @IMFTransform_GetOutputAvailableType(i32 %33, i32 %34, i32 %35, i32** %10)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @MF_E_NO_MORE_TYPES, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %112

41:                                               ; preds = %30
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @MF_E_TRANSFORM_TYPE_NOT_SET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %46, i32* %4, align 4
  br label %277

47:                                               ; preds = %41
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @FAILED(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %267

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @IMFMediaType_GetGUID(i32* %55, i32* @MF_MT_SUBTYPE, %struct.TYPE_18__* %14)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @FAILED(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %267

61:                                               ; preds = %54
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @VIDEO_ES, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %61
  %69 = call i64 @IsEqualGUID(%struct.TYPE_18__* %14, i32* @MFVideoFormat_YV12)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = call i64 @IsEqualGUID(%struct.TYPE_18__* %14, i32* @MFVideoFormat_I420)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71, %68
  store i32 1, i32* %12, align 4
  br label %85

75:                                               ; preds = %71
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* @d3d_format_table, align 4
  %80 = call i64 @GUIDToFormat(i32 %79, %struct.TYPE_18__* %14)
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %82, %78, %75
  br label %85

85:                                               ; preds = %84, %74
  br label %101

86:                                               ; preds = %61
  %87 = load i32*, i32** %10, align 8
  %88 = call i64 @IMFMediaType_GetUINT32(i32* %87, i32* @MF_MT_AUDIO_BITS_PER_SAMPLE, i32* %15)
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call i64 @FAILED(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %109

93:                                               ; preds = %86
  %94 = load i32, i32* %15, align 4
  %95 = icmp eq i32 %94, 32
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = call i64 @IsEqualGUID(%struct.TYPE_18__* %14, i32* @MFAudioFormat_Float)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 1, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %96, %93
  br label %101

101:                                              ; preds = %100, %85
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @IMFMediaType_Release(i32* %107)
  store i32* null, i32** %10, align 8
  br label %109

109:                                              ; preds = %106, %92
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %26

112:                                              ; preds = %40, %26
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 0, i32* %11, align 4
  br label %116

116:                                              ; preds = %115, %112
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i64 @IMFTransform_GetOutputAvailableType(i32 %119, i32 %120, i32 %121, i32** %10)
  store i64 %122, i64* %9, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i64 @FAILED(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %116
  br label %267

127:                                              ; preds = %116
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32*, i32** %10, align 8
  %133 = call i64 @IMFTransform_SetOutputType(i32 %130, i32 %131, i32* %132, i32 0)
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %9, align 8
  %135 = call i64 @FAILED(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %267

138:                                              ; preds = %127
  %139 = load i32*, i32** %10, align 8
  %140 = call i64 @IMFMediaType_GetGUID(i32* %139, i32* @MF_MT_SUBTYPE, %struct.TYPE_18__* %16)
  store i64 %140, i64* %9, align 8
  %141 = load i64, i64* %9, align 8
  %142 = call i64 @FAILED(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %267

145:                                              ; preds = %138
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @VIDEO_ES, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %183

152:                                              ; preds = %145
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = call i32 @video_format_Copy(%struct.TYPE_19__* %155, i32* %158)
  %160 = load i32, i32* @d3d_format_table, align 4
  %161 = call i64 @GUIDToFormat(i32 %160, %struct.TYPE_18__* %16)
  store i64 %161, i64* %17, align 8
  %162 = load i64, i64* %17, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %152
  %165 = load i32, i32* @ORIENT_BOTTOM_LEFT, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 8
  br label %178

170:                                              ; preds = %152
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @vlc_fourcc_GetCodec(i64 %174, i32 %176)
  store i64 %177, i64* %17, align 8
  br label %178

178:                                              ; preds = %170, %164
  %179 = load i64, i64* %17, align 8
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 1
  store i64 %179, i64* %182, align 8
  br label %263

183:                                              ; preds = %145
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = bitcast %struct.TYPE_14__* %186 to i8*
  %191 = bitcast %struct.TYPE_14__* %189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %190, i8* align 8 %191, i64 16, i1 false)
  store i32 0, i32* %18, align 4
  %192 = load i32*, i32** %10, align 8
  %193 = call i64 @IMFMediaType_GetUINT32(i32* %192, i32* @MF_MT_AUDIO_BITS_PER_SAMPLE, i32* %18)
  store i64 %193, i64* %9, align 8
  %194 = load i64, i64* %9, align 8
  %195 = call i64 @SUCCEEDED(i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %183
  %198 = load i32, i32* %18, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load i32, i32* %18, align 4
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  store i32 %201, i32* %205, align 8
  br label %206

206:                                              ; preds = %200, %197, %183
  store i32 0, i32* %19, align 4
  %207 = load i32*, i32** %10, align 8
  %208 = call i64 @IMFMediaType_GetUINT32(i32* %207, i32* @MF_MT_AUDIO_NUM_CHANNELS, i32* %19)
  store i64 %208, i64* %9, align 8
  %209 = load i64, i64* %9, align 8
  %210 = call i64 @SUCCEEDED(i64 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %206
  %213 = load i32, i32* %19, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load i32, i32* %19, align 4
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  store i32 %216, i32* %220, align 4
  br label %221

221:                                              ; preds = %215, %212, %206
  store i32 0, i32* %20, align 4
  %222 = load i32*, i32** %10, align 8
  %223 = call i64 @IMFMediaType_GetUINT32(i32* %222, i32* @MF_MT_AUDIO_SAMPLES_PER_SECOND, i32* %20)
  store i64 %223, i64* %9, align 8
  %224 = load i64, i64* %9, align 8
  %225 = call i64 @SUCCEEDED(i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %221
  %228 = load i32, i32* %20, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load i32, i32* %20, align 4
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 2
  store i32 %231, i32* %235, align 8
  br label %236

236:                                              ; preds = %230, %227, %221
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @wf_tag_to_fourcc(i32 %238, i64* %21, i32* null)
  %240 = load i64, i64* %21, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i64 @vlc_fourcc_GetCodecAudio(i64 %240, i32 %245)
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  store i64 %246, i64* %249, align 8
  %250 = load i32*, i32** @pi_channels_maps, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %250, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 3
  store i32 %258, i32* %262, align 4
  br label %263

263:                                              ; preds = %236, %178
  %264 = load i32*, i32** %10, align 8
  %265 = load i32**, i32*** %7, align 8
  store i32* %264, i32** %265, align 8
  %266 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %266, i32* %4, align 4
  br label %277

267:                                              ; preds = %144, %137, %126, %60, %51
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %269 = call i32 @msg_Err(%struct.TYPE_16__* %268, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %270 = load i32*, i32** %10, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load i32*, i32** %10, align 8
  %274 = call i32 @IMFMediaType_Release(i32* %273)
  br label %275

275:                                              ; preds = %272, %267
  %276 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %275, %263, %45
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local i64 @IMFTransform_GetOutputAvailableType(i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IMFMediaType_GetGUID(i32*, i32*, %struct.TYPE_18__*) #1

declare dso_local i64 @IsEqualGUID(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @GUIDToFormat(i32, %struct.TYPE_18__*) #1

declare dso_local i64 @IMFMediaType_GetUINT32(i32*, i32*, i32*) #1

declare dso_local i32 @IMFMediaType_Release(i32*) #1

declare dso_local i64 @IMFTransform_SetOutputType(i32, i32, i32*, i32) #1

declare dso_local i32 @video_format_Copy(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @vlc_fourcc_GetCodec(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @wf_tag_to_fourcc(i32, i64*, i32*) #1

declare dso_local i64 @vlc_fourcc_GetCodecAudio(i64, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_16__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
