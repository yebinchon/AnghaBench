; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_decoders.c_ts_dvbpsi_AttachRawSubDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_decoders.c_ts_dvbpsi_AttachRawSubDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i8*, i32 }

@ts_dvbpsi_DetachRawSubDecoder = common dso_local global i32 0, align 4
@ts_dvbpsi_RawSubDecoderGatherSections = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_dvbpsi_AttachRawSubDecoder(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @dvbpsi_demuxGetSubDec(i32* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %55

25:                                               ; preds = %5
  %26 = call i64 @dvbpsi_decoder_new(i32* null, i32 0, i32 1, i32 16)
  %27 = inttoptr i64 %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %13, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %55

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ts_dvbpsi_DetachRawSubDecoder, align 4
  %35 = load i32, i32* @ts_dvbpsi_RawSubDecoderGatherSections, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %37 = call i32 @DVBPSI_DECODER(%struct.TYPE_5__* %36)
  %38 = call i32* @dvbpsi_NewDemuxSubDecoder(i32 %32, i32 %33, i32 %34, i32 %35, i32 %37)
  store i32* %38, i32** %14, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %43 = call i32 @DVBPSI_DECODER(%struct.TYPE_5__* %42)
  %44 = call i32 @dvbpsi_decoder_delete(i32 %43)
  store i32 0, i32* %6, align 4
  br label %55

45:                                               ; preds = %31
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @dvbpsi_AttachDemuxSubDecoder(i32* %46, i32* %47)
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %45, %41, %30, %24
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @dvbpsi_demuxGetSubDec(i32*, i32, i32) #1

declare dso_local i64 @dvbpsi_decoder_new(i32*, i32, i32, i32) #1

declare dso_local i32* @dvbpsi_NewDemuxSubDecoder(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DVBPSI_DECODER(%struct.TYPE_5__*) #1

declare dso_local i32 @dvbpsi_decoder_delete(i32) #1

declare dso_local i32 @dvbpsi_AttachDemuxSubDecoder(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
