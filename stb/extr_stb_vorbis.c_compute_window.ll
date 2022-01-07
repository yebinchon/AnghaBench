; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_compute_window.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_compute_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*)* @compute_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_window(i32 %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store float* %1, float** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 1
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %36, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %9
  %14 = load double, double* @M_PI, align 8
  %15 = fmul double 5.000000e-01, %14
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 0
  %18 = sitofp i32 %17 to double
  %19 = fadd double %18, 5.000000e-01
  %20 = load i32, i32* %5, align 4
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %19, %21
  %23 = fmul double %22, 5.000000e-01
  %24 = load double, double* @M_PI, align 8
  %25 = fmul double %23, %24
  %26 = call i64 @sin(double %25)
  %27 = sitofp i64 %26 to float
  %28 = call double @square(float %27)
  %29 = fmul double %15, %28
  %30 = call i64 @sin(double %29)
  %31 = sitofp i64 %30 to float
  %32 = load float*, float** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  store float %31, float* %35, align 4
  br label %36

36:                                               ; preds = %13
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %9

39:                                               ; preds = %9
  ret void
}

declare dso_local i64 @sin(double) #1

declare dso_local double @square(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
