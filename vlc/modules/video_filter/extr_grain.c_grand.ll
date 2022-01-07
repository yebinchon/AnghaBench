; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_filter/extr_grain.c_grand.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_filter/extr_grain.c_grand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, i32*)* @grand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grand(double* %0, double* %1, i32* %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32* %2, i32** %6, align 8
  br label %10

10:                                               ; preds = %28, %3
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @drand(i32* %11)
  %13 = mul nsw i32 2, %12
  %14 = sub nsw i32 %13, 1
  %15 = sitofp i32 %14 to double
  store double %15, double* %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @drand(i32* %16)
  %18 = mul nsw i32 2, %17
  %19 = sub nsw i32 %18, 1
  %20 = sitofp i32 %19 to double
  store double %20, double* %9, align 8
  %21 = load double, double* %8, align 8
  %22 = load double, double* %8, align 8
  %23 = fmul double %21, %22
  %24 = load double, double* %9, align 8
  %25 = load double, double* %9, align 8
  %26 = fmul double %24, %25
  %27 = fadd double %23, %26
  store double %27, double* %7, align 8
  br label %28

28:                                               ; preds = %10
  %29 = load double, double* %7, align 8
  %30 = fcmp oge double %29, 1.000000e+00
  br i1 %30, label %10, label %31

31:                                               ; preds = %28
  %32 = load double, double* %7, align 8
  %33 = call i32 @log(double %32)
  %34 = mul nsw i32 -2, %33
  %35 = sitofp i32 %34 to double
  %36 = load double, double* %7, align 8
  %37 = fdiv double %35, %36
  %38 = fptosi double %37 to i32
  %39 = call double @sqrt(i32 %38)
  store double %39, double* %7, align 8
  %40 = load double, double* %8, align 8
  %41 = load double, double* %7, align 8
  %42 = fmul double %40, %41
  %43 = load double*, double** %4, align 8
  store double %42, double* %43, align 8
  %44 = load double, double* %9, align 8
  %45 = load double, double* %7, align 8
  %46 = fmul double %44, %45
  %47 = load double*, double** %5, align 8
  store double %46, double* %47, align 8
  ret void
}

declare dso_local i32 @drand(i32*) #1

declare dso_local double @sqrt(i32) #1

declare dso_local i32 @log(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
