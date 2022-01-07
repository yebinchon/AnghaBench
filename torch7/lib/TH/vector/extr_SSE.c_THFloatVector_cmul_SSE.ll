; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THFloatVector_cmul_SSE.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/vector/extr_SSE.c_THFloatVector_cmul_SSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32)* @THFloatVector_cmul_SSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @THFloatVector_cmul_SSE(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %121, %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 16
  %22 = icmp sle i32 %19, %21
  br i1 %22, label %23, label %124

23:                                               ; preds = %18
  %24 = load float*, float** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  %28 = ptrtoint float* %27 to i64
  %29 = call i32 @_mm_loadu_ps(i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load float*, float** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = getelementptr inbounds float, float* %33, i64 4
  %35 = ptrtoint float* %34 to i64
  %36 = call i32 @_mm_loadu_ps(i64 %35)
  store i32 %36, i32* %11, align 4
  %37 = load float*, float** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = getelementptr inbounds float, float* %40, i64 8
  %42 = ptrtoint float* %41 to i64
  %43 = call i32 @_mm_loadu_ps(i64 %42)
  store i32 %43, i32* %12, align 4
  %44 = load float*, float** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = getelementptr inbounds float, float* %47, i64 12
  %49 = ptrtoint float* %48 to i64
  %50 = call i32 @_mm_loadu_ps(i64 %49)
  store i32 %50, i32* %13, align 4
  %51 = load float*, float** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = ptrtoint float* %54 to i64
  %56 = call i32 @_mm_loadu_ps(i64 %55)
  store i32 %56, i32* %14, align 4
  %57 = load float*, float** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = getelementptr inbounds float, float* %60, i64 4
  %62 = ptrtoint float* %61 to i64
  %63 = call i32 @_mm_loadu_ps(i64 %62)
  store i32 %63, i32* %15, align 4
  %64 = load float*, float** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = getelementptr inbounds float, float* %67, i64 8
  %69 = ptrtoint float* %68 to i64
  %70 = call i32 @_mm_loadu_ps(i64 %69)
  store i32 %70, i32* %16, align 4
  %71 = load float*, float** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  %75 = getelementptr inbounds float, float* %74, i64 12
  %76 = ptrtoint float* %75 to i64
  %77 = call i32 @_mm_loadu_ps(i64 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @_mm_mul_ps(i32 %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @_mm_mul_ps(i32 %81, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @_mm_mul_ps(i32 %84, i32 %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @_mm_mul_ps(i32 %87, i32 %88)
  store i32 %89, i32* %17, align 4
  %90 = load float*, float** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = ptrtoint float* %93 to i64
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @_mm_storeu_ps(i64 %94, i32 %95)
  %97 = load float*, float** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = getelementptr inbounds float, float* %100, i64 4
  %102 = ptrtoint float* %101 to i64
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @_mm_storeu_ps(i64 %102, i32 %103)
  %105 = load float*, float** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  %109 = getelementptr inbounds float, float* %108, i64 8
  %110 = ptrtoint float* %109 to i64
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @_mm_storeu_ps(i64 %110, i32 %111)
  %113 = load float*, float** %5, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = getelementptr inbounds float, float* %116, i64 12
  %118 = ptrtoint float* %117 to i64
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @_mm_storeu_ps(i64 %118, i32 %119)
  br label %121

121:                                              ; preds = %23
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 16
  store i32 %123, i32* %9, align 4
  br label %18

124:                                              ; preds = %18
  br label %125

125:                                              ; preds = %145, %124
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %148

129:                                              ; preds = %125
  %130 = load float*, float** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  %134 = load float, float* %133, align 4
  %135 = load float*, float** %7, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fmul float %134, %139
  %141 = load float*, float** %5, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  store float %140, float* %144, align 4
  br label %145

145:                                              ; preds = %129
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %125

148:                                              ; preds = %125
  ret void
}

declare dso_local i32 @_mm_loadu_ps(i64) #1

declare dso_local i32 @_mm_mul_ps(i32, i32) #1

declare dso_local i32 @_mm_storeu_ps(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
