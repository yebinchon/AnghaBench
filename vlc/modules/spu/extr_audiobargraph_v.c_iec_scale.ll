; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_audiobargraph_v.c_iec_scale.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_audiobargraph_v.c_iec_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @iec_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @iec_scale(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = fcmp olt float %4, -7.000000e+01
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store float 0.000000e+00, float* %2, align 4
  br label %58

7:                                                ; preds = %1
  %8 = load float, float* %3, align 4
  %9 = fcmp olt float %8, -6.000000e+01
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load float, float* %3, align 4
  %12 = fadd float %11, 7.000000e+01
  %13 = fmul float %12, 0x3F647AE140000000
  store float %13, float* %2, align 4
  br label %58

14:                                               ; preds = %7
  %15 = load float, float* %3, align 4
  %16 = fcmp olt float %15, -5.000000e+01
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load float, float* %3, align 4
  %19 = fadd float %18, 6.000000e+01
  %20 = fmul float %19, 0x3F747AE140000000
  %21 = fadd float %20, 0x3F999999A0000000
  store float %21, float* %2, align 4
  br label %58

22:                                               ; preds = %14
  %23 = load float, float* %3, align 4
  %24 = fcmp olt float %23, -4.000000e+01
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load float, float* %3, align 4
  %27 = fadd float %26, 5.000000e+01
  %28 = fmul float %27, 0x3F7EB851E0000000
  %29 = fadd float %28, 0x3FB3333340000000
  store float %29, float* %2, align 4
  br label %58

30:                                               ; preds = %22
  %31 = load float, float* %3, align 4
  %32 = fcmp olt float %31, -3.000000e+01
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load float, float* %3, align 4
  %35 = fadd float %34, 4.000000e+01
  %36 = fmul float %35, 0x3F8EB851E0000000
  %37 = fadd float %36, 0x3FC3333340000000
  store float %37, float* %2, align 4
  br label %58

38:                                               ; preds = %30
  %39 = load float, float* %3, align 4
  %40 = fcmp olt float %39, -2.000000e+01
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load float, float* %3, align 4
  %43 = fadd float %42, 3.000000e+01
  %44 = fmul float %43, 0x3F947AE140000000
  %45 = fadd float %44, 0x3FD3333340000000
  store float %45, float* %2, align 4
  br label %58

46:                                               ; preds = %38
  %47 = load float, float* %3, align 4
  %48 = fcmp olt float %47, 0xBF50624DE0000000
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load float, float* %3, align 4
  %51 = fcmp ogt float %50, 0x3F50624DE0000000
  br i1 %51, label %52, label %57

52:                                               ; preds = %49, %46
  %53 = load float, float* %3, align 4
  %54 = fadd float %53, 2.000000e+01
  %55 = fmul float %54, 0x3F999999A0000000
  %56 = fadd float %55, 5.000000e-01
  store float %56, float* %2, align 4
  br label %58

57:                                               ; preds = %49
  store float 1.000000e+00, float* %2, align 4
  br label %58

58:                                               ; preds = %57, %52, %41, %33, %25, %17, %10, %6
  %59 = load float, float* %2, align 4
  ret float %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
