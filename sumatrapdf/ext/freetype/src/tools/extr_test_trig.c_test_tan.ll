; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/extr_test_trig.c_test_tan.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/extr_test_trig.c_test_tan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FT_ANGLE_PI2 = common dso_local global i32 0, align 4
@SPI = common dso_local global i32 0, align 4
@THRESHOLD = common dso_local global i64 0, align 8
@error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"FT_Tan[%3d] = %.7f  tan[%3d] = %.7f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_tan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_tan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %37, %0
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = load i32, i32* @FT_ANGLE_PI2, align 4
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 %9, 33554432
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %5
  %13 = load i32, i32* %1, align 4
  %14 = call double @FT_Tan(i32 %13)
  store double %14, double* %2, align 8
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @SPI, align 4
  %17 = mul nsw i32 %15, %16
  %18 = call double @tan(i32 %17)
  store double %18, double* %4, align 8
  %19 = load double, double* %4, align 8
  %20 = fmul double %19, 6.553600e+04
  store double %20, double* %3, align 8
  %21 = load double, double* %3, align 8
  %22 = load double, double* %2, align 8
  %23 = fsub double %21, %22
  %24 = call i64 @abs(double %23)
  %25 = load i64, i64* @THRESHOLD, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %12
  store i32 1, i32* @error, align 4
  %28 = load i32, i32* %1, align 4
  %29 = ashr i32 %28, 16
  %30 = load double, double* %2, align 8
  %31 = fdiv double %30, 6.553600e+04
  %32 = load i32, i32* %1, align 4
  %33 = ashr i32 %32, 16
  %34 = load double, double* %4, align 8
  %35 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29, double %31, i32 %33, double %34)
  br label %36

36:                                               ; preds = %27, %12
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, 65536
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %1, align 4
  br label %5

42:                                               ; preds = %5
  ret void
}

declare dso_local double @FT_Tan(i32) #1

declare dso_local double @tan(i32) #1

declare dso_local i64 @abs(double) #1

declare dso_local i32 @printf(i8*, i32, double, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
