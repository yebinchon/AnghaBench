; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarDecFromDate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarDecFromDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATE = common dso_local global i32 0, align 4
@VarDecFromDate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarDecFromDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarDecFromDate() #0 {
  %1 = load i32, i32* @DATE, align 4
  %2 = call i32 @CONVVARS(i32 %1)
  %3 = load i32, i32* @VarDecFromDate, align 4
  %4 = call i32 @CONVERT(i32 %3, double -6.000000e-01)
  %5 = call i32 @EXPECTDEC(i32 1, i32 128, i32 0, i32 6)
  %6 = load i32, i32* @VarDecFromDate, align 4
  %7 = call i32 @CONVERT(i32 %6, double -5.000000e-01)
  %8 = call i32 @EXPECTDEC(i32 1, i32 128, i32 0, i32 5)
  %9 = load i32, i32* @VarDecFromDate, align 4
  %10 = call i32 @CONVERT(i32 %9, double -4.000000e-01)
  %11 = call i32 @EXPECTDEC(i32 1, i32 128, i32 0, i32 4)
  %12 = load i32, i32* @VarDecFromDate, align 4
  %13 = call i32 @CONVERT(i32 %12, double 0.000000e+00)
  %14 = call i32 @EXPECTDEC(i32 0, i32 0, i32 0, i32 0)
  %15 = load i32, i32* @VarDecFromDate, align 4
  %16 = call i32 @CONVERT(i32 %15, double 4.000000e-01)
  %17 = call i32 @EXPECTDEC(i32 1, i32 0, i32 0, i32 4)
  %18 = load i32, i32* @VarDecFromDate, align 4
  %19 = call i32 @CONVERT(i32 %18, double 5.000000e-01)
  %20 = call i32 @EXPECTDEC(i32 1, i32 0, i32 0, i32 5)
  %21 = load i32, i32* @VarDecFromDate, align 4
  %22 = call i32 @CONVERT(i32 %21, double 6.000000e-01)
  %23 = call i32 @EXPECTDEC(i32 1, i32 0, i32 0, i32 6)
  ret void
}

declare dso_local i32 @CONVVARS(i32) #1

declare dso_local i32 @CONVERT(i32, double) #1

declare dso_local i32 @EXPECTDEC(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
