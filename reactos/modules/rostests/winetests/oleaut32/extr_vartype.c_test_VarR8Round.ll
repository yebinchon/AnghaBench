; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarR8Round.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarR8Round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPECT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarR8Round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarR8Round() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double 0.000000e+00, double* %2, align 8
  %5 = call i32 @MATHRND(double 5.432000e-01, i32 5)
  %6 = call i32 @EXPECT(i32 0)
  %7 = call i32 @MATHRND(double 5.432000e-01, i32 4)
  %8 = call i32 @EXPECT(i32 0)
  %9 = call i32 @MATHRND(double 5.432000e-01, i32 3)
  %10 = call i32 @EXPECT(i32 0)
  %11 = call i32 @MATHRND(double 5.432000e-01, i32 2)
  %12 = call i32 @EXPECT(i32 0)
  %13 = call i32 @MATHRND(double 5.432000e-01, i32 1)
  %14 = call i32 @EXPECT(i32 0)
  %15 = call i32 @MATHRND(double 5.532000e-01, i32 0)
  %16 = call i32 @EXPECT(i32 1)
  %17 = call i32 @MATHRND(double 5.532000e-01, i32 -1)
  %18 = load i32, i32* @EXPECT_INVALID, align 4
  %19 = call i32 @MATHRND(double 5.568000e-01, i32 5)
  %20 = call i32 @EXPECT(i32 0)
  %21 = call i32 @MATHRND(double 5.568000e-01, i32 4)
  %22 = call i32 @EXPECT(i32 0)
  %23 = call i32 @MATHRND(double 5.568000e-01, i32 3)
  %24 = call i32 @EXPECT(i32 0)
  %25 = call i32 @MATHRND(double 5.568000e-01, i32 2)
  %26 = call i32 @EXPECT(i32 0)
  %27 = call i32 @MATHRND(double 5.568000e-01, i32 1)
  %28 = call i32 @EXPECT(i32 0)
  %29 = call i32 @MATHRND(double 5.568000e-01, i32 0)
  %30 = call i32 @EXPECT(i32 1)
  %31 = call i32 @MATHRND(double 5.568000e-01, i32 -1)
  %32 = load i32, i32* @EXPECT_INVALID, align 4
  %33 = call i32 @MATHRND(double 4.999000e-01, i32 0)
  %34 = call i32 @EXPECT(i32 0)
  %35 = call i32 @MATHRND(double 5.000000e-01, i32 0)
  %36 = call i32 @EXPECT(i32 0)
  %37 = call i32 @MATHRND(double 5.001000e-01, i32 0)
  %38 = call i32 @EXPECT(i32 1)
  %39 = call i32 @MATHRND(double 1.499900e+00, i32 0)
  %40 = call i32 @EXPECT(i32 1)
  %41 = call i32 @MATHRND(double 1.500000e+00, i32 0)
  %42 = call i32 @EXPECT(i32 2)
  %43 = call i32 @MATHRND(double 1.500100e+00, i32 0)
  %44 = call i32 @EXPECT(i32 2)
  ret void
}

declare dso_local i32 @MATHRND(double, i32) #1

declare dso_local i32 @EXPECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
