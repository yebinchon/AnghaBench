; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_arc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_arc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@arc_path = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_arc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_arc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @FillModeAlternate, align 4
  %4 = call i32 @GdipCreatePath(i32 %3, i32** %2)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @GdipAddPathArc(i32* %5, double 1.000000e+02, double 1.000000e+02, double 5.000000e+02, double 7.000000e+02, double 0.000000e+00, double 9.000000e+01)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @Ok, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @expect(i32 %7, i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @GdipAddPathArc(i32* %10, double 1.000000e+02, double 1.000000e+02, double 5.000000e+02, double 7.000000e+02, double 0.000000e+00, double 1.000000e+02)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @Ok, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @expect(i32 %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @GdipAddPathArc(i32* %15, double 1.000000e+02, double 1.000000e+02, double 5.000000e+02, double 7.000000e+02, double -8.000000e+01, double 1.000000e+02)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @GdipAddPathArc(i32* %20, double 1.000000e+02, double 1.000000e+02, double 5.000000e+02, double 7.000000e+02, double 8.000000e+01, double -1.000000e+02)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @Ok, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @GdipAddPathArc(i32* %25, double 1.000000e+02, double 1.000000e+02, double 5.000000e+02, double 7.000000e+02, double 5.000000e+01, double -4.000000e+02)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @Ok, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @GdipAddPathArc(i32* %30, double 1.000000e+02, double 1.000000e+02, double 5.000000e+02, double 7.000000e+02, double 5.000000e+01, double 0.000000e+00)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* @Ok, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @arc_path, align 4
  %37 = load i32, i32* @arc_path, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @ok_path(i32* %35, i32 %36, i32 %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @GdipDeletePath(i32* %41)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathArc(i32*, double, double, double, double, double, double) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok_path(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
