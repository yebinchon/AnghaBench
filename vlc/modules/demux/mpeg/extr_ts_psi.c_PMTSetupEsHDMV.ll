; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEsHDMV.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEsHDMV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_BD_LPCM = common dso_local global i32 0, align 4
@VLC_CODEC_A52 = common dso_local global i32 0, align 4
@VLC_CODEC_DTS = common dso_local global i32 0, align 4
@PROFILE_DTS_HD = common dso_local global i32 0, align 4
@VLC_CODEC_TRUEHD = common dso_local global i32 0, align 4
@VLC_CODEC_EAC3 = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i32 0, align 4
@VLC_CODEC_BD_PG = common dso_local global i32 0, align 4
@VLC_CODEC_BD_TEXT = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_VC1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"HDMV registration not implemented for pid 0x%x type 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, %struct.TYPE_9__*)* @PMTSetupEsHDMV to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PMTSetupEsHDMV(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %63 [
    i32 128, label %14
    i32 129, label %19
    i32 133, label %24
    i32 134, label %24
    i32 130, label %32
    i32 162, label %32
    i32 131, label %37
    i32 132, label %42
    i32 161, label %42
    i32 144, label %47
    i32 145, label %52
    i32 146, label %53
    i32 234, label %58
  ]

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = load i32, i32* @AUDIO_ES, align 4
  %17 = load i32, i32* @VLC_CODEC_BD_LPCM, align 4
  %18 = call i32 @es_format_Change(%struct.TYPE_8__* %15, i32 %16, i32 %17)
  br label %72

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = load i32, i32* @AUDIO_ES, align 4
  %22 = load i32, i32* @VLC_CODEC_A52, align 4
  %23 = call i32 @es_format_Change(%struct.TYPE_8__* %20, i32 %21, i32 %22)
  br label %72

24:                                               ; preds = %3, %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = load i32, i32* @AUDIO_ES, align 4
  %27 = load i32, i32* @VLC_CODEC_DTS, align 4
  %28 = call i32 @es_format_Change(%struct.TYPE_8__* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @PROFILE_DTS_HD, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %72

32:                                               ; preds = %3, %3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = load i32, i32* @AUDIO_ES, align 4
  %35 = load i32, i32* @VLC_CODEC_DTS, align 4
  %36 = call i32 @es_format_Change(%struct.TYPE_8__* %33, i32 %34, i32 %35)
  br label %72

37:                                               ; preds = %3
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = load i32, i32* @AUDIO_ES, align 4
  %40 = load i32, i32* @VLC_CODEC_TRUEHD, align 4
  %41 = call i32 @es_format_Change(%struct.TYPE_8__* %38, i32 %39, i32 %40)
  br label %72

42:                                               ; preds = %3, %3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = load i32, i32* @AUDIO_ES, align 4
  %45 = load i32, i32* @VLC_CODEC_EAC3, align 4
  %46 = call i32 @es_format_Change(%struct.TYPE_8__* %43, i32 %44, i32 %45)
  br label %72

47:                                               ; preds = %3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = load i32, i32* @SPU_ES, align 4
  %50 = load i32, i32* @VLC_CODEC_BD_PG, align 4
  %51 = call i32 @es_format_Change(%struct.TYPE_8__* %48, i32 %49, i32 %50)
  br label %72

52:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %73

53:                                               ; preds = %3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = load i32, i32* @SPU_ES, align 4
  %56 = load i32, i32* @VLC_CODEC_BD_TEXT, align 4
  %57 = call i32 @es_format_Change(%struct.TYPE_8__* %54, i32 %55, i32 %56)
  br label %72

58:                                               ; preds = %3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = load i32, i32* @VIDEO_ES, align 4
  %61 = load i32, i32* @VLC_CODEC_VC1, align 4
  %62 = call i32 @es_format_Change(%struct.TYPE_8__* %59, i32 %60, i32 %61)
  br label %72

63:                                               ; preds = %3
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @msg_Info(i32* %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70)
  store i32 0, i32* %4, align 4
  br label %73

72:                                               ; preds = %58, %53, %47, %42, %37, %32, %24, %19, %14
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %63, %52
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @es_format_Change(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @msg_Info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
