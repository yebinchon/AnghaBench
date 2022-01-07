; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_OpenCommon.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_speex.c_OpenCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i64, i32*, i32*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@VLC_CODEC_SPEEX = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@Packetize = common dso_local global i32 0, align 4
@VLC_CODEC_S16N = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Using RTP version of Speex decoder @ rate %d.\00", align 1
@DecodeRtpSpeexPacket = common dso_local global i32 0, align 4
@DecodeAudio = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @OpenCommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenCommon(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VLC_CODEC_SPEEX, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = call %struct.TYPE_14__* @malloc(i32 48)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %7, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 5
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %21, align 8
  %22 = icmp eq %struct.TYPE_14__* %19, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %93

25:                                               ; preds = %18
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 5
  %43 = load i32, i32* @VLC_TICK_INVALID, align 4
  %44 = call i32 @date_Set(i32* %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %25
  %48 = load i64, i64* @VLC_CODEC_SPEEX, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i32, i32* @Packetize, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  br label %82

55:                                               ; preds = %25
  %56 = load i64, i64* @VLC_CODEC_S16N, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @VLC_FOURCC(i8 signext 115, i8 signext 112, i8 signext 120, i8 signext 114)
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %55
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @msg_Dbg(%struct.TYPE_13__* %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @DecodeRtpSpeexPacket, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %81

77:                                               ; preds = %55
  %78 = load i32, i32* @DecodeAudio, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %66
  br label %82

82:                                               ; preds = %81, %47
  %83 = load i32, i32* @Flush, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  store i32* null, i32** %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  store i32* null, i32** %89, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %82, %23, %16
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_14__* @malloc(i32) #1

declare dso_local i32 @date_Set(i32*, i32) #1

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_13__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
