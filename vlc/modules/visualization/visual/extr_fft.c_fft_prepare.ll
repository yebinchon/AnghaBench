; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_fft.c_fft_prepare.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_fft.c_fft_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FFT_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, float*, i32*)* @fft_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fft_prepare(i32* %0, float* %1, float* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  store i32* %0, i32** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load float*, float** %6, align 8
  store float* %12, float** %10, align 8
  %13 = load float*, float** %7, align 8
  store float* %13, float** %11, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %33, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @FFT_BUFFER_SIZE, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sitofp i32 %27 to float
  %29 = load float*, float** %10, align 8
  %30 = getelementptr inbounds float, float* %29, i32 1
  store float* %30, float** %10, align 8
  store float %28, float* %29, align 4
  %31 = load float*, float** %11, align 8
  %32 = getelementptr inbounds float, float* %31, i32 1
  store float* %32, float** %11, align 8
  store float 0.000000e+00, float* %31, align 4
  br label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %14

36:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
