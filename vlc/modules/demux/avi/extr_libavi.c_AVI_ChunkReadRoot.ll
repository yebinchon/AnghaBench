; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkReadRoot.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkReadRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.avi_chunk_u = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, %union.avi_chunk_u*, %union.avi_chunk_u* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32*, i32*, i32, i64 }
%struct.TYPE_9__ = type { i64 }

@STREAM_CAN_SEEK = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@AVIFOURCC_LIST = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@AVIFOURCC_RIFF = common dso_local global i64 0, align 8
@AVIFOURCC_AVI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AVI_ChunkReadRoot(i32* %0, %union.avi_chunk_u* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %union.avi_chunk_u*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %union.avi_chunk_u*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.avi_chunk_u**, align 8
  store i32* %0, i32** %4, align 8
  store %union.avi_chunk_u* %1, %union.avi_chunk_u** %5, align 8
  %10 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %11 = bitcast %union.avi_chunk_u* %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @STREAM_CAN_SEEK, align 4
  %14 = call i32 @vlc_stream_Control(i32* %12, i32 %13, i32* %8)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @UINT64_MAX, align 4
  %18 = sub nsw i32 %17, 12
  %19 = ashr i32 %18, 1
  %20 = shl i32 %19, 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @AVIFOURCC_LIST, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = call i32 @VLC_FOURCC(i8 signext 114, i8 signext 111, i8 signext 111, i8 signext 116)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %36 = bitcast %union.avi_chunk_u* %35 to %struct.TYPE_8__*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  store %union.avi_chunk_u** %37, %union.avi_chunk_u*** %9, align 8
  br label %38

38:                                               ; preds = %108, %2
  %39 = call %union.avi_chunk_u* @calloc(i32 1, i32 32)
  store %union.avi_chunk_u* %39, %union.avi_chunk_u** %7, align 8
  %40 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %41 = icmp ne %union.avi_chunk_u* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %43, i32* %3, align 4
  br label %119

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %47 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %48 = call i64 @AVI_ChunkRead(i32* %45, %union.avi_chunk_u* %46, %union.avi_chunk_u* %47)
  %49 = load i64, i64* @VLC_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32*, i32** %4, align 8
  %53 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %54 = call i32 @AVI_ChunkClean(i32* %52, %union.avi_chunk_u* %53)
  %55 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %56 = call i32 @free(%union.avi_chunk_u* %55)
  br label %109

57:                                               ; preds = %44
  %58 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %59 = load %union.avi_chunk_u**, %union.avi_chunk_u*** %9, align 8
  store %union.avi_chunk_u* %58, %union.avi_chunk_u** %59, align 8
  br label %60

60:                                               ; preds = %64, %57
  %61 = load %union.avi_chunk_u**, %union.avi_chunk_u*** %9, align 8
  %62 = load %union.avi_chunk_u*, %union.avi_chunk_u** %61, align 8
  %63 = icmp ne %union.avi_chunk_u* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %union.avi_chunk_u**, %union.avi_chunk_u*** %9, align 8
  %66 = load %union.avi_chunk_u*, %union.avi_chunk_u** %65, align 8
  %67 = bitcast %union.avi_chunk_u* %66 to %struct.TYPE_8__*
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store %union.avi_chunk_u** %68, %union.avi_chunk_u*** %9, align 8
  br label %60

69:                                               ; preds = %60
  %70 = load i32*, i32** %4, align 8
  %71 = call i64 @vlc_stream_Tell(i32* %70)
  %72 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %73 = bitcast %union.avi_chunk_u* %72 to %struct.TYPE_8__*
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %80 = bitcast %union.avi_chunk_u* %79 to %struct.TYPE_8__*
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @__EVEN(i32 %85)
  %87 = add nsw i64 %78, %86
  %88 = icmp sge i64 %71, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %69
  br label %109

90:                                               ; preds = %69
  %91 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %92 = bitcast %union.avi_chunk_u* %91 to %struct.TYPE_8__*
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AVIFOURCC_RIFF, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %99 = bitcast %union.avi_chunk_u* %98 to %struct.TYPE_9__*
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AVIFOURCC_AVI, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  br label %109

108:                                              ; preds = %104, %97, %90
  br label %38

109:                                              ; preds = %107, %89, %51
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @stream_Size(i32* %110)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32*, i32** %4, align 8
  %115 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %116 = call i32 @AVI_ChunkDumpDebug_level(i32* %114, %union.avi_chunk_u* %115, i32 0)
  %117 = load i64, i64* @VLC_SUCCESS, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %109, %42
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @vlc_stream_Control(i32*, i32, i32*) #1

declare dso_local i32 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %union.avi_chunk_u* @calloc(i32, i32) #1

declare dso_local i64 @AVI_ChunkRead(i32*, %union.avi_chunk_u*, %union.avi_chunk_u*) #1

declare dso_local i32 @AVI_ChunkClean(i32*, %union.avi_chunk_u*) #1

declare dso_local i32 @free(%union.avi_chunk_u*) #1

declare dso_local i64 @vlc_stream_Tell(i32*) #1

declare dso_local i64 @__EVEN(i32) #1

declare dso_local i32 @stream_Size(i32*) #1

declare dso_local i32 @AVI_ChunkDumpDebug_level(i32*, %union.avi_chunk_u*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
