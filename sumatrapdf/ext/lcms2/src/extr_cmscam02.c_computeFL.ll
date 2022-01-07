; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_computeFL.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmscam02.c_computeFL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_3__*)* @computeFL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @computeFL(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fmul double 5.000000e+00, %7
  %9 = fadd double %8, 1.000000e+00
  %10 = fdiv double 1.000000e+00, %9
  store double %10, double* %3, align 8
  %11 = load double, double* %3, align 8
  %12 = call double @pow(double %11, double 4.000000e+00) #2
  %13 = fmul double 2.000000e-01, %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = fmul double 5.000000e+00, %16
  %18 = fmul double %13, %17
  %19 = load double, double* %3, align 8
  %20 = call double @pow(double %19, double 4.000000e+00) #2
  %21 = fsub double 1.000000e+00, %20
  %22 = call double @pow(double %21, double 2.000000e+00) #2
  %23 = fmul double 1.000000e-01, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = fmul double 5.000000e+00, %26
  %28 = call double @pow(double %27, double 0x3FD5555555555555) #2
  %29 = fmul double %23, %28
  %30 = fadd double %18, %29
  store double %30, double* %4, align 8
  %31 = load double, double* %4, align 8
  ret double %31
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
