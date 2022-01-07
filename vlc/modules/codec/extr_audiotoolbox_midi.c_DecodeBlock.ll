; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_audiotoolbox_midi.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_audiotoolbox_midi.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i64, i32, i32*, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32* }

@noErr = common dso_local global i64 0, align 8
@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"MIDI message in the past?\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unhandled MIDI event: %x\00", align 1
@kAudioTimeStampWordClockTimeValid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"rendering audio unit failed: %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeBlock(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__, align 4
  %14 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  %18 = load i64, i64* @noErr, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = icmp eq %struct.TYPE_21__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %22, i32* %3, align 4
  br label %246

23:                                               ; preds = %2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %28 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = call i32 @Flush(%struct.TYPE_19__* %33)
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = call i32 @block_Release(%struct.TYPE_21__* %42)
  %44 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %44, i32* %3, align 4
  br label %246

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %23
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VLC_TICK_INVALID, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = call i32 @date_Get(i32* %54)
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @VLC_TICK_INVALID, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @date_Set(i32* %61, i64 %64)
  br label %79

66:                                               ; preds = %52, %46
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = call i32 @date_Get(i32* %71)
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %69, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = call i32 (%struct.TYPE_19__*, i8*, ...) @msg_Warn(%struct.TYPE_19__* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %235

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %59
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %235

85:                                               ; preds = %79
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %9, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %101

95:                                               ; preds = %85
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  br label %102

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101, %95
  %103 = phi i32 [ %100, %95 ], [ 0, %101 ]
  store i32 %103, i32* %10, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 2
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  br label %115

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114, %108
  %116 = phi i32 [ %113, %108 ], [ 0, %114 ]
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %9, align 4
  %118 = and i32 %117, 240
  switch i32 %118, label %145 [
    i32 133, label %119
    i32 132, label %119
    i32 130, label %119
    i32 134, label %119
    i32 129, label %119
    i32 135, label %119
    i32 131, label %119
    i32 128, label %127
  ]

119:                                              ; preds = %115, %115, %115, %115, %115, %115, %115
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @MusicDeviceMIDIEvent(i32 %122, i32 %123, i32 %124, i32 %125, i32 0)
  br label %150

127:                                              ; preds = %115
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @UINT32_MAX, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @MusicDeviceSysEx(i32 %136, i32* %139, i32 %142)
  br label %144

144:                                              ; preds = %133, %127
  br label %150

145:                                              ; preds = %115
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %147 = load i32, i32* %9, align 4
  %148 = and i32 %147, 240
  %149 = call i32 (%struct.TYPE_19__*, i8*, ...) @msg_Warn(%struct.TYPE_19__* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %145, %144, %119
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  %156 = call i32 @date_Get(i32* %155)
  %157 = sext i32 %156 to i64
  %158 = sub nsw i64 %153, %157
  %159 = mul nsw i64 %158, 441
  %160 = sdiv i64 %159, 10000
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %150
  br label %235

165:                                              ; preds = %150
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %167 = load i32, i32* %12, align 4
  %168 = call %struct.TYPE_21__* @decoder_NewAudioBuffer(%struct.TYPE_19__* %166, i32 %167)
  store %struct.TYPE_21__* %168, %struct.TYPE_21__** %7, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %170 = icmp eq %struct.TYPE_21__* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %235

172:                                              ; preds = %165
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = call i32 @date_Get(i32* %174)
  %176 = sext i32 %175 to i64
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 1
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 1
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @date_Increment(i32* %180, i32 %181)
  %183 = sext i32 %182 to i64
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %183, %186
  %188 = trunc i64 %187 to i32
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 8
  %191 = bitcast %struct.TYPE_22__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %191, i8 0, i64 8, i1 false)
  %192 = load i32, i32* @kAudioTimeStampWordClockTimeValid, align 4
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  store i32 %192, i32* %193, align 4
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i32 %197, i32* %198, align 4
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  store i32 1, i32* %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  store i32 2, i32* %203, align 8
  %204 = load i32, i32* %12, align 4
  %205 = zext i32 %204 to i64
  %206 = mul i64 %205, 4
  %207 = mul i64 %206, 2
  %208 = trunc i64 %207 to i32
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  store i32 %208, i32* %212, align 4
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i64 0
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 2
  store i32* %215, i32** %219, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %12, align 4
  %224 = call i64 @AudioUnitRender(i32 %222, i32* null, %struct.TYPE_22__* %13, i32 0, i32 %223, %struct.TYPE_23__* %14)
  store i64 %224, i64* %8, align 8
  %225 = load i64, i64* %8, align 8
  %226 = load i64, i64* @noErr, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %172
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %230 = load i64, i64* %8, align 8
  %231 = call i32 (%struct.TYPE_19__*, i8*, ...) @msg_Warn(%struct.TYPE_19__* %229, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %230)
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %233 = call i32 @block_Release(%struct.TYPE_21__* %232)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %234

234:                                              ; preds = %228, %172
  br label %235

235:                                              ; preds = %234, %171, %164, %84, %75
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %237 = call i32 @block_Release(%struct.TYPE_21__* %236)
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %239 = icmp ne %struct.TYPE_21__* %238, null
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %243 = call i32 @decoder_QueueAudio(%struct.TYPE_19__* %241, %struct.TYPE_21__* %242)
  br label %244

244:                                              ; preds = %240, %235
  %245 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %244, %41, %21
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i32 @Flush(%struct.TYPE_19__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_21__*) #1

declare dso_local i32 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local i32 @MusicDeviceMIDIEvent(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MusicDeviceSysEx(i32, i32*, i32) #1

declare dso_local %struct.TYPE_21__* @decoder_NewAudioBuffer(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @date_Increment(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @AudioUnitRender(i32, i32*, %struct.TYPE_22__*, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @decoder_QueueAudio(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
