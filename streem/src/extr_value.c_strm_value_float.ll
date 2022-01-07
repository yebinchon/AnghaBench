; ModuleID = '/home/carl/AnghaBench/streem/src/extr_value.c_strm_value_float.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_value.c_strm_value_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @strm_value_float(i32 %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @strm_int_p(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @strm_to_int(i32 %8)
  %10 = sitofp i64 %9 to double
  store double %10, double* %2, align 8
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @strm_float_p(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call double @strm_to_float(i32 %16)
  store double %17, double* %2, align 8
  br label %24

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @strm_float_p(i32 %19)
  %21 = call i32 @assert(i64 %20)
  br label %22

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22
  store double 0.000000e+00, double* %2, align 8
  br label %24

24:                                               ; preds = %23, %15, %7
  %25 = load double, double* %2, align 8
  ret double %25
}

declare dso_local i64 @strm_int_p(i32) #1

declare dso_local i64 @strm_to_int(i32) #1

declare dso_local i64 @strm_float_p(i32) #1

declare dso_local double @strm_to_float(i32) #1

declare dso_local i32 @assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
