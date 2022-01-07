; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_avparser.c_avparser_OpenPacketizer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_avparser.c_avparser_OpenPacketizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_7__, i32, i32*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32*, i32* }

@VLC_CODEC_VP9 = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@Packetize = common dso_local global i32 0, align 4
@FlushPacketizer = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avparser_OpenPacketizer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VLC_CODEC_VP9, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %19, i32* %2, align 4
  br label %106

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @GetFfmpegCodec(i32 %24, i64 %28, i32* %6, i32* null)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %32, i32* %2, align 4
  br label %106

33:                                               ; preds = %20
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @vlc_init_avcodec(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32* @av_parser_init(i32 %36)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %2, align 4
  br label %106

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = call i32* @avcodec_find_decoder(i32 %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @av_parser_close(i32* %52)
  %54 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %54, i32* %2, align 4
  br label %106

55:                                               ; preds = %42
  %56 = load i32*, i32** %8, align 8
  %57 = call i32* @avcodec_alloc_context3(i32* %56)
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @av_parser_close(i32* %65)
  %67 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %67, i32* %2, align 4
  br label %106

68:                                               ; preds = %55
  %69 = call %struct.TYPE_6__* @malloc(i32 24)
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %5, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = icmp ne %struct.TYPE_6__* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = call i32 @avcodec_free_context(i32** %9)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @av_parser_close(i32* %80)
  %82 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %82, i32* %2, align 4
  br label %106

83:                                               ; preds = %68
  %84 = load i32, i32* @Packetize, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @FlushPacketizer, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i32* null, i32** %91, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  store i32* %92, i32** %94, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = call i32 @es_format_Copy(i32* %101, %struct.TYPE_7__* %103)
  %105 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %83, %78, %64, %51, %40, %31, %18
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @GetFfmpegCodec(i32, i64, i32*, i32*) #1

declare dso_local i32 @vlc_init_avcodec(i32*) #1

declare dso_local i32* @av_parser_init(i32) #1

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @av_parser_close(i32*) #1

declare dso_local i32* @avcodec_alloc_context3(i32*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @avcodec_free_context(i32**) #1

declare dso_local i32 @es_format_Copy(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
