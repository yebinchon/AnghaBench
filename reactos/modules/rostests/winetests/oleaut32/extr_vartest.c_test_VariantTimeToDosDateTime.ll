; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_test_VariantTimeToDosDateTime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_test_VariantTimeToDosDateTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VariantTimeToDosDateTime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VariantTimeToDosDateTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VariantTimeToDosDateTime() #0 {
  %1 = load i32, i32* @VariantTimeToDosDateTime, align 4
  %2 = call i32 @CHECKPTR(i32 %1)
  %3 = call i32 @DT2DOS(double 2.922100e+04, i32 1, i32 1, i32 1, i32 1980, i32 0, i32 0, i32 0)
  %4 = call i32 @DT2DOS(double 7.305000e+04, i32 1, i32 31, i32 12, i32 2099, i32 0, i32 0, i32 0)
  %5 = call i32 @DT2DOS(double 2.922000e+04, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %6 = call i32 @DT2DOS(double 7.341500e+04, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %7 = call i32 @DT2DOS(double 0x40DC8940054F43E2, i32 1, i32 1, i32 1, i32 1980, i32 0, i32 0, i32 29)
  %8 = call i32 @DT2DOS(double 0x40DC894005B05B05, i32 1, i32 1, i32 1, i32 1980, i32 0, i32 0, i32 31)
  %9 = call i32 @DT2DOS(double 0x40DC89429F49F49F, i32 1, i32 1, i32 1, i32 1980, i32 0, i32 59, i32 0)
  %10 = call i32 @DT2DOS(double 0x40DC897D55555554, i32 1, i32 1, i32 1, i32 1980, i32 23, i32 0, i32 0)
  ret void
}

declare dso_local i32 @CHECKPTR(i32) #1

declare dso_local i32 @DT2DOS(double, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
