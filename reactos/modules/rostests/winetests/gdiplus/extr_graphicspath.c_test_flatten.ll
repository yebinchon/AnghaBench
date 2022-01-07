; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_flatten.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_flatten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FillModeAlternate = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@flattenellipse_path = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@flattenline_path = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@flattenarc_path = common dso_local global i32 0, align 4
@flattenquater_path = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_flatten to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_flatten() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @FillModeAlternate, align 4
  %5 = call i32 @GdipCreatePath(i32 %4, i32** %2)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @Ok, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @expect(i32 %6, i32 %7)
  %9 = call i32 @GdipCreateMatrix(i32** %3)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @Ok, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @expect(i32 %10, i32 %11)
  %13 = call i32 @GdipFlattenPath(i32* null, i32* null, double 0.000000e+00)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @InvalidParameter, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @GdipFlattenPath(i32* null, i32* %17, double 0.000000e+00)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @InvalidParameter, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @GdipFlattenPath(i32* %22, i32* null, double 1.000000e+00)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @Ok, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @GdipTransformPath(i32* %27, i32 0)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @Ok, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @expect(i32 %29, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @GdipAddPathEllipse(i32* %32, double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 5.000000e+01)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* @Ok, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @expect(i32 %34, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @GdipFlattenPath(i32* %37, i32* null, double 1.000000e+00)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @Ok, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* @flattenellipse_path, align 4
  %44 = load i32, i32* @flattenellipse_path, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i32 @ok_path(i32* %42, i32 %43, i32 %45, i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @GdipResetPath(i32* %48)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @Ok, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @GdipAddPathLine(i32* %53, double 5.000000e+00, double 1.000000e+01, double 5.000000e+01, double 1.000000e+02)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* @Ok, align 4
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @expect(i32 %55, i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @GdipFlattenPath(i32* %58, i32* null, double 1.000000e+00)
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* @Ok, align 4
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @expect(i32 %60, i32 %61)
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @flattenline_path, align 4
  %65 = load i32, i32* @flattenline_path, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @ok_path(i32* %63, i32 %64, i32 %66, i32 %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @GdipResetPath(i32* %69)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* @Ok, align 4
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @expect(i32 %71, i32 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @GdipAddPathArc(i32* %74, double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 5.000000e+01, double 0.000000e+00, double 9.000000e+01)
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* @Ok, align 4
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @expect(i32 %76, i32 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @GdipFlattenPath(i32* %79, i32* null, double 1.000000e+00)
  store i32 %80, i32* %1, align 4
  %81 = load i32, i32* @Ok, align 4
  %82 = load i32, i32* %1, align 4
  %83 = call i32 @expect(i32 %81, i32 %82)
  %84 = load i32*, i32** %2, align 8
  %85 = load i32, i32* @flattenarc_path, align 4
  %86 = load i32, i32* @flattenarc_path, align 4
  %87 = call i32 @ARRAY_SIZE(i32 %86)
  %88 = load i32, i32* @TRUE, align 4
  %89 = call i32 @ok_path(i32* %84, i32 %85, i32 %87, i32 %88)
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @GdipResetPath(i32* %90)
  store i32 %91, i32* %1, align 4
  %92 = load i32, i32* @Ok, align 4
  %93 = load i32, i32* %1, align 4
  %94 = call i32 @expect(i32 %92, i32 %93)
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @GdipAddPathArc(i32* %95, double 0.000000e+00, double 0.000000e+00, double 1.000000e+02, double 1.000000e+02, double 0.000000e+00, double 9.000000e+01)
  store i32 %96, i32* %1, align 4
  %97 = load i32, i32* @Ok, align 4
  %98 = load i32, i32* %1, align 4
  %99 = call i32 @expect(i32 %97, i32 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @GdipFlattenPath(i32* %100, i32* null, double 1.000000e+00)
  store i32 %101, i32* %1, align 4
  %102 = load i32, i32* @Ok, align 4
  %103 = load i32, i32* %1, align 4
  %104 = call i32 @expect(i32 %102, i32 %103)
  %105 = load i32*, i32** %2, align 8
  %106 = load i32, i32* @flattenquater_path, align 4
  %107 = load i32, i32* @flattenquater_path, align 4
  %108 = call i32 @ARRAY_SIZE(i32 %107)
  %109 = load i32, i32* @FALSE, align 4
  %110 = call i32 @ok_path(i32* %105, i32 %106, i32 %108, i32 %109)
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @GdipDeleteMatrix(i32* %111)
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 @GdipDeletePath(i32* %113)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateMatrix(i32**) #1

declare dso_local i32 @GdipFlattenPath(i32*, i32*, double) #1

declare dso_local i32 @GdipTransformPath(i32*, i32) #1

declare dso_local i32 @GdipAddPathEllipse(i32*, double, double, double, double) #1

declare dso_local i32 @ok_path(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @GdipResetPath(i32*) #1

declare dso_local i32 @GdipAddPathLine(i32*, double, double, double, double) #1

declare dso_local i32 @GdipAddPathArc(i32*, double, double, double, double, double, double) #1

declare dso_local i32 @GdipDeleteMatrix(i32*) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
