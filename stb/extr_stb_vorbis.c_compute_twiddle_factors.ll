; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_compute_twiddle_factors.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_compute_twiddle_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, float*, float*)* @compute_twiddle_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_twiddle_factors(i32 %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 2
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 3
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %77, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %82

21:                                               ; preds = %17
  %22 = load i32, i32* %11, align 4
  %23 = mul nsw i32 4, %22
  %24 = load i32, i32* @M_PI, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %25, %26
  %28 = call i64 @cos(i32 %27)
  %29 = sitofp i64 %28 to float
  %30 = load float*, float** %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  store float %29, float* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 4, %34
  %36 = load i32, i32* @M_PI, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %37, %38
  %40 = call i64 @sin(i32 %39)
  %41 = sub nsw i64 0, %40
  %42 = sitofp i64 %41 to float
  %43 = load float*, float** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %43, i64 %46
  store float %42, float* %47, align 4
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* @M_PI, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = sdiv i32 %51, %52
  %54 = sdiv i32 %53, 2
  %55 = call i64 @cos(i32 %54)
  %56 = sitofp i64 %55 to float
  %57 = fmul float %56, 5.000000e-01
  %58 = load float*, float** %7, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  store float %57, float* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* @M_PI, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = sdiv i32 %65, %66
  %68 = sdiv i32 %67, 2
  %69 = call i64 @sin(i32 %68)
  %70 = sitofp i64 %69 to float
  %71 = fmul float %70, 5.000000e-01
  %72 = load float*, float** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %72, i64 %75
  store float %71, float* %76, align 4
  br label %77

77:                                               ; preds = %21
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %12, align 4
  br label %17

82:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %116, %82
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  %90 = mul nsw i32 2, %89
  %91 = load i32, i32* @M_PI, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %5, align 4
  %94 = sdiv i32 %92, %93
  %95 = call i64 @cos(i32 %94)
  %96 = sitofp i64 %95 to float
  %97 = load float*, float** %8, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  store float %96, float* %100, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  %103 = mul nsw i32 2, %102
  %104 = load i32, i32* @M_PI, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %5, align 4
  %107 = sdiv i32 %105, %106
  %108 = call i64 @sin(i32 %107)
  %109 = sub nsw i64 0, %108
  %110 = sitofp i64 %109 to float
  %111 = load float*, float** %8, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %111, i64 %114
  store float %110, float* %115, align 4
  br label %116

116:                                              ; preds = %87
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %12, align 4
  br label %83

121:                                              ; preds = %83
  ret void
}

declare dso_local i64 @cos(i32) #1

declare dso_local i64 @sin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
