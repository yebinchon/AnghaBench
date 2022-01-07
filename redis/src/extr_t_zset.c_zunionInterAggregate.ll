; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zunionInterAggregate.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zunionInterAggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDIS_AGGR_SUM = common dso_local global i32 0, align 4
@REDIS_AGGR_MIN = common dso_local global i32 0, align 4
@REDIS_AGGR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unknown ZUNION/INTER aggregate type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double, i32)* @zunionInterAggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zunionInterAggregate(double* %0, double %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @REDIS_AGGR_SUM, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load double*, double** %4, align 8
  %12 = load double, double* %11, align 8
  %13 = load double, double* %5, align 8
  %14 = fadd double %12, %13
  %15 = load double*, double** %4, align 8
  store double %14, double* %15, align 8
  %16 = load double*, double** %4, align 8
  %17 = load double, double* %16, align 8
  %18 = call i64 @isnan(double %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load double*, double** %4, align 8
  store double 0.000000e+00, double* %21, align 8
  br label %22

22:                                               ; preds = %20, %10
  br label %61

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @REDIS_AGGR_MIN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load double, double* %5, align 8
  %29 = load double*, double** %4, align 8
  %30 = load double, double* %29, align 8
  %31 = fcmp olt double %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load double, double* %5, align 8
  br label %37

34:                                               ; preds = %27
  %35 = load double*, double** %4, align 8
  %36 = load double, double* %35, align 8
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi double [ %33, %32 ], [ %36, %34 ]
  %39 = load double*, double** %4, align 8
  store double %38, double* %39, align 8
  br label %60

40:                                               ; preds = %23
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @REDIS_AGGR_MAX, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load double, double* %5, align 8
  %46 = load double*, double** %4, align 8
  %47 = load double, double* %46, align 8
  %48 = fcmp ogt double %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load double, double* %5, align 8
  br label %54

51:                                               ; preds = %44
  %52 = load double*, double** %4, align 8
  %53 = load double, double* %52, align 8
  br label %54

54:                                               ; preds = %51, %49
  %55 = phi double [ %50, %49 ], [ %53, %51 ]
  %56 = load double*, double** %4, align 8
  store double %55, double* %56, align 8
  br label %59

57:                                               ; preds = %40
  %58 = call i32 @serverPanic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %37
  br label %61

61:                                               ; preds = %60, %22
  ret void
}

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
