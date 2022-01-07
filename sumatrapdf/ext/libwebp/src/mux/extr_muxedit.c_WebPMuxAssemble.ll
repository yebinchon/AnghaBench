; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_WebPMuxAssemble.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_WebPMuxAssemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32* }

@WEBP_MUX_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@WEBP_MUX_OK = common dso_local global i64 0, align 8
@RIFF_HEADER_SIZE = common dso_local global i64 0, align 8
@WEBP_MUX_MEMORY_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WebPMuxAssemble(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i64 0, i64* %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = icmp eq %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %13, i64* %3, align 8
  br label %143

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = call i32 @memset(%struct.TYPE_10__* %15, i32 0, i32 16)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %20, i64* %3, align 8
  br label %143

21:                                               ; preds = %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = call i64 @MuxCleanup(%struct.TYPE_9__* %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @WEBP_MUX_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %3, align 8
  br label %143

29:                                               ; preds = %21
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = call i64 @CreateVP8XChunk(%struct.TYPE_9__* %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @WEBP_MUX_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %3, align 8
  br label %143

37:                                               ; preds = %29
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ChunkListDiskSize(i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ChunkListDiskSize(i32 %44)
  %46 = add i64 %41, %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ChunkListDiskSize(i32 %49)
  %51 = add i64 %46, %50
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ImageListDiskSize(i32 %54)
  %56 = add i64 %51, %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ChunkListDiskSize(i32 %59)
  %61 = add i64 %56, %60
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @ChunkListDiskSize(i32 %64)
  %66 = add i64 %61, %65
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ChunkListDiskSize(i32 %69)
  %71 = add i64 %66, %70
  %72 = load i64, i64* @RIFF_HEADER_SIZE, align 8
  %73 = add i64 %71, %72
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @WebPSafeMalloc(i64 1, i64 %74)
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %7, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %37
  %80 = load i64, i64* @WEBP_MUX_MEMORY_ERROR, align 8
  store i64 %80, i64* %3, align 8
  br label %143

81:                                               ; preds = %37
  %82 = load i32*, i32** %7, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32* @MuxEmitRiffHeader(i32* %82, i64 %83)
  store i32* %84, i32** %8, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = call i32* @ChunkListEmit(i32 %87, i32* %88)
  store i32* %89, i32** %8, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = call i32* @ChunkListEmit(i32 %92, i32* %93)
  store i32* %94, i32** %8, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = call i32* @ChunkListEmit(i32 %97, i32* %98)
  store i32* %99, i32** %8, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = call i32* @ImageListEmit(i32 %102, i32* %103)
  store i32* %104, i32** %8, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = call i32* @ChunkListEmit(i32 %107, i32* %108)
  store i32* %109, i32** %8, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = call i32* @ChunkListEmit(i32 %112, i32* %113)
  store i32* %114, i32** %8, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = call i32* @ChunkListEmit(i32 %117, i32* %118)
  store i32* %119, i32** %8, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i64, i64* %6, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = icmp eq i32* %120, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = call i64 @MuxValidate(%struct.TYPE_9__* %127)
  store i64 %128, i64* %9, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* @WEBP_MUX_OK, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %81
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 @WebPSafeFree(i32* %133)
  store i32* null, i32** %7, align 8
  store i64 0, i64* %6, align 8
  br label %135

135:                                              ; preds = %132, %81
  %136 = load i32*, i32** %7, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store i32* %136, i32** %138, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %9, align 8
  store i64 %142, i64* %3, align 8
  br label %143

143:                                              ; preds = %135, %79, %35, %27, %19, %12
  %144 = load i64, i64* %3, align 8
  ret i64 %144
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @MuxCleanup(%struct.TYPE_9__*) #1

declare dso_local i64 @CreateVP8XChunk(%struct.TYPE_9__*) #1

declare dso_local i64 @ChunkListDiskSize(i32) #1

declare dso_local i64 @ImageListDiskSize(i32) #1

declare dso_local i64 @WebPSafeMalloc(i64, i64) #1

declare dso_local i32* @MuxEmitRiffHeader(i32*, i64) #1

declare dso_local i32* @ChunkListEmit(i32, i32*) #1

declare dso_local i32* @ImageListEmit(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MuxValidate(%struct.TYPE_9__*) #1

declare dso_local i32 @WebPSafeFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
