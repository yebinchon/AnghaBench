; ModuleID = '/home/carl/AnghaBench/streem/src/extr_time.c_timeval_to_num.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_time.c_timeval_to_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @timeval_to_num(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca double, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %4 = load %struct.timeval*, %struct.timeval** %2, align 8
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %6 = load double, double* %5, align 8
  store double %6, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = load %struct.timeval*, %struct.timeval** %2, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = fdiv double %10, 1.000000e+06
  %12 = fadd double %7, %11
  ret double %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
