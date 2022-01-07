; ModuleID = '/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_decompressBlock_internal.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_decompressBlock_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@STREAM_ACCUMULATOR_MIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"ZSTD_decompressBlock_internal (size : %u)\00", align 1
@ZSTD_BLOCKSIZE_MAX = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ZSTD_decodeLiteralsBlock : %u\00", align 1
@ADVANCED_SEQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_decompressBlock_internal(%struct.TYPE_9__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %14, align 8
  %24 = call i64 (...) @MEM_32bits()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @STREAM_ACCUMULATOR_MIN, align 8
  %35 = shl i64 1, %34
  %36 = icmp ugt i64 %33, %35
  br label %37

37:                                               ; preds = %29, %26
  %38 = phi i1 [ true, %26 ], [ %36, %29 ]
  br label %39

39:                                               ; preds = %37, %6
  %40 = phi i1 [ false, %6 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @ZSTD_BLOCKSIZE_MAX, align 8
  %46 = icmp uge i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @srcSize_wrong, align 4
  %49 = call i32 @RETURN_ERROR_IF(i32 %47, i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @ZSTD_decodeLiteralsBlock(%struct.TYPE_9__* %50, i8* %51, i64 %52)
  store i64 %53, i64* %16, align 8
  %54 = load i64, i64* %16, align 8
  %55 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load i64, i64* %16, align 8
  %57 = call i64 @ZSTD_isError(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %39
  %60 = load i64, i64* %16, align 8
  store i64 %60, i64* %7, align 8
  br label %139

61:                                               ; preds = %39
  %62 = load i64, i64* %16, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %14, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %12, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %12, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %17, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i64 @ZSTD_decodeSeqHeaders(%struct.TYPE_9__* %71, i32* %18, i32* %72, i64 %73)
  store i64 %74, i64* %19, align 8
  %75 = load i64, i64* %19, align 8
  %76 = call i64 @ZSTD_isError(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = load i64, i64* %19, align 8
  store i64 %79, i64* %7, align 8
  br label %139

80:                                               ; preds = %61
  %81 = load i64, i64* %19, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %14, align 8
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* %12, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %12, align 8
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %116, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ugt i64 %96, 16777216
  br i1 %97, label %98, label %116

98:                                               ; preds = %92, %89
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* @ADVANCED_SEQS, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @ZSTD_getLongOffsetsShare(i32 %105)
  store i64 %106, i64* %20, align 8
  %107 = call i64 (...) @MEM_64bits()
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 7, i32 20
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %21, align 8
  %112 = load i64, i64* %20, align 8
  %113 = load i64, i64* %21, align 8
  %114 = icmp sge i64 %112, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %17, align 4
  br label %116

116:                                              ; preds = %102, %98, %92, %80
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %15, align 4
  %129 = call i64 @ZSTD_decompressSequencesLong(%struct.TYPE_9__* %122, i8* %123, i64 %124, i32* %125, i64 %126, i32 %127, i32 %128)
  store i64 %129, i64* %7, align 8
  br label %139

130:                                              ; preds = %116
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i64 @ZSTD_decompressSequences(%struct.TYPE_9__* %131, i8* %132, i64 %133, i32* %134, i64 %135, i32 %136, i32 %137)
  store i64 %138, i64* %7, align 8
  br label %139

139:                                              ; preds = %130, %121, %78, %59
  %140 = load i64, i64* %7, align 8
  ret i64 %140
}

declare dso_local i64 @MEM_32bits(...) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i64) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

declare dso_local i64 @ZSTD_decodeLiteralsBlock(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ZSTD_decodeSeqHeaders(%struct.TYPE_9__*, i32*, i32*, i64) #1

declare dso_local i64 @ZSTD_getLongOffsetsShare(i32) #1

declare dso_local i64 @MEM_64bits(...) #1

declare dso_local i64 @ZSTD_decompressSequencesLong(%struct.TYPE_9__*, i8*, i64, i32*, i64, i32, i32) #1

declare dso_local i64 @ZSTD_decompressSequences(%struct.TYPE_9__*, i8*, i64, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
