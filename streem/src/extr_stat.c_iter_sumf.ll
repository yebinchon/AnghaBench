; ModuleID = '/home/carl/AnghaBench/streem/src/extr_stat.c_iter_sumf.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_stat.c_iter_sumf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.sum_data* }
%struct.sum_data = type { double, double, i32, i32 }

@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @iter_sumf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_sumf(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sum_data*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.sum_data*, %struct.sum_data** %10, align 8
  store %struct.sum_data* %11, %struct.sum_data** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %15 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @convert_number(%struct.TYPE_4__* %12, i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @strm_number_p(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @STRM_NG, align 4
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call double @strm_value_float(i32 %24)
  store double %25, double* %7, align 8
  %26 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %27 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = load double, double* %7, align 8
  %30 = fadd double %28, %29
  store double %30, double* %8, align 8
  %31 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %32 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = call i64 @fabs(double %33)
  %35 = load double, double* %7, align 8
  %36 = call i64 @fabs(double %35)
  %37 = icmp sge i64 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %23
  %39 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %40 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  %42 = load double, double* %8, align 8
  %43 = fsub double %41, %42
  %44 = load double, double* %7, align 8
  %45 = fadd double %43, %44
  %46 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %47 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %46, i32 0, i32 1
  %48 = load double, double* %47, align 8
  %49 = fadd double %48, %45
  store double %49, double* %47, align 8
  br label %62

50:                                               ; preds = %23
  %51 = load double, double* %7, align 8
  %52 = load double, double* %8, align 8
  %53 = fsub double %51, %52
  %54 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %55 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %54, i32 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = fadd double %53, %56
  %58 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %59 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %58, i32 0, i32 1
  %60 = load double, double* %59, align 8
  %61 = fadd double %60, %57
  store double %61, double* %59, align 8
  br label %62

62:                                               ; preds = %50, %38
  %63 = load double, double* %8, align 8
  %64 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %65 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %64, i32 0, i32 0
  store double %63, double* %65, align 8
  %66 = load %struct.sum_data*, %struct.sum_data** %6, align 8
  %67 = getelementptr inbounds %struct.sum_data, %struct.sum_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @STRM_OK, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %62, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @convert_number(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @strm_number_p(i32) #1

declare dso_local double @strm_value_float(i32) #1

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
