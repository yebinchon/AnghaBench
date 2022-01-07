; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Build_sRGBGamma.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Build_sRGBGamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @Build_sRGBGamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Build_sRGBGamma() #0 {
  %1 = alloca [5 x double], align 16
  %2 = getelementptr inbounds [5 x double], [5 x double]* %1, i64 0, i64 0
  store double 2.400000e+00, double* %2, align 16
  %3 = getelementptr inbounds [5 x double], [5 x double]* %1, i64 0, i64 1
  store double 0x3FEE54EDCD0AEB60, double* %3, align 8
  %4 = getelementptr inbounds [5 x double], [5 x double]* %1, i64 0, i64 2
  store double 0x3FAAB1232F514A03, double* %4, align 16
  %5 = getelementptr inbounds [5 x double], [5 x double]* %1, i64 0, i64 3
  store double 0x3FB3D0722149B580, double* %5, align 8
  %6 = getelementptr inbounds [5 x double], [5 x double]* %1, i64 0, i64 4
  store double 4.045000e-02, double* %6, align 16
  %7 = call i32 (...) @DbgThread()
  %8 = getelementptr inbounds [5 x double], [5 x double]* %1, i64 0, i64 0
  %9 = call i32* @cmsBuildParametricToneCurve(i32 %7, i32 4, double* %8)
  ret i32* %9
}

declare dso_local i32* @cmsBuildParametricToneCurve(i32, i32, double*) #1

declare dso_local i32 @DbgThread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
