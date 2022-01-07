; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_pathpath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_pathpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@pathpath_path = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pathpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pathpath() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @FillModeAlternate, align 4
  %5 = call i32 @GdipCreatePath(i32 %4, i32** %3)
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @GdipAddPathArc(i32* %6, double 1.000000e+02, double 1.000000e+02, double 5.000000e+02, double 7.000000e+02, double 9.500000e+01, double 1.000000e+02)
  %8 = load i32, i32* @FillModeAlternate, align 4
  %9 = call i32 @GdipCreatePath(i32 %8, i32** %2)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @GdipAddPathArc(i32* %10, double 1.000000e+02, double 1.000000e+02, double 5.000000e+02, double 7.000000e+02, double 0.000000e+00, double 9.000000e+01)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32 @GdipAddPathPath(i32* %12, i32* %13, i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @Ok, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @GdipAddPathArc(i32* %19, double 1.000000e+02, double 1.000000e+02, double 5.000000e+02, double 7.000000e+02, double -8.000000e+01, double 1.000000e+02)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i32 @GdipAddPathPath(i32* %21, i32* %22, i32 %23)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @Ok, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @expect(i32 %25, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @pathpath_path, align 4
  %30 = load i32, i32* @pathpath_path, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @ok_path(i32* %28, i32 %29, i32 %31, i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @GdipDeletePath(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @GdipDeletePath(i32* %36)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathArc(i32*, double, double, double, double, double, double) #1

declare dso_local i32 @GdipAddPathPath(i32*, i32*, i32) #1

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
