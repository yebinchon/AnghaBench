; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEs0x06.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEs0x06.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i64, i8*, i8*, i32 }
%struct.TYPE_36__ = type { i32, i32* }
%struct.TYPE_34__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_35__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"EAC3\00", align 1
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_EAC3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"AC-3\00", align 1
@VLC_CODEC_A52 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DTS1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DTS2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DTS3\00", align 1
@VLC_CODEC_DTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"BSSD\00", align 1
@VLC_CODEC_302M = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"HEVC\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_HEVC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"Opus\00", align 1
@PROFILE_DTS_HD = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i32 0, align 4
@VLC_CODEC_TTML_TS = common dso_local global i32 0, align 4
@TS_STANDARD_ARIB = common dso_local global i64 0, align 8
@VLC_CODEC_ARIB_A = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"jpn\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"ARIB subtitles\00", align 1
@VLC_CODEC_ARIB_C = common dso_local global i32 0, align 4
@UNKNOWN_ES = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"Unrecognized DVB subtitle type (0x%x)\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"    * Stream Component Identifier: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_37__*, %struct.TYPE_32__*, i32*)* @PMTSetupEs0x06 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PMTSetupEs0x06(%struct.TYPE_37__* %0, %struct.TYPE_32__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.TYPE_36__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_36__*, align 8
  %16 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_38__*, %struct.TYPE_38__** %18, align 8
  store %struct.TYPE_38__* %19, %struct.TYPE_38__** %7, align 8
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 0
  store %struct.TYPE_33__* %23, %struct.TYPE_33__** %8, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %24, i32 89)
  store %struct.TYPE_36__* %25, %struct.TYPE_36__** %9, align 8
  %26 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @PMTEsHasRegistration(%struct.TYPE_37__* %26, i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %3
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %31, i32 122)
  %33 = icmp ne %struct.TYPE_36__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %3
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %36 = load i32, i32* @AUDIO_ES, align 4
  %37 = load i32, i32* @VLC_CODEC_EAC3, align 4
  %38 = call i32 @es_format_Change(%struct.TYPE_33__* %35, i32 %36, i32 %37)
  br label %312

39:                                               ; preds = %30
  %40 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @PMTEsHasRegistration(%struct.TYPE_37__* %40, i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %45, i32 106)
  %47 = icmp ne %struct.TYPE_36__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %49, i32 129)
  %51 = icmp ne %struct.TYPE_36__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %44, %39
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %54 = load i32, i32* @AUDIO_ES, align 4
  %55 = load i32, i32* @VLC_CODEC_A52, align 4
  %56 = call i32 @es_format_Change(%struct.TYPE_33__* %53, i32 %54, i32 %55)
  br label %311

