; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_backward_references_enc.c_GetBackwardReferences.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_backward_references_enc.c_GetBackwardReferences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COLOR_CACHE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32*, i32, i32, i32*, i32*, i32*, i32*)* @GetBackwardReferences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetBackwardReferences(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca double, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %19, align 4
  store double -1.000000e+00, double* %20, align 8
  store i32* null, i32** %21, align 8
  store i32 0, i32* %23, align 4
  %33 = call i32 @memset(i32* %24, i32 0, i32 4)
  %34 = load i32, i32* @MAX_COLOR_CACHE_BITS, align 4
  %35 = call i32* @VP8LAllocateHistogram(i32 %34)
  store i32* %35, i32** %21, align 8
  %36 = load i32*, i32** %21, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %9
  br label %182

39:                                               ; preds = %9
  store i32 1, i32* %22, align 4
  br label %40

40:                                               ; preds = %125, %39
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %132

43:                                               ; preds = %40
  store i32 0, i32* %25, align 4
  %44 = load i32, i32* %19, align 4
  store i32 %44, i32* %27, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %22, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %125

50:                                               ; preds = %43
  %51 = load i32, i32* %22, align 4
  switch i32 %51, label %79 [
    i32 129, label %52
    i32 128, label %58
    i32 130, label %65
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = call i32 @BackwardReferencesRle(i32 %53, i32 %54, i32* %55, i32 0, i32* %56)
  store i32 %57, i32* %25, align 4
  br label %81

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = load i32*, i32** %18, align 8
  %64 = call i32 @BackwardReferencesLz77(i32 %59, i32 %60, i32* %61, i32 0, i32* %62, i32* %63)
  store i32 %64, i32* %25, align 4
  br label %81

65:                                               ; preds = %50
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 %66, %67
  %69 = call i32 @VP8LHashChainInit(i32* %24, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %182

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = load i32*, i32** %18, align 8
  %78 = call i32 @BackwardReferencesLz77Box(i32 %73, i32 %74, i32* %75, i32 0, i32* %76, i32* %24, i32* %77)
  store i32 %78, i32* %25, align 4
  br label %81

79:                                               ; preds = %50
  %80 = call i32 @assert(i32 0)
  br label %81

81:                                               ; preds = %79, %72, %58, %52
  %82 = load i32, i32* %25, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  br label %182

85:                                               ; preds = %81
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32*, i32** %18, align 8
  %89 = call i32 @CalculateBestCacheSize(i32* %86, i32 %87, i32* %88, i32* %27)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %182

92:                                               ; preds = %85
  %93 = load i32, i32* %27, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %27, align 4
  %98 = load i32*, i32** %18, align 8
  %99 = call i32 @BackwardRefsWithLocalCache(i32* %96, i32 %97, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  br label %182

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %92
  %104 = load i32*, i32** %21, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = load i32, i32* %27, align 4
  %107 = call i32 @VP8LHistogramCreate(i32* %104, i32* %105, i32 %106)
  %108 = load i32*, i32** %21, align 8
  %109 = call double @VP8LHistogramEstimateBits(i32* %108)
  store double %109, double* %26, align 8
  %110 = load i32, i32* %23, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %103
  %113 = load double, double* %26, align 8
  %114 = load double, double* %20, align 8
  %115 = fcmp olt double %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112, %103
  %117 = load i32*, i32** %18, align 8
  store i32* %117, i32** %28, align 8
  %118 = load i32*, i32** %17, align 8
  store i32* %118, i32** %18, align 8
  %119 = load i32*, i32** %28, align 8
  store i32* %119, i32** %17, align 8
  %120 = load double, double* %26, align 8
  store double %120, double* %20, align 8
  %121 = load i32, i32* %27, align 4
  %122 = load i32*, i32** %15, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %22, align 4
  store i32 %123, i32* %23, align 4
  br label %124

124:                                              ; preds = %116, %112
  br label %125

125:                                              ; preds = %124, %49
  %126 = load i32, i32* %22, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %14, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %22, align 4
  %131 = shl i32 %130, 1
  store i32 %131, i32* %22, align 4
  br label %40

132:                                              ; preds = %40
  %133 = load i32, i32* %23, align 4
  %134 = icmp sgt i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32, i32* %23, align 4
  %138 = icmp eq i32 %137, 128
  br i1 %138, label %142, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %23, align 4
  %141 = icmp eq i32 %140, 130
  br i1 %141, label %142, label %178

142:                                              ; preds = %139, %132
  %143 = load i32, i32* %13, align 4
  %144 = icmp sge i32 %143, 25
  br i1 %144, label %145, label %178

145:                                              ; preds = %142
  %146 = load i32, i32* %23, align 4
  %147 = icmp eq i32 %146, 128
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32*, i32** %16, align 8
  br label %151

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150, %148
  %152 = phi i32* [ %149, %148 ], [ %24, %150 ]
  store i32* %152, i32** %29, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i32*, i32** %12, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %29, align 8
  %159 = load i32*, i32** %17, align 8
  %160 = load i32*, i32** %18, align 8
  %161 = call i64 @VP8LBackwardReferencesTraceBackwards(i32 %153, i32 %154, i32* %155, i32 %157, i32* %158, i32* %159, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %151
  %164 = load i32*, i32** %21, align 8
  %165 = load i32*, i32** %18, align 8
  %166 = load i32*, i32** %15, align 8
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @VP8LHistogramCreate(i32* %164, i32* %165, i32 %167)
  %169 = load i32*, i32** %21, align 8
  %170 = call double @VP8LHistogramEstimateBits(i32* %169)
  store double %170, double* %30, align 8
  %171 = load double, double* %30, align 8
  %172 = load double, double* %20, align 8
  %173 = fcmp olt double %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i32*, i32** %18, align 8
  store i32* %175, i32** %17, align 8
  br label %176

176:                                              ; preds = %174, %163
  br label %177

177:                                              ; preds = %176, %151
  br label %178

178:                                              ; preds = %177, %142, %139
  %179 = load i32, i32* %10, align 4
  %180 = load i32*, i32** %17, align 8
  %181 = call i32 @BackwardReferences2DLocality(i32 %179, i32* %180)
  br label %182

182:                                              ; preds = %178, %101, %91, %84, %71, %38
  %183 = call i32 @VP8LHashChainClear(i32* %24)
  %184 = load i32*, i32** %21, align 8
  %185 = call i32 @VP8LFreeHistogram(i32* %184)
  %186 = load i32*, i32** %17, align 8
  ret i32* %186
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @VP8LAllocateHistogram(i32) #1

declare dso_local i32 @BackwardReferencesRle(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @BackwardReferencesLz77(i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @VP8LHashChainInit(i32*, i32) #1

declare dso_local i32 @BackwardReferencesLz77Box(i32, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CalculateBestCacheSize(i32*, i32, i32*, i32*) #1

declare dso_local i32 @BackwardRefsWithLocalCache(i32*, i32, i32*) #1

declare dso_local i32 @VP8LHistogramCreate(i32*, i32*, i32) #1

declare dso_local double @VP8LHistogramEstimateBits(i32*) #1

declare dso_local i64 @VP8LBackwardReferencesTraceBackwards(i32, i32, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @BackwardReferences2DLocality(i32, i32*) #1

declare dso_local i32 @VP8LHashChainClear(i32*) #1

declare dso_local i32 @VP8LFreeHistogram(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
