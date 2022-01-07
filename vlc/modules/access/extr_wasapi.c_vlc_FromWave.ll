; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_wasapi.c_vlc_FromWave.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_wasapi.c_vlc_FromWave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@WAVE_FORMAT_EXTENSIBLE = common dso_local global i64 0, align 8
@SPEAKER_FRONT_LEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_LEFT = common dso_local global i32 0, align 4
@SPEAKER_FRONT_RIGHT = common dso_local global i32 0, align 4
@AOUT_CHAN_RIGHT = common dso_local global i32 0, align 4
@SPEAKER_FRONT_CENTER = common dso_local global i32 0, align 4
@AOUT_CHAN_CENTER = common dso_local global i32 0, align 4
@SPEAKER_LOW_FREQUENCY = common dso_local global i32 0, align 4
@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_PCM = common dso_local global i32 0, align 4
@VLC_CODEC_S32N = common dso_local global i32 0, align 4
@VLC_CODEC_S24L32 = common dso_local global i32 0, align 4
@VLC_CODEC_S24N = common dso_local global i32 0, align 4
@VLC_CODEC_S16N = common dso_local global i32 0, align 4
@VLC_CODEC_S8 = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_IEEE_FLOAT = common dso_local global i32 0, align 4
@VLC_CODEC_FL64 = common dso_local global i32 0, align 4
@VLC_CODEC_FL32 = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_ALAW = common dso_local global i32 0, align 4
@VLC_CODEC_ALAW = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_MULAW = common dso_local global i32 0, align 4
@VLC_CODEC_MULAW = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_ADPCM = common dso_local global i32 0, align 4
@VLC_CODEC_ADPCM_MS = common dso_local global i32 0, align 4
@VLC_CODEC_S24B32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_9__*)* @vlc_FromWave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlc_FromWave(%struct.TYPE_11__* noalias %0, %struct.TYPE_9__* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WAVE_FORMAT_EXTENSIBLE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = bitcast %struct.TYPE_11__* %19 to i8*
  %21 = bitcast i8* %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %6, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SPEAKER_FRONT_LEFT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SPEAKER_FRONT_RIGHT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SPEAKER_FRONT_CENTER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SPEAKER_LOW_FREQUENCY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @vlc_popcount(i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = call i64 @IsEqualIID(i32* %87, i32* @KSDATAFORMAT_SUBTYPE_PCM)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %147

90:                                               ; preds = %75
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  switch i64 %93, label %145 [
    i64 32, label %94
    i64 24, label %109
    i64 16, label %121
    i64 8, label %133
  ]

94:                                               ; preds = %90
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %107 [
    i32 32, label %99
    i32 24, label %103
  ]

99:                                               ; preds = %94
  %100 = load i32, i32* @VLC_CODEC_S32N, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  br label %108

103:                                              ; preds = %94
  %104 = load i32, i32* @VLC_CODEC_S24L32, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  br label %108

107:                                              ; preds = %94
  store i32 -1, i32* %3, align 4
  br label %221

108:                                              ; preds = %103, %99
  br label %146

109:                                              ; preds = %90
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 24
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* @VLC_CODEC_S24N, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  br label %120

119:                                              ; preds = %109
  store i32 -1, i32* %3, align 4
  br label %221

120:                                              ; preds = %115
  br label %146

121:                                              ; preds = %90
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 16
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @VLC_CODEC_S16N, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  br label %132

131:                                              ; preds = %121
  store i32 -1, i32* %3, align 4
  br label %221

132:                                              ; preds = %127
  br label %146

133:                                              ; preds = %90
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 8
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* @VLC_CODEC_S8, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  br label %144

143:                                              ; preds = %133
  store i32 -1, i32* %3, align 4
  br label %221

144:                                              ; preds = %139
  br label %146

145:                                              ; preds = %90
  store i32 -1, i32* %3, align 4
  br label %221

146:                                              ; preds = %144, %132, %120, %108
  br label %209

147:                                              ; preds = %75
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = call i64 @IsEqualIID(i32* %149, i32* @KSDATAFORMAT_SUBTYPE_IEEE_FLOAT)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %147
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp ne i64 %155, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  store i32 -1, i32* %3, align 4
  br label %221

163:                                              ; preds = %152
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  switch i64 %166, label %175 [
    i64 64, label %167
    i64 32, label %171
  ]

167:                                              ; preds = %163
  %168 = load i32, i32* @VLC_CODEC_FL64, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  br label %176

171:                                              ; preds = %163
  %172 = load i32, i32* @VLC_CODEC_FL32, align 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  br label %176

175:                                              ; preds = %163
  store i32 -1, i32* %3, align 4
  br label %221

176:                                              ; preds = %171, %167
  br label %208

177:                                              ; preds = %147
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = call i64 @IsEqualIID(i32* %179, i32* @KSDATAFORMAT_SUBTYPE_ALAW)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i32, i32* @VLC_CODEC_ALAW, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  br label %207

186:                                              ; preds = %177
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = call i64 @IsEqualIID(i32* %188, i32* @KSDATAFORMAT_SUBTYPE_MULAW)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load i32, i32* @VLC_CODEC_MULAW, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 8
  br label %206

195:                                              ; preds = %186
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = call i64 @IsEqualIID(i32* %197, i32* @KSDATAFORMAT_SUBTYPE_ADPCM)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load i32, i32* @VLC_CODEC_ADPCM_MS, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 8
  br label %205

204:                                              ; preds = %195
  store i32 -1, i32* %3, align 4
  br label %221

205:                                              ; preds = %200
  br label %206

206:                                              ; preds = %205, %191
  br label %207

207:                                              ; preds = %206, %182
  br label %208

208:                                              ; preds = %207, %176
  br label %209

209:                                              ; preds = %208, %146
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %211 = call i32 @aout_FormatPrepare(%struct.TYPE_9__* %210)
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %214, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  store i32 -1, i32* %3, align 4
  br label %221

220:                                              ; preds = %209
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %220, %219, %204, %175, %162, %145, %143, %131, %119, %107
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vlc_popcount(i32) #1

declare dso_local i64 @IsEqualIID(i32*, i32*) #1

declare dso_local i32 @aout_FormatPrepare(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
