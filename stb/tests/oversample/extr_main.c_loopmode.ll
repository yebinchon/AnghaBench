; ModuleID = '/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_loopmode.c'
source_filename = "/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_loopmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialized = common dso_local global i32 0, align 4
@rotate_t = common dso_local global float 0.000000e+00, align 4
@translate_t = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @loopmode(float %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load float, float* %5, align 4
  store float %9, float* %8, align 4
  %10 = load i32, i32* @initialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

13:                                               ; preds = %3
  %14 = load float, float* %5, align 4
  %15 = load float, float* @rotate_t, align 4
  %16 = fadd float %15, %14
  store float %16, float* @rotate_t, align 4
  %17 = load float, float* %5, align 4
  %18 = load float, float* @translate_t, align 4
  %19 = fadd float %18, %17
  store float %19, float* @translate_t, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %35

23:                                               ; preds = %13
  %24 = load float, float* %5, align 4
  %25 = fpext float %24 to double
  %26 = fcmp ogt double %25, 2.500000e-01
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store float 2.500000e-01, float* %5, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load float, float* %5, align 4
  %30 = fpext float %29 to double
  %31 = fcmp olt double %30, 1.000000e-02
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store float 0x3F847AE140000000, float* %5, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = call i32 (...) @draw()
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %22, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @draw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
