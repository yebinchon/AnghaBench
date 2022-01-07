; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_my_Unroll565.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_my_Unroll565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmstransform_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @my_Unroll565(i32 %0, %struct._cmstransform_struct* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._cmstransform_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store %struct._cmstransform_struct* %1, %struct._cmstransform_struct** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = and i32 %17, 31
  %19 = sitofp i32 %18 to double
  %20 = fmul double %19, 6.553500e+04
  %21 = fdiv double %20, 3.100000e+01
  %22 = fadd double %21, 5.000000e-01
  %23 = fptosi double %22 to i32
  %24 = call double @floor(i32 %23)
  store double %24, double* %12, align 8
  %25 = load i32, i32* %11, align 4
  %26 = ashr i32 %25, 5
  %27 = and i32 %26, 63
  %28 = sitofp i32 %27 to double
  %29 = fmul double %28, 6.553500e+04
  %30 = fdiv double %29, 6.300000e+01
  %31 = fadd double %30, 5.000000e-01
  %32 = fptosi double %31 to i32
  %33 = call double @floor(i32 %32)
  store double %33, double* %13, align 8
  %34 = load i32, i32* %11, align 4
  %35 = ashr i32 %34, 11
  %36 = and i32 %35, 31
  %37 = sitofp i32 %36 to double
  %38 = fmul double %37, 6.553500e+04
  %39 = fdiv double %38, 3.100000e+01
  %40 = fadd double %39, 5.000000e-01
  %41 = fptosi double %40 to i32
  %42 = call double @floor(i32 %41)
  store double %42, double* %14, align 8
  %43 = load double, double* %12, align 8
  %44 = fptosi double %43 to i32
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %44, i32* %46, align 4
  %47 = load double, double* %13, align 8
  %48 = fptosi double %47 to i32
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %48, i32* %50, align 4
  %51 = load double, double* %14, align 8
  %52 = fptosi double %51 to i32
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  ret i32* %56
}

declare dso_local double @floor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