57:                                               ; preds = %48
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i64 @PMTEsHasRegistration(%struct.TYPE_37__* %58, i32* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i64 @PMTEsHasRegistration(%struct.TYPE_37__* %63, i32* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i64 @PMTEsHasRegistration(%struct.TYPE_37__* %68, i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i32*, i32** %6, align 8
  %74 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %73, i32 115)
  %75 = icmp ne %struct.TYPE_36__* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %72, %67, %62, %57
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %78 = load i32, i32* @AUDIO_ES, align 4
  %79 = load i32, i32* @VLC_CODEC_DTS, align 4
  %80 = call i32 @es_format_Change(%struct.TYPE_33__* %77, i32 %78, i32 %79)
  br label %310

81:                                               ; preds = %72
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = call i64 @PMTEsHasRegistration(%struct.TYPE_37__* %82, i32* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %88 = icmp ne %struct.TYPE_36__* %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %91 = load i32, i32* @AUDIO_ES, align 4
  %92 = load i32, i32* @VLC_CODEC_302M, align 4
  %93 = call i32 @es_format_Change(%struct.TYPE_33__* %90, i32 %91, i32 %92)
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %309

96:                                               ; preds = %86, %81
  %97 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i64 @PMTEsHasRegistration(%struct.TYPE_37__* %97, i32* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %103 = load i32, i32* @VIDEO_ES, align 4
  %104 = load i32, i32* @VLC_CODEC_HEVC, align 4
  %105 = call i32 @es_format_Change(%struct.TYPE_33__* %102, i32 %103, i32 %104)
  br label %308

106:                                              ; preds = %96
  %107 = load i32*, i32** %6, align 8
  %108 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %107, i32 127)
  store %struct.TYPE_36__* %108, %struct.TYPE_36__** %10, align 8
  %109 = icmp ne %struct.TYPE_36__* %108, null
  br i1 %109, label %110, label %165

110:                                              ; preds = %106
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sge i32 %113, 2
  br i1 %114, label %115, label %165

115:                                              ; preds = %110
  %116 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %164 [
    i32 128, label %121
    i32 14, label %137
    i32 15, label %145
    i32 21, label %150
    i32 32, label %155
  ]

121:                                              ; preds = %115
  %122 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = call i64 @PMTEsHasRegistration(%struct.TYPE_37__* %122, i32* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %128 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %135 = call i32 @OpusSetup(%struct.TYPE_37__* %127, i32* %130, i32 %133, %struct.TYPE_33__* %134)
  br label %136

136:                                              ; preds = %126, %121
  br label %164

137:                                              ; preds = %115
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %139 = load i32, i32* @AUDIO_ES, align 4
  %140 = load i32, i32* @VLC_CODEC_DTS, align 4
  %141 = call i32 @es_format_Change(%struct.TYPE_33__* %138, i32 %139, i32 %140)
  %142 = load i32, i32* @PROFILE_DTS_HD, align 4
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  br label %164

145:                                              ; preds = %115
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %147 = load i32, i32* @AUDIO_ES, align 4
  %148 = load i32, i32* @VLC_CODEC_DTS, align 4
  %149 = call i32 @es_format_Change(%struct.TYPE_33__* %146, i32 %147, i32 %148)
  br label %164

150:                                              ; preds = %115
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %152 = load i32, i32* @AUDIO_ES, align 4
  %153 = call i32 @VLC_FOURCC(i8 signext 65, i8 signext 67, i8 signext 45, i8 signext 52)
  %154 = call i32 @es_format_Change(%struct.TYPE_33__* %151, i32 %152, i32 %153)
  br label %164

155:                                              ; preds = %115
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %157 = load i32, i32* @SPU_ES, align 4
  %158 = load i32, i32* @VLC_CODEC_TTML_TS, align 4
  %159 = call i32 @es_format_Change(%struct.TYPE_33__* %156, i32 %157, i32 %158)
  %160 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %161 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %163 = call i32 @SetupTTMLExtendedDescriptor(%struct.TYPE_37__* %160, %struct.TYPE_36__* %161, %struct.TYPE_33__* %162)
  br label %164

164:                                              ; preds = %115, %155, %150, %145, %137, %136
  br label %307

165:                                              ; preds = %110, %106
  %166 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @TS_STANDARD_ARIB, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %226

171:                                              ; preds = %165
  %172 = load i32*, i32** %6, align 8
  %173 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %172, i32 253)
  store %struct.TYPE_36__* %173, %struct.TYPE_36__** %11, align 8
  %174 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %175 = icmp ne %struct.TYPE_36__* %174, null
  br i1 %175, label %176, label %225

176:                                              ; preds = %171
  %177 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp sge i32 %179, 2
  br i1 %180, label %181, label %225

181:                                              ; preds = %176
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @GetWBE(i32* %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp eq i32 %186, 8
  br i1 %187, label %188, label %204

188:                                              ; preds = %181
  %189 = load i32*, i32** %6, align 8
  %190 = call i64 @PMTEsHasComponentTagBetween(i32* %189, i32 48, i32 55)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %188
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %194 = load i32, i32* @SPU_ES, align 4
  %195 = load i32, i32* @VLC_CODEC_ARIB_A, align 4
  %196 = call i32 @es_format_Change(%struct.TYPE_33__* %193, i32 %194, i32 %195)
  %197 = call i8* @strndup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 3
  store i8* %197, i8** %199, align 8
  %200 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %201 = call i8* @strdup(i32 %200)
  %202 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %202, i32 0, i32 2
  store i8* %201, i8** %203, align 8
  br label %224

204:                                              ; preds = %188, %181
  %205 = load i32, i32* %12, align 4
  %206 = icmp eq i32 %205, 18
  br i1 %206, label %207, label %223

207:                                              ; preds = %204
  %208 = load i32*, i32** %6, align 8
  %209 = call i64 @PMTEsHasComponentTagBetween(i32* %208, i32 135, i32 136)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %207
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %213 = load i32, i32* @SPU_ES, align 4
  %214 = load i32, i32* @VLC_CODEC_ARIB_C, align 4
  %215 = call i32 @es_format_Change(%struct.TYPE_33__* %212, i32 %213, i32 %214)
  %216 = call i8* @strndup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %217 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %217, i32 0, i32 3
  store i8* %216, i8** %218, align 8
  %219 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %220 = call i8* @strdup(i32 %219)
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 2
  store i8* %220, i8** %222, align 8
  br label %223

223:                                              ; preds = %211, %207, %204
  br label %224

224:                                              ; preds = %223, %192
  br label %225

225:                                              ; preds = %224, %176, %171
  br label %306

226:                                              ; preds = %165
  %227 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %228 = icmp ne %struct.TYPE_36__* %227, null
  br i1 %228, label %229, label %282

229:                                              ; preds = %226
  %230 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %231 = call %struct.TYPE_34__* @dvbpsi_DecodeSubtitlingDr(%struct.TYPE_36__* %230)
  store %struct.TYPE_34__* %231, %struct.TYPE_34__** %13, align 8
  %232 = icmp ne %struct.TYPE_34__* %231, null
  br i1 %232, label %233, label %282

233:                                              ; preds = %229
  store i32 0, i32* %14, align 4
  br label %234

234:                                              ; preds = %278, %233
  %235 = load i32, i32* %14, align 4
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %281

240:                                              ; preds = %234
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @UNKNOWN_ES, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %240
  br label %281

247:                                              ; preds = %240
  %248 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  switch i32 %255, label %266 [
    i32 1, label %256
    i32 2, label %256
    i32 3, label %256
    i32 16, label %261
    i32 17, label %261
    i32 18, label %261
    i32 19, label %261
    i32 20, label %261
    i32 32, label %261
    i32 33, label %261
    i32 34, label %261
    i32 35, label %261
    i32 36, label %261
  ]

256:                                              ; preds = %247, %247, %247
  %257 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %259 = load i32*, i32** %6, align 8
  %260 = call i32 @PMTSetupEsTeletext(%struct.TYPE_37__* %257, %struct.TYPE_32__* %258, i32* %259)
  br label %277

261:                                              ; preds = %247, %247, %247, %247, %247, %247, %247, %247, %247, %247
  %262 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %263 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %264 = load i32*, i32** %6, align 8
  %265 = call i32 @PMTSetupEsDvbSubtitle(%struct.TYPE_37__* %262, %struct.TYPE_32__* %263, i32* %264)
  br label %277

266:                                              ; preds = %247
  %267 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %268 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %269 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_31__*, %struct.TYPE_31__** %269, align 8
  %271 = load i32, i32* %14, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @msg_Err(%struct.TYPE_37__* %267, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %266, %261, %256
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %14, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %14, align 4
  br label %234

281:                                              ; preds = %246, %234
  br label %282

282:                                              ; preds = %281, %229, %226
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @UNKNOWN_ES, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %305

288:                                              ; preds = %282
  %289 = load i32*, i32** %6, align 8
  %290 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %289, i32 69)
  %291 = icmp ne %struct.TYPE_36__* %290, null
  br i1 %291, label %300, label %292

292:                                              ; preds = %288
  %293 = load i32*, i32** %6, align 8
  %294 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %293, i32 70)
  %295 = icmp ne %struct.TYPE_36__* %294, null
  br i1 %295, label %300, label %296

296:                                              ; preds = %292
  %297 = load i32*, i32** %6, align 8
  %298 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %297, i32 86)
  %299 = icmp ne %struct.TYPE_36__* %298, null
  br i1 %299, label %300, label %305

300:                                              ; preds = %296, %292, %288
  %301 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %302 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %303 = load i32*, i32** %6, align 8
  %304 = call i32 @PMTSetupEsTeletext(%struct.TYPE_37__* %301, %struct.TYPE_32__* %302, i32* %303)
  br label %305

305:                                              ; preds = %300, %296, %282
  br label %306

306:                                              ; preds = %305, %225
  br label %307

307:                                              ; preds = %306, %164
  br label %308

308:                                              ; preds = %307, %101
  br label %309

309:                                              ; preds = %308, %89
  br label %310

310:                                              ; preds = %309, %76
  br label %311

311:                                              ; preds = %310, %52
  br label %312

312:                                              ; preds = %311, %34
  %313 = load i32*, i32** %6, align 8
  %314 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %313, i32 82)
  %315 = icmp ne %struct.TYPE_36__* %314, null
  br i1 %315, label %316, label %326

316:                                              ; preds = %312
  %317 = load i32*, i32** %6, align 8
  %318 = call %struct.TYPE_36__* @PMTEsFindDescriptor(i32* %317, i32 82)
  store %struct.TYPE_36__* %318, %struct.TYPE_36__** %15, align 8
  %319 = load %struct.TYPE_36__*, %struct.TYPE_36__** %15, align 8
  %320 = call %struct.TYPE_35__* @dvbpsi_DecodeStreamIdentifierDr(%struct.TYPE_36__* %319)
  store %struct.TYPE_35__* %320, %struct.TYPE_35__** %16, align 8
  %321 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %322 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %323 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @msg_Dbg(%struct.TYPE_37__* %321, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %324)
  br label %326

326:                                              ; preds = %316, %312
  ret void
}

declare dso_local %struct.TYPE_36__* @PMTEsFindDescriptor(i32*, i32) #1

declare dso_local i64 @PMTEsHasRegistration(%struct.TYPE_37__*, i32*, i8*) #1

declare dso_local i32 @es_format_Change(%struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @OpusSetup(%struct.TYPE_37__*, i32*, i32, %struct.TYPE_33__*) #1

declare dso_local i32 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SetupTTMLExtendedDescriptor(%struct.TYPE_37__*, %struct.TYPE_36__*, %struct.TYPE_33__*) #1

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i64 @PMTEsHasComponentTagBetween(i32*, i32, i32) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_34__* @dvbpsi_DecodeSubtitlingDr(%struct.TYPE_36__*) #1

declare dso_local i32 @PMTSetupEsTeletext(%struct.TYPE_37__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @PMTSetupEsDvbSubtitle(%struct.TYPE_37__*, %struct.TYPE_32__*, i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_37__*, i8*, i32) #1

declare dso_local %struct.TYPE_35__* @dvbpsi_DecodeStreamIdentifierDr(%struct.TYPE_36__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_37__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
