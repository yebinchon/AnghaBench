; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_predictor_enc.c_VP8LResidualImage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_predictor_enc.c_VP8LResidualImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARGB_BLACK = common dso_local global i32 0, align 4
@kPredLowEffort = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VP8LResidualImage(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [4 x [256 x i32]], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @VP8LSubSampleSize(i32 %29, i32 %30)
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @VP8LSubSampleSize(i32 %32, i32 %33)
  store i32 %34, i32* %22, align 4
  %35 = load i32, i32* %18, align 4
  %36 = call i32 @VP8LNearLosslessBits(i32 %35)
  %37 = shl i32 1, %36
  store i32 %37, i32* %25, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %10
  store i32 0, i32* %26, align 4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %26, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %22, align 4
  %45 = mul nsw i32 %43, %44
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load i32, i32* @ARGB_BLACK, align 4
  %49 = load i32, i32* @kPredLowEffort, align 4
  %50 = shl i32 %49, 8
  %51 = or i32 %48, %50
  %52 = load i32*, i32** %17, align 8
  %53 = load i32, i32* %26, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %26, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %26, align 4
  br label %41

59:                                               ; preds = %41
  br label %108

60:                                               ; preds = %10
  %61 = getelementptr inbounds [4 x [256 x i32]], [4 x [256 x i32]]* %24, i64 0, i64 0
  %62 = bitcast [256 x i32]* %61 to i32**
  %63 = call i32 @memset(i32** %62, i32 0, i32 4096)
  store i32 0, i32* %23, align 4
  br label %64

64:                                               ; preds = %104, %60
  %65 = load i32, i32* %23, align 4
  %66 = load i32, i32* %22, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %107

68:                                               ; preds = %64
  store i32 0, i32* %27, align 4
  br label %69

69:                                               ; preds = %100, %68
  %70 = load i32, i32* %27, align 4
  %71 = load i32, i32* %21, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %27, align 4
  %77 = load i32, i32* %23, align 4
  %78 = load i32, i32* %13, align 4
  %79 = getelementptr inbounds [4 x [256 x i32]], [4 x [256 x i32]]* %24, i64 0, i64 0
  %80 = bitcast [256 x i32]* %79 to i32**
  %81 = load i32*, i32** %16, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %25, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32*, i32** %17, align 8
  %87 = call i32 @GetBestPredictorForTile(i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32** %80, i32* %81, i32* %82, i32 %83, i32 %84, i32 %85, i32* %86)
  store i32 %87, i32* %28, align 4
  %88 = load i32, i32* @ARGB_BLACK, align 4
  %89 = load i32, i32* %28, align 4
  %90 = shl i32 %89, 8
  %91 = or i32 %88, %90
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %23, align 4
  %94 = load i32, i32* %21, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %27, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %92, i64 %98
  store i32 %91, i32* %99, align 4
  br label %100

100:                                              ; preds = %73
  %101 = load i32, i32* %27, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %27, align 4
  br label %69

103:                                              ; preds = %69
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %23, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %23, align 4
  br label %64

107:                                              ; preds = %64
  br label %108

108:                                              ; preds = %107, %59
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32*, i32** %17, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %20, align 4
  %119 = call i32 @CopyImageWithPrediction(i32 %109, i32 %110, i32 %111, i32* %112, i32* %113, i32* %114, i32 %115, i32 %116, i32 %117, i32 %118)
  ret void
}

declare dso_local i32 @VP8LSubSampleSize(i32, i32) #1

declare dso_local i32 @VP8LNearLosslessBits(i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @GetBestPredictorForTile(i32, i32, i32, i32, i32, i32**, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @CopyImageWithPrediction(i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
