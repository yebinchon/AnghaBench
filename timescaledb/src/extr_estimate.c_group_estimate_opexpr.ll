; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_estimate.c_group_estimate_opexpr.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_estimate.c_group_estimate_opexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@INVALID_ESTIMATE = common dso_local global double 0.000000e+00, align 8
@Const = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, %struct.TYPE_3__*, double)* @group_estimate_opexpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @group_estimate_opexpr(i32* %0, %struct.TYPE_3__* %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store double %2, double* %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @list_length(i32 %13)
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load double, double* @INVALID_ESTIMATE, align 8
  store double %17, double* %4, align 8
  br label %65

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @linitial(i32 %22)
  %24 = call i32* @eval_const_expressions(i32* %19, i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lsecond(i32 %28)
  %30 = call i32* @eval_const_expressions(i32* %25, i32 %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call double @group_estimate_integer_division(i32* %31, i32 %34, i32* %35, i32* %36)
  store double %37, double* %10, align 8
  %38 = load double, double* %10, align 8
  %39 = call i64 @IS_VALID_ESTIMATE(double %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %18
  %42 = load double, double* %10, align 8
  store double %42, double* %4, align 8
  br label %65

43:                                               ; preds = %18
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @Const, align 4
  %46 = call i64 @IsA(i32* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load double, double* %7, align 8
  %52 = call double @group_estimate_expr(i32* %49, i32* %50, double %51)
  store double %52, double* %4, align 8
  br label %65

53:                                               ; preds = %43
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @Const, align 4
  %56 = call i64 @IsA(i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load double, double* %7, align 8
  %62 = call double @group_estimate_expr(i32* %59, i32* %60, double %61)
  store double %62, double* %4, align 8
  br label %65

63:                                               ; preds = %53
  %64 = load double, double* @INVALID_ESTIMATE, align 8
  store double %64, double* %4, align 8
  br label %65

65:                                               ; preds = %63, %58, %48, %41, %16
  %66 = load double, double* %4, align 8
  ret double %66
}

declare dso_local i32 @list_length(i32) #1

declare dso_local i32* @eval_const_expressions(i32*, i32) #1

declare dso_local i32 @linitial(i32) #1

declare dso_local i32 @lsecond(i32) #1

declare dso_local double @group_estimate_integer_division(i32*, i32, i32*, i32*) #1

declare dso_local i64 @IS_VALID_ESTIMATE(double) #1

declare dso_local i64 @IsA(i32*, i32) #1

declare dso_local double @group_estimate_expr(i32*, i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
