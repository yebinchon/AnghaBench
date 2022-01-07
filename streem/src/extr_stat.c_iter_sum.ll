; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_iter_sum.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_iter_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.sum_data* }
%struct.sum_data = type { double, double, i32 }

@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @iter_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_sum(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sum_data*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.sum_data*, %struct.sum_data** %10, align 8
  store %struct.sum_data* %11, %struct.sum_data** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @strm_number_p(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @STRM_NG, align 4
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call double @strm_value_float(i32 %18)
  store double %19, double* %7, align 8
  %20 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %21 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = load double, double* %7, align 8
  %24 = fadd double %22, %23
  store double %24, double* %8, align 8
  %25 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %26 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = call i64 @fabs(double %27)
  %29 = load double, double* %7, align 8
  %30 = call i64 @fabs(double %29)
  %31 = icmp sge i64 %28, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %17
  %33 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %34 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %33, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = load double, double* %8, align 8
  %37 = fsub double %35, %36
  %38 = load double, double* %7, align 8
  %39 = fadd double %37, %38
  %40 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %41 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %40, i32 0, i32 1
  %42 = load double, double* %41, align 8
  %43 = fadd double %42, %39
  store double %43, double* %41, align 8
  br label %56

44:                                               ; preds = %17
  %45 = load double, double* %7, align 8
  %46 = load double, double* %8, align 8
  %47 = fsub double %45, %46
  %48 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %49 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = fadd double %47, %50
  %52 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %53 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fadd double %54, %51
  store double %55, double* %53, align 8
  br label %56

56:                                               ; preds = %44, %32
  %57 = load double, double* %8, align 8
  %58 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %59 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %58, i32 0, i32 0
  store double %57, double* %59, align 8
  %60 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %61 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @STRM_OK, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %56, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @strm_number_p(i32) #1

declare dso_local double @strm_value_float(i32) #1

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
