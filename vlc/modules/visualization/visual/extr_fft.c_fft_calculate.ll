; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_fft.c_fft_calculate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_fft.c_fft_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FFT_BUFFER_SIZE = common dso_local global i32 0, align 4
@FFT_BUFFER_SIZE_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float*)* @fft_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fft_calculate(float* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  store i32 1, i32* %12, align 4
  %19 = load i32, i32* @FFT_BUFFER_SIZE, align 4
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* @FFT_BUFFER_SIZE_LOG, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %134, %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %137

25:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %126, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %129

30:                                               ; preds = %26
  %31 = load float*, float** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %17, align 4
  %34 = mul i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %31, i64 %35
  %37 = load float, float* %36, align 4
  store float %37, float* %13, align 4
  %38 = load float*, float** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %17, align 4
  %41 = mul i32 %39, %40
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %38, i64 %42
  %44 = load float, float* %43, align 4
  store float %44, float* %14, align 4
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %120, %30
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @FFT_BUFFER_SIZE, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %125

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add i32 %51, %52
  store i32 %53, i32* %18, align 4
  %54 = load float, float* %13, align 4
  %55 = load float*, float** %5, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fmul float %54, %59
  %61 = load float, float* %14, align 4
  %62 = load float*, float** %6, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fmul float %61, %66
  %68 = fsub float %60, %67
  store float %68, float* %15, align 4
  %69 = load float, float* %13, align 4
  %70 = load float*, float** %6, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fmul float %69, %74
  %76 = load float, float* %14, align 4
  %77 = load float*, float** %5, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = fmul float %76, %81
  %83 = fadd float %75, %82
  store float %83, float* %16, align 4
  %84 = load float*, float** %5, align 8
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = load float, float* %15, align 4
  %90 = fsub float %88, %89
  %91 = load float*, float** %5, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  store float %90, float* %94, align 4
  %95 = load float*, float** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  %99 = load float, float* %98, align 4
  %100 = load float, float* %16, align 4
  %101 = fsub float %99, %100
  %102 = load float*, float** %6, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  store float %101, float* %105, align 4
  %106 = load float, float* %15, align 4
  %107 = load float*, float** %5, align 8
  %108 = load i32, i32* %11, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  %111 = load float, float* %110, align 4
  %112 = fadd float %111, %106
  store float %112, float* %110, align 4
  %113 = load float, float* %16, align 4
  %114 = load float*, float** %6, align 8
  %115 = load i32, i32* %11, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %114, i64 %116
  %118 = load float, float* %117, align 4
  %119 = fadd float %118, %113
  store float %119, float* %117, align 4
  br label %120

120:                                              ; preds = %50
  %121 = load i32, i32* %12, align 4
  %122 = shl i32 %121, 1
  %123 = load i32, i32* %11, align 4
  %124 = add i32 %123, %122
  store i32 %124, i32* %11, align 4
  br label %46

125:                                              ; preds = %46
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %26

129:                                              ; preds = %26
  %130 = load i32, i32* %12, align 4
  %131 = shl i32 %130, 1
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %17, align 4
  %133 = lshr i32 %132, 1
  store i32 %133, i32* %17, align 4
  br label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %9, align 4
  %136 = add i32 %135, -1
  store i32 %136, i32* %9, align 4
  br label %22

137:                                              ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
