; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/generic/simd/extr_convolve5x5_sse.c_convolve_5x5_sse.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/generic/simd/extr_convolve5x5_sse.c_convolve_5x5_sse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convolve_5x5_sse(float* %0, float* %1, float* %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca float*, align 8
  %32 = alloca float*, align 8
  %33 = alloca float*, align 8
  store float* %0, float** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %34 = load float*, float** %9, align 8
  store float* %34, float** %16, align 8
  %35 = load float*, float** %8, align 8
  store float* %35, float** %17, align 8
  %36 = load float*, float** %10, align 8
  store float* %36, float** %18, align 8
  br label %37

37:                                               ; preds = %62, %7
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* %11, align 8
  %40 = sdiv i64 %39, 6
  %41 = mul nsw i64 %40, 6
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load float*, float** %16, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %14, align 8
  %47 = mul nsw i64 %45, %46
  %48 = getelementptr inbounds float, float* %44, i64 %47
  store float* %48, float** %19, align 8
  %49 = load float*, float** %18, align 8
  store float* %49, float** %20, align 8
  %50 = load float*, float** %19, align 8
  store float* %50, float** %21, align 8
  %51 = load float*, float** %17, align 8
  %52 = load float*, float** %21, align 8
  %53 = load float*, float** %20, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @convolve_5x5_6_sse(float* %51, float* %52, float* %53, i64 %54, i64 %55, i64 %56)
  %58 = load i64, i64* %13, align 8
  %59 = mul nsw i64 %58, 6
  %60 = load float*, float** %17, align 8
  %61 = getelementptr inbounds float, float* %60, i64 %59
  store float* %61, float** %17, align 8
  br label %62

62:                                               ; preds = %43
  %63 = load i64, i64* %15, align 8
  %64 = add nsw i64 %63, 6
  store i64 %64, i64* %15, align 8
  br label %37

65:                                               ; preds = %37
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %11, align 8
  %68 = and i64 %67, 4294967294
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %65
  %71 = load i64, i64* %15, align 8
  %72 = srem i64 %71, 4
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load float*, float** %16, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %14, align 8
  %78 = mul nsw i64 %76, %77
  %79 = getelementptr inbounds float, float* %75, i64 %78
  store float* %79, float** %22, align 8
  %80 = load float*, float** %18, align 8
  store float* %80, float** %23, align 8
  %81 = load float*, float** %22, align 8
  store float* %81, float** %24, align 8
  %82 = load float*, float** %17, align 8
  %83 = load float*, float** %24, align 8
  %84 = load float*, float** %23, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @convolve_5x5_2_sse(float* %82, float* %83, float* %84, i64 %85, i64 %86, i64 %87)
  %89 = load i64, i64* %13, align 8
  %90 = mul nsw i64 %89, 2
  %91 = load float*, float** %17, align 8
  %92 = getelementptr inbounds float, float* %91, i64 %90
  store float* %92, float** %17, align 8
  %93 = load i64, i64* %15, align 8
  %94 = add nsw i64 %93, 2
  store i64 %94, i64* %15, align 8
  br label %95

95:                                               ; preds = %74, %70, %65
  br label %96

96:                                               ; preds = %120, %95
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %11, align 8
  %99 = and i64 %98, 4294967292
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %96
  %102 = load float*, float** %16, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %14, align 8
  %105 = mul nsw i64 %103, %104
  %106 = getelementptr inbounds float, float* %102, i64 %105
  store float* %106, float** %25, align 8
  %107 = load float*, float** %18, align 8
  store float* %107, float** %26, align 8
  %108 = load float*, float** %25, align 8
  store float* %108, float** %27, align 8
  %109 = load float*, float** %17, align 8
  %110 = load float*, float** %27, align 8
  %111 = load float*, float** %26, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %14, align 8
  %115 = call i32 @convolve_5x5_4_sse(float* %109, float* %110, float* %111, i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %13, align 8
  %117 = mul nsw i64 %116, 4
  %118 = load float*, float** %17, align 8
  %119 = getelementptr inbounds float, float* %118, i64 %117
  store float* %119, float** %17, align 8
  br label %120

120:                                              ; preds = %101
  %121 = load i64, i64* %15, align 8
  %122 = add nsw i64 %121, 4
  store i64 %122, i64* %15, align 8
  br label %96

123:                                              ; preds = %96
  br label %124

124:                                              ; preds = %148, %123
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* %11, align 8
  %127 = and i64 %126, 4294967294
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %129, label %151

129:                                              ; preds = %124
  %130 = load float*, float** %16, align 8
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* %14, align 8
  %133 = mul nsw i64 %131, %132
  %134 = getelementptr inbounds float, float* %130, i64 %133
  store float* %134, float** %28, align 8
  %135 = load float*, float** %18, align 8
  store float* %135, float** %29, align 8
  %136 = load float*, float** %28, align 8
  store float* %136, float** %30, align 8
  %137 = load float*, float** %17, align 8
  %138 = load float*, float** %30, align 8
  %139 = load float*, float** %29, align 8
  %140 = load i64, i64* %12, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %14, align 8
  %143 = call i32 @convolve_5x5_2_sse(float* %137, float* %138, float* %139, i64 %140, i64 %141, i64 %142)
  %144 = load i64, i64* %13, align 8
  %145 = mul nsw i64 %144, 2
  %146 = load float*, float** %17, align 8
  %147 = getelementptr inbounds float, float* %146, i64 %145
  store float* %147, float** %17, align 8
  br label %148

148:                                              ; preds = %129
  %149 = load i64, i64* %15, align 8
  %150 = add nsw i64 %149, 2
  store i64 %150, i64* %15, align 8
  br label %124

151:                                              ; preds = %124
  br label %152

152:                                              ; preds = %175, %151
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %11, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %152
  %157 = load float*, float** %16, align 8
  %158 = load i64, i64* %15, align 8
  %159 = load i64, i64* %14, align 8
  %160 = mul nsw i64 %158, %159
  %161 = getelementptr inbounds float, float* %157, i64 %160
  store float* %161, float** %31, align 8
  %162 = load float*, float** %18, align 8
  store float* %162, float** %32, align 8
  %163 = load float*, float** %31, align 8
  store float* %163, float** %33, align 8
  %164 = load float*, float** %17, align 8
  %165 = load float*, float** %33, align 8
  %166 = load float*, float** %32, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %14, align 8
  %170 = call i32 @convolve_5x5_1_sse(float* %164, float* %165, float* %166, i64 %167, i64 %168, i64 %169)
  %171 = load i64, i64* %13, align 8
  %172 = mul nsw i64 %171, 1
  %173 = load float*, float** %17, align 8
  %174 = getelementptr inbounds float, float* %173, i64 %172
  store float* %174, float** %17, align 8
  br label %175

175:                                              ; preds = %156
  %176 = load i64, i64* %15, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %15, align 8
  br label %152

178:                                              ; preds = %152
  ret void
}

declare dso_local i32 @convolve_5x5_6_sse(float*, float*, float*, i64, i64, i64) #1

declare dso_local i32 @convolve_5x5_2_sse(float*, float*, float*, i64, i64, i64) #1

declare dso_local i32 @convolve_5x5_4_sse(float*, float*, float*, i64, i64, i64) #1

declare dso_local i32 @convolve_5x5_1_sse(float*, float*, float*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
