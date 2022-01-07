; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkFetchIndexes.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkFetchIndexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.avi_chunk_u = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %union.avi_chunk_u*, %union.avi_chunk_u* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@AVIFOURCC_movi = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@STREAM_CAN_SEEK = common dso_local global i32 0, align 4
@AVIFOURCC_indx = common dso_local global i64 0, align 8
@AVIFOURCC_idx1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AVI_ChunkFetchIndexes(i32* %0, %union.avi_chunk_u* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %union.avi_chunk_u*, align 8
  %6 = alloca %union.avi_chunk_u*, align 8
  %7 = alloca %union.avi_chunk_u*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.avi_chunk_u**, align 8
  store i32* %0, i32** %4, align 8
  store %union.avi_chunk_u* %1, %union.avi_chunk_u** %5, align 8
  %12 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %13 = load i32, i32* @AVIFOURCC_movi, align 4
  %14 = call %union.avi_chunk_u* @AVI_ChunkFind(%union.avi_chunk_u* %12, i32 %13, i32 0, i32 1)
  store %union.avi_chunk_u* %14, %union.avi_chunk_u** %6, align 8
  %15 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %16 = icmp ne %union.avi_chunk_u* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %3, align 4
  br label %118

19:                                               ; preds = %2
  %20 = load %union.avi_chunk_u*, %union.avi_chunk_u** %6, align 8
  %21 = call i32 @AVI_ChunkEnd(%union.avi_chunk_u* %20)
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @STREAM_CAN_SEEK, align 4
  %25 = call i32 @vlc_stream_Control(i32* %23, i32 %24, i32* %9)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @vlc_stream_Seek(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %19
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %3, align 4
  br label %118

35:                                               ; preds = %28
  %36 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %37 = bitcast %union.avi_chunk_u* %36 to %struct.TYPE_6__*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store %union.avi_chunk_u** %38, %union.avi_chunk_u*** %11, align 8
  br label %39

39:                                               ; preds = %115, %35
  %40 = call %union.avi_chunk_u* @calloc(i32 1, i32 32)
  store %union.avi_chunk_u* %40, %union.avi_chunk_u** %7, align 8
  %41 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %42 = icmp ne %union.avi_chunk_u* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %10, align 4
  br label %116

45:                                               ; preds = %39
  %46 = load i32*, i32** %4, align 8
  %47 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %48 = load %union.avi_chunk_u*, %union.avi_chunk_u** %5, align 8
  %49 = call i32 @AVI_ChunkRead(i32* %46, %union.avi_chunk_u* %47, %union.avi_chunk_u* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  %54 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %55 = call i32 @AVI_ChunkClean(i32* %53, %union.avi_chunk_u* %54)
  %56 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %57 = call i32 @free(%union.avi_chunk_u* %56)
  br label %116

58:                                               ; preds = %45
  %59 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %60 = load %union.avi_chunk_u**, %union.avi_chunk_u*** %11, align 8
  store %union.avi_chunk_u* %59, %union.avi_chunk_u** %60, align 8
  br label %61

61:                                               ; preds = %65, %58
  %62 = load %union.avi_chunk_u**, %union.avi_chunk_u*** %11, align 8
  %63 = load %union.avi_chunk_u*, %union.avi_chunk_u** %62, align 8
  %64 = icmp ne %union.avi_chunk_u* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %union.avi_chunk_u**, %union.avi_chunk_u*** %11, align 8
  %67 = load %union.avi_chunk_u*, %union.avi_chunk_u** %66, align 8
  %68 = bitcast %union.avi_chunk_u* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store %union.avi_chunk_u** %69, %union.avi_chunk_u*** %11, align 8
  br label %61

70:                                               ; preds = %61
  %71 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %72 = bitcast %union.avi_chunk_u* %71 to %struct.TYPE_6__*
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %70
  %80 = load i32*, i32** %4, align 8
  %81 = call i64 @vlc_stream_Tell(i32* %80)
  %82 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %83 = bitcast %union.avi_chunk_u* %82 to %struct.TYPE_6__*
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %90 = bitcast %union.avi_chunk_u* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @__EVEN(i64 %95)
  %97 = add nsw i64 %88, %96
  %98 = icmp sgt i64 %81, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %79
  br label %116

100:                                              ; preds = %79, %70
  %101 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %102 = bitcast %union.avi_chunk_u* %101 to %struct.TYPE_6__*
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @AVIFOURCC_indx, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = load %union.avi_chunk_u*, %union.avi_chunk_u** %7, align 8
  %109 = bitcast %union.avi_chunk_u* %108 to %struct.TYPE_6__*
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @AVIFOURCC_idx1, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107, %100
  br label %116

115:                                              ; preds = %107
  br label %39

116:                                              ; preds = %114, %99, %52, %43
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %33, %17
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %union.avi_chunk_u* @AVI_ChunkFind(%union.avi_chunk_u*, i32, i32, i32) #1

declare dso_local i32 @AVI_ChunkEnd(%union.avi_chunk_u*) #1

declare dso_local i32 @vlc_stream_Control(i32*, i32, i32*) #1

declare dso_local i64 @vlc_stream_Seek(i32*, i32) #1

declare dso_local %union.avi_chunk_u* @calloc(i32, i32) #1

declare dso_local i32 @AVI_ChunkRead(i32*, %union.avi_chunk_u*, %union.avi_chunk_u*) #1

declare dso_local i32 @AVI_ChunkClean(i32*, %union.avi_chunk_u*) #1

declare dso_local i32 @free(%union.avi_chunk_u*) #1

declare dso_local i64 @vlc_stream_Tell(i32*) #1

declare dso_local i64 @__EVEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
