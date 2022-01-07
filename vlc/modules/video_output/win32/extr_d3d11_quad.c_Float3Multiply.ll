; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_Float3Multiply.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_quad.c_Float3Multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, double*)* @Float3Multiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Float3Multiply(double* %0, double* %1, double* %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i64, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %44, %3
  %9 = load i64, i64* %7, align 8
  %10 = icmp ult i64 %9, 3
  br i1 %10, label %11, label %47

11:                                               ; preds = %8
  %12 = load double*, double** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add i64 %13, 0
  %15 = getelementptr inbounds double, double* %12, i64 %14
  %16 = load double, double* %15, align 8
  %17 = load double*, double** %4, align 8
  %18 = getelementptr inbounds double, double* %17, i64 0
  %19 = load double, double* %18, align 8
  %20 = fmul double %16, %19
  %21 = load double*, double** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, 3
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = load double*, double** %4, align 8
  %27 = getelementptr inbounds double, double* %26, i64 1
  %28 = load double, double* %27, align 8
  %29 = fmul double %25, %28
  %30 = fadd double %20, %29
  %31 = load double*, double** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 6
  %34 = getelementptr inbounds double, double* %31, i64 %33
  %35 = load double, double* %34, align 8
  %36 = load double*, double** %4, align 8
  %37 = getelementptr inbounds double, double* %36, i64 2
  %38 = load double, double* %37, align 8
  %39 = fmul double %35, %38
  %40 = fadd double %30, %39
  %41 = load double*, double** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds double, double* %41, i64 %42
  store double %40, double* %43, align 8
  br label %44

44:                                               ; preds = %11
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %8

47:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
