; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_webvtt_OpenDemuxStream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_webvtt_OpenDemuxStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@DemuxStream = common dso_local global i32 0, align 4
@ControlStream = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@StreamParserGetCueHandler = common dso_local global i32 0, align 4
@StreamParserCueDoneHandler = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i32 0, align 4
@VLC_CODEC_WEBVTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @webvtt_OpenDemuxStream(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = call i32 @ProbeWEBVTT(%struct.TYPE_6__* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @VLC_SUCCESS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %67

17:                                               ; preds = %1
  %18 = load i32, i32* @DemuxStream, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ControlStream, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = call %struct.TYPE_7__* @calloc(i32 1, i32 16)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = icmp eq %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %17
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load i32, i32* @StreamParserGetCueHandler, align 4
  %34 = load i32, i32* @StreamParserCueDoneHandler, align 4
  %35 = call i32 @webvtt_text_parser_New(%struct.TYPE_6__* %32, i32 %33, i32 %34, i32* null)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %31
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @webvtt_CloseDemux(i32* %43)
  %45 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %45, i32* %2, align 4
  br label %67

46:                                               ; preds = %31
  %47 = load i32, i32* @SPU_ES, align 4
  %48 = load i32, i32* @VLC_CODEC_WEBVTT, align 4
  %49 = call i32 @es_format_Init(i32* %7, i32 %47, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @es_out_Add(i32 %52, i32* %7)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = call i32 @es_format_Clean(i32* %7)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @webvtt_CloseDemux(i32* %62)
  %64 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %46
  %66 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %61, %42, %29, %15
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @ProbeWEBVTT(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @webvtt_text_parser_New(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @webvtt_CloseDemux(i32*) #1

declare dso_local i32 @es_format_Init(i32*, i32, i32) #1

declare dso_local i32* @es_out_Add(i32, i32*) #1

declare dso_local i32 @es_format_Clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
