; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_SetAudioParameters.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_utils.c_SetAudioParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32*, i8*, i32, i32, i32 }

@OMX_NumericalDataSigned = common dso_local global i32 0, align 4
@OMX_AUDIO_PCMModeLinear = common dso_local global i32 0, align 4
@OMX_EndianLittle = common dso_local global i32 0, align 4
@OMX_TRUE = common dso_local global i8* null, align 8
@OMX_AUDIO_ChannelCF = common dso_local global i32 0, align 4
@OMX_AUDIO_ChannelLF = common dso_local global i32 0, align 4
@OMX_AUDIO_ChannelRF = common dso_local global i32 0, align 4
@VLC_CODEC_AMR_WB = common dso_local global i32 0, align 4
@OMX_AUDIO_AMRBandModeWB0 = common dso_local global i32 0, align 4
@OMX_AUDIO_AMRBandModeNB0 = common dso_local global i32 0, align 4
@OMX_AUDIO_AMRDTXModeOff = common dso_local global i32 0, align 4
@OMX_AUDIO_AMRFrameFormatFSF = common dso_local global i32 0, align 4
@OMX_FALSE = common dso_local global i8* null, align 8
@OMX_AUDIO_G723ModeUnused = common dso_local global i32 0, align 4
@OMX_AUDIO_G726ModeUnused = common dso_local global i32 0, align 4
@OMX_AUDIO_G729 = common dso_local global i32 0, align 4
@OMX_AUDIO_AACToolAll = common dso_local global i32 0, align 4
@OMX_AUDIO_AACERAll = common dso_local global i32 0, align 4
@OMX_AUDIO_AACObjectLC = common dso_local global i32 0, align 4
@OMX_AUDIO_AACStreamFormatMP4FF = common dso_local global i32 0, align 4
@OMX_AUDIO_ChannelModeStereo = common dso_local global i8* null, align 8
@OMX_AUDIO_ChannelModeMono = common dso_local global i8* null, align 8
@OMX_AUDIO_MP3StreamFormatMP1Layer3 = common dso_local global i32 0, align 4
@OMX_AUDIO_WMAFormatUnused = common dso_local global i32 0, align 4
@OMX_AUDIO_WMAProfileUnused = common dso_local global i32 0, align 4
@OMX_AUDIO_RAFormatUnused = common dso_local global i32 0, align 4
@OMX_ErrorBadParameter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetAudioParameters(i32 %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %23 = load i32, i32* %15, align 4
  switch i32 %23, label %363 [
    i32 131, label %24
    i32 136, label %24
    i32 138, label %78
    i32 137, label %94
    i32 135, label %128
    i32 134, label %152
    i32 133, label %164
    i32 139, label %180
    i32 132, label %229
    i32 128, label %260
    i32 130, label %294
    i32 129, label %326
  ]

24:                                               ; preds = %10, %10
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 11
  %27 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %26)
  %28 = load i32, i32* %17, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 11
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* %18, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 11
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @OMX_NumericalDataSigned, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 11
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 41
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @OMX_AUDIO_PCMModeLinear, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 11
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 40
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @OMX_EndianLittle, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 11
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 39
  store i32 %44, i32* %47, align 8
  %48 = load i8*, i8** @OMX_TRUE, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 11
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 38
  store i8* %48, i8** %51, align 8
  %52 = load i32, i32* %20, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 11
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @OMX_AUDIO_ChannelCF, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 11
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 37
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %56, i32* %61, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %77

64:                                               ; preds = %24
  %65 = load i32, i32* @OMX_AUDIO_ChannelLF, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 11
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 37
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* @OMX_AUDIO_ChannelRF, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 11
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 37
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %64, %24
  br label %365

78:                                               ; preds = %10
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 10
  %81 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %80)
  %82 = load i32, i32* %17, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 10
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* %18, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 10
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %20, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  store i32 %90, i32* %93, align 8
  br label %365

