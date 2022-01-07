; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarUI4FromR8.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarUI4FromR8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DOUBLE = common dso_local global i32 0, align 4
@VarUI4FromR8 = common dso_local global i32 0, align 4
@EXPECT_OVERFLOW = common dso_local global i32 0, align 4
@VarUI4FromR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarUI4FromR8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarUI4FromR8() #0 {
  %1 = load i32, i32* @DOUBLE, align 4
  %2 = call i32 @CONVVARS(i32 %1)
  %3 = load i32, i32* @VarUI4FromR8, align 4
  %4 = call i32 @CONVERT(i32 %3, double -1.000000e+00)
  %5 = load i32, i32* @EXPECT_OVERFLOW, align 4
  %6 = load i32, i32* @VarUI4FromR4, align 4
  %7 = call i32 @CONVERT(i32 %6, double 0xBFE051EB80000000)
  %8 = load i32, i32* @EXPECT_OVERFLOW, align 4
  %9 = load i32, i32* @VarUI4FromR4, align 4
  %10 = call i32 @CONVERT(i32 %9, double -5.000000e-01)
  %11 = call i32 @EXPECT(i32 0)
  %12 = load i32, i32* @VarUI4FromR8, align 4
  %13 = call i32 @CONVERT(i32 %12, double 0.000000e+00)
  %14 = call i32 @EXPECT(i32 0)
  %15 = load i32, i32* @VarUI4FromR8, align 4
  %16 = call i32 @CONVERT(i32 %15, double 1.000000e+00)
  %17 = call i32 @EXPECT(i32 1)
  %18 = load i32, i32* @VarUI4FromR8, align 4
  %19 = call i32 @CONVERT(i32 %18, double 0x41EFFFFFFFE00000)
  %20 = call i32 @EXPECT(i32 -1)
  %21 = load i32, i32* @VarUI4FromR8, align 4
  %22 = call i32 @CONVERT(i32 %21, double 0x41EFFFFFFFEFAE14)
  %23 = call i32 @EXPECT(i32 -1)
  %24 = load i32, i32* @VarUI4FromR8, align 4
  %25 = call i32 @CONVERT(i32 %24, double 0x41EFFFFFFFF00000)
  %26 = load i32, i32* @EXPECT_OVERFLOW, align 4
  %27 = load i32, i32* @VarUI4FromR8, align 4
  %28 = call i32 @CONVERT(i32 %27, double 0x41F0000000000000)
  %29 = load i32, i32* @EXPECT_OVERFLOW, align 4
  %30 = load i32, i32* @VarUI4FromR8, align 4
  %31 = call i32 @CONVERT(i32 %30, double -1.500000e+00)
  %32 = load i32, i32* @EXPECT_OVERFLOW, align 4
  %33 = load i32, i32* @VarUI4FromR8, align 4
  %34 = call i32 @CONVERT(i32 %33, double -6.000000e-01)
  %35 = load i32, i32* @EXPECT_OVERFLOW, align 4
  %36 = load i32, i32* @VarUI4FromR8, align 4
  %37 = call i32 @CONVERT(i32 %36, double -5.000000e-01)
  %38 = call i32 @EXPECT(i32 0)
  %39 = load i32, i32* @VarUI4FromR8, align 4
  %40 = call i32 @CONVERT(i32 %39, double -4.000000e-01)
  %41 = call i32 @EXPECT(i32 0)
  %42 = load i32, i32* @VarUI4FromR8, align 4
  %43 = call i32 @CONVERT(i32 %42, double 4.000000e-01)
  %44 = call i32 @EXPECT(i32 0)
  %45 = load i32, i32* @VarUI4FromR8, align 4
  %46 = call i32 @CONVERT(i32 %45, double 5.000000e-01)
  %47 = call i32 @EXPECT(i32 0)
  %48 = load i32, i32* @VarUI4FromR8, align 4
  %49 = call i32 @CONVERT(i32 %48, double 6.000000e-01)
  %50 = call i32 @EXPECT(i32 1)
  %51 = load i32, i32* @VarUI4FromR8, align 4
  %52 = call i32 @CONVERT(i32 %51, double 1.500000e+00)
  %53 = call i32 @EXPECT(i32 2)
  ret void
}

declare dso_local i32 @CONVVARS(i32) #1

declare dso_local i32 @CONVERT(i32, double) #1

declare dso_local i32 @EXPECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
