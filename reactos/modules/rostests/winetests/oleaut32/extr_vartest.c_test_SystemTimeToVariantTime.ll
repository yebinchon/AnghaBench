; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_test_SystemTimeToVariantTime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_test_SystemTimeToVariantTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SystemTimeToVariantTime = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SystemTimeToVariantTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemTimeToVariantTime() #0 {
  %1 = load i32, i32* @SystemTimeToVariantTime, align 4
  %2 = call i32 @CHECKPTR(i32 %1)
  %3 = load i32, i32* @TRUE, align 4
  %4 = call i32 @ST2DT(i32 1, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 %3, double 2.922100e+04)
  %5 = load i32, i32* @TRUE, align 4
  %6 = call i32 @ST2DT(i32 2, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 %5, double 2.922200e+04)
  %7 = load i32, i32* @TRUE, align 4
  %8 = call i32 @ST2DT(i32 0, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 %7, double 2.922000e+04)
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 @ST2DT(i32 1, i32 13, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 %9, double 2.958700e+04)
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @ST2DT(i32 32, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 0, i32 %11, double 0.000000e+00)
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @ST2DT(i32 1, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 %13, double 0.000000e+00)
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @ST2DT(i32 1, i32 1, i32 10000, i32 0, i32 0, i32 0, i32 0, i32 %15, double 0.000000e+00)
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @ST2DT(i32 1, i32 1, i32 9999, i32 0, i32 0, i32 0, i32 0, i32 %17, double 0x4146918A80000000)
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @ST2DT(i32 31, i32 12, i32 90, i32 0, i32 0, i32 0, i32 0, i32 %19, double 3.323800e+04)
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @ST2DT(i32 1, i32 1, i32 30, i32 0, i32 0, i32 0, i32 0, i32 %21, double 1.095900e+04)
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i32 @ST2DT(i32 1, i32 1, i32 29, i32 0, i32 0, i32 0, i32 0, i32 %23, double 4.711900e+04)
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @ST2DT(i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %25, double 3.652600e+04)
  ret void
}

declare dso_local i32 @CHECKPTR(i32) #1

declare dso_local i32 @ST2DT(i32, i32, i32, i32, i32, i32, i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