94:                                               ; preds = %10
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 9
  %97 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %96)
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* %19, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 9
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 5
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* @VLC_CODEC_AMR_WB, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %94
  %110 = load i32, i32* @OMX_AUDIO_AMRBandModeWB0, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 9
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 36
  store i32 %110, i32* %113, align 4
  br label %119

114:                                              ; preds = %94
  %115 = load i32, i32* @OMX_AUDIO_AMRBandModeNB0, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 9
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 36
  store i32 %115, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %109
  %120 = load i32, i32* @OMX_AUDIO_AMRDTXModeOff, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 9
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 35
  store i32 %120, i32* %123, align 8
  %124 = load i32, i32* @OMX_AUDIO_AMRFrameFormatFSF, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 9
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 34
  store i32 %124, i32* %127, align 4
  br label %365

128:                                              ; preds = %10
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 8
  %131 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %130)
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load i8*, i8** @OMX_FALSE, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 29
  store i8* %136, i8** %139, align 8
  %140 = load i32, i32* @OMX_AUDIO_G723ModeUnused, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 33
  store i32 %140, i32* %143, align 8
  %144 = load i8*, i8** @OMX_TRUE, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 32
  store i8* %144, i8** %147, align 8
  %148 = load i8*, i8** @OMX_TRUE, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 31
  store i8* %148, i8** %151, align 8
  br label %365

152:                                              ; preds = %10
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 7
  %155 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %154)
  %156 = load i32, i32* %17, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = load i32, i32* @OMX_AUDIO_G726ModeUnused, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 30
  store i32 %160, i32* %163, align 8
  br label %365

164:                                              ; preds = %10
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 6
  %167 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %166)
  %168 = load i32, i32* %17, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = load i8*, i8** @OMX_FALSE, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 29
  store i8* %172, i8** %175, align 8
  %176 = load i32, i32* @OMX_AUDIO_G729, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 28
  store i32 %176, i32* %179, align 8
  br label %365

180:                                              ; preds = %10
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 5
  %183 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %182)
  %184 = load i32, i32* %17, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 8
  %188 = load i32, i32* %18, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 3
  store i32 %188, i32* %191, align 4
  %192 = load i32, i32* %19, align 4
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 5
  store i32 %192, i32* %195, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 13
  store i32 0, i32* %198, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 6
  store i32 1024, i32* %201, align 8
  %202 = load i32, i32* @OMX_AUDIO_AACToolAll, align 4
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 27
  store i32 %202, i32* %205, align 4
  %206 = load i32, i32* @OMX_AUDIO_AACERAll, align 4
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 26
  store i32 %206, i32* %209, align 8
  %210 = load i32, i32* @OMX_AUDIO_AACObjectLC, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 25
  store i32 %210, i32* %213, align 4
  %214 = load i32, i32* @OMX_AUDIO_AACStreamFormatMP4FF, align 4
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 24
  store i32 %214, i32* %217, align 8
  %218 = load i32, i32* %17, align 4
  %219 = icmp sgt i32 %218, 1
  br i1 %219, label %220, label %222

220:                                              ; preds = %180
  %221 = load i8*, i8** @OMX_AUDIO_ChannelModeStereo, align 8
  br label %224

222:                                              ; preds = %180
  %223 = load i8*, i8** @OMX_AUDIO_ChannelModeMono, align 8
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i8* [ %221, %220 ], [ %223, %222 ]
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 23
  store i8* %225, i8** %228, align 8
  br label %365

229:                                              ; preds = %10
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 4
  %232 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %231)
  %233 = load i32, i32* %17, align 4
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 8
  %237 = load i32, i32* %18, align 4
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 3
  store i32 %237, i32* %240, align 4
  %241 = load i32, i32* %19, align 4
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 5
  store i32 %241, i32* %244, align 4
  %245 = load i32, i32* %17, align 4
  %246 = icmp sgt i32 %245, 1
  br i1 %246, label %247, label %249

247:                                              ; preds = %229
  %248 = load i8*, i8** @OMX_AUDIO_ChannelModeStereo, align 8
  br label %251

