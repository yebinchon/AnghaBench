; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_iter_stdev.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_iter_stdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.stdev_data* }
%struct.stdev_data = type { double, i32, i64 }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @iter_stdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_stdev(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stdev_data*, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.stdev_data*, %struct.stdev_data** %8, align 8
  store %struct.stdev_data* %9, %struct.stdev_data** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call double @strm_value_float(i32 %10)
  store double %11, double* %6, align 8
  %12 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %13 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fadd double %14, 1.000000e+00
  store double %15, double* %13, align 8
  %16 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %17 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = sitofp i64 %18 to double
  %20 = load double, double* %6, align 8
  %21 = fsub double %20, %19
  store double %21, double* %6, align 8
  %22 = load double, double* %6, align 8
  %23 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %24 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fdiv double %22, %25
  %27 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %28 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to double
  %31 = fadd double %30, %26
  %32 = fptosi double %31 to i64
  store i64 %32, i64* %28, align 8
  %33 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %34 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = fsub double %35, 1.000000e+00
  %37 = load double, double* %6, align 8
  %38 = fmul double %36, %37
  %39 = load double, double* %6, align 8
  %40 = fmul double %38, %39
  %41 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %42 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = fdiv double %40, %43
  %45 = load %struct.stdev_data*, %struct.stdev_data** %5, align 8
  %46 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sitofp i32 %47 to double
  %49 = fadd double %48, %44
  %50 = fptosi double %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load i32, i32* @STRM_OK, align 4
  ret i32 %51
}

declare dso_local double @strm_value_float(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
