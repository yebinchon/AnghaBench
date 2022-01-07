; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_vmmath.c_lj_vm_foldfpm.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_vmmath.c_lj_vm_foldfpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @lj_vm_foldfpm(double %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %43 [
    i32 135, label %7
    i32 139, label %10
    i32 128, label %13
    i32 130, label %16
    i32 137, label %19
    i32 136, label %22
    i32 134, label %25
    i32 132, label %28
    i32 133, label %31
    i32 131, label %34
    i32 138, label %37
    i32 129, label %40
  ]

7:                                                ; preds = %2
  %8 = load double, double* %4, align 8
  %9 = call double @lj_vm_floor(double %8)
  store double %9, double* %3, align 8
  br label %46

10:                                               ; preds = %2
  %11 = load double, double* %4, align 8
  %12 = call double @lj_vm_ceil(double %11)
  store double %12, double* %3, align 8
  br label %46

13:                                               ; preds = %2
  %14 = load double, double* %4, align 8
  %15 = call double @lj_vm_trunc(double %14)
  store double %15, double* %3, align 8
  br label %46

16:                                               ; preds = %2
  %17 = load double, double* %4, align 8
  %18 = call double @sqrt(double %17) #3
  store double %18, double* %3, align 8
  br label %46

19:                                               ; preds = %2
  %20 = load double, double* %4, align 8
  %21 = call double @exp(double %20) #3
  store double %21, double* %3, align 8
  br label %46

22:                                               ; preds = %2
  %23 = load double, double* %4, align 8
  %24 = call double @lj_vm_exp2(double %23)
  store double %24, double* %3, align 8
  br label %46

25:                                               ; preds = %2
  %26 = load double, double* %4, align 8
  %27 = call double @log(double %26) #3
  store double %27, double* %3, align 8
  br label %46

28:                                               ; preds = %2
  %29 = load double, double* %4, align 8
  %30 = call double @lj_vm_log2(double %29)
  store double %30, double* %3, align 8
  br label %46

31:                                               ; preds = %2
  %32 = load double, double* %4, align 8
  %33 = call double @log10(double %32) #3
  store double %33, double* %3, align 8
  br label %46

34:                                               ; preds = %2
  %35 = load double, double* %4, align 8
  %36 = call double @sin(double %35) #3
  store double %36, double* %3, align 8
  br label %46

37:                                               ; preds = %2
  %38 = load double, double* %4, align 8
  %39 = call double @cos(double %38) #3
  store double %39, double* %3, align 8
  br label %46

40:                                               ; preds = %2
  %41 = load double, double* %4, align 8
  %42 = call double @tan(double %41) #3
  store double %42, double* %3, align 8
  br label %46

43:                                               ; preds = %2
  %44 = call i32 @lua_assert(i32 0)
  br label %45

45:                                               ; preds = %43
  store double 0.000000e+00, double* %3, align 8
  br label %46

46:                                               ; preds = %45, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %47 = load double, double* %3, align 8
  ret double %47
}

declare dso_local double @lj_vm_floor(double) #1

declare dso_local double @lj_vm_ceil(double) #1

declare dso_local double @lj_vm_trunc(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

declare dso_local double @lj_vm_exp2(double) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local double @lj_vm_log2(double) #1

; Function Attrs: nounwind
declare dso_local double @log10(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @tan(double) #2

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
