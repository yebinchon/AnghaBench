; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ApplyContentType.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ogg.c_Ogg_ApplyContentType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i8* }

@UNKNOWN_ES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"audio/x-wav\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"WAV Audio (Unsupported)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"audio/x-vorbis\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"audio/vorbis\00", align 1
@AUDIO_ES = common dso_local global i64 0, align 8
@VLC_CODEC_VORBIS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"audio/x-speex\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"audio/speex\00", align 1
@VLC_CODEC_SPEEX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"audio/flac\00", align 1
@VLC_CODEC_FLAC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"video/x-theora\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"video/theora\00", align 1
@VIDEO_ES = common dso_local global i64 0, align 8
@VLC_CODEC_THEORA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"video/x-daala\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"video/daala\00", align 1
@VLC_CODEC_DAALA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"video/x-xvid\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"video/mpeg\00", align 1
@VLC_CODEC_MPGV = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"application/kate\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"OGG Kate Overlay (Unsupported)\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"video/x-vp8\00", align 1
@VLC_CODEC_VP8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32*)* @Ogg_ApplyContentType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Ogg_ApplyContentType(%struct.TYPE_4__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UNKNOWN_ES, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %156

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* @UNKNOWN_ES, align 8
  %22 = call i32 @es_format_Change(%struct.TYPE_5__* %20, i64 %21, i32 0)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @free(i8* %26)
  %28 = call i8* @strdup(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  br label %156

32:                                               ; preds = %14
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strncmp(i8* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 14)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* @AUDIO_ES, align 8
  %44 = load i32, i32* @VLC_CODEC_VORBIS, align 4
  %45 = call i32 @es_format_Change(%struct.TYPE_5__* %42, i64 %43, i32 %44)
  %46 = load i32*, i32** %6, align 8
  store i32 1, i32* %46, align 4
  br label %155

47:                                               ; preds = %36
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 13)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* @AUDIO_ES, align 8
  %59 = load i32, i32* @VLC_CODEC_SPEEX, align 4
  %60 = call i32 @es_format_Change(%struct.TYPE_5__* %57, i64 %58, i32 %59)
  %61 = load i32*, i32** %6, align 8
  store i32 1, i32* %61, align 4
  br label %154

62:                                               ; preds = %51
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @strncmp(i8* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 10)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* @AUDIO_ES, align 8
  %70 = load i32, i32* @VLC_CODEC_FLAC, align 4
  %71 = call i32 @es_format_Change(%struct.TYPE_5__* %68, i64 %69, i32 %70)
  %72 = load i32*, i32** %6, align 8
  store i32 1, i32* %72, align 4
  br label %153

73:                                               ; preds = %62
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @strncmp(i8* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 14)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @strncmp(i8* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 12)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %77, %73
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* @VIDEO_ES, align 8
  %85 = load i32, i32* @VLC_CODEC_THEORA, align 4
  %86 = call i32 @es_format_Change(%struct.TYPE_5__* %83, i64 %84, i32 %85)
  %87 = load i32*, i32** %6, align 8
  store i32 1, i32* %87, align 4
  br label %152

88:                                               ; preds = %77
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @strncmp(i8* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 13)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @strncmp(i8* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 11)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %92, %88
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* @VIDEO_ES, align 8
  %100 = load i32, i32* @VLC_CODEC_DAALA, align 4
  %101 = call i32 @es_format_Change(%struct.TYPE_5__* %98, i64 %99, i32 %100)
  %102 = load i32*, i32** %6, align 8
  store i32 1, i32* %102, align 4
  br label %151

103:                                              ; preds = %92
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @strncmp(i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 12)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* @VIDEO_ES, align 8
  %111 = call i32 @VLC_FOURCC(i8 signext 120, i8 signext 118, i8 signext 105, i8 signext 100)
  %112 = call i32 @es_format_Change(%struct.TYPE_5__* %109, i64 %110, i32 %111)
  %113 = load i32*, i32** %6, align 8
  store i32 1, i32* %113, align 4
  br label %150

114:                                              ; preds = %103
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @strncmp(i8* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 10)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %114
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* @VIDEO_ES, align 8
  %122 = load i32, i32* @VLC_CODEC_MPGV, align 4
  %123 = call i32 @es_format_Change(%struct.TYPE_5__* %120, i64 %121, i32 %122)
  br label %149

124:                                              ; preds = %114
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @strncmp(i8* %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 16)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %124
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* @UNKNOWN_ES, align 8
  %132 = call i32 @es_format_Change(%struct.TYPE_5__* %130, i64 %131, i32 0)
  %133 = call i8* @strdup(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  store i8* %133, i8** %136, align 8
  br label %148

137:                                              ; preds = %124
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @strncmp(i8* %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 11)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i64, i64* @VIDEO_ES, align 8
  %145 = load i32, i32* @VLC_CODEC_VP8, align 4
  %146 = call i32 @es_format_Change(%struct.TYPE_5__* %143, i64 %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %137
  br label %148

148:                                              ; preds = %147, %128
  br label %149

149:                                              ; preds = %148, %118
  br label %150

150:                                              ; preds = %149, %107
  br label %151

151:                                              ; preds = %150, %96
  br label %152

152:                                              ; preds = %151, %81
  br label %153

153:                                              ; preds = %152, %66
  br label %154

154:                                              ; preds = %153, %55
  br label %155

155:                                              ; preds = %154, %40
  br label %156

156:                                              ; preds = %13, %155, %18
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @es_format_Change(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
