; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_estimate.c_estimate_max_spread_var.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_estimate.c_estimate_max_spread_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@INVALID_ESTIMATE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, %struct.TYPE_3__*)* @estimate_max_spread_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @estimate_max_spread_var(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = bitcast %struct.TYPE_3__* %14 to i32*
  %16 = call i32 @examine_variable(i32* %13, i32* %15, i32 0, i32* %6)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_sort_group_operators(i32 %19, i32 1, i32 0, i32 0, i32* %7, i32* null, i32* null, i32* null)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ts_get_variable_range(i32* %21, i32* %6, i32 %22, i32* %9, i32* %8)
  store volatile i32 %23, i32* %12, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ReleaseVariableStats(i32 %24)
  %26 = load volatile i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load double, double* @INVALID_ESTIMATE, align 8
  store double %29, double* %3, align 8
  br label %54

30:                                               ; preds = %2
  %31 = call i32 (...) @PG_TRY()
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ts_time_value_to_internal(i32 %32, i32 %35)
  store volatile i64 %36, i64* %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ts_time_value_to_internal(i32 %37, i32 %40)
  store volatile i64 %41, i64* %11, align 8
  %42 = call i32 (...) @PG_CATCH()
  store volatile i32 0, i32* %12, align 4
  %43 = call i32 (...) @FlushErrorState()
  %44 = call i32 (...) @PG_END_TRY()
  %45 = load volatile i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %30
  %48 = load double, double* @INVALID_ESTIMATE, align 8
  store double %48, double* %3, align 8
  br label %54

49:                                               ; preds = %30
  %50 = load volatile i64, i64* %10, align 8
  %51 = load volatile i64, i64* %11, align 8
  %52 = sub nsw i64 %50, %51
  %53 = sitofp i64 %52 to double
  store double %53, double* %3, align 8
  br label %54

54:                                               ; preds = %49, %47, %28
  %55 = load double, double* %3, align 8
  ret double %55
}

declare dso_local i32 @examine_variable(i32*, i32*, i32, i32*) #1

declare dso_local i32 @get_sort_group_operators(i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ts_get_variable_range(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ReleaseVariableStats(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i64 @ts_time_value_to_internal(i32, i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
