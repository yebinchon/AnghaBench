; ModuleID = '/home/carl/AnghaBench/zstd/examples/extr_streaming_memory_usage.c_main.c'
source_filename = "/home/carl/AnghaBench/zstd/examples/extr_streaming_memory_usage.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, i64, i32 }

@.str = private unnamed_addr constant [50 x i8] c"\0A Zstandard (v%s) memory usage for streaming : \0A\0A\00", align 1
@MAX_TESTED_LEVEL = common dso_local global i32 0, align 4
@__const.main.dataToCompress = private unnamed_addr constant [5 x i8] c"abcde", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ZSTD_createCCtxParams() failed!\00", align 1
@ZSTD_c_compressionLevel = common dso_local global i32 0, align 4
@ZSTD_c_windowLog = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"ZSTD_createCCtx() failed!\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Frame not flushed!\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ZSTD_createDCtx() failed!\00", align 1
@ZSTD_d_windowLogMax = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Frame not complete!\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Bad decompression!\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Compression mem (%u) > estimated (%u)\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Decompression mem (%u) > estimated (%u)\00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"Level %2i : Compression Mem = %5u KB (estimated : %5u KB) ; Decompression Mem = %4u KB (estimated : %5u KB)\0A\00", align 1
@COMPRESSED_SIZE = common dso_local global i32 0, align 4
@INPUT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8], align 1
  %10 = alloca [128 x i8], align 16
  %11 = alloca [5 x i8], align 1
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_9__, align 8
  %20 = alloca %struct.TYPE_8__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %26 = call i8* (...) @ZSTD_versionString()
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 0, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  %34 = call i32 @readU32FromChar(i8** %7)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %2
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %173, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MAX_TESTED_LEVEL, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %176

