; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_SynthesizeBitstream.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxread.c_SynthesizeBitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64, i32* }

@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@VP8X_CHUNK_SIZE = common dso_local global i64 0, align 8
@RIFF_HEADER_SIZE = common dso_local global i64 0, align 8
@WEBP_MUX_MEMORY_ERROR = common dso_local global i32 0, align 4
@ALPHA_FLAG = common dso_local global i32 0, align 4
@WEBP_MUX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*)* @SynthesizeBitstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SynthesizeBitstream(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %21 = load i64, i64* @VP8X_CHUNK_SIZE, align 8
  %22 = add i64 %20, %21
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i64 [ %22, %19 ], [ 0, %23 ]
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = call i64 @ChunkDiskSize(%struct.TYPE_9__* %31)
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi i64 [ %32, %28 ], [ 0, %33 ]
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* @RIFF_HEADER_SIZE, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %36, %37
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %38, %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = call i64 @ChunkDiskSize(%struct.TYPE_9__* %43)
  %45 = add i64 %40, %44
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @WebPSafeMalloc(i64 1, i64 %46)
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* @WEBP_MUX_MEMORY_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %124

53:                                               ; preds = %34
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = icmp eq %struct.TYPE_9__* %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br label %65

65:                                               ; preds = %58, %53
  %66 = phi i1 [ true, %53 ], [ %64, %58 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = icmp ne %struct.TYPE_9__* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br label %80

80:                                               ; preds = %73, %65
  %81 = phi i1 [ false, %65 ], [ %79, %73 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32*, i32** %11, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32* @MuxEmitRiffHeader(i32* %84, i64 %85)
  store i32* %86, i32** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %80
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ALPHA_FLAG, align 4
  %98 = call i32* @EmitVP8XChunk(i32* %90, i32 %93, i32 %96, i32 %97)
  store i32* %98, i32** %6, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = call i32* @ChunkListEmit(%struct.TYPE_9__* %101, i32* %102)
  store i32* %103, i32** %6, align 8
  br label %104

104:                                              ; preds = %89, %80
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = call i32* @ChunkListEmit(%struct.TYPE_9__* %107, i32* %108)
  store i32* %109, i32** %6, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = icmp eq i32* %110, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i32*, i32** %11, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* @WEBP_MUX_OK, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %104, %51
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @ChunkDiskSize(%struct.TYPE_9__*) #1

declare dso_local i64 @WebPSafeMalloc(i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @MuxEmitRiffHeader(i32*, i64) #1

declare dso_local i32* @EmitVP8XChunk(i32*, i32, i32, i32) #1

declare dso_local i32* @ChunkListEmit(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
