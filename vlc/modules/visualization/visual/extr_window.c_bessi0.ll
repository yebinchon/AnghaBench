; ModuleID = '/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_window.c_bessi0.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/visualization/visual/extr_window.c_bessi0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @bessi0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @bessi0(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca double, align 8
  store float %0, float* %2, align 4
  %6 = load float, float* %2, align 4
  %7 = call float @llvm.fabs.f32(float %6)
  store float %7, float* %3, align 4
  %8 = fcmp olt float %7, 3.750000e+00
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load float, float* %2, align 4
  %11 = fpext float %10 to double
  %12 = fdiv double %11, 3.750000e+00
  store double %12, double* %5, align 8
  %13 = load double, double* %5, align 8
  %14 = load double, double* %5, align 8
  %15 = fmul double %14, %13
  store double %15, double* %5, align 8
  %16 = load double, double* %5, align 8
  %17 = load double, double* %5, align 8
  %18 = load double, double* %5, align 8
  %19 = load double, double* %5, align 8
  %20 = load double, double* %5, align 8
  %21 = load double, double* %5, align 8
  %22 = fmul double %21, 4.581300e-03
  %23 = fadd double 3.607680e-02, %22
  %24 = fmul double %20, %23
  %25 = fadd double 0x3FD105B474E732AA, %24
  %26 = fmul double %19, %25
  %27 = fadd double 0x3FF34ED83FC7962C, %26
  %28 = fmul double %18, %27
  %29 = fadd double 0x4008B833B89430A4, %28
  %30 = fmul double %17, %29
  %31 = fadd double 0x400C1FFEE6248CA7, %30
  %32 = fmul double %16, %31
  %33 = fadd double 1.000000e+00, %32
  %34 = fptrunc double %33 to float
  store float %34, float* %4, align 4
  br label %70

35:                                               ; preds = %1
  %36 = load float, float* %3, align 4
  %37 = fpext float %36 to double
  %38 = fdiv double 3.750000e+00, %37
  store double %38, double* %5, align 8
  %39 = load float, float* %3, align 4
  %40 = call double @exp(float %39)
  %41 = load float, float* %3, align 4
  %42 = call double @sqrt(float %41)
  %43 = fdiv double %40, %42
  %44 = load double, double* %5, align 8
  %45 = load double, double* %5, align 8
  %46 = load double, double* %5, align 8
  %47 = load double, double* %5, align 8
  %48 = load double, double* %5, align 8
  %49 = load double, double* %5, align 8
  %50 = load double, double* %5, align 8
  %51 = load double, double* %5, align 8
  %52 = fmul double %51, 3.923770e-03
  %53 = fadd double 0xBF90DF2BCA084C55, %52
  %54 = fmul double %50, %53
  %55 = fadd double 0x3F9AFCE6F0E55AE3, %54
  %56 = fmul double %49, %55
  %57 = fadd double 0xBF9512271EFDC716, %56
  %58 = fmul double %48, %57
  %59 = fadd double 9.162810e-03, %58
  %60 = fmul double %47, %59
  %61 = fadd double -1.575650e-03, %60
  %62 = fmul double %46, %61
  %63 = fadd double 2.253190e-03, %62
  %64 = fmul double %45, %63
  %65 = fadd double 0x3F8B35A5FF2D9D1C, %64
  %66 = fmul double %44, %65
  %67 = fadd double 0x3FD988453365DE00, %66
  %68 = fmul double %43, %67
  %69 = fptrunc double %68 to float
  store float %69, float* %4, align 4
  br label %70

70:                                               ; preds = %35, %9
  %71 = load float, float* %4, align 4
  ret float %71
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

declare dso_local double @exp(float) #2

declare dso_local double @sqrt(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