249:                                              ; preds = %229
  %250 = load i8*, i8** @OMX_AUDIO_ChannelModeMono, align 8
  br label %251

251:                                              ; preds = %249, %247
  %252 = phi i8* [ %248, %247 ], [ %250, %249 ]
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 23
  store i8* %252, i8** %255, align 8
  %256 = load i32, i32* @OMX_AUDIO_MP3StreamFormatMP1Layer3, align 4
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 15
  store i32 %256, i32* %259, align 8
  br label %365

260:                                              ; preds = %10
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 3
  %263 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %262)
  %264 = load i32, i32* %17, align 4
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  %268 = load i32, i32* %19, align 4
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 5
  store i32 %268, i32* %271, align 4
  %272 = load i32, i32* @OMX_AUDIO_WMAFormatUnused, align 4
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 15
  store i32 %272, i32* %275, align 8
  %276 = load i32, i32* @OMX_AUDIO_WMAProfileUnused, align 4
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 22
  store i32 %276, i32* %279, align 4
  %280 = load i32, i32* %18, align 4
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  store i32 %280, i32* %283, align 4
  %284 = load i32, i32* %21, align 4
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 7
  store i32 %284, i32* %287, align 4
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 21
  store i32 0, i32* %290, align 8
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 20
  store i32 0, i32* %293, align 4
  br label %365

294:                                              ; preds = %10
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 2
  %297 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %296)
  %298 = load i32, i32* %17, align 4
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  store i32 %298, i32* %301, align 8
  %302 = load i32, i32* %18, align 4
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 1
  store i32 %302, i32* %305, align 4
  %306 = load i32, i32* %20, align 4
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 8
  store i32 %306, i32* %309, align 8
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 19
  store i32 0, i32* %312, align 8
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 18
  store i32 0, i32* %315, align 4
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 17
  store i32 0, i32* %318, align 8
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 16
  store i32 0, i32* %321, align 4
  %322 = load i32, i32* @OMX_AUDIO_RAFormatUnused, align 4
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 15
  store i32 %322, i32* %325, align 8
  br label %365

326:                                              ; preds = %10
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 1
  %329 = call i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %328)
  %330 = load i32, i32* %17, align 4
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 0
  store i32 %330, i32* %333, align 8
  %334 = load i32, i32* %19, align 4
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 5
  store i32 %334, i32* %337, align 4
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 14
  store i32 0, i32* %340, align 4
  %341 = load i32, i32* %19, align 4
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 9
  store i32 %341, i32* %344, align 4
  %345 = load i32, i32* %18, align 4
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 3
  store i32 %345, i32* %348, align 4
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 13
  store i32 0, i32* %351, align 8
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 10
  store i32 3, i32* %354, align 8
  %355 = load i8*, i8** @OMX_FALSE, align 8
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 12
  store i8* %355, i8** %358, align 8
  %359 = load i8*, i8** @OMX_FALSE, align 8
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 11
  store i8* %359, i8** %362, align 8
  br label %365

363:                                              ; preds = %10
  %364 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %364, i32* %11, align 4
  br label %376

365:                                              ; preds = %326, %294, %260, %251, %224, %164, %152, %128, %119, %78, %77
  %366 = load i32, i32* %14, align 4
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  store i32 %366, i32* %369, align 8
  %370 = load i32, i32* %15, align 4
  %371 = call i32 @GetAudioParamFormatIndex(i32 %370)
  store i32 %371, i32* %22, align 4
  %372 = load i32, i32* %12, align 4
  %373 = load i32, i32* %22, align 4
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %375 = call i32 @OMX_SetParameter(i32 %372, i32 %373, %struct.TYPE_7__* %374)
  store i32 %375, i32* %11, align 4
  br label %376

376:                                              ; preds = %365, %363
  %377 = load i32, i32* %11, align 4
  ret i32 %377
}

declare dso_local i32 @OMX_INIT_STRUCTURE(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @GetAudioParamFormatIndex(i32) #1

declare dso_local i32 @OMX_SetParameter(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
