; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarCyInt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarCyInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATHVARS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarCyInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarCyInt() #0 {
  %1 = load i32, i32* @MATHVARS1, align 4
  %2 = call i32 @MATHINT(double -1.000100e+00)
  %3 = call i32 @EXPECTCY(i32 -2)
  %4 = call i32 @MATHINT(double -1.499900e+00)
  %5 = call i32 @EXPECTCY(i32 -2)
  %6 = call i32 @MATHINT(double -1.500100e+00)
  %7 = call i32 @EXPECTCY(i32 -2)
  %8 = call i32 @MATHINT(double -1.999900e+00)
  %9 = call i32 @EXPECTCY(i32 -2)
  %10 = call i32 @MATHINT(double -1.000000e-04)
  %11 = call i32 @EXPECTCY(i32 -1)
  %12 = call i32 @MATHINT(double -4.999000e-01)
  %13 = call i32 @EXPECTCY(i32 -1)
  %14 = call i32 @MATHINT(double -5.001000e-01)
  %15 = call i32 @EXPECTCY(i32 -1)
  %16 = call i32 @MATHINT(double -9.999000e-01)
  %17 = call i32 @EXPECTCY(i32 -1)
  %18 = call i32 @MATHINT(double 1.000000e-04)
  %19 = call i32 @EXPECTCY(i32 0)
  %20 = call i32 @MATHINT(double 4.999000e-01)
  %21 = call i32 @EXPECTCY(i32 0)
  %22 = call i32 @MATHINT(double 5.001000e-01)
  %23 = call i32 @EXPECTCY(i32 0)
  %24 = call i32 @MATHINT(double 9.999000e-01)
  %25 = call i32 @EXPECTCY(i32 0)
  %26 = call i32 @MATHINT(double 1.000100e+00)
  %27 = call i32 @EXPECTCY(i32 1)
  %28 = call i32 @MATHINT(double 1.499900e+00)
  %29 = call i32 @EXPECTCY(i32 1)
  %30 = call i32 @MATHINT(double 1.500100e+00)
  %31 = call i32 @EXPECTCY(i32 1)
  %32 = call i32 @MATHINT(double 1.999900e+00)
  %33 = call i32 @EXPECTCY(i32 1)
  ret void
}

declare dso_local i32 @MATHINT(double) #1

declare dso_local i32 @EXPECTCY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
