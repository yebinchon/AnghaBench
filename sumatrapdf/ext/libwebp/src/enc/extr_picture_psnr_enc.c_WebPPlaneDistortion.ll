; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_psnr_enc.c_WebPPlaneDistortion.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_psnr_enc.c_WebPPlaneDistortion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPPlaneDistortion(i32* %0, i64 %1, i32* %2, i64 %3, i32 %4, i32 %5, i64 %6, i32 %7, float* %8, float* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64 (i32*, i32, i32*, i32, i32, i32)*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store float* %8, float** %20, align 8
  store float* %9, float** %21, align 8
  store i32* null, i32** %22, align 8
  %28 = load i32, i32* %19, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  br label %36

31:                                               ; preds = %10
  %32 = load i32, i32* %19, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i64 (i32*, i32, i32*, i32, i32, i32)* @AccumulateSSIM, i64 (i32*, i32, i32*, i32, i32, i32)* @AccumulateLSIM
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi i64 (i32*, i32, i32*, i32, i32, i32)* [ @AccumulateSSE, %30 ], [ %35, %31 ]
  store i64 (i32*, i32, i32*, i32, i32, i32)* %37, i64 (i32*, i32, i32*, i32, i32, i32)** %23, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %63, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %14, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %63, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %18, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %45, %47
  %49 = icmp ult i64 %44, %48
  br i1 %49, label %63, label %50

50:                                               ; preds = %43
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %18, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %52, %54
  %56 = icmp ult i64 %51, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load float*, float** %21, align 8
  %59 = icmp eq float* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load float*, float** %20, align 8
  %62 = icmp eq float* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %57, %50, %43, %40, %36
  store i32 0, i32* %11, align 4
  br label %187

64:                                               ; preds = %60
  %65 = call i32 (...) @VP8SSIMDspInit()
  %66 = load i64, i64* %18, align 8
  %67 = icmp ne i64 %66, 1
  br i1 %67, label %68, label %149

68:                                               ; preds = %64
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 2, %70
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %71, %73
  %75 = call i64 @WebPSafeMalloc(i64 %74, i32 4)
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %22, align 8
  %77 = load i32*, i32** %22, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %187

80:                                               ; preds = %68
  %81 = load i32*, i32** %22, align 8
  store i32* %81, i32** %26, align 8
  %82 = load i32*, i32** %26, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %84, %86
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  store i32* %88, i32** %27, align 8
  store i32 0, i32* %25, align 4
  br label %89

89:                                               ; preds = %143, %80
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %146

93:                                               ; preds = %89
  store i32 0, i32* %24, align 4
  br label %94

94:                                               ; preds = %139, %93
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %142

98:                                               ; preds = %94
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %24, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %18, align 8
  %103 = mul i64 %101, %102
  %104 = load i32, i32* %25, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %13, align 8
  %107 = mul i64 %105, %106
  %108 = add i64 %103, %107
  %109 = getelementptr inbounds i32, i32* %99, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %26, align 8
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %16, align 4
  %115 = mul nsw i32 %113, %114
  %116 = add nsw i32 %112, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %111, i64 %117
  store i32 %110, i32* %118, align 4
  %119 = load i32*, i32** %14, align 8
  %120 = load i32, i32* %24, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %18, align 8
  %123 = mul i64 %121, %122
  %124 = load i32, i32* %25, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %15, align 8
  %127 = mul i64 %125, %126
  %128 = add i64 %123, %127
  %129 = getelementptr inbounds i32, i32* %119, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %27, align 8
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %16, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 %132, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %131, i64 %137
  store i32 %130, i32* %138, align 4
  br label %139

139:                                              ; preds = %98
  %140 = load i32, i32* %24, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %24, align 4
  br label %94

142:                                              ; preds = %94
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %25, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %25, align 4
  br label %89

146:                                              ; preds = %89
  %147 = load i32*, i32** %26, align 8
  store i32* %147, i32** %12, align 8
  %148 = load i32*, i32** %27, align 8
  store i32* %148, i32** %14, align 8
  br label %149

149:                                              ; preds = %146, %64
  %150 = load i64 (i32*, i32, i32*, i32, i32, i32)*, i64 (i32*, i32, i32*, i32, i32, i32)** %23, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = load i32, i32* %16, align 4
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = call i64 %150(i32* %151, i32 %152, i32* %153, i32 %154, i32 %155, i32 %156)
  %158 = sitofp i64 %157 to float
  %159 = load float*, float** %20, align 8
  store float %158, float* %159, align 4
  %160 = load i32*, i32** %22, align 8
  %161 = call i32 @WebPSafeFree(i32* %160)
  %162 = load i32, i32* %19, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %174

164:                                              ; preds = %149
  %165 = load float*, float** %20, align 8
  %166 = load float, float* %165, align 4
  %167 = load i32, i32* %16, align 4
  %168 = sitofp i32 %167 to double
  %169 = load i32, i32* %17, align 4
  %170 = sitofp i32 %169 to double
  %171 = fmul double %168, %170
  %172 = call i64 @GetLogSSIM(float %166, double %171)
  %173 = sitofp i64 %172 to float
  br label %184

174:                                              ; preds = %149
  %175 = load float*, float** %20, align 8
  %176 = load float, float* %175, align 4
  %177 = load i32, i32* %16, align 4
  %178 = sitofp i32 %177 to double
  %179 = load i32, i32* %17, align 4
  %180 = sitofp i32 %179 to double
  %181 = fmul double %178, %180
  %182 = call i64 @GetPSNR(float %176, double %181)
  %183 = sitofp i64 %182 to float
  br label %184

184:                                              ; preds = %174, %164
  %185 = phi float [ %173, %164 ], [ %183, %174 ]
  %186 = load float*, float** %21, align 8
  store float %185, float* %186, align 4
  store i32 1, i32* %11, align 4
  br label %187

187:                                              ; preds = %184, %79, %63
  %188 = load i32, i32* %11, align 4
  ret i32 %188
}

declare dso_local i64 @AccumulateSSE(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @AccumulateSSIM(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @AccumulateLSIM(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @VP8SSIMDspInit(...) #1

declare dso_local i64 @WebPSafeMalloc(i64, i32) #1

declare dso_local i32 @WebPSafeFree(i32*) #1

declare dso_local i64 @GetLogSSIM(float, double) #1

declare dso_local i64 @GetPSNR(float, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
