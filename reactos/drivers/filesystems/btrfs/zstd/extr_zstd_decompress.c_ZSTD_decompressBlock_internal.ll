; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_decompressBlock_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_decompress.c_ZSTD_decompressBlock_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@STREAM_ACCUMULATOR_MIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"ZSTD_decompressBlock_internal (size : %u)\00", align 1
@ZSTD_BLOCKSIZE_MAX = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ZSTD_decodeLiteralsBlock : %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i8*, i64, i8*, i64, i32)* @ZSTD_decompressBlock_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressBlock_internal(%struct.TYPE_9__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
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
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %14, align 8
  %23 = call i64 (...) @MEM_32bits()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @STREAM_ACCUMULATOR_MIN, align 8
  %34 = shl i64 1, %33
  %35 = icmp ugt i64 %32, %34
  br label %36

36:                                               ; preds = %28, %25
  %37 = phi i1 [ true, %25 ], [ %35, %28 ]
  br label %38

38:                                               ; preds = %36, %6
  %39 = phi i1 [ false, %6 ], [ %37, %36 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @ZSTD_BLOCKSIZE_MAX, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @srcSize_wrong, align 4
  %48 = call i64 @ERROR(i32 %47)
  store i64 %48, i64* %7, align 8
  br label %127

49:                                               ; preds = %38
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

59:                                               ; preds = %49
  %60 = load i64, i64* %16, align 8
  store i64 %60, i64* %7, align 8
  br label %127

61:                                               ; preds = %49
  %62 = load i64, i64* %16, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %14, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* %12, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %12, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i64 @ZSTD_decodeSeqHeaders(%struct.TYPE_9__* %68, i32* %17, i32* %69, i64 %70)
  store i64 %71, i64* %18, align 8
  %72 = load i64, i64* %18, align 8
  %73 = call i64 @ZSTD_isError(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i64, i64* %18, align 8
  store i64 %76, i64* %7, align 8
  br label %127

77:                                               ; preds = %61
  %78 = load i64, i64* %18, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  store i32* %80, i32** %14, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load i64, i64* %12, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %90, 16777216
  br i1 %91, label %92, label %118

92:                                               ; preds = %86, %77
  %93 = load i32, i32* %17, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %92
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @ZSTD_getLongOffsetsShare(i32 %98)
  store i64 %99, i64* %19, align 8
  %100 = call i64 (...) @MEM_64bits()
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 7, i32 20
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %20, align 8
  %105 = load i64, i64* %19, align 8
  %106 = load i64, i64* %20, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %95
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i64 @ZSTD_decompressSequencesLong(%struct.TYPE_9__* %109, i8* %110, i64 %111, i32* %112, i64 %113, i32 %114, i32 %115)
  store i64 %116, i64* %7, align 8
  br label %127

117:                                              ; preds = %95
  br label %118

118:                                              ; preds = %117, %92, %86
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i64 @ZSTD_decompressSequences(%struct.TYPE_9__* %119, i8* %120, i64 %121, i32* %122, i64 %123, i32 %124, i32 %125)
  store i64 %126, i64* %7, align 8
  br label %127

127:                                              ; preds = %118, %108, %75, %59, %46
  %128 = load i64, i64* %7, align 8
  ret i64 %128
}

declare dso_local i64 @MEM_32bits(...) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i64) #1

declare dso_local i64 @ERROR(i32) #1

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
