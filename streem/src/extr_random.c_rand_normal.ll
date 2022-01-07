; ModuleID = '/home/carl/AnghaBench/streem/src/extr_random.c_rand_normal.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_random.c_rand_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rnorm_data = type { double, i32, i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.rnorm_data*)* @rand_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @rand_normal(%struct.rnorm_data* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.rnorm_data*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.rnorm_data* %0, %struct.rnorm_data** %3, align 8
  %7 = load %struct.rnorm_data*, %struct.rnorm_data** %3, align 8
  %8 = getelementptr inbounds %struct.rnorm_data, %struct.rnorm_data* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i64, i64* @FALSE, align 8
  %13 = load %struct.rnorm_data*, %struct.rnorm_data** %3, align 8
  %14 = getelementptr inbounds %struct.rnorm_data, %struct.rnorm_data* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load %struct.rnorm_data*, %struct.rnorm_data** %3, align 8
  %16 = getelementptr inbounds %struct.rnorm_data, %struct.rnorm_data* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  store double %17, double* %2, align 8
  br label %65

18:                                               ; preds = %1
  %19 = load i64, i64* @TRUE, align 8
  %20 = load %struct.rnorm_data*, %struct.rnorm_data** %3, align 8
  %21 = getelementptr inbounds %struct.rnorm_data, %struct.rnorm_data* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %48, %18
  %23 = load %struct.rnorm_data*, %struct.rnorm_data** %3, align 8
  %24 = getelementptr inbounds %struct.rnorm_data, %struct.rnorm_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call double @rand_float(i32 %25)
  %27 = fmul double %26, 2.000000e+00
  %28 = fsub double %27, 1.000000e+00
  store double %28, double* %4, align 8
  %29 = load %struct.rnorm_data*, %struct.rnorm_data** %3, align 8
  %30 = getelementptr inbounds %struct.rnorm_data, %struct.rnorm_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call double @rand_float(i32 %31)
  %33 = fmul double %32, 2.000000e+00
  %34 = fsub double %33, 1.000000e+00
  store double %34, double* %5, align 8
  %35 = load double, double* %4, align 8
  %36 = load double, double* %4, align 8
  %37 = fmul double %35, %36
  %38 = load double, double* %5, align 8
  %39 = load double, double* %5, align 8
  %40 = fmul double %38, %39
  %41 = fadd double %37, %40
  store double %41, double* %6, align 8
  br label %42

42:                                               ; preds = %22
  %43 = load double, double* %6, align 8
  %44 = fcmp oge double %43, 1.000000e+00
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load double, double* %6, align 8
  %47 = fcmp oeq double %46, 0.000000e+00
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ true, %42 ], [ %47, %45 ]
  br i1 %49, label %22, label %50

50:                                               ; preds = %48
  %51 = load double, double* %6, align 8
  %52 = call double @log(double %51) #3
  %53 = fmul double -2.000000e+00, %52
  %54 = load double, double* %6, align 8
  %55 = fdiv double %53, %54
  %56 = call double @sqrt(double %55) #3
  store double %56, double* %6, align 8
  %57 = load double, double* %5, align 8
  %58 = load double, double* %6, align 8
  %59 = fmul double %57, %58
  %60 = load %struct.rnorm_data*, %struct.rnorm_data** %3, align 8
  %61 = getelementptr inbounds %struct.rnorm_data, %struct.rnorm_data* %60, i32 0, i32 0
  store double %59, double* %61, align 8
  %62 = load double, double* %4, align 8
  %63 = load double, double* %6, align 8
  %64 = fmul double %62, %63
  store double %64, double* %2, align 8
  br label %65

65:                                               ; preds = %50, %11
  %66 = load double, double* %2, align 8
  ret double %66
}

declare dso_local double @rand_float(i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
