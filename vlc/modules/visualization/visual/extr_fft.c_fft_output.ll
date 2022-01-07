; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_fft.c_fft_output.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_fft.c_fft_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FFT_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*)* @fft_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fft_output(float* %0, float* %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %11 = load float*, float** %6, align 8
  store float* %11, float** %7, align 8
  %12 = load float*, float** %4, align 8
  store float* %12, float** %8, align 8
  %13 = load float*, float** %5, align 8
  store float* %13, float** %9, align 8
  %14 = load float*, float** %6, align 8
  %15 = load i32, i32* @FFT_BUFFER_SIZE, align 4
  %16 = sdiv i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %14, i64 %17
  store float* %18, float** %10, align 8
  br label %19

19:                                               ; preds = %23, %3
  %20 = load float*, float** %7, align 8
  %21 = load float*, float** %10, align 8
  %22 = icmp ule float* %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load float*, float** %8, align 8
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %8, align 8
  %27 = load float, float* %26, align 4
  %28 = fmul float %25, %27
  %29 = load float*, float** %9, align 8
  %30 = load float, float* %29, align 4
  %31 = load float*, float** %9, align 8
  %32 = load float, float* %31, align 4
  %33 = fmul float %30, %32
  %34 = fadd float %28, %33
  %35 = load float*, float** %7, align 8
  store float %34, float* %35, align 4
  %36 = load float*, float** %7, align 8
  %37 = getelementptr inbounds float, float* %36, i32 1
  store float* %37, float** %7, align 8
  %38 = load float*, float** %8, align 8
  %39 = getelementptr inbounds float, float* %38, i32 1
  store float* %39, float** %8, align 8
  %40 = load float*, float** %9, align 8
  %41 = getelementptr inbounds float, float* %40, i32 1
  store float* %41, float** %9, align 8
  br label %19

42:                                               ; preds = %19
  %43 = load float*, float** %6, align 8
  %44 = load float, float* %43, align 4
  %45 = fdiv float %44, 4.000000e+00
  store float %45, float* %43, align 4
  %46 = load float*, float** %10, align 8
  %47 = load float, float* %46, align 4
  %48 = fdiv float %47, 4.000000e+00
  store float %48, float* %46, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
