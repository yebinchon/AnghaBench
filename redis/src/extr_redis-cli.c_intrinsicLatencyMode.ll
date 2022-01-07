; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_intrinsicLatencyMode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_intrinsicLatencyMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SIGINT = common dso_local global i32 0, align 4
@intrinsicLatencyModeStop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Max latency so far: %lld microseconds.\0A\00", align 1
@force_cancel_loop = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"\0A%lld total runs (avg latency: %.4f microseconds / %.2f nanoseconds per run).\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Worst run took %.0fx longer than the average latency.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intrinsicLatencyMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intrinsicLatencyMode() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %11 = mul nsw i32 %10, 1000000
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %2, align 8
  %13 = call i64 (...) @ustime()
  %14 = load i64, i64* %2, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* %1, align 8
  %16 = load i32, i32* @SIGINT, align 4
  %17 = load i32, i32* @intrinsicLatencyModeStop, align 4
  %18 = call i32 @signal(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %0, %30, %65
  %20 = call i64 (...) @ustime()
  store i64 %20, i64* %5, align 8
  %21 = call i32 (...) @compute_something_fast()
  %22 = call i64 (...) @ustime()
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %19

31:                                               ; preds = %19
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i64, i64* %2, align 8
  %41 = sitofp i64 %40 to double
  %42 = load i64, i64* %4, align 8
  %43 = sitofp i64 %42 to double
  %44 = fdiv double %41, %43
  store double %44, double* %8, align 8
  %45 = load double, double* %8, align 8
  %46 = fmul double %45, 1.000000e+03
  store double %46, double* %9, align 8
  %47 = load i64, i64* @force_cancel_loop, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %39
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %1, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49, %39
  %54 = load i64, i64* %4, align 8
  %55 = load double, double* %8, align 8
  %56 = load double, double* %9, align 8
  %57 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 %54, double %55, double %56)
  %58 = load i64, i64* %3, align 8
  %59 = sitofp i64 %58 to double
  %60 = load double, double* %8, align 8
  %61 = fdiv double %59, %60
  %62 = fptosi double %61 to i64
  %63 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = call i32 @exit(i32 0) #3
  unreachable

65:                                               ; preds = %49
  br label %19
}

declare dso_local i64 @ustime(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @compute_something_fast(...) #1

declare dso_local i32 @printf(i8*, i64, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