40:                                               ; preds = %36
  %41 = bitcast [5 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.dataToCompress, i32 0, i32 0), i64 5, i1 false)
  %42 = call i32* (...) @ZSTD_createCCtxParams()
  store i32* %42, i32** %12, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @CHECK(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* @ZSTD_c_compressionLevel, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @ZSTD_CCtxParams_setParameter(i32* %47, i32 %48, i32 %49)
  %51 = call i32 @CHECK_ZSTD(i64 %50)
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* @ZSTD_c_windowLog, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @ZSTD_CCtxParams_setParameter(i32* %52, i32 %53, i32 %54)
  %56 = call i32 @CHECK_ZSTD(i64 %55)
  %57 = call i32* (...) @ZSTD_createCCtx()
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @CHECK(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = call i64 @ZSTD_CCtx_setParametersUsingCCtxParams(i32* %62, i32* %63)
  %65 = call i32 @CHECK_ZSTD(i64 %64)
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %67 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8* %67, i8** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 5, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  store i8* %71, i8** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32 128, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  store i32 0, i32* %74, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = call i64 @ZSTD_compressStream(i32* %75, %struct.TYPE_8__* %16, %struct.TYPE_9__* %15)
  %77 = call i32 @CHECK_ZSTD(i64 %76)
  %78 = load i32*, i32** %13, align 8
  %79 = call i64 @ZSTD_endStream(i32* %78, %struct.TYPE_8__* %16)
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %17, align 8
  %81 = call i32 @CHECK_ZSTD(i64 %80)
  %82 = load i64, i64* %17, align 8
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @CHECK(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %14, align 8
  %88 = call i32* (...) @ZSTD_createDCtx()
  store i32* %88, i32** %18, align 8
  %89 = load i32*, i32** %18, align 8
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 (i32, i8*, ...) @CHECK(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32*, i32** %18, align 8
  %94 = load i32, i32* @ZSTD_d_windowLogMax, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i64 @ZSTD_DCtx_setParameter(i32* %93, i32 %94, i32 %95)
  %97 = call i32 @CHECK_ZSTD(i64 %96)
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  store i8* %99, i8** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %101 = load i64, i64* %14, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %100, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32 0, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %105 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  store i8* %105, i8** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 5, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  store i32 0, i32* %108, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = call i64 @ZSTD_decompressStream(i32* %109, %struct.TYPE_8__* %20, %struct.TYPE_9__* %19)
  store i64 %110, i64* %21, align 8
  %111 = load i64, i64* %21, align 8
  %112 = call i32 @CHECK_ZSTD(i64 %111)
  %113 = load i64, i64* %21, align 8
  %114 = icmp eq i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, ...) @CHECK(i32 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 5
  %120 = zext i1 %119 to i32
  %121 = call i32 (i32, i8*, ...) @CHECK(i32 %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32*, i32** %13, align 8
  %123 = call i64 @ZSTD_sizeof_CStream(i32* %122)
  store i64 %123, i64* %22, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = call i64 @ZSTD_estimateCStreamSize_usingCCtxParams(i32* %124)
  store i64 %125, i64* %23, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = call i64 @ZSTD_sizeof_DStream(i32* %126)
  store i64 %127, i64* %24, align 8
  %128 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %129 = load i64, i64* %14, align 8
  %130 = call i64 @ZSTD_estimateDStreamSize_fromFrame(i8* %128, i64 %129)
  store i64 %130, i64* %25, align 8
  %131 = load i64, i64* %22, align 8
  %132 = load i64, i64* %23, align 8
  %133 = icmp ule i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i64, i64* %22, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i64, i64* %23, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 (i32, i8*, ...) @CHECK(i32 %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %136, i32 %138)
  %140 = load i64, i64* %24, align 8
  %141 = load i64, i64* %25, align 8
  %142 = icmp ule i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i64, i64* %24, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i64, i64* %25, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 (i32, i8*, ...) @CHECK(i32 %143, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %145, i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = load i64, i64* %22, align 8
  %151 = lshr i64 %150, 10
  %152 = trunc i64 %151 to i32
  %153 = load i64, i64* %23, align 8
  %154 = lshr i64 %153, 10
  %155 = trunc i64 %154 to i32
  %156 = load i64, i64* %24, align 8
  %157 = lshr i64 %156, 10
  %158 = trunc i64 %157 to i32
  %159 = load i64, i64* %25, align 8
  %160 = lshr i64 %159, 10
  %161 = trunc i64 %160 to i32
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i64 0, i64 0), i32 %149, i32 %152, i32 %155, i32 %158, i32 %161)
  %163 = load i32*, i32** %18, align 8
  %164 = call i32 @ZSTD_freeDCtx(i32* %163)
  %165 = load i32*, i32** %13, align 8
  %166 = call i32 @ZSTD_freeCCtx(i32* %165)
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 @ZSTD_freeCCtxParams(i32* %167)
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %40
  br label %176

172:                                              ; preds = %40
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %36

176:                                              ; preds = %171, %36
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ZSTD_versionString(...) #1

declare dso_local i32 @readU32FromChar(i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @ZSTD_createCCtxParams(...) #1

declare dso_local i32 @CHECK(i32, i8*, ...) #1

declare dso_local i32 @CHECK_ZSTD(i64) #1

declare dso_local i64 @ZSTD_CCtxParams_setParameter(i32*, i32, i32) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i64 @ZSTD_CCtx_setParametersUsingCCtxParams(i32*, i32*) #1

declare dso_local i64 @ZSTD_compressStream(i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i64 @ZSTD_endStream(i32*, %struct.TYPE_8__*) #1

declare dso_local i32* @ZSTD_createDCtx(...) #1

declare dso_local i64 @ZSTD_DCtx_setParameter(i32*, i32, i32) #1

declare dso_local i64 @ZSTD_decompressStream(i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i64 @ZSTD_sizeof_CStream(i32*) #1

declare dso_local i64 @ZSTD_estimateCStreamSize_usingCCtxParams(i32*) #1

declare dso_local i64 @ZSTD_sizeof_DStream(i32*) #1

declare dso_local i64 @ZSTD_estimateDStreamSize_fromFrame(i8*, i64) #1

declare dso_local i32 @ZSTD_freeDCtx(i32*) #1

declare dso_local i32 @ZSTD_freeCCtx(i32*) #1

declare dso_local i32 @ZSTD_freeCCtxParams(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
