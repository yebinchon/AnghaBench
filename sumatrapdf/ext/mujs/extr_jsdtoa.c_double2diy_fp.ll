; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_double2diy_fp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdtoa.c_double2diy_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@DP_EXPONENT_MASK = common dso_local global i32 0, align 4
@DP_SIGNIFICAND_SIZE = common dso_local global i32 0, align 4
@DP_SIGNIFICAND_MASK = common dso_local global i32 0, align 4
@DP_HIDDEN_BIT = common dso_local global i32 0, align 4
@DP_EXPONENT_BIAS = common dso_local global i64 0, align 8
@DP_MIN_EXPONENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (double)* @double2diy_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @double2diy_fp(double %0) #0 {
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = call i32 @double_to_uint64(double %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DP_EXPONENT_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @DP_SIGNIFICAND_SIZE, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DP_SIGNIFICAND_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @DP_HIDDEN_BIT, align 4
  %22 = add nsw i32 %20, %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @DP_EXPONENT_BIAS, align 8
  %27 = sub nsw i64 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  br label %35

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i64, i64* @DP_MIN_EXPONENT, align 8
  %33 = add nsw i64 %32, 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %19
  %36 = bitcast %struct.TYPE_3__* %2 to { i32, i64 }*
  %37 = load { i32, i64 }, { i32, i64 }* %36, align 8
  ret { i32, i64 } %37
}

declare dso_local i32 @double_to_uint64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
