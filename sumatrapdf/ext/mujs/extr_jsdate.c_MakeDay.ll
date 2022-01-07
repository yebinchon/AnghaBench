; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_MakeDay.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_MakeDay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MakeDay.firstDayOfMonth = internal constant [2 x [12 x double]] [[12 x double] [double 0.000000e+00, double 3.100000e+01, double 5.900000e+01, double 9.000000e+01, double 1.200000e+02, double 1.510000e+02, double 1.810000e+02, double 2.120000e+02, double 2.430000e+02, double 2.730000e+02, double 3.040000e+02, double 3.340000e+02], [12 x double] [double 0.000000e+00, double 3.100000e+01, double 6.000000e+01, double 9.100000e+01, double 1.210000e+02, double 1.520000e+02, double 1.820000e+02, double 2.130000e+02, double 2.440000e+02, double 2.740000e+02, double 3.050000e+02, double 3.350000e+02]], align 16
@NAN = common dso_local global double 0.000000e+00, align 8
@msPerDay = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, double)* @MakeDay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @MakeDay(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %11 = load double, double* %6, align 8
  %12 = fdiv double %11, 1.200000e+01
  %13 = call double @llvm.floor.f64(double %12)
  %14 = load double, double* %5, align 8
  %15 = fadd double %14, %13
  store double %15, double* %5, align 8
  %16 = load double, double* %6, align 8
  %17 = call double @pmod(double %16, i32 12)
  store double %17, double* %6, align 8
  %18 = load double, double* %6, align 8
  %19 = fptosi double %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = icmp sge i32 %23, 12
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %3
  %26 = load double, double* @NAN, align 8
  store double %26, double* %4, align 8
  br label %46

27:                                               ; preds = %22
  %28 = load double, double* %5, align 8
  %29 = call double @TimeFromYear(double %28)
  %30 = load double, double* @msPerDay, align 8
  %31 = fdiv double %29, %30
  %32 = call double @llvm.floor.f64(double %31)
  store double %32, double* %8, align 8
  %33 = load double, double* %5, align 8
  %34 = call i64 @InLeapYear(double %33)
  %35 = getelementptr inbounds [2 x [12 x double]], [2 x [12 x double]]* @MakeDay.firstDayOfMonth, i64 0, i64 %34
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [12 x double], [12 x double]* %35, i64 0, i64 %37
  %39 = load double, double* %38, align 8
  store double %39, double* %9, align 8
  %40 = load double, double* %8, align 8
  %41 = load double, double* %9, align 8
  %42 = fadd double %40, %41
  %43 = load double, double* %7, align 8
  %44 = fadd double %42, %43
  %45 = fsub double %44, 1.000000e+00
  store double %45, double* %4, align 8
  br label %46

46:                                               ; preds = %27, %25
  %47 = load double, double* %4, align 8
  ret double %47
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

declare dso_local double @pmod(double, i32) #2

declare dso_local double @TimeFromYear(double) #2

declare dso_local i64 @InLeapYear(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
