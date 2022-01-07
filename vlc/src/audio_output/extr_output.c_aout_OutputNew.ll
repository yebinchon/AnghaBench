; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_output.c_aout_OutputNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_output.c_aout_OutputNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)*, i64, i64, i64, i64, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i64, i32, i64, i64, i32, i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, %struct.TYPE_20__, %struct.TYPE_20__ }

@AUDIO_CHANNEL_TYPE_BITMAP = common dso_local global i64 0, align 8
@AUDIO_CHANNEL_TYPE_AMBISONICS = common dso_local global i64 0, align 8
@AOUT_CHANS_7_1 = common dso_local global i64 0, align 8
@VLC_CODEC_FL32 = common dso_local global i64 0, align 8
@VLC_CODEC_S16N = common dso_local global i64 0, align 8
@AOUT_CHANS_STEREO = common dso_local global i64 0, align 8
@AOUT_VAR_CHAN_LEFT = common dso_local global i64 0, align 8
@AOUT_VAR_CHAN_RIGHT = common dso_local global i64 0, align 8
@AOUT_CHAN_CENTER = common dso_local global i64 0, align 8
@VLC_CODEC_DTSHD = common dso_local global i64 0, align 8
@VLC_CODEC_EAC3 = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"module not functional\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aout_OutputNew(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = call %struct.TYPE_22__* @aout_owner(%struct.TYPE_21__* %13)
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %4, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 5
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %5, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 4
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %6, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 3
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %27, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 1
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = call i64 @AOUT_FMT_LINEAR(%struct.TYPE_20__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %107

36:                                               ; preds = %1
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AUDIO_CHANNEL_TYPE_BITMAP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = call i64 @aout_FormatNbChannels(%struct.TYPE_20__* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ugt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = call i32 @aout_SetWavePhysicalChannels(%struct.TYPE_20__* %53)
  br label %55

55:                                               ; preds = %46, %42, %36
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AUDIO_CHANNEL_TYPE_AMBISONICS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64, i64* @AOUT_CHANS_7_1, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp sgt i32 %68, 16
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i64, i64* @VLC_CODEC_FL32, align 8
  br label %74

72:                                               ; preds = %65
  %73 = load i64, i64* @VLC_CODEC_S16N, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i64 [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AOUT_CHANS_STEREO, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %74
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AOUT_VAR_CHAN_LEFT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AOUT_VAR_CHAN_RIGHT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89, %83
  %96 = load i64, i64* @AOUT_CHAN_CENTER, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %89, %74
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %101 = call i32 @aout_FormatPrepare(%struct.TYPE_20__* %100)
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = call i64 @aout_FormatNbChannels(%struct.TYPE_20__* %102)
  %104 = icmp sgt i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  br label %143

107:                                              ; preds = %1
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  switch i64 %110, label %141 [
    i64 128, label %111
    i64 129, label %126
  ]

111:                                              ; preds = %107
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %118 = call i32 @ARRAY_SIZE(i64* %117)
  %119 = icmp sge i32 %118, 3
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i64, i64* @VLC_CODEC_DTSHD, align 8
  %123 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  store i64 %122, i64* %123, align 16
  %124 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  store i64 128, i64* %124, align 8
  br label %125

125:                                              ; preds = %116, %111
  br label %142

126:                                              ; preds = %107
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %133 = call i32 @ARRAY_SIZE(i64* %132)
  %134 = icmp sge i32 %133, 3
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i64, i64* @VLC_CODEC_EAC3, align 8
  %138 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  store i64 %137, i64* %138, align 16
  %139 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 1
  store i64 129, i64* %139, align 8
  br label %140

140:                                              ; preds = %131, %126
  br label %142

141:                                              ; preds = %107
  br label %142

142:                                              ; preds = %141, %140, %125
  br label %143

143:                                              ; preds = %142, %99
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = call i32 @vlc_mutex_lock(i32* %148)
  %150 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %150, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %151

151:                                              ; preds = %176, %143
  %152 = load i64, i64* %12, align 8
  %153 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @VLC_SUCCESS, align 4
  %159 = icmp ne i32 %157, %158
  br label %160

160:                                              ; preds = %156, %151
  %161 = phi i1 [ false, %151 ], [ %159, %156 ]
  br i1 %161, label %162, label %179

162:                                              ; preds = %160
  %163 = load i64, i64* %12, align 8
  %164 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  store i64 %165, i64* %169, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = load i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)** %171, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %175 = call i32 %172(%struct.TYPE_21__* %173, %struct.TYPE_20__* %174)
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %162
  %177 = load i64, i64* %12, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %12, align 8
  br label %151

179:                                              ; preds = %160
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  %182 = call i32 @vlc_mutex_unlock(i32* %181)
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %187 = call i32 @msg_Err(%struct.TYPE_21__* %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %236

188:                                              ; preds = %179
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %188
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %193
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br label %208

208:                                              ; preds = %203, %198, %193, %188
  %209 = phi i1 [ false, %198 ], [ false, %193 ], [ false, %188 ], [ %207, %203 ]
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %214 = load i32*, i32** %7, align 8
  %215 = load i64, i64* %8, align 8
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @aout_PrepareStereoMode(%struct.TYPE_21__* %212, %struct.TYPE_20__* %213, i32* %214, i64 %215, i32 %216)
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %219 = call i32 @aout_FormatPrepare(%struct.TYPE_20__* %218)
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = icmp sgt i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %208
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = icmp sgt i64 %227, 0
  br label %229

229:                                              ; preds = %224, %208
  %230 = phi i1 [ false, %208 ], [ %228, %224 ]
  %231 = zext i1 %230 to i32
  %232 = call i32 @assert(i32 %231)
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %235 = call i32 @aout_FormatPrint(%struct.TYPE_21__* %233, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %234)
  store i32 0, i32* %2, align 4
  br label %236

236:                                              ; preds = %229, %185
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local %struct.TYPE_22__* @aout_owner(%struct.TYPE_21__*) #1

declare dso_local i64 @AOUT_FMT_LINEAR(%struct.TYPE_20__*) #1

declare dso_local i64 @aout_FormatNbChannels(%struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @aout_SetWavePhysicalChannels(%struct.TYPE_20__*) #1

declare dso_local i32 @aout_FormatPrepare(%struct.TYPE_20__*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @aout_PrepareStereoMode(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*, i64, i32) #1

declare dso_local i32 @aout_FormatPrint(%struct.TYPE_21__*, i8*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
