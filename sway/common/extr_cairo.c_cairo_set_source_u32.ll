; ModuleID = '/home/carl/AnghaBench/sway/common/extr_cairo.c_cairo_set_source_u32.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_cairo.c_cairo_set_source_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cairo_set_source_u32(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 24
  %8 = and i32 %7, 255
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, 2.550000e+02
  %11 = fptosi double %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 16
  %14 = and i32 %13, 255
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %15, 2.550000e+02
  %17 = fptosi double %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, 2.550000e+02
  %23 = fptosi double %22 to i32
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 0
  %26 = and i32 %25, 255
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 2.550000e+02
  %29 = fptosi double %28 to i32
  %30 = call i32 @cairo_set_source_rgba(i32* %5, i32 %11, i32 %17, i32 %23, i32 %29)
  ret void
}

declare dso_local i32 @cairo_set_source_rgba(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
