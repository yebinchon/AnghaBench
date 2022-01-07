; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_ReadWEBVTT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_webvtt.c_ReadWEBVTT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.callback_ctx = type { i32, i32, i32, %struct.TYPE_11__* }

@ParserGetCueHandler = common dso_local global i32 0, align 4
@ParserCueDoneHandler = common dso_local global i32 0, align 4
@ParserHeaderHandler = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@cue_Compare = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @ReadWEBVTT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadWEBVTT(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.callback_ctx, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 3
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %12, align 8
  %13 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32, i32* @ParserGetCueHandler, align 4
  %15 = load i32, i32* @ParserCueDoneHandler, align 4
  %16 = load i32, i32* @ParserHeaderHandler, align 4
  %17 = call i32* @webvtt_text_parser_New(%struct.callback_ctx* %5, i32 %14, i32 %15, i32 %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %2, align 4
  br label %76

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 2
  %24 = call i32 @vlc_memstream_open(i32* %23)
  %25 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 1
  %26 = call i32 @vlc_memstream_open(i32* %25)
  br label %27

27:                                               ; preds = %33, %22
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @vlc_stream_ReadLine(i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32*, i32** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @webvtt_text_parser_Feed(i32* %34, i8* %35)
  br label %27

37:                                               ; preds = %27
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @webvtt_text_parser_Feed(i32* %38, i8* null)
  %40 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @cue_Compare, align 4
  %53 = call i32 @qsort(i32 %47, i32 %51, i32 4, i32 %52)
  br label %54

54:                                               ; preds = %43, %37
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = call i32 @BuildIndex(%struct.TYPE_11__* %55)
  %57 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 2
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = call i32 @memstream_Grab(i32* %57, i32* %60, i32* %63)
  %65 = getelementptr inbounds %struct.callback_ctx, %struct.callback_ctx* %5, i32 0, i32 1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = call i32 @memstream_Grab(i32* %65, i32* %68, i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @webvtt_text_parser_Delete(i32* %73)
  %75 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %54, %20
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32* @webvtt_text_parser_New(%struct.callback_ctx*, i32, i32, i32) #1

declare dso_local i32 @vlc_memstream_open(i32*) #1

declare dso_local i8* @vlc_stream_ReadLine(i32) #1

declare dso_local i32 @webvtt_text_parser_Feed(i32*, i8*) #1

declare dso_local i32 @qsort(i32, i32, i32, i32) #1

declare dso_local i32 @BuildIndex(%struct.TYPE_11__*) #1

declare dso_local i32 @memstream_Grab(i32*, i32*, i32*) #1

declare dso_local i32 @webvtt_text_parser_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
