; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_EncodeImageNoHuffman.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_EncodeImageNoHuffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, i32*, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32* }

@VP8_ENC_OK = common dso_local global i32 0, align 4
@CODE_LENGTH_CODES = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@kLZ77Standard = common dso_local global i32 0, align 4
@kLZ77RLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32)* @EncodeImageNoHuffman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EncodeImageNoHuffman(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca [5 x %struct.TYPE_12__], align 16
  %25 = alloca [1 x i32], align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_11__*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_12__*, align 8
  %30 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %31 = load i32, i32* @VP8_ENC_OK, align 4
  store i32 %31, i32* %21, align 4
  store i32* null, i32** %23, align 8
  %32 = bitcast [5 x %struct.TYPE_12__]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 200, i1 false)
  %33 = bitcast [1 x i32]* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 4, i1 false)
  store i32 0, i32* %26, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %27, align 8
  %34 = load i64, i64* @CODE_LENGTH_CODES, align 8
  %35 = mul i64 3, %34
  %36 = trunc i64 %35 to i32
  %37 = call i64 @WebPSafeMalloc(i32 %36, i32 4)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %28, align 8
  %39 = load i32*, i32** %28, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %9
  %42 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  store i32 %42, i32* %21, align 4
  br label %155

43:                                               ; preds = %9
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %17, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @VP8LHashChainFill(i32* %44, i32 %45, i32* %46, i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  store i32 %53, i32* %21, align 4
  br label %155

54:                                               ; preds = %43
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* @kLZ77Standard, align 4
  %60 = load i32, i32* @kLZ77RLE, align 4
  %61 = or i32 %59, %60
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32* @VP8LGetBackwardReferences(i32 %55, i32 %56, i32* %57, i32 %58, i32 0, i32 %61, i32* %26, i32* %62, i32* %63, i32* %64)
  store i32* %65, i32** %22, align 8
  %66 = load i32*, i32** %22, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  store i32 %69, i32* %21, align 4
  br label %155

70:                                               ; preds = %54
  %71 = load i32, i32* %26, align 4
  %72 = call %struct.TYPE_11__* @VP8LAllocateHistogramSet(i32 1, i32 %71)
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %27, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %74 = icmp eq %struct.TYPE_11__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  store i32 %76, i32* %21, align 4
  br label %155

77:                                               ; preds = %70
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %79 = call i32 @VP8LHistogramSetClear(%struct.TYPE_11__* %78)
  %80 = load i32*, i32** %22, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @VP8LHistogramStoreRefs(i32* %80, i32 %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %94 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %24, i64 0, i64 0
  %95 = call i32 @GetHuffBitLengthsAndCodes(%struct.TYPE_11__* %93, %struct.TYPE_12__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %77
  %98 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  store i32 %98, i32* %21, align 4
  br label %155

99:                                               ; preds = %77
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @VP8LPutBits(i32* %100, i32 0, i32 1)
  store i32 0, i32* %19, align 4
  br label %102

102:                                              ; preds = %119, %99
  %103 = load i32, i32* %19, align 4
  %104 = icmp slt i32 %103, 5
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %24, i64 0, i64 %107
  store %struct.TYPE_12__* %108, %struct.TYPE_12__** %29, align 8
  %109 = load i32, i32* %20, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %20, align 4
  br label %118

118:                                              ; preds = %114, %105
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %19, align 4
  br label %102

122:                                              ; preds = %102
  %123 = load i32, i32* %20, align 4
  %124 = call i64 @WebPSafeMalloc(i32 %123, i32 4)
  %125 = inttoptr i64 %124 to i32*
  store i32* %125, i32** %23, align 8
  %126 = load i32*, i32** %23, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  store i32 %129, i32* %21, align 4
  br label %155

130:                                              ; preds = %122
  store i32 0, i32* %19, align 4
  br label %131

131:                                              ; preds = %145, %130
  %132 = load i32, i32* %19, align 4
  %133 = icmp slt i32 %132, 5
  br i1 %133, label %134, label %148

134:                                              ; preds = %131
  %135 = load i32, i32* %19, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %24, i64 0, i64 %136
  store %struct.TYPE_12__* %137, %struct.TYPE_12__** %30, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = load i32*, i32** %28, align 8
  %140 = load i32*, i32** %23, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %142 = call i32 @StoreHuffmanCode(i32* %138, i32* %139, i32* %140, %struct.TYPE_12__* %141)
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %144 = call i32 @ClearHuffmanTreeIfOnlyOneSymbol(%struct.TYPE_12__* %143)
  br label %145

145:                                              ; preds = %134
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %19, align 4
  br label %131

148:                                              ; preds = %131
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %15, align 4
  %151 = load i32*, i32** %22, align 8
  %152 = getelementptr inbounds [1 x i32], [1 x i32]* %25, i64 0, i64 0
  %153 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %24, i64 0, i64 0
  %154 = call i32 @StoreImageToBitMask(i32* %149, i32 %150, i32 0, i32* %151, i32* %152, %struct.TYPE_12__* %153)
  store i32 %154, i32* %21, align 4
  br label %155

155:                                              ; preds = %148, %128, %97, %75, %68, %52, %41
  %156 = load i32*, i32** %23, align 8
  %157 = call i32 @WebPSafeFree(i32* %156)
  %158 = load i32*, i32** %28, align 8
  %159 = call i32 @WebPSafeFree(i32* %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %161 = call i32 @VP8LFreeHistogramSet(%struct.TYPE_11__* %160)
  %162 = getelementptr inbounds [5 x %struct.TYPE_12__], [5 x %struct.TYPE_12__]* %24, i64 0, i64 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @WebPSafeFree(i32* %164)
  %166 = load i32, i32* %21, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @WebPSafeMalloc(i32, i32) #2

declare dso_local i32 @VP8LHashChainFill(i32*, i32, i32*, i32, i32, i32) #2

declare dso_local i32* @VP8LGetBackwardReferences(i32, i32, i32*, i32, i32, i32, i32*, i32*, i32*, i32*) #2

declare dso_local %struct.TYPE_11__* @VP8LAllocateHistogramSet(i32, i32) #2

declare dso_local i32 @VP8LHistogramSetClear(%struct.TYPE_11__*) #2

declare dso_local i32 @VP8LHistogramStoreRefs(i32*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @GetHuffBitLengthsAndCodes(%struct.TYPE_11__*, %struct.TYPE_12__*) #2

declare dso_local i32 @VP8LPutBits(i32*, i32, i32) #2

declare dso_local i32 @StoreHuffmanCode(i32*, i32*, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @ClearHuffmanTreeIfOnlyOneSymbol(%struct.TYPE_12__*) #2

declare dso_local i32 @StoreImageToBitMask(i32*, i32, i32, i32*, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @WebPSafeFree(i32*) #2

declare dso_local i32 @VP8LFreeHistogramSet(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
