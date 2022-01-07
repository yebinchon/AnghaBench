; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_newell_normal.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_newell_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_newell_normal(float* %0, i32 %1, float** %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store float** %2, float*** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load float*, float** %5, align 8
  %15 = getelementptr inbounds float, float* %14, i64 2
  store float 0.000000e+00, float* %15, align 4
  %16 = load float*, float** %5, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  store float 0.000000e+00, float* %17, align 4
  %18 = load float*, float** %5, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  store float 0.000000e+00, float* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %94, %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %97

26:                                               ; preds = %22
  %27 = load float**, float*** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float*, float** %27, i64 %29
  %31 = load float*, float** %30, align 8
  store float* %31, float** %12, align 8
  %32 = load float**, float*** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float*, float** %32, i64 %34
  %36 = load float*, float** %35, align 8
  store float* %36, float** %13, align 8
  %37 = load float*, float** %12, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  %39 = load float, float* %38, align 4
  %40 = load float*, float** %13, align 8
  %41 = getelementptr inbounds float, float* %40, i64 1
  %42 = load float, float* %41, align 4
  %43 = fsub float %39, %42
  %44 = load float*, float** %12, align 8
  %45 = getelementptr inbounds float, float* %44, i64 2
  %46 = load float, float* %45, align 4
  %47 = load float*, float** %13, align 8
  %48 = getelementptr inbounds float, float* %47, i64 2
  %49 = load float, float* %48, align 4
  %50 = fadd float %46, %49
  %51 = fmul float %43, %50
  %52 = load float*, float** %5, align 8
  %53 = getelementptr inbounds float, float* %52, i64 0
  %54 = load float, float* %53, align 4
  %55 = fadd float %54, %51
  store float %55, float* %53, align 4
  %56 = load float*, float** %12, align 8
  %57 = getelementptr inbounds float, float* %56, i64 2
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %13, align 8
  %60 = getelementptr inbounds float, float* %59, i64 2
  %61 = load float, float* %60, align 4
  %62 = fsub float %58, %61
  %63 = load float*, float** %12, align 8
  %64 = getelementptr inbounds float, float* %63, i64 0
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %13, align 8
  %67 = getelementptr inbounds float, float* %66, i64 0
  %68 = load float, float* %67, align 4
  %69 = fadd float %65, %68
  %70 = fmul float %62, %69
  %71 = load float*, float** %5, align 8
  %72 = getelementptr inbounds float, float* %71, i64 1
  %73 = load float, float* %72, align 4
  %74 = fadd float %73, %70
  store float %74, float* %72, align 4
  %75 = load float*, float** %12, align 8
  %76 = getelementptr inbounds float, float* %75, i64 0
  %77 = load float, float* %76, align 4
  %78 = load float*, float** %13, align 8
  %79 = getelementptr inbounds float, float* %78, i64 0
  %80 = load float, float* %79, align 4
  %81 = fsub float %77, %80
  %82 = load float*, float** %12, align 8
  %83 = getelementptr inbounds float, float* %82, i64 1
  %84 = load float, float* %83, align 4
  %85 = load float*, float** %13, align 8
  %86 = getelementptr inbounds float, float* %85, i64 1
  %87 = load float, float* %86, align 4
  %88 = fadd float %84, %87
  %89 = fmul float %81, %88
  %90 = load float*, float** %5, align 8
  %91 = getelementptr inbounds float, float* %90, i64 2
  %92 = load float, float* %91, align 4
  %93 = fadd float %92, %89
  store float %93, float* %91, align 4
  br label %94

94:                                               ; preds = %26
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  store i32 %95, i32* %9, align 4
  br label %22

97:                                               ; preds = %22
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %143

100:                                              ; preds = %97
  %101 = load float*, float** %5, align 8
  %102 = getelementptr inbounds float, float* %101, i64 0
  %103 = load float, float* %102, align 4
  %104 = load float*, float** %5, align 8
  %105 = getelementptr inbounds float, float* %104, i64 0
  %106 = load float, float* %105, align 4
  %107 = fmul float %103, %106
  %108 = load float*, float** %5, align 8
  %109 = getelementptr inbounds float, float* %108, i64 1
  %110 = load float, float* %109, align 4
  %111 = load float*, float** %5, align 8
  %112 = getelementptr inbounds float, float* %111, i64 1
  %113 = load float, float* %112, align 4
  %114 = fmul float %110, %113
  %115 = fadd float %107, %114
  %116 = load float*, float** %5, align 8
  %117 = getelementptr inbounds float, float* %116, i64 2
  %118 = load float, float* %117, align 4
  %119 = load float*, float** %5, align 8
  %120 = getelementptr inbounds float, float* %119, i64 2
  %121 = load float, float* %120, align 4
  %122 = fmul float %118, %121
  %123 = fadd float %115, %122
  store float %123, float* %11, align 4
  %124 = load float, float* %11, align 4
  %125 = call double @sqrt(float %124)
  %126 = fdiv double 1.000000e+00, %125
  %127 = fptrunc double %126 to float
  store float %127, float* %11, align 4
  %128 = load float, float* %11, align 4
  %129 = load float*, float** %5, align 8
  %130 = getelementptr inbounds float, float* %129, i64 0
  %131 = load float, float* %130, align 4
  %132 = fmul float %131, %128
  store float %132, float* %130, align 4
  %133 = load float, float* %11, align 4
  %134 = load float*, float** %5, align 8
  %135 = getelementptr inbounds float, float* %134, i64 1
  %136 = load float, float* %135, align 4
  %137 = fmul float %136, %133
  store float %137, float* %135, align 4
  %138 = load float, float* %11, align 4
  %139 = load float*, float** %5, align 8
  %140 = getelementptr inbounds float, float* %139, i64 2
  %141 = load float, float* %140, align 4
  %142 = fmul float %141, %138
  store float %142, float* %140, align 4
  br label %143

143:                                              ; preds = %100, %97
  ret void
}

declare dso_local double @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
