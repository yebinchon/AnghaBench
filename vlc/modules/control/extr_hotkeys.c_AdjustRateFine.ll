; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_AdjustRateFine.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_AdjustRateFine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INPUT_RATE_MIN = common dso_local global float 0.000000e+00, align 4
@INPUT_RATE_MAX = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, i32)* @AdjustRateFine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @AdjustRateFine(float %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load float, float* @INPUT_RATE_MIN, align 4
  store float %8, float* %5, align 4
  %9 = load float, float* @INPUT_RATE_MAX, align 4
  store float %9, float* %6, align 4
  %10 = load float, float* %3, align 4
  %11 = fcmp olt float %10, 0.000000e+00
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 -1, i32 1
  store i32 %13, i32* %7, align 4
  %14 = load float, float* %3, align 4
  %15 = call double @fabs(float %14)
  %16 = fdiv double %15, 1.000000e-01
  %17 = load i32, i32* %4, align 4
  %18 = sitofp i32 %17 to double
  %19 = fadd double %16, %18
  %20 = fadd double %19, 5.000000e-02
  %21 = call double @llvm.floor.f64(double %20)
  %22 = fmul double %21, 1.000000e-01
  %23 = fptrunc double %22 to float
  store float %23, float* %3, align 4
  %24 = load float, float* %3, align 4
  %25 = load float, float* %5, align 4
  %26 = fcmp olt float %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load float, float* %5, align 4
  store float %28, float* %3, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load float, float* %3, align 4
  %31 = load float, float* %6, align 4
  %32 = fcmp ogt float %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load float, float* %6, align 4
  store float %34, float* %3, align 4
  br label %35

35:                                               ; preds = %33, %29
  br label %36

36:                                               ; preds = %35, %27
  %37 = load float, float* %3, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sitofp i32 %38 to float
  %40 = fmul float %37, %39
  ret float %40
}

declare dso_local double @fabs(float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
