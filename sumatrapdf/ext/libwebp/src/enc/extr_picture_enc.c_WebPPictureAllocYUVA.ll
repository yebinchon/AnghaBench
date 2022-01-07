; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_enc.c_WebPPictureAllocYUVA.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_enc.c_WebPPictureAllocYUVA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32*, i32*, i32*, i8*, i64 }

@WEBP_CSP_UV_MASK = common dso_local global i32 0, align 4
@WEBP_CSP_ALPHA_BIT = common dso_local global i32 0, align 4
@WEBP_YUV420 = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_INVALID_CONFIGURATION = common dso_local global i32 0, align 4
@VP8_ENC_ERROR_BAD_DIMENSION = common dso_local global i32 0, align 4
@VP8_ENC_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPPictureAllocYUVA(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @WEBP_CSP_UV_MASK, align 4
  %26 = and i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 8
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @WEBP_CSP_ALPHA_BIT, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %13, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 7
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @WebPSafeFree(i8* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = call i32 @WebPPictureResetBufferYUVA(%struct.TYPE_5__* %50)
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @WEBP_YUV420, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = load i32, i32* @VP8_ENC_ERROR_INVALID_CONFIGURATION, align 4
  %58 = call i32 @WebPEncodingSetError(%struct.TYPE_5__* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %155

59:                                               ; preds = %3
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  br label %65

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %68, %69
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %17, align 4
  %81 = mul nsw i32 2, %80
  %82 = add nsw i32 %79, %81
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %65
  %86 = load i32, i32* %7, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %11, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91, %88, %85, %65
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = load i32, i32* @VP8_ENC_ERROR_BAD_DIMENSION, align 4
  %97 = call i32 @WebPEncodingSetError(%struct.TYPE_5__* %95, i32 %96)
  store i32 %97, i32* %4, align 4
  br label %155

98:                                               ; preds = %91
  %99 = load i32, i32* %19, align 4
  %100 = call i64 @WebPSafeMalloc(i32 %99, i32 4)
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** %20, align 8
  %102 = load i32*, i32** %20, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %106 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  %107 = call i32 @WebPEncodingSetError(%struct.TYPE_5__* %105, i32 %106)
  store i32 %107, i32* %4, align 4
  br label %155

108:                                              ; preds = %98
  %109 = load i32*, i32** %20, align 8
  %110 = bitcast i32* %109 to i8*
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 7
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 6
  store i32* %122, i32** %124, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load i32*, i32** %20, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %20, align 8
  %129 = load i32*, i32** %20, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 5
  store i32* %129, i32** %131, align 8
  %132 = load i32, i32* %17, align 4
  %133 = load i32*, i32** %20, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %20, align 8
  %136 = load i32*, i32** %20, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 4
  store i32* %136, i32** %138, align 8
  %139 = load i32, i32* %17, align 4
  %140 = load i32*, i32** %20, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %20, align 8
  %143 = load i32, i32* %18, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %108
  %146 = load i32*, i32** %20, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  store i32* %146, i32** %148, align 8
  %149 = load i32, i32* %18, align 4
  %150 = load i32*, i32** %20, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %20, align 8
  br label %153

153:                                              ; preds = %145, %108
  %154 = load i32*, i32** %20, align 8
  store i32 1, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %104, %94, %55
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WebPSafeFree(i8*) #1

declare dso_local i32 @WebPPictureResetBufferYUVA(%struct.TYPE_5__*) #1

declare dso_local i32 @WebPEncodingSetError(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @WebPSafeMalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
