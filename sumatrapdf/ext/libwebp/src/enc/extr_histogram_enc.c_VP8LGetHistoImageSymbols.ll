; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_VP8LGetHistoImageSymbols.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_VP8LGetHistoImageSymbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_PARTITIONS = common dso_local global i32 0, align 4
@BIN_SIZE = common dso_local global i32 0, align 4
@MAX_HISTO_GREEDY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VP8LGetHistoImageSymbols(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  store i32 0, i32* %21, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %10
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @VP8LSubSampleSize(i32 %40, i32 %41)
  br label %44

43:                                               ; preds = %10
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ %42, %39 ], [ 1, %43 ]
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @VP8LSubSampleSize(i32 %49, i32 %50)
  br label %53

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ %51, %48 ], [ 1, %52 ]
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %22, align 4
  %56 = load i32, i32* %23, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %24, align 4
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32* @VP8LAllocateHistogramSet(i32 %58, i32 %59)
  store i32* %60, i32** %25, align 8
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @NUM_PARTITIONS, align 4
  br label %67

65:                                               ; preds = %53
  %66 = load i32, i32* @BIN_SIZE, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %26, align 4
  %69 = load i32, i32* %24, align 4
  %70 = mul nsw i32 2, %69
  %71 = call i32* @WebPSafeMalloc(i32 %70, i32 8)
  store i32* %71, i32** %28, align 8
  %72 = load i32*, i32** %28, align 8
  %73 = load i32, i32* %24, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32* %75, i32** %29, align 8
  %76 = load i32, i32* %24, align 4
  store i32 %76, i32* %30, align 4
  %77 = load i32*, i32** %25, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %67
  %80 = load i32*, i32** %28, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %67
  br label %175

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = load i32*, i32** %25, align 8
  %88 = call i32 @HistogramBuild(i32 %84, i32 %85, i32* %86, i32* %87)
  %89 = load i32*, i32** %25, align 8
  %90 = load i32*, i32** %18, align 8
  %91 = load i32*, i32** %20, align 8
  %92 = call i32 @HistogramCopyAndAnalyze(i32* %89, i32* %90, i32* %30, i32* %91)
  %93 = load i32, i32* %30, align 4
  %94 = load i32, i32* %26, align 4
  %95 = mul nsw i32 %94, 2
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %83
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 100
  br label %100

100:                                              ; preds = %97, %83
  %101 = phi i1 [ false, %83 ], [ %99, %97 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %27, align 4
  %103 = load i32, i32* %27, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %100
  %106 = load i32*, i32** %28, align 8
  store i32* %106, i32** %31, align 8
  %107 = load i32, i32* %24, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call double @GetCombineCostFactor(i32 %107, i32 %108)
  store double %109, double* %32, align 8
  %110 = load i32, i32* %30, align 4
  store i32 %110, i32* %33, align 4
  %111 = load i32*, i32** %18, align 8
  %112 = load i32*, i32** %31, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @HistogramAnalyzeEntropyBin(i32* %111, i32* %112, i32 %113)
  %115 = load i32*, i32** %18, align 8
  %116 = load i32*, i32** %20, align 8
  %117 = load i32*, i32** %29, align 8
  %118 = load i32*, i32** %19, align 8
  %119 = load i32*, i32** %31, align 8
  %120 = load i32, i32* %26, align 4
  %121 = load double, double* %32, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @HistogramCombineEntropyBin(i32* %115, i32* %30, i32* %116, i32* %117, i32* %118, i32* %119, i32 %120, double %121, i32 %122)
  %124 = load i32*, i32** %18, align 8
  %125 = load i32*, i32** %29, align 8
  %126 = load i32, i32* %33, align 4
  %127 = load i32*, i32** %28, align 8
  %128 = load i32*, i32** %20, align 8
  %129 = call i32 @OptimizeHistogramSymbols(i32* %124, i32* %125, i32 %126, i32* %127, i32* %128)
  br label %130

130:                                              ; preds = %105, %100
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %27, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %168, label %136

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %14, align 4
  %138 = sitofp i32 %137 to float
  %139 = fdiv float %138, 1.000000e+02
  store float %139, float* %34, align 4
  %140 = load float, float* %34, align 4
  %141 = load float, float* %34, align 4
  %142 = fmul float %140, %141
  %143 = load float, float* %34, align 4
  %144 = fmul float %142, %143
  %145 = load i32, i32* @MAX_HISTO_GREEDY, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sitofp i32 %146 to float
  %148 = fmul float %144, %147
  %149 = fadd float 1.000000e+00, %148
  %150 = fptosi float %149 to i32
  store i32 %150, i32* %35, align 4
  %151 = load i32*, i32** %18, align 8
  %152 = load i32, i32* %35, align 4
  %153 = call i32 @HistogramCombineStochastic(i32* %151, i32* %30, i32 %152, i32* %36)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %136
  br label %175

156:                                              ; preds = %136
  %157 = load i32, i32* %36, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load i32*, i32** %18, align 8
  %161 = call i32 @RemoveEmptyHistograms(i32* %160)
  %162 = load i32*, i32** %18, align 8
  %163 = call i32 @HistogramCombineGreedy(i32* %162, i32* %30)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %159
  br label %175

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %156
  br label %168

168:                                              ; preds = %167, %133
  %169 = load i32*, i32** %18, align 8
  %170 = call i32 @RemoveEmptyHistograms(i32* %169)
  %171 = load i32*, i32** %25, align 8
  %172 = load i32*, i32** %18, align 8
  %173 = load i32*, i32** %20, align 8
  %174 = call i32 @HistogramRemap(i32* %171, i32* %172, i32* %173)
  store i32 1, i32* %21, align 4
  br label %175

175:                                              ; preds = %168, %165, %155, %82
  %176 = load i32*, i32** %25, align 8
  %177 = call i32 @VP8LFreeHistogramSet(i32* %176)
  %178 = load i32*, i32** %28, align 8
  %179 = call i32 @WebPSafeFree(i32* %178)
  %180 = load i32, i32* %21, align 4
  ret i32 %180
}

declare dso_local i32 @VP8LSubSampleSize(i32, i32) #1

declare dso_local i32* @VP8LAllocateHistogramSet(i32, i32) #1

declare dso_local i32* @WebPSafeMalloc(i32, i32) #1

declare dso_local i32 @HistogramBuild(i32, i32, i32*, i32*) #1

declare dso_local i32 @HistogramCopyAndAnalyze(i32*, i32*, i32*, i32*) #1

declare dso_local double @GetCombineCostFactor(i32, i32) #1

declare dso_local i32 @HistogramAnalyzeEntropyBin(i32*, i32*, i32) #1

declare dso_local i32 @HistogramCombineEntropyBin(i32*, i32*, i32*, i32*, i32*, i32*, i32, double, i32) #1

declare dso_local i32 @OptimizeHistogramSymbols(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @HistogramCombineStochastic(i32*, i32*, i32, i32*) #1

declare dso_local i32 @RemoveEmptyHistograms(i32*) #1

declare dso_local i32 @HistogramCombineGreedy(i32*, i32*) #1

declare dso_local i32 @HistogramRemap(i32*, i32*, i32*) #1

declare dso_local i32 @VP8LFreeHistogramSet(i32*) #1

declare dso_local i32 @WebPSafeFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
