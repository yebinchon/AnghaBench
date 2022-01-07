; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_fluidsynth.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_fluidsynth.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i32*, i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"MIDI message in the past?\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"fragmented SysEx not implemented\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_16__*)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeBlock(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = icmp eq %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %19, i32* %3, align 4
  br label %282

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %25 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %20
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = call i32 @Flush(%struct.TYPE_14__* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = call i32 @block_Release(%struct.TYPE_16__* %39)
  %41 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %41, i32* %3, align 4
  br label %282

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VLC_TICK_INVALID, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = call i32 @date_Get(i32* %51)
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @VLC_TICK_INVALID, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @date_Set(i32* %58, i64 %61)
  br label %76

63:                                               ; preds = %49, %43
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = call i32 @date_Get(i32* %68)
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %66, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = call i32 @msg_Warn(%struct.TYPE_14__* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %271

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %56
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %271

82:                                               ; preds = %76
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %8, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 15
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 240
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 240
  br i1 %97, label %98, label %136

98:                                               ; preds = %82
  %99 = load i32, i32* %9, align 4
  switch i32 %99, label %135 [
    i32 0, label %100
    i32 7, label %113
    i32 15, label %130
  ]

100:                                              ; preds = %98
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 247
  br i1 %111, label %112, label %116

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %98, %112
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = call i32 @msg_Warn(%struct.TYPE_14__* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %271

116:                                              ; preds = %100
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = bitcast i32* %122 to i8*
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 2
  %129 = call i32 @fluid_synth_sysex(i32 %119, i8* %124, i32 %128, i32* null, i32* null, i32* null, i32 0)
  br label %135

130:                                              ; preds = %98
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @fluid_synth_system_reset(i32 %133)
  br label %135

135:                                              ; preds = %98, %130, %116
  br label %136

136:                                              ; preds = %135, %82
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 127
  br label %149

148:                                              ; preds = %136
  br label %149

149:                                              ; preds = %148, %141
  %150 = phi i32 [ %147, %141 ], [ 0, %148 ]
  store i32 %150, i32* %10, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp sgt i32 %153, 2
  br i1 %154, label %155, label %162

155:                                              ; preds = %149
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 127
  br label %163

162:                                              ; preds = %149
  br label %163

163:                                              ; preds = %162, %155
  %164 = phi i32 [ %161, %155 ], [ 0, %162 ]
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %8, align 4
  %166 = and i32 %165, 240
  switch i32 %166, label %214 [
    i32 128, label %167
    i32 144, label %174
    i32 176, label %182
    i32 192, label %190
    i32 208, label %197
    i32 224, label %204
  ]

167:                                              ; preds = %163
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @fluid_synth_noteoff(i32 %170, i32 %171, i32 %172)
  br label %214

174:                                              ; preds = %163
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @fluid_synth_noteon(i32 %177, i32 %178, i32 %179, i32 %180)
  br label %214

182:                                              ; preds = %163
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @fluid_synth_cc(i32 %185, i32 %186, i32 %187, i32 %188)
  br label %214

190:                                              ; preds = %163
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @fluid_synth_program_change(i32 %193, i32 %194, i32 %195)
  br label %214

197:                                              ; preds = %163
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @fluid_synth_channel_pressure(i32 %200, i32 %201, i32 %202)
  br label %214

204:                                              ; preds = %163
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %11, align 4
  %210 = shl i32 %209, 7
  %211 = load i32, i32* %10, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @fluid_synth_pitch_bend(i32 %207, i32 %208, i32 %212)
  br label %214

214:                                              ; preds = %163, %204, %197, %190, %182, %174, %167
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = call i32 @date_Get(i32* %219)
  %221 = sext i32 %220 to i64
  %222 = sub nsw i64 %217, %221
  %223 = mul nsw i64 %222, 441
  %224 = sdiv i64 %223, 10000
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %214
  br label %271

229:                                              ; preds = %214
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %231 = call i64 @decoder_UpdateAudioFormat(%struct.TYPE_14__* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  br label %271

234:                                              ; preds = %229
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %236 = load i32, i32* %12, align 4
  %237 = call %struct.TYPE_16__* @decoder_NewAudioBuffer(%struct.TYPE_14__* %235, i32 %236)
  store %struct.TYPE_16__* %237, %struct.TYPE_16__** %7, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %239 = icmp eq %struct.TYPE_16__* %238, null
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %271

241:                                              ; preds = %234
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 1
  %244 = call i32 @date_Get(i32* %243)
  %245 = sext i32 %244 to i64
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 1
  store i64 %245, i64* %247, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load i32, i32* %12, align 4
  %251 = call i32 @date_Increment(i32* %249, i32 %250)
  %252 = sext i32 %251 to i64
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = sub nsw i64 %252, %255
  %257 = trunc i64 %256 to i32
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 4
  store i32 %257, i32* %259, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %12, align 4
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 3
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 @fluid_synth_write_float(i32 %262, i32 %263, i32* %266, i32 0, i32 2, i32* %269, i32 1, i32 2)
  br label %271

271:                                              ; preds = %241, %240, %233, %228, %113, %81, %72
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %273 = call i32 @block_Release(%struct.TYPE_16__* %272)
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %275 = icmp ne %struct.TYPE_16__* %274, null
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %279 = call i32 @decoder_QueueAudio(%struct.TYPE_14__* %277, %struct.TYPE_16__* %278)
  br label %280

280:                                              ; preds = %276, %271
  %281 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %281, i32* %3, align 4
  br label %282

282:                                              ; preds = %280, %38, %18
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local i32 @Flush(%struct.TYPE_14__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_16__*) #1

declare dso_local i32 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @fluid_synth_sysex(i32, i8*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @fluid_synth_system_reset(i32) #1

declare dso_local i32 @fluid_synth_noteoff(i32, i32, i32) #1

declare dso_local i32 @fluid_synth_noteon(i32, i32, i32, i32) #1

declare dso_local i32 @fluid_synth_cc(i32, i32, i32, i32) #1

declare dso_local i32 @fluid_synth_program_change(i32, i32, i32) #1

declare dso_local i32 @fluid_synth_channel_pressure(i32, i32, i32) #1

declare dso_local i32 @fluid_synth_pitch_bend(i32, i32, i32) #1

declare dso_local i64 @decoder_UpdateAudioFormat(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_16__* @decoder_NewAudioBuffer(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @date_Increment(i32*, i32) #1

declare dso_local i32 @fluid_synth_write_float(i32, i32, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @decoder_QueueAudio(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
