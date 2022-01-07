; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_predictor_enc.c_CopyImageWithPrediction.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_predictor_enc.c_CopyImageWithPrediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kPredLowEffort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32)* @CopyImageWithPrediction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyImageWithPrediction(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @VP8LSubSampleSize(i32 %30, i32 %31)
  store i32 %32, i32* %21, align 4
  %33 = load i32*, i32** %15, align 8
  store i32* %33, i32** %22, align 8
  %34 = load i32*, i32** %22, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32* %38, i32** %23, align 8
  %39 = load i32*, i32** %23, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32* %43, i32** %24, align 8
  store i32 0, i32* %25, align 4
  br label %44

44:                                               ; preds = %141, %10
  %45 = load i32, i32* %25, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %144

48:                                               ; preds = %44
  %49 = load i32*, i32** %22, align 8
  store i32* %49, i32** %27, align 8
  %50 = load i32*, i32** %23, align 8
  store i32* %50, i32** %22, align 8
  %51 = load i32*, i32** %27, align 8
  store i32* %51, i32** %23, align 8
  %52 = load i32*, i32** %23, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %25, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %25, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = add nsw i32 %59, %64
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(i32* %52, i32* %58, i32 %68)
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %48
  %73 = load i32, i32* @kPredLowEffort, align 4
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %23, align 8
  %77 = load i32*, i32** %22, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = call i32 @PredictBatch(i32 %73, i32 0, i32 %74, i32 %75, i32* %76, i32* %77, i32* %83)
  br label %140

85:                                               ; preds = %48
  store i32 0, i32* %26, align 4
  br label %86

86:                                               ; preds = %115, %85
  %87 = load i32, i32* %26, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %139

90:                                               ; preds = %86
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %25, align 4
  %93 = load i32, i32* %13, align 4
  %94 = ashr i32 %92, %93
  %95 = load i32, i32* %21, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %26, align 4
  %98 = load i32, i32* %13, align 4
  %99 = ashr i32 %97, %98
  %100 = add nsw i32 %96, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %91, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 8
  %105 = and i32 %104, 255
  store i32 %105, i32* %28, align 4
  %106 = load i32, i32* %26, align 4
  %107 = load i32, i32* %13, align 4
  %108 = shl i32 1, %107
  %109 = add nsw i32 %106, %108
  store i32 %109, i32* %29, align 4
  %110 = load i32, i32* %29, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %90
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %29, align 4
  br label %115

115:                                              ; preds = %113, %90
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32*, i32** %22, align 8
  %119 = load i32*, i32** %23, align 8
  %120 = load i32*, i32** %24, align 8
  %121 = load i32, i32* %28, align 4
  %122 = load i32, i32* %26, align 4
  %123 = load i32, i32* %29, align 4
  %124 = load i32, i32* %25, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %20, align 4
  %128 = load i32*, i32** %16, align 8
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* %11, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  %134 = load i32, i32* %26, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = call i32 @GetResidual(i32 %116, i32 %117, i32* %118, i32* %119, i32* %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32* %136)
  %138 = load i32, i32* %29, align 4
  store i32 %138, i32* %26, align 4
  br label %86

139:                                              ; preds = %86
  br label %140

140:                                              ; preds = %139, %72
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %25, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %25, align 4
  br label %44

144:                                              ; preds = %44
  ret void
}

declare dso_local i32 @VP8LSubSampleSize(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @PredictBatch(i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @GetResidual(i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
