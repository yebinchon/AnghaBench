; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_test_DosDateTimeToVariantTime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartest.c_test_DosDateTimeToVariantTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DosDateTimeToVariantTime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DosDateTimeToVariantTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DosDateTimeToVariantTime() #0 {
  %1 = load i32, i32* @DosDateTimeToVariantTime, align 4
  %2 = call i32 @CHECKPTR(i32 %1)
  %3 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 1, double 2.922100e+04)
  %4 = call i32 @DOS2DT(i32 31, i32 12, i32 2099, i32 0, i32 0, i32 0, i32 1, double 7.305000e+04)
  %5 = call i32 @DOS2DT(i32 31, i32 12, i32 2100, i32 0, i32 0, i32 0, i32 0, double 0.000000e+00)
  %6 = call i32 @DOS2DT(i32 0, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 1, double 2.922000e+04)
  %7 = call i32 @DOS2DT(i32 1, i32 0, i32 1980, i32 0, i32 0, i32 0, i32 1, double 2.919000e+04)
  %8 = call i32 @DOS2DT(i32 0, i32 0, i32 1980, i32 0, i32 0, i32 0, i32 1, double 2.918900e+04)
  %9 = call i32 @DOS2DT(i32 29, i32 2, i32 1981, i32 0, i32 0, i32 0, i32 1, double 2.964600e+04)
  %10 = call i32 @DOS2DT(i32 30, i32 2, i32 1981, i32 0, i32 0, i32 0, i32 1, double 2.964700e+04)
  %11 = call i32 @DOS2DT(i32 29, i32 2, i32 1980, i32 0, i32 0, i32 0, i32 1, double 2.928000e+04)
  %12 = call i32 @DOS2DT(i32 2, i32 13, i32 1980, i32 0, i32 0, i32 0, i32 0, double 0.000000e+00)
  %13 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 0, i32 0, i32 29, i32 1, double 0x40DC8940054F43E2)
  %14 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 0, i32 0, i32 31, i32 1, double 0x40DC894005B05B05)
  %15 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 0, i32 59, i32 0, i32 1, double 0x40DC89429F49F49F)
  %16 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 0, i32 60, i32 0, i32 0, double 0.000000e+00)
  %17 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 0, i32 0, i32 60, i32 0, double 0.000000e+00)
  %18 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 23, i32 0, i32 0, i32 1, double 0x40DC897D55555554)
  %19 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 24, i32 0, i32 0, i32 0, double 0.000000e+00)
  %20 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 0, i32 0, i32 1, i32 1, double 2.922100e+04)
  %21 = call i32 @DOS2DT(i32 2, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 1, double 2.922200e+04)
  %22 = call i32 @DOS2DT(i32 2, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 1, double 2.922200e+04)
  %23 = call i32 @DOS2DT(i32 31, i32 12, i32 1990, i32 0, i32 0, i32 0, i32 1, double 3.323800e+04)
  %24 = call i32 @DOS2DT(i32 31, i32 12, i32 90, i32 0, i32 0, i32 0, i32 1, double 4.054300e+04)
  %25 = call i32 @DOS2DT(i32 30, i32 12, i32 1899, i32 0, i32 0, i32 0, i32 1, double 4.675100e+04)
  %26 = call i32 @DOS2DT(i32 1, i32 1, i32 100, i32 0, i32 0, i32 0, i32 1, double 4.383100e+04)
  %27 = call i32 @DOS2DT(i32 31, i32 12, i32 9999, i32 0, i32 0, i32 0, i32 1, double 5.990100e+04)
  %28 = call i32 @DOS2DT(i32 1, i32 1, i32 10000, i32 0, i32 0, i32 0, i32 1, double 5.990200e+04)
  %29 = call i32 @DOS2DT(i32 1, i32 1, i32 -10000, i32 0, i32 0, i32 0, i32 1, double 4.821400e+04)
  %30 = call i32 @DOS2DT(i32 30, i32 12, i32 1899, i32 0, i32 0, i32 0, i32 1, double 4.675100e+04)
  %31 = call i32 @DOS2DT(i32 30, i32 12, i32 1899, i32 0, i32 0, i32 1, i32 1, double 4.675100e+04)
  %32 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 18, i32 1, i32 16, i32 1, double 0x40DC89700E696F20)
  %33 = call i32 @DOS2DT(i32 1, i32 300, i32 1980, i32 18, i32 1, i32 16, i32 1, double 0x40DCDD300E696F20)
  %34 = call i32 @DOS2DT(i32 300, i32 1, i32 1980, i32 18, i32 1, i32 16, i32 1, double 0x40DC8C300E696F20)
  %35 = call i32 @DOS2DT(i32 0, i32 1, i32 1980, i32 42, i32 1, i32 16, i32 1, double 0x40DC891AB91419CB)
  %36 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 17, i32 61, i32 16, i32 0, double 0.000000e+00)
  %37 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 18, i32 0, i32 76, i32 1, double 0x40DC897002468ACF)
  %38 = call i32 @DOS2DT(i32 1, i32 -300, i32 1980, i32 18, i32 1, i32 16, i32 1, double 0x40DCA0300E696F20)
  %39 = call i32 @DOS2DT(i32 -300, i32 1, i32 1980, i32 18, i32 1, i32 16, i32 1, double 0x40DC8E300E696F20)
  %40 = call i32 @DOS2DT(i32 3, i32 1, i32 1980, i32 -30, i32 1, i32 16, i32 1, double 0x40DC89C563BEC474)
  %41 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 20, i32 -119, i32 16, i32 1, double 0x40DC8975BEC474D0)
  %42 = call i32 @DOS2DT(i32 1, i32 1, i32 1980, i32 18, i32 3, i32 -104, i32 1, double 0x40DC897026AF37C0)
  %43 = call i32 @DOS2DT(i32 1, i32 12001, i32 -1020, i32 18, i32 1, i32 16, i32 1, double 0x40EB1BF80734B790)
  %44 = call i32 @DOS2DT(i32 1, i32 -23, i32 1982, i32 18, i32 1, i32 16, i32 1, double 0x40DD7CF00E696F20)
  %45 = call i32 @DOS2DT(i32 -59, i32 3, i32 1980, i32 18, i32 1, i32 16, i32 1, double 0x40DC99700E696F20)
  %46 = call i32 @DOS2DT(i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, double 5.405800e+04)
  %47 = call i32 @DOS2DT(i32 0, i32 0, i32 1980, i32 0, i32 0, i32 0, i32 1, double 2.918900e+04)
  %48 = call i32 @DOS2DT(i32 0, i32 1, i32 1980, i32 0, i32 0, i32 0, i32 1, double 2.922000e+04)
  %49 = call i32 @DOS2DT(i32 -1, i32 1, i32 1980, i32 18, i32 1, i32 16, i32 1, double 0x40DC90F00E696F20)
  %50 = call i32 @DOS2DT(i32 1, i32 1, i32 -1, i32 18, i32 1, i32 16, i32 1, double 0x40EA37B80734B790)
  %51 = call i32 @DOS2DT(i32 1, i32 -1, i32 1980, i32 18, i32 1, i32 16, i32 0, double 0.000000e+00)
  ret void
}

declare dso_local i32 @CHECKPTR(i32) #1

declare dso_local i32 @DOS2DT(i32, i32, i32, i32, i32, i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
