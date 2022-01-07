; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarCyCmp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarCyCmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPECT_EQ = common dso_local global i32 0, align 4
@EXPECT_LT = common dso_local global i32 0, align 4
@EXPECT_GT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarCyCmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarCyCmp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store double 0.000000e+00, double* %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %6 = call i32 @MATHCMP(double -1.000000e+00, double -1.000000e+00)
  %7 = load i32, i32* @EXPECT_EQ, align 4
  %8 = call i32 @MATHCMP(double -1.000000e+00, double 0.000000e+00)
  %9 = load i32, i32* @EXPECT_LT, align 4
  %10 = call i32 @MATHCMP(double -1.000000e+00, double 1.000000e+00)
  %11 = load i32, i32* @EXPECT_LT, align 4
  %12 = call i32 @MATHCMP(double -1.000000e+00, double 2.000000e+00)
  %13 = load i32, i32* @EXPECT_LT, align 4
  %14 = call i32 @MATHCMP(double 0.000000e+00, double 1.000000e+00)
  %15 = load i32, i32* @EXPECT_LT, align 4
  %16 = call i32 @MATHCMP(double 0.000000e+00, double 0.000000e+00)
  %17 = load i32, i32* @EXPECT_EQ, align 4
  %18 = call i32 @MATHCMP(double 0.000000e+00, double -1.000000e+00)
  %19 = load i32, i32* @EXPECT_GT, align 4
  %20 = call i32 @MATHCMP(double 1.000000e+00, double -1.000000e+00)
  %21 = load i32, i32* @EXPECT_GT, align 4
  %22 = call i32 @MATHCMP(double 1.000000e+00, double 0.000000e+00)
  %23 = load i32, i32* @EXPECT_GT, align 4
  %24 = call i32 @MATHCMP(double 1.000000e+00, double 1.000000e+00)
  %25 = load i32, i32* @EXPECT_EQ, align 4
  %26 = call i32 @MATHCMP(double 1.000000e+00, double 2.000000e+00)
  %27 = load i32, i32* @EXPECT_LT, align 4
  ret void
}

declare dso_local i32 @MATHCMP(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
