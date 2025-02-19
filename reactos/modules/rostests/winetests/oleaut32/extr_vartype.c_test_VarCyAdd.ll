; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarCyAdd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarCyAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATHVARS2 = common dso_local global i32 0, align 4
@VarCyAdd = common dso_local global i32 0, align 4
@EXPECT_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarCyAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarCyAdd() #0 {
  %1 = load i32, i32* @MATHVARS2, align 4
  %2 = load i32, i32* @VarCyAdd, align 4
  %3 = call i32 @MATH2(i32 %2, double 5.000000e-01, double 5.000000e-01)
  %4 = call i32 @EXPECTCY(i32 1)
  %5 = load i32, i32* @VarCyAdd, align 4
  %6 = call i32 @MATH2(i32 %5, double 5.000000e-01, double -4.000000e-01)
  %7 = call i32 @EXPECTCY(i32 0)
  %8 = load i32, i32* @VarCyAdd, align 4
  %9 = call i32 @MATH2(i32 %8, double 5.000000e-01, double -6.000000e-01)
  %10 = call i32 @EXPECTCY(i32 0)
  %11 = load i32, i32* @VarCyAdd, align 4
  %12 = call i32 @MATH2(i32 %11, double -5.000000e-01, double -5.000000e-01)
  %13 = call i32 @EXPECTCY(i32 -1)
  %14 = load i32, i32* @VarCyAdd, align 4
  %15 = call i32 @MATH2(i32 %14, double 0xC30A36E2EB1C4320, double 0xC30A36E2EB1C4320)
  %16 = load i32, i32* @EXPECT_OVERFLOW, align 4
  %17 = load i32, i32* @VarCyAdd, align 4
  %18 = call i32 @MATH2(i32 %17, double 0xC30A36E2EB1C4320, double 0x430A36E2EB1C4320)
  %19 = call i32 @EXPECTCY(i32 0)
  %20 = load i32, i32* @VarCyAdd, align 4
  %21 = call i32 @MATH2(i32 %20, double 0x430A36E2EB1C4320, double 0xC30A36E2EB1C4320)
  %22 = call i32 @EXPECTCY(i32 0)
  %23 = load i32, i32* @VarCyAdd, align 4
  %24 = call i32 @MATH2(i32 %23, double 0x430A36E2EB1C4320, double 0x430A36E2EB1C4320)
  %25 = load i32, i32* @EXPECT_OVERFLOW, align 4
  ret void
}

declare dso_local i32 @MATH2(i32, double, double) #1

declare dso_local i32 @EXPECTCY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
