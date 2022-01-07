; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkRead.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_libavi.c_AVI_ChunkRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i32*, %struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__* }

@.str = private unnamed_addr constant [23 x i8] c"cannot read null chunk\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"found null fourcc chunk (corrupted file?)\00", align 1
@AVI_ZERO_FOURCC = common dso_local global i32 0, align 4
@AVI_Chunk_Function = common dso_local global %struct.TYPE_13__* null, align 8
@AVIFOURCC_indx = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"unknown chunk: %4.4s (not loaded)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AVI_ChunkRead(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %14, i32* %4, align 4
  br label %116

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = call i64 @AVI_ChunkReadCommon(i32* %16, %struct.TYPE_12__* %17, %struct.TYPE_12__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %4, align 4
  br label %116

23:                                               ; preds = %15
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @VLC_FOURCC(i32 0, i32 0, i32 0, i32 0)
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @AVI_ZERO_FOURCC, align 4
  store i32 %33, i32* %4, align 4
  br label %116

34:                                               ; preds = %23
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @AVI_ChunkFunctionFind(i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** @AVI_Chunk_Function, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32 (i32*, %struct.TYPE_12__*)*, i32 (i32*, %struct.TYPE_12__*)** %48, align 8
  %50 = icmp ne i32 (i32*, %struct.TYPE_12__*)* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %34
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** @AVI_Chunk_Function, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32 (i32*, %struct.TYPE_12__*)*, i32 (i32*, %struct.TYPE_12__*)** %56, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = call i32 %57(i32* %58, %struct.TYPE_12__* %59)
  store i32 %60, i32* %4, align 4
  br label %116

61:                                               ; preds = %34
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = bitcast i64* %64 to i8*
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 8
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 105
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = bitcast i64* %73 to i8*
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 120
  br i1 %78, label %97, label %79

79:                                               ; preds = %70, %61
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = bitcast i64* %82 to i8*
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 2
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 105
  br i1 %87, label %88, label %105

88:                                               ; preds = %79
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = bitcast i64* %91 to i8*
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 120
  br i1 %96, label %97, label %105

97:                                               ; preds = %88, %70
  %98 = load i64, i64* @AVIFOURCC_indx, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %104 = call i32 @AVI_ChunkRead_indx(i32* %102, %struct.TYPE_12__* %103)
  store i32 %104, i32* %4, align 4
  br label %116

105:                                              ; preds = %88, %79
  br label %106

106:                                              ; preds = %105
  %107 = load i32*, i32** %5, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = bitcast i64* %110 to i8*
  %112 = call i32 (i32*, i8*, ...) @msg_Warn(i32* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %115 = call i32 @AVI_NextChunk(i32* %113, %struct.TYPE_12__* %114)
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %106, %97, %51, %30, %21, %11
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @msg_Warn(i32*, i8*, ...) #1

declare dso_local i64 @AVI_ChunkReadCommon(i32*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i64 @VLC_FOURCC(i32, i32, i32, i32) #1

declare dso_local i32 @AVI_ChunkFunctionFind(i64) #1

declare dso_local i32 @AVI_ChunkRead_indx(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @AVI_NextChunk(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
