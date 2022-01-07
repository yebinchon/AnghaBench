; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_ball.c_NormalizeVector.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_ball.c_NormalizeVector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*)* @NormalizeVector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NormalizeVector(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load float*, float** %3, align 8
  %7 = load float, float* %6, align 4
  %8 = load float*, float** %3, align 8
  %9 = load float, float* %8, align 4
  %10 = fmul float %7, %9
  %11 = load float*, float** %4, align 8
  %12 = load float, float* %11, align 4
  %13 = load float*, float** %4, align 8
  %14 = load float, float* %13, align 4
  %15 = fmul float %12, %14
  %16 = fadd float %10, %15
  %17 = call float @sqrt(float %16)
  store float %17, float* %5, align 4
  %18 = load float*, float** %3, align 8
  %19 = load float, float* %18, align 4
  %20 = fcmp une float %19, 0.000000e+00
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load float*, float** %4, align 8
  %23 = load float, float* %22, align 4
  %24 = fcmp une float %23, 0.000000e+00
  br i1 %24, label %25, label %34

25:                                               ; preds = %21, %2
  %26 = load float, float* %5, align 4
  %27 = load float*, float** %3, align 8
  %28 = load float, float* %27, align 4
  %29 = fdiv float %28, %26
  store float %29, float* %27, align 4
  %30 = load float, float* %5, align 4
  %31 = load float*, float** %4, align 8
  %32 = load float, float* %31, align 4
  %33 = fdiv float %32, %30
  store float %33, float* %31, align 4
  br label %34

34:                                               ; preds = %25, %21
  ret void
}

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
