; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_solar.c_solar_table_fill.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_solar.c_solar_table_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOLAR_TIME_NOON = common dso_local global i64 0, align 8
@SOLAR_TIME_MIDNIGHT = common dso_local global i64 0, align 8
@SOLAR_TIME_MAX = common dso_local global i32 0, align 4
@time_angle = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solar_table_fill(double %0, double %1, double %2, double* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double* %3, double** %8, align 8
  %18 = load double, double* %5, align 8
  %19 = call double @jd_from_epoch(double %18)
  store double %19, double* %9, align 8
  %20 = load double, double* %9, align 8
  %21 = call double @llvm.round.f64(double %20)
  store double %21, double* %10, align 8
  %22 = load double, double* %10, align 8
  %23 = call double @jcent_from_jd(double %22)
  store double %23, double* %11, align 8
  %24 = load double, double* %11, align 8
  %25 = load double, double* %7, align 8
  %26 = call double @time_of_solar_noon(double %24, double %25)
  store double %26, double* %12, align 8
  %27 = load double, double* %10, align 8
  %28 = fsub double %27, 5.000000e-01
  %29 = load double, double* %12, align 8
  %30 = fdiv double %29, 1.440000e+03
  %31 = fadd double %28, %30
  store double %31, double* %13, align 8
  %32 = load double, double* %13, align 8
  %33 = call double @jcent_from_jd(double %32)
  store double %33, double* %14, align 8
  %34 = load double, double* %13, align 8
  %35 = call double @epoch_from_jd(double %34)
  %36 = load double*, double** %8, align 8
  %37 = load i64, i64* @SOLAR_TIME_NOON, align 8
  %38 = getelementptr inbounds double, double* %36, i64 %37
  store double %35, double* %38, align 8
  %39 = load double, double* %13, align 8
  %40 = fadd double %39, 5.000000e-01
  %41 = call double @epoch_from_jd(double %40)
  %42 = load double*, double** %8, align 8
  %43 = load i64, i64* @SOLAR_TIME_MIDNIGHT, align 8
  %44 = getelementptr inbounds double, double* %42, i64 %43
  store double %41, double* %44, align 8
  store i32 2, i32* %15, align 4
  br label %45

45:                                               ; preds = %71, %4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @SOLAR_TIME_MAX, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = load double*, double** @time_angle, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  %54 = load double, double* %53, align 8
  store double %54, double* %16, align 8
  %55 = load double, double* %11, align 8
  %56 = load double, double* %14, align 8
  %57 = load double, double* %6, align 8
  %58 = load double, double* %7, align 8
  %59 = load double, double* %16, align 8
  %60 = call double @time_of_solar_elevation(double %55, double %56, double %57, double %58, double %59)
  store double %60, double* %17, align 8
  %61 = load double, double* %10, align 8
  %62 = fsub double %61, 5.000000e-01
  %63 = load double, double* %17, align 8
  %64 = fdiv double %63, 1.440000e+03
  %65 = fadd double %62, %64
  %66 = call double @epoch_from_jd(double %65)
  %67 = load double*, double** %8, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  store double %66, double* %70, align 8
  br label %71

71:                                               ; preds = %49
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %45

74:                                               ; preds = %45
  ret void
}

declare dso_local double @jd_from_epoch(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.round.f64(double) #2

declare dso_local double @jcent_from_jd(double) #1

declare dso_local double @time_of_solar_noon(double, double) #1

declare dso_local double @epoch_from_jd(double) #1

declare dso_local double @time_of_solar_elevation(double, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
