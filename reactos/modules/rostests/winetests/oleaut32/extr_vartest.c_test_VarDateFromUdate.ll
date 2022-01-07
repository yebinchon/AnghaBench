; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_test_VarDateFromUdate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_test_VarDateFromUdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VarDateFromUdate = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@VAR_TIMEVALUEONLY = common dso_local global i32 0, align 4
@VAR_DATEVALUEONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarDateFromUdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarDateFromUdate() #0 {
  %1 = load i32, i32* @VarDateFromUdate, align 4
  %2 = call i32 @CHECKPTR(i32 %1)
  %3 = load i32, i32* @S_OK, align 4
  %4 = call i32 @UD2T(i32 1, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 0, i32 %3, double 2.922100e+04)
  %5 = load i32, i32* @S_OK, align 4
  %6 = call i32 @UD2T(i32 2, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 3, i32 2, i32 0, i32 %5, double 2.922200e+04)
  %7 = load i32, i32* @S_OK, align 4
  %8 = call i32 @UD2T(i32 2, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 4, i32 5, i32 0, i32 %7, double 2.922200e+04)
  %9 = load i32, i32* @S_OK, align 4
  %10 = call i32 @UD2T(i32 31, i32 12, i32 1990, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %9, double 3.323800e+04)
  %11 = load i32, i32* @S_OK, align 4
  %12 = call i32 @UD2T(i32 31, i32 12, i32 90, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %11, double 3.323800e+04)
  %13 = load i32, i32* @S_OK, align 4
  %14 = call i32 @UD2T(i32 30, i32 12, i32 1899, i32 0, i32 0, i32 0, i32 0, i32 6, i32 364, i32 0, i32 %13, double 0.000000e+00)
  %15 = load i32, i32* @S_OK, align 4
  %16 = call i32 @UD2T(i32 1, i32 1, i32 100, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %15, double -6.574340e+05)
  %17 = load i32, i32* @S_OK, align 4
  %18 = call i32 @UD2T(i32 31, i32 12, i32 9999, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %17, double 0x4146924080000000)
  %19 = load i32, i32* @E_INVALIDARG, align 4
  %20 = call i32 @UD2T(i32 1, i32 1, i32 10000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %19, double 0.000000e+00)
  %21 = load i32, i32* @E_INVALIDARG, align 4
  %22 = call i32 @UD2T(i32 1, i32 1, i32 -10000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %21, double 0.000000e+00)
  %23 = load i32, i32* @S_OK, align 4
  %24 = call i32 @UD2T(i32 30, i32 12, i32 1899, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %23, double 0.000000e+00)
  %25 = load i32, i32* @S_OK, align 4
  %26 = call i32 @UD2T(i32 30, i32 12, i32 1899, i32 0, i32 0, i32 0, i32 999, i32 0, i32 0, i32 0, i32 %25, double 0.000000e+00)
  %27 = load i32, i32* @S_OK, align 4
  %28 = call i32 @UD2T(i32 1, i32 1, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 2, i32 1, i32 0, i32 %27, double 0x40DC89700E696F20)
  %29 = load i32, i32* @S_OK, align 4
  %30 = call i32 @UD2T(i32 1, i32 300, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 2, i32 1, i32 0, i32 %29, double 0x40E2B6580734B790)
  %31 = load i32, i32* @S_OK, align 4
  %32 = call i32 @UD2T(i32 300, i32 1, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 2, i32 1, i32 0, i32 %31, double 0x40DCD4300E696F20)
  %33 = load i32, i32* @S_OK, align 4
  %34 = call i32 @UD2T(i32 0, i32 1, i32 1980, i32 42, i32 1, i32 16, i32 0, i32 2, i32 1, i32 0, i32 %33, double 0x40DC89700E696F20)
  %35 = load i32, i32* @S_OK, align 4
  %36 = call i32 @UD2T(i32 1, i32 1, i32 1980, i32 17, i32 61, i32 16, i32 0, i32 2, i32 1, i32 0, i32 %35, double 0x40DC89700E696F20)
  %37 = load i32, i32* @S_OK, align 4
  %38 = call i32 @UD2T(i32 1, i32 1, i32 1980, i32 18, i32 0, i32 76, i32 0, i32 2, i32 1, i32 0, i32 %37, double 0x40DC89700E696F20)
  %39 = load i32, i32* @S_OK, align 4
  %40 = call i32 @UD2T(i32 1, i32 -300, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 2, i32 1, i32 0, i32 %39, double 0x40D396F00E696F20)
  %41 = load i32, i32* @S_OK, align 4
  %42 = call i32 @UD2T(i32 -300, i32 1, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 2, i32 1, i32 0, i32 %41, double 0x40DC3E300E696F20)
  %43 = load i32, i32* @S_OK, align 4
  %44 = call i32 @UD2T(i32 3, i32 1, i32 1980, i32 -30, i32 1, i32 16, i32 0, i32 2, i32 1, i32 0, i32 %43, double 0x40DC89700E696F20)
  %45 = load i32, i32* @S_OK, align 4
  %46 = call i32 @UD2T(i32 1, i32 1, i32 1980, i32 20, i32 -119, i32 16, i32 0, i32 2, i32 1, i32 0, i32 %45, double 0x40DC89700E696F20)
  %47 = load i32, i32* @S_OK, align 4
  %48 = call i32 @UD2T(i32 1, i32 1, i32 1980, i32 18, i32 3, i32 -104, i32 0, i32 2, i32 1, i32 0, i32 %47, double 0x40DC89700E696F20)
  %49 = load i32, i32* @S_OK, align 4
  %50 = call i32 @UD2T(i32 1, i32 12001, i32 -1020, i32 18, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 %49, double 0x40DC89700E696F20)
  %51 = load i32, i32* @S_OK, align 4
  %52 = call i32 @UD2T(i32 1, i32 -23, i32 1982, i32 18, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 %51, double 0x40DC89700E696F20)
  %53 = load i32, i32* @S_OK, align 4
  %54 = call i32 @UD2T(i32 -59, i32 3, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 %53, double 0x40DC89700E696F20)
  %55 = load i32, i32* @S_OK, align 4
  %56 = call i32 @UD2T(i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %55, double 3.652600e+04)
  %57 = load i32, i32* @S_OK, align 4
  %58 = call i32 @UD2T(i32 0, i32 0, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %57, double 2.918900e+04)
  %59 = load i32, i32* @S_OK, align 4
  %60 = call i32 @UD2T(i32 0, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 0, i32 %59, double 2.922000e+04)
  %61 = load i32, i32* @S_OK, align 4
  %62 = call i32 @UD2T(i32 -1, i32 1, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 %61, double 0x40DC88F00E696F20)
  %63 = load i32, i32* @S_OK, align 4
  %64 = call i32 @UD2T(i32 1, i32 1, i32 -1, i32 18, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 %63, double 0x40E1A8380734B790)
  %65 = load i32, i32* @S_OK, align 4
  %66 = call i32 @UD2T(i32 1, i32 -1, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 %65, double 0x40DC7A300E696F17)
  %67 = load i32, i32* @S_OK, align 4
  %68 = call i32 @UD2T(i32 1, i32 13, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 0, i32 %67, double 2.958700e+04)
  %69 = load i32, i32* @S_OK, align 4
  %70 = call i32 @UD2T(i32 25, i32 12, i32 1899, i32 6, i32 0, i32 0, i32 0, i32 1, i32 359, i32 0, i32 %69, double -5.250000e+00)
  %71 = load i32, i32* @S_OK, align 4
  %72 = call i32 @UD2T(i32 25, i32 12, i32 1899, i32 23, i32 59, i32 59, i32 0, i32 1, i32 359, i32 0, i32 %71, double 0xC017FFFCF746EBC9)
  %73 = load i32, i32* @S_OK, align 4
  %74 = call i32 @UD2T(i32 26, i32 12, i32 1899, i32 0, i32 0, i32 0, i32 0, i32 2, i32 360, i32 0, i32 %73, double -4.000000e+00)
  %75 = load i32, i32* @S_OK, align 4
  %76 = call i32 @UD2T(i32 30, i32 12, i32 1899, i32 6, i32 0, i32 0, i32 0, i32 6, i32 364, i32 0, i32 %75, double 2.500000e-01)
  %77 = load i32, i32* @VAR_TIMEVALUEONLY, align 4
  %78 = load i32, i32* @S_OK, align 4
  %79 = call i32 @UD2T(i32 1, i32 1, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 2, i32 1, i32 %77, i32 %78, double 0x3FE80734B78FBD40)
  %80 = load i32, i32* @VAR_DATEVALUEONLY, align 4
  %81 = load i32, i32* @S_OK, align 4
  %82 = call i32 @UD2T(i32 1, i32 1, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 2, i32 1, i32 %80, i32 %81, double 2.922100e+04)
  %83 = load i32, i32* @VAR_TIMEVALUEONLY, align 4
  %84 = load i32, i32* @S_OK, align 4
  %85 = call i32 @UD2T(i32 25, i32 12, i32 1899, i32 6, i32 0, i32 0, i32 0, i32 1, i32 359, i32 %83, i32 %84, double 2.500000e-01)
  %86 = load i32, i32* @VAR_DATEVALUEONLY, align 4
  %87 = load i32, i32* @S_OK, align 4
  %88 = call i32 @UD2T(i32 25, i32 12, i32 1899, i32 6, i32 0, i32 0, i32 0, i32 1, i32 359, i32 %86, i32 %87, double -5.000000e+00)
  %89 = load i32, i32* @VAR_TIMEVALUEONLY, align 4
  %90 = load i32, i32* @VAR_DATEVALUEONLY, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @S_OK, align 4
  %93 = call i32 @UD2T(i32 1, i32 -1, i32 1980, i32 18, i32 1, i32 16, i32 0, i32 0, i32 0, i32 %91, i32 %92, double 0x3FE80734B78FBD40)
  ret void
}

declare dso_local i32 @CHECKPTR(i32) #1

declare dso_local i32 @UD2T(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
