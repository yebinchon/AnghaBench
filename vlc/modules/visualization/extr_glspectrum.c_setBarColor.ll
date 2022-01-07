; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/extr_glspectrum.c_setBarColor.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/extr_glspectrum.c_setBarColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BAR_MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float)* @setBarColor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setBarColor(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %2, align 4
  %5 = load float, float* %2, align 4
  %6 = fmul float 0x3FDE79E7C0000000, %5
  %7 = fadd float -1.000000e+00, %6
  store float %7, float* %3, align 4
  %8 = load float, float* %2, align 4
  %9 = fmul float 0x3FDE79E7C0000000, %8
  %10 = fsub float 2.000000e+00, %9
  store float %10, float* %4, align 4
  %11 = load float, float* %3, align 4
  %12 = fcmp ogt float %11, 1.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %16

14:                                               ; preds = %1
  %15 = load float, float* %3, align 4
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi float [ 1.000000e+00, %13 ], [ %15, %14 ]
  store float %17, float* %3, align 4
  %18 = load float, float* %4, align 4
  %19 = fcmp ogt float %18, 1.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %23

21:                                               ; preds = %16
  %22 = load float, float* %4, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi float [ 1.000000e+00, %20 ], [ %22, %21 ]
  store float %24, float* %4, align 4
  %25 = load float, float* %3, align 4
  %26 = fcmp olt float %25, 0.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %30

28:                                               ; preds = %23
  %29 = load float, float* %3, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi float [ 0.000000e+00, %27 ], [ %29, %28 ]
  store float %31, float* %3, align 4
  %32 = load float, float* %4, align 4
  %33 = fcmp olt float %32, 0.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %37

35:                                               ; preds = %30
  %36 = load float, float* %4, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi float [ 0.000000e+00, %34 ], [ %36, %35 ]
  store float %38, float* %4, align 4
  %39 = load float, float* %3, align 4
  %40 = load float, float* %4, align 4
  %41 = call i32 @glColor4f(float %39, float 0.000000e+00, float %40, float 1.000000e+00)
  ret void
}

declare dso_local i32 @glColor4f(float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
