; ModuleID = '/home/carl/AnghaBench/streem/src/extr_time.c_num_to_timeval.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_time.c_num_to_timeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { double, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @num_to_timeval(double %0, %struct.timeval* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %6 = load double, double* %3, align 8
  %7 = call double @llvm.floor.f64(double %6)
  store double %7, double* %5, align 8
  %8 = load double, double* %5, align 8
  %9 = load %struct.timeval*, %struct.timeval** %4, align 8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store double %8, double* %10, align 8
  %11 = load double, double* %3, align 8
  %12 = load double, double* %5, align 8
  %13 = fsub double %11, %12
  %14 = fmul double %13, 1.000000e+06
  %15 = load %struct.timeval*, %struct.timeval** %4, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store double %14, double* %16, align 8
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
