; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_SetInputType.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_SetInputType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64, i32, i64, i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@MF_E_NO_MORE_TYPES = common dso_local global i64 0, align 8
@MF_E_TRANSFORM_TYPE_NOT_SET = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@MF_MT_SUBTYPE = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i64 0, align 8
@MF_MT_FRAME_SIZE = common dso_local global i32 0, align 4
@MF_MT_FRAME_RATE = common dso_local global i32 0, align 4
@MF_MT_ORIGINAL_WAVE_FORMAT_TAG = common dso_local global i32 0, align 4
@MF_MT_AUDIO_SAMPLES_PER_SECOND = common dso_local global i32 0, align 4
@MF_MT_AUDIO_NUM_CHANNELS = common dso_local global i32 0, align 4
@MF_MT_AUDIO_BITS_PER_SAMPLE = common dso_local global i32 0, align 4
@MF_MT_AUDIO_BLOCK_ALIGNMENT = common dso_local global i32 0, align 4
@MF_MT_AUDIO_AVG_BYTES_PER_SECOND = common dso_local global i32 0, align 4
@MF_MT_USER_DATA = common dso_local global i32 0, align 4
@MF_E_ATTRIBUTENOTFOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Error in SetInputType()\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32**)* @SetInputType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetInputType(%struct.TYPE_12__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
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
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %8, align 8
  %25 = load i32**, i32*** %7, align 8
  store i32* null, i32** %25, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %76, %3
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @IMFTransform_GetInputAvailableType(i32 %33, i32 %34, i32 %35, i32** %10)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @MF_E_NO_MORE_TYPES, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %79

41:                                               ; preds = %30
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @MF_E_TRANSFORM_TYPE_NOT_SET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %46, i32* %4, align 4
  br label %320

47:                                               ; preds = %41
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @FAILED(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %310

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @IMFMediaType_GetGUID(i32* %55, i32* @MF_MT_SUBTYPE, i32* %14)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @FAILED(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %310

61:                                               ; preds = %54
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = call i64 @IsEqualGUID(i32* %14, %struct.TYPE_14__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 1, i32* %12, align 4
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @IMFMediaType_Release(i32* %74)
  store i32* null, i32** %10, align 8
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %26

79:                                               ; preds = %40, %26
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br label %310

83:                                               ; preds = %79
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @IMFTransform_GetInputAvailableType(i32 %86, i32 %87, i32 %88, i32** %10)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @FAILED(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %310

94:                                               ; preds = %83
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @VIDEO_ES, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %153

101:                                              ; preds = %94
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %15, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %15, align 4
  %113 = shl i32 %112, 32
  %114 = load i32, i32* %16, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %17, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %17, align 4
  %118 = call i64 @IMFMediaType_SetUINT64(i32* %116, i32* @MF_MT_FRAME_SIZE, i32 %117)
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call i64 @FAILED(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %101
  br label %310

123:                                              ; preds = %101
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %18, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %123
  %137 = load i32, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load i32, i32* %18, align 4
  %141 = shl i32 %140, 32
  %142 = load i32, i32* %19, align 4
  %143 = or i32 %141, %142
  store i32 %143, i32* %20, align 4
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %20, align 4
  %146 = call i64 @IMFMediaType_SetUINT64(i32* %144, i32* @MF_MT_FRAME_RATE, i32 %145)
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %9, align 8
  %148 = call i64 @FAILED(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %310

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %151, %136, %123
  br label %265

153:                                              ; preds = %94
  %154 = load i32*, i32** %10, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @IMFMediaType_SetUINT32(i32* %154, i32* @MF_MT_ORIGINAL_WAVE_FORMAT_TAG, i32 %159)
  store i64 %160, i64* %9, align 8
  %161 = load i64, i64* %9, align 8
  %162 = call i64 @FAILED(i64 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %153
  br label %310

165:                                              ; preds = %153
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %165
  %173 = load i32*, i32** %10, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @IMFMediaType_SetUINT32(i32* %173, i32* @MF_MT_AUDIO_SAMPLES_PER_SECOND, i32 %178)
  store i64 %179, i64* %9, align 8
  %180 = load i64, i64* %9, align 8
  %181 = call i64 @FAILED(i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  br label %310

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184, %165
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %185
  %193 = load i32*, i32** %10, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @IMFMediaType_SetUINT32(i32* %193, i32* @MF_MT_AUDIO_NUM_CHANNELS, i32 %198)
  store i64 %199, i64* %9, align 8
  %200 = load i64, i64* %9, align 8
  %201 = call i64 @FAILED(i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %192
  br label %310

204:                                              ; preds = %192
  br label %205

205:                                              ; preds = %204, %185
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %225

212:                                              ; preds = %205
  %213 = load i32*, i32** %10, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i64 @IMFMediaType_SetUINT32(i32* %213, i32* @MF_MT_AUDIO_BITS_PER_SAMPLE, i32 %218)
  store i64 %219, i64* %9, align 8
  %220 = load i64, i64* %9, align 8
  %221 = call i64 @FAILED(i64 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %212
  br label %310

224:                                              ; preds = %212
  br label %225

225:                                              ; preds = %224, %205
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %245

232:                                              ; preds = %225
  %233 = load i32*, i32** %10, align 8
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = call i64 @IMFMediaType_SetUINT32(i32* %233, i32* @MF_MT_AUDIO_BLOCK_ALIGNMENT, i32 %238)
  store i64 %239, i64* %9, align 8
  %240 = load i64, i64* %9, align 8
  %241 = call i64 @FAILED(i64 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %232
  br label %310

244:                                              ; preds = %232
  br label %245

245:                                              ; preds = %244, %225
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %245
  %252 = load i32*, i32** %10, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = sdiv i32 %256, 8
  %258 = call i64 @IMFMediaType_SetUINT32(i32* %252, i32* @MF_MT_AUDIO_AVG_BYTES_PER_SECOND, i32 %257)
  store i64 %258, i64* %9, align 8
  %259 = load i64, i64* %9, align 8
  %260 = call i64 @FAILED(i64 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %251
  br label %310

263:                                              ; preds = %251
  br label %264

264:                                              ; preds = %263, %245
  br label %265

265:                                              ; preds = %264, %152
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = icmp sgt i64 %269, 0
  br i1 %270, label %271, label %295

271:                                              ; preds = %265
  store i32 0, i32* %21, align 4
  %272 = load i32*, i32** %10, align 8
  %273 = call i64 @IMFMediaType_GetBlobSize(i32* %272, i32* @MF_MT_USER_DATA, i32* %21)
  store i64 %273, i64* %9, align 8
  %274 = load i64, i64* %9, align 8
  %275 = load i64, i64* @MF_E_ATTRIBUTENOTFOUND, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %294

277:                                              ; preds = %271
  %278 = load i32*, i32** %10, align 8
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = inttoptr i64 %282 to i32*
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = call i64 @IMFMediaType_SetBlob(i32* %278, i32* @MF_MT_USER_DATA, i32* %283, i64 %287)
  store i64 %288, i64* %9, align 8
  %289 = load i64, i64* %9, align 8
  %290 = call i64 @FAILED(i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %277
  br label %310

293:                                              ; preds = %277
  br label %294

294:                                              ; preds = %293, %271
  br label %295

295:                                              ; preds = %294, %265
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* %6, align 4
  %300 = load i32*, i32** %10, align 8
  %301 = call i64 @IMFTransform_SetInputType(i32 %298, i32 %299, i32* %300, i32 0)
  store i64 %301, i64* %9, align 8
  %302 = load i64, i64* %9, align 8
  %303 = call i64 @FAILED(i64 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %295
  br label %310

306:                                              ; preds = %295
  %307 = load i32*, i32** %10, align 8
  %308 = load i32**, i32*** %7, align 8
  store i32* %307, i32** %308, align 8
  %309 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %309, i32* %4, align 4
  br label %320

310:                                              ; preds = %305, %292, %262, %243, %223, %203, %183, %164, %150, %122, %93, %82, %60, %51
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %312 = call i32 @msg_Err(%struct.TYPE_12__* %311, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %313 = load i32*, i32** %10, align 8
  %314 = icmp ne i32* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load i32*, i32** %10, align 8
  %317 = call i32 @IMFMediaType_Release(i32* %316)
  br label %318

318:                                              ; preds = %315, %310
  %319 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %319, i32* %4, align 4
  br label %320

320:                                              ; preds = %318, %306, %45
  %321 = load i32, i32* %4, align 4
  ret i32 %321
}

declare dso_local i64 @IMFTransform_GetInputAvailableType(i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IMFMediaType_GetGUID(i32*, i32*, i32*) #1

declare dso_local i64 @IsEqualGUID(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @IMFMediaType_Release(i32*) #1

declare dso_local i64 @IMFMediaType_SetUINT64(i32*, i32*, i32) #1

declare dso_local i64 @IMFMediaType_SetUINT32(i32*, i32*, i32) #1

declare dso_local i64 @IMFMediaType_GetBlobSize(i32*, i32*, i32*) #1

declare dso_local i64 @IMFMediaType_SetBlob(i32*, i32*, i32*, i64) #1

declare dso_local i64 @IMFTransform_SetInputType(i32, i32, i32*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
