; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PIDFillFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PIDFillFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_MPGV = common dso_local global i8* null, align 8
@VLC_CODEC_MP1V = common dso_local global i8* null, align 8
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_MPGA = common dso_local global i8* null, align 8
@VLC_CODEC_MP4A = common dso_local global i8* null, align 8
@VLC_CODEC_MP4V = common dso_local global i8* null, align 8
@VLC_CODEC_H264 = common dso_local global i8* null, align 8
@VLC_CODEC_HEVC = common dso_local global i8* null, align 8
@VLC_CODEC_CAVS = common dso_local global i8* null, align 8
@VLC_CODEC_A52 = common dso_local global i8* null, align 8
@SPU_ES = common dso_local global i32 0, align 4
@VLC_CODEC_SCTE_27 = common dso_local global i8* null, align 8
@TS_TRANSPORT_SECTIONS = common dso_local global i32 0, align 4
@SCTE27_Section_Callback = common dso_local global i32 0, align 4
@VLC_CODEC_SDDS = common dso_local global i8* null, align 8
@VLC_CODEC_DTS = common dso_local global i8* null, align 8
@VLC_CODEC_EAC3 = common dso_local global i8* null, align 8
@UNKNOWN_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32, i32*)* @PIDFillFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PIDFillFormat(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %132 [
    i32 1, label %15
    i32 2, label %23
    i32 128, label %23
    i32 3, label %28
    i32 4, label %28
    i32 15, label %33
    i32 16, label %41
    i32 17, label %46
    i32 27, label %54
    i32 28, label %59
    i32 36, label %64
    i32 66, label %69
    i32 129, label %74
    i32 130, label %79
    i32 132, label %92
    i32 133, label %97
    i32 135, label %102
    i32 138, label %107
    i32 145, label %112
    i32 146, label %117
    i32 148, label %122
    i32 160, label %127
    i32 6, label %131
    i32 18, label %131
    i32 234, label %131
  ]

15:                                               ; preds = %4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %17 = load i32, i32* @VIDEO_ES, align 4
  %18 = load i8*, i8** @VLC_CODEC_MPGV, align 8
  %19 = call i32 @es_format_Change(%struct.TYPE_9__* %16, i32 %17, i8* %18)
  %20 = load i8*, i8** @VLC_CODEC_MP1V, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %136

23:                                               ; preds = %4, %4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = load i32, i32* @VIDEO_ES, align 4
  %26 = load i8*, i8** @VLC_CODEC_MPGV, align 8
  %27 = call i32 @es_format_Change(%struct.TYPE_9__* %24, i32 %25, i8* %26)
  br label %136

28:                                               ; preds = %4, %4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = load i32, i32* @AUDIO_ES, align 4
  %31 = load i8*, i8** @VLC_CODEC_MPGA, align 8
  %32 = call i32 @es_format_Change(%struct.TYPE_9__* %29, i32 %30, i8* %31)
  br label %136

33:                                               ; preds = %4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = load i32, i32* @AUDIO_ES, align 4
  %36 = load i8*, i8** @VLC_CODEC_MP4A, align 8
  %37 = call i32 @es_format_Change(%struct.TYPE_9__* %34, i32 %35, i8* %36)
  %38 = call i8* @VLC_FOURCC(i8 signext 65, i8 signext 68, i8 signext 84, i8 signext 83)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %136

41:                                               ; preds = %4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = load i32, i32* @VIDEO_ES, align 4
  %44 = load i8*, i8** @VLC_CODEC_MP4V, align 8
  %45 = call i32 @es_format_Change(%struct.TYPE_9__* %42, i32 %43, i8* %44)
  br label %136

46:                                               ; preds = %4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = load i32, i32* @AUDIO_ES, align 4
  %49 = load i8*, i8** @VLC_CODEC_MP4A, align 8
  %50 = call i32 @es_format_Change(%struct.TYPE_9__* %47, i32 %48, i8* %49)
  %51 = call i8* @VLC_FOURCC(i8 signext 76, i8 signext 65, i8 signext 84, i8 signext 77)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  br label %136

54:                                               ; preds = %4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = load i32, i32* @VIDEO_ES, align 4
  %57 = load i8*, i8** @VLC_CODEC_H264, align 8
  %58 = call i32 @es_format_Change(%struct.TYPE_9__* %55, i32 %56, i8* %57)
  br label %136

59:                                               ; preds = %4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = load i32, i32* @AUDIO_ES, align 4
  %62 = load i8*, i8** @VLC_CODEC_MP4A, align 8
  %63 = call i32 @es_format_Change(%struct.TYPE_9__* %60, i32 %61, i8* %62)
  br label %136

64:                                               ; preds = %4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = load i32, i32* @VIDEO_ES, align 4
  %67 = load i8*, i8** @VLC_CODEC_HEVC, align 8
  %68 = call i32 @es_format_Change(%struct.TYPE_9__* %65, i32 %66, i8* %67)
  br label %136

69:                                               ; preds = %4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = load i32, i32* @VIDEO_ES, align 4
  %72 = load i8*, i8** @VLC_CODEC_CAVS, align 8
  %73 = call i32 @es_format_Change(%struct.TYPE_9__* %70, i32 %71, i8* %72)
  br label %136

74:                                               ; preds = %4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = load i32, i32* @AUDIO_ES, align 4
  %77 = load i8*, i8** @VLC_CODEC_A52, align 8
  %78 = call i32 @es_format_Change(%struct.TYPE_9__* %75, i32 %76, i8* %77)
  br label %136

79:                                               ; preds = %4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = load i32, i32* @SPU_ES, align 4
  %82 = load i8*, i8** @VLC_CODEC_SCTE_27, align 8
  %83 = call i32 @es_format_Change(%struct.TYPE_9__* %80, i32 %81, i8* %82)
  %84 = load i32, i32* @TS_TRANSPORT_SECTIONS, align 4
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* @SCTE27_Section_Callback, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = call i32 @ts_sections_processor_Add(i32* %86, i32* %88, i32 198, i32 0, i32 %89, %struct.TYPE_8__* %90)
  br label %136

92:                                               ; preds = %4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = load i32, i32* @AUDIO_ES, align 4
  %95 = load i8*, i8** @VLC_CODEC_SDDS, align 8
  %96 = call i32 @es_format_Change(%struct.TYPE_9__* %93, i32 %94, i8* %95)
  br label %136

97:                                               ; preds = %4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %99 = load i32, i32* @AUDIO_ES, align 4
  %100 = load i8*, i8** @VLC_CODEC_DTS, align 8
  %101 = call i32 @es_format_Change(%struct.TYPE_9__* %98, i32 %99, i8* %100)
  br label %136

102:                                              ; preds = %4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %104 = load i32, i32* @AUDIO_ES, align 4
  %105 = load i8*, i8** @VLC_CODEC_EAC3, align 8
  %106 = call i32 @es_format_Change(%struct.TYPE_9__* %103, i32 %104, i8* %105)
  br label %136

107:                                              ; preds = %4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %109 = load i32, i32* @AUDIO_ES, align 4
  %110 = load i8*, i8** @VLC_CODEC_DTS, align 8
  %111 = call i32 @es_format_Change(%struct.TYPE_9__* %108, i32 %109, i8* %110)
  br label %136

112:                                              ; preds = %4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = load i32, i32* @AUDIO_ES, align 4
  %115 = call i8* @VLC_FOURCC(i8 signext 97, i8 signext 53, i8 signext 50, i8 signext 98)
  %116 = call i32 @es_format_Change(%struct.TYPE_9__* %113, i32 %114, i8* %115)
  br label %136

117:                                              ; preds = %4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %119 = load i32, i32* @SPU_ES, align 4
  %120 = call i8* @VLC_FOURCC(i8 signext 115, i8 signext 112, i8 signext 117, i8 signext 98)
  %121 = call i32 @es_format_Change(%struct.TYPE_9__* %118, i32 %119, i8* %120)
  br label %136

122:                                              ; preds = %4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %124 = load i32, i32* @AUDIO_ES, align 4
  %125 = call i8* @VLC_FOURCC(i8 signext 115, i8 signext 100, i8 signext 100, i8 signext 98)
  %126 = call i32 @es_format_Change(%struct.TYPE_9__* %123, i32 %124, i8* %125)
  br label %136

127:                                              ; preds = %4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %129 = load i32, i32* @UNKNOWN_ES, align 4
  %130 = call i32 @es_format_Change(%struct.TYPE_9__* %128, i32 %129, i8* null)
  br label %136

131:                                              ; preds = %4, %4, %4
  br label %132

132:                                              ; preds = %4, %131
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %134 = load i32, i32* @UNKNOWN_ES, align 4
  %135 = call i32 @es_format_Change(%struct.TYPE_9__* %133, i32 %134, i8* null)
  br label %136

136:                                              ; preds = %132, %127, %122, %117, %112, %107, %102, %97, %92, %79, %74, %69, %64, %59, %54, %46, %41, %33, %28, %23, %15
  ret void
}

declare dso_local i32 @es_format_Change(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i8* @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ts_sections_processor_Add(i32*, i32*, i32, i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
