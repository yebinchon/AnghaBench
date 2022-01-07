; ModuleID = '/home/carl/AnghaBench/redis/src/extr_evict.c_LFULogIncr.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_evict.c_LFULogIncr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double }

@RAND_MAX = common dso_local global double 0.000000e+00, align 8
@LFU_INIT_VAL = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LFULogIncr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 255
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 255, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = call i64 (...) @rand()
  %12 = sitofp i64 %11 to double
  %13 = load double, double* @RAND_MAX, align 8
  %14 = fdiv double %12, %13
  store double %14, double* %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @LFU_INIT_VAL, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sitofp i32 %17 to double
  store double %18, double* %5, align 8
  %19 = load double, double* %5, align 8
  %20 = fcmp olt double %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  store double 0.000000e+00, double* %5, align 8
  br label %22

22:                                               ; preds = %21, %10
  %23 = load double, double* %5, align 8
  %24 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %25 = fmul double %23, %24
  %26 = fadd double %25, 1.000000e+00
  %27 = fdiv double 1.000000e+00, %26
  store double %27, double* %6, align 8
  %28 = load double, double* %4, align 8
  %29 = load double, double* %6, align 8
  %30 = fcmp olt double %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
