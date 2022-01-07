; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_iter_stdevf.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_iter_stdevf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.stdev_data* }
%struct.stdev_data = type { double, i32, i64, i32 }

@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @iter_stdevf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_stdevf(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stdev_data*, align 8
  %7 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.stdev_data*, %struct.stdev_data** %9, align 8
  store %struct.stdev_data* %10, %struct.stdev_data** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.stdev_data*, %struct.stdev_data** %6, align 8
  %14 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @convert_number(%struct.TYPE_4__* %11, i32 %12, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @strm_number_p(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @STRM_NG, align 4
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call double @strm_value_float(i32 %23)
  store double %24, double* %7, align 8
  %25 = load %struct.stdev_data*, %struct.stdev_data** %6, align 8
  %26 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = fadd double %27, 1.000000e+00
  store double %28, double* %26, align 8
  %29 = load %struct.stdev_data*, %struct.stdev_data** %6, align 8
  %30 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to double
  %33 = load double, double* %7, align 8
  %34 = fsub double %33, %32
  store double %34, double* %7, align 8
  %35 = load double, double* %7, align 8
  %36 = load %struct.stdev_data*, %struct.stdev_data** %6, align 8
  %37 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fdiv double %35, %38
  %40 = load %struct.stdev_data*, %struct.stdev_data** %6, align 8
  %41 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to double
  %44 = fadd double %43, %39
  %45 = fptosi double %44 to i64
  store i64 %45, i64* %41, align 8
  %46 = load %struct.stdev_data*, %struct.stdev_data** %6, align 8
  %47 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = fsub double %48, 1.000000e+00
  %50 = load double, double* %7, align 8
  %51 = fmul double %49, %50
  %52 = load double, double* %7, align 8
  %53 = fmul double %51, %52
  %54 = load %struct.stdev_data*, %struct.stdev_data** %6, align 8
  %55 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %54, i32 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = fdiv double %53, %56
  %58 = load %struct.stdev_data*, %struct.stdev_data** %6, align 8
  %59 = getelementptr inbounds %struct.stdev_data, %struct.stdev_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sitofp i32 %60 to double
  %62 = fadd double %61, %57
  %63 = fptosi double %62 to i32
  store i32 %63, i32* %59, align 8
  %64 = load i32, i32* @STRM_OK, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %22, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @convert_number(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @strm_number_p(i32) #1

declare dso_local double @strm_value_float(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
