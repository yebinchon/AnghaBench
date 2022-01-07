; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_resultDistLvl.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_resultDistLvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, double }

@g_ratioMultiplier = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, double, i32, double)* @resultDistLvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @resultDistLvl(i32 %0, double %1, i32 %2, double %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = bitcast %struct.TYPE_4__* %6 to { i32, double }*
  %11 = getelementptr inbounds { i32, double }, { i32, double }* %10, i32 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds { i32, double }, { i32, double }* %10, i32 0, i32 1
  store double %1, double* %12, align 8
  %13 = bitcast %struct.TYPE_4__* %7 to { i32, double }*
  %14 = getelementptr inbounds { i32, double }, { i32, double }* %13, i32 0, i32 0
  store i32 %2, i32* %14, align 8
  %15 = getelementptr inbounds { i32, double }, { i32, double }* %13, i32 0, i32 1
  store double %3, double* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %17, %19
  %21 = sub nsw i32 %20, 1
  %22 = sitofp i32 %21 to double
  store double %22, double* %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fdiv double %24, %26
  %28 = fsub double %27, 1.000000e+00
  store double %28, double* %9, align 8
  %29 = load double, double* %9, align 8
  %30 = fcmp olt double %29, 0.000000e+00
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load double, double* %8, align 8
  %33 = fcmp olt double %32, 0.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %4
  store double 0.000000e+00, double* %5, align 8
  br label %41

35:                                               ; preds = %31
  %36 = load double, double* %9, align 8
  %37 = load double, double* @g_ratioMultiplier, align 8
  %38 = fmul double %36, %37
  %39 = load double, double* %8, align 8
  %40 = fadd double %38, %39
  store double %40, double* %5, align 8
  br label %41

41:                                               ; preds = %35, %34
  %42 = load double, double* %5, align 8
  ret double %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
