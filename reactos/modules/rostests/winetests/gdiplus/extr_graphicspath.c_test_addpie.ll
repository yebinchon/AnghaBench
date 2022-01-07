; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_addpie.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_addpie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@addpie_path = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@addpie_path2 = common dso_local global i32 0, align 4
@addpie_path3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_addpie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_addpie() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @FillModeAlternate, align 4
  %4 = call i32 @GdipCreatePath(i32 %3, i32** %2)
  %5 = call i32 @GdipAddPathPie(i32* null, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @InvalidParameter, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @expect(i32 %6, i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @GdipAddPathPie(i32* %9, double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 5.000000e+01, double 1.000000e+01, double 5.000000e+01)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @Ok, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @expect(i32 %11, i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @addpie_path, align 4
  %16 = load i32, i32* @addpie_path, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @ok_path(i32* %14, i32 %15, i32 %17, i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @GdipResetPath(i32* %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @Ok, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @GdipAddPathPie(i32* %25, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 6.000000e+01, double -9.000000e+01, double 2.400000e+01)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @InvalidParameter, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @expect(i32 %27, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @addpie_path2, align 4
  %32 = load i32, i32* @addpie_path2, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i32 @ok_path(i32* %30, i32 %31, i32 %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @GdipResetPath(i32* %36)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* @Ok, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @expect(i32 %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @GdipAddPathPie(i32* %41, double 0.000000e+00, double 0.000000e+00, double 6.000000e+01, double 0.000000e+00, double -9.000000e+01, double 2.400000e+01)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* @InvalidParameter, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @addpie_path3, align 4
  %48 = load i32, i32* @addpie_path3, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @ok_path(i32* %46, i32 %47, i32 %49, i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @GdipDeletePath(i32* %52)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathPie(i32*, double, double, double, double, double, double) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok_path(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @GdipResetPath(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
