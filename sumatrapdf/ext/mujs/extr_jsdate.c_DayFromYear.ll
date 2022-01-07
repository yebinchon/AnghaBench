; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_DayFromYear.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsdate.c_DayFromYear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DayFromYear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DayFromYear(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub nsw i32 %3, 1970
  %5 = mul nsw i32 365, %4
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 %6, 1969
  %8 = sitofp i32 %7 to double
  %9 = fdiv double %8, 4.000000e+00
  %10 = fptosi double %9 to i32
  %11 = call i32 @floor(i32 %10)
  %12 = add nsw i32 %5, %11
  %13 = load i32, i32* %2, align 4
  %14 = sub nsw i32 %13, 1901
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %15, 1.000000e+02
  %17 = fptosi double %16 to i32
  %18 = call i32 @floor(i32 %17)
  %19 = sub nsw i32 %12, %18
  %20 = load i32, i32* %2, align 4
  %21 = sub nsw i32 %20, 1601
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %22, 4.000000e+02
  %24 = fptosi double %23 to i32
  %25 = call i32 @floor(i32 %24)
  %26 = add nsw i32 %19, %25
  ret i32 %26
}

declare dso_local i32 @floor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
