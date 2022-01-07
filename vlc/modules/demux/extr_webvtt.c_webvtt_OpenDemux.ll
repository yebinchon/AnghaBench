; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_webvtt_OpenDemux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_webvtt_OpenDemux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i32 0, align 4
@VLC_CODEC_WEBVTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @webvtt_OpenDemux(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = call i32 @ProbeWEBVTT(%struct.TYPE_12__* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @VLC_SUCCESS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load i32, i32* @Demux, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @Control, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = call %struct.TYPE_13__* @calloc(i32 1, i32 8)
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %5, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = icmp eq %struct.TYPE_13__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %18
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = call i32 @ReadWEBVTT(%struct.TYPE_12__* %33)
  %35 = load i32, i32* @VLC_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @webvtt_CloseDemux(i32* %38)
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %2, align 4
  br label %67

41:                                               ; preds = %32
  %42 = load i32, i32* @SPU_ES, align 4
  %43 = load i32, i32* @VLC_CODEC_WEBVTT, align 4
  %44 = call i32 @es_format_Init(%struct.TYPE_11__* %7, i32 %42, i32 %43)
  store i64 0, i64* %8, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %47 = call i32 @MakeExtradata(%struct.TYPE_13__* %45, i32* %46, i64* %8)
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @es_out_Add(i32 %52, %struct.TYPE_11__* %7)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = call i32 @es_format_Clean(%struct.TYPE_11__* %7)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %41
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @webvtt_CloseDemux(i32* %62)
  %64 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %41
  %66 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %61, %37, %30, %16
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @ProbeWEBVTT(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

declare dso_local i32 @ReadWEBVTT(%struct.TYPE_12__*) #1

declare dso_local i32 @webvtt_CloseDemux(i32*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @MakeExtradata(%struct.TYPE_13__*, i32*, i64*) #1

declare dso_local i32* @es_out_Add(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
