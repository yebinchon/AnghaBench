; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_toint32.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_toint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @toint32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toint32(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  store double 0x41F0000000000000, double* %4, align 8
  store double 0x41E0000000000000, double* %5, align 8
  %6 = load double, double* %3, align 8
  %7 = call i32 @isfinite(double %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  %11 = fcmp oeq double %10, 0.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %40

13:                                               ; preds = %9
  %14 = load double, double* %3, align 8
  %15 = load double, double* %4, align 8
  %16 = call double @fmod(double %14, double %15) #4
  store double %16, double* %3, align 8
  %17 = load double, double* %3, align 8
  %18 = fcmp oge double %17, 0.000000e+00
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load double, double* %3, align 8
  %21 = call double @llvm.floor.f64(double %20)
  br label %27

22:                                               ; preds = %13
  %23 = load double, double* %3, align 8
  %24 = call double @llvm.ceil.f64(double %23)
  %25 = load double, double* %4, align 8
  %26 = fadd double %24, %25
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi double [ %21, %19 ], [ %26, %22 ]
  store double %28, double* %3, align 8
  %29 = load double, double* %3, align 8
  %30 = load double, double* %5, align 8
  %31 = fcmp oge double %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load double, double* %3, align 8
  %34 = load double, double* %4, align 8
  %35 = fsub double %33, %34
  %36 = fptosi double %35 to i32
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %27
  %38 = load double, double* %3, align 8
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %32, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @isfinite(double) #1

; Function Attrs: nounwind
declare dso_local double @fmod(double, double) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
