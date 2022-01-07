; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_powerLawRand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_powerLawRand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RAND_MAX = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @powerLawRand(i64 %0, i64 %1, double %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store double %2, double* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %5, align 8
  %11 = call i64 (...) @rand()
  %12 = sitofp i64 %11 to double
  %13 = load double, double* @RAND_MAX, align 8
  %14 = fdiv double %12, %13
  store double %14, double* %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = sitofp i64 %15 to double
  %17 = load double, double* %6, align 8
  %18 = fadd double %17, 1.000000e+00
  %19 = call double @pow(double %16, double %18) #3
  %20 = load i64, i64* %4, align 8
  %21 = sitofp i64 %20 to double
  %22 = load double, double* %6, align 8
  %23 = fadd double %22, 1.000000e+00
  %24 = call double @pow(double %21, double %23) #3
  %25 = fsub double %19, %24
  %26 = load double, double* %8, align 8
  %27 = fmul double %25, %26
  %28 = load i64, i64* %4, align 8
  %29 = sitofp i64 %28 to double
  %30 = load double, double* %6, align 8
  %31 = fadd double %30, 1.000000e+00
  %32 = call double @pow(double %29, double %31) #3
  %33 = fadd double %27, %32
  %34 = load double, double* %6, align 8
  %35 = fadd double %34, 1.000000e+00
  %36 = fdiv double 1.000000e+00, %35
  %37 = call double @pow(double %33, double %36) #3
  store double %37, double* %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub nsw i64 %38, 1
  %40 = load double, double* %7, align 8
  %41 = fptosi double %40 to i64
  %42 = sub nsw i64 %39, %41
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %42, %43
  ret i64 %44
}

declare dso_local i64 @rand(...) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
