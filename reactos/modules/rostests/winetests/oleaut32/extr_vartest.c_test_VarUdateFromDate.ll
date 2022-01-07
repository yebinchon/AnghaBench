; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_test_VarUdateFromDate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_test_VarUdateFromDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VarUdateFromDate = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@VAR_VALIDDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarUdateFromDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarUdateFromDate() #0 {
  %1 = load i32, i32* @VarUdateFromDate, align 4
  %2 = call i32 @CHECKPTR(i32 %1)
  %3 = load i32, i32* @S_OK, align 4
  %4 = call i32 @DT2UD(double 2.922100e+04, i32 0, i32 %3, i32 1, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 2, i32 1)
  %5 = load i32, i32* @S_OK, align 4
  %6 = call i32 @DT2UD(double 2.922200e+04, i32 0, i32 %5, i32 2, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2)
  %7 = load i32, i32* @S_OK, align 4
  %8 = call i32 @DT2UD(double 3.323800e+04, i32 0, i32 %7, i32 31, i32 12, i32 1990, i32 0, i32 0, i32 0, i32 0, i32 1, i32 365)
  %9 = load i32, i32* @S_OK, align 4
  %10 = call i32 @DT2UD(double 0.000000e+00, i32 0, i32 %9, i32 30, i32 12, i32 1899, i32 0, i32 0, i32 0, i32 0, i32 6, i32 364)
  %11 = load i32, i32* @S_OK, align 4
  %12 = call i32 @DT2UD(double -6.574340e+05, i32 0, i32 %11, i32 1, i32 1, i32 100, i32 0, i32 0, i32 0, i32 0, i32 5, i32 1)
  %13 = load i32, i32* @E_INVALIDARG, align 4
  %14 = call i32 @DT2UD(double -6.574350e+05, i32 0, i32 %13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %15 = load i32, i32* @S_OK, align 4
  %16 = call i32 @DT2UD(double 0x4146924080000000, i32 0, i32 %15, i32 31, i32 12, i32 9999, i32 0, i32 0, i32 0, i32 0, i32 5, i32 365)
  %17 = load i32, i32* @E_INVALIDARG, align 4
  %18 = call i32 @DT2UD(double 0x4146924100000000, i32 0, i32 %17, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %19 = load i32, i32* @VAR_VALIDDATE, align 4
  %20 = load i32, i32* @E_INVALIDARG, align 4
  %21 = call i32 @DT2UD(double -6.574350e+05, i32 %19, i32 %20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %22 = load i32, i32* @VAR_VALIDDATE, align 4
  %23 = load i32, i32* @E_INVALIDARG, align 4
  %24 = call i32 @DT2UD(double 0x4146924100000000, i32 %22, i32 %23, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %25 = load i32, i32* @S_OK, align 4
  %26 = call i32 @DT2UD(double 0x40DC895000000000, i32 0, i32 %25, i32 1, i32 1, i32 1980, i32 6, i32 0, i32 0, i32 0, i32 2, i32 1)
  %27 = load i32, i32* @S_OK, align 4
  %28 = call i32 @DT2UD(double 0x40DC8955555551C1, i32 0, i32 %27, i32 1, i32 1, i32 1980, i32 8, i32 0, i32 0, i32 0, i32 2, i32 1)
  %29 = load i32, i32* @S_OK, align 4
  %30 = call i32 @DT2UD(double 2.922150e+04, i32 0, i32 %29, i32 1, i32 1, i32 1980, i32 12, i32 0, i32 0, i32 0, i32 2, i32 1)
  %31 = load i32, i32* @S_OK, align 4
  %32 = call i32 @DT2UD(double 0x40DC897F49F2C206, i32 0, i32 %31, i32 1, i32 1, i32 1980, i32 23, i32 44, i32 0, i32 0, i32 2, i32 1)
  %33 = load i32, i32* @S_OK, align 4
  %34 = call i32 @DT2UD(double 0x40DC89700E5C7D18, i32 0, i32 %33, i32 1, i32 1, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 2, i32 1)
  %35 = load i32, i32* @S_OK, align 4
  %36 = call i32 @DT2UD(double -5.250000e+00, i32 0, i32 %35, i32 25, i32 12, i32 1899, i32 6, i32 0, i32 0, i32 0, i32 1, i32 359)
  %37 = load i32, i32* @S_OK, align 4
  %38 = call i32 @DT2UD(double 0xC017FFFCF746EBC9, i32 0, i32 %37, i32 25, i32 12, i32 1899, i32 23, i32 59, i32 59, i32 0, i32 1, i32 359)
  %39 = load i32, i32* @S_OK, align 4
  %40 = call i32 @DT2UD(double -4.000000e+00, i32 0, i32 %39, i32 26, i32 12, i32 1899, i32 0, i32 0, i32 0, i32 0, i32 2, i32 360)
  %41 = load i32, i32* @S_OK, align 4
  %42 = call i32 @DT2UD(double -2.500000e-01, i32 0, i32 %41, i32 30, i32 12, i32 1899, i32 6, i32 0, i32 0, i32 0, i32 6, i32 364)
  %43 = load i32, i32* @S_OK, align 4
  %44 = call i32 @DT2UD(double 2.500000e-01, i32 0, i32 %43, i32 30, i32 12, i32 1899, i32 6, i32 0, i32 0, i32 0, i32 6, i32 364)
  ret void
}

declare dso_local i32 @CHECKPTR(i32) #1

declare dso_local i32 @DT2UD(double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
