; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_addcurve.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_addcurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double }

@FillModeAlternate = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@addcurve_path = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@addcurve_path2 = common dso_local global i32 0, align 4
@addcurve_path3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_addcurve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_addcurve() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [4 x %struct.TYPE_4__], align 16
  %4 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store double 0.000000e+00, double* %5, align 16
  %6 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store double 0.000000e+00, double* %7, align 8
  %8 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store double 1.000000e+01, double* %9, align 16
  %10 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store double 1.000000e+01, double* %11, align 8
  %12 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store double 1.000000e+01, double* %13, align 16
  %14 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store double 2.000000e+01, double* %15, align 8
  %16 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store double 3.000000e+01, double* %17, align 16
  %18 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store double 1.000000e+01, double* %19, align 8
  %20 = load i32, i32* @FillModeAlternate, align 4
  %21 = call i32 @GdipCreatePath(i32 %20, i32** %2)
  %22 = call i32 @GdipAddPathCurve2(i32* null, %struct.TYPE_4__* null, i32 0, double 0.000000e+00)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* @InvalidParameter, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @expect(i32 %23, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @GdipAddPathCurve2(i32* %26, %struct.TYPE_4__* null, i32 0, double 0.000000e+00)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* @InvalidParameter, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %33 = call i32 @GdipAddPathCurve2(i32* %31, %struct.TYPE_4__* %32, i32 -1, double 0.000000e+00)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* @InvalidParameter, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @expect(i32 %34, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %39 = call i32 @GdipAddPathCurve2(i32* %37, %struct.TYPE_4__* %38, i32 1, double 1.000000e+00)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* @InvalidParameter, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @expect(i32 %40, i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %45 = call i32 @GdipAddPathCurve2(i32* %43, %struct.TYPE_4__* %44, i32 4, double 1.000000e+00)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* @Ok, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @expect(i32 %46, i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @addcurve_path, align 4
  %51 = load i32, i32* @addcurve_path, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @ok_path(i32* %49, i32 %50, i32 %52, i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @GdipDeletePath(i32* %55)
  %57 = load i32, i32* @FillModeAlternate, align 4
  %58 = call i32 @GdipCreatePath(i32 %57, i32** %2)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @GdipAddPathLine(i32* %59, double 1.000000e+02, double 1.200000e+02, double 1.230000e+02, double 1.000000e+01)
  %61 = load i32*, i32** %2, align 8
  %62 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %63 = call i32 @GdipAddPathCurve2(i32* %61, %struct.TYPE_4__* %62, i32 4, double 1.000000e+00)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* @Ok, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @expect(i32 %64, i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @addcurve_path2, align 4
  %69 = load i32, i32* @addcurve_path2, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @ok_path(i32* %67, i32 %68, i32 %70, i32 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @GdipResetPath(i32* %73)
  %75 = call i32 @GdipAddPathCurve3(i32* null, %struct.TYPE_4__* null, i32 0, i32 0, i32 0, double 0.000000e+00)
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* @InvalidParameter, align 4
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @expect(i32 %76, i32 %77)
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @GdipAddPathCurve3(i32* %79, %struct.TYPE_4__* null, i32 0, i32 0, i32 0, double 0.000000e+00)
  store i32 %80, i32* %1, align 4
  %81 = load i32, i32* @InvalidParameter, align 4
  %82 = load i32, i32* %1, align 4
  %83 = call i32 @expect(i32 %81, i32 %82)
  %84 = load i32*, i32** %2, align 8
  %85 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %86 = call i32 @GdipAddPathCurve3(i32* %84, %struct.TYPE_4__* %85, i32 0, i32 0, i32 0, double 0.000000e+00)
  store i32 %86, i32* %1, align 4
  %87 = load i32, i32* @InvalidParameter, align 4
  %88 = load i32, i32* %1, align 4
  %89 = call i32 @expect(i32 %87, i32 %88)
  %90 = load i32*, i32** %2, align 8
  %91 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %92 = call i32 @GdipAddPathCurve3(i32* %90, %struct.TYPE_4__* %91, i32 4, i32 0, i32 0, double 0.000000e+00)
  store i32 %92, i32* %1, align 4
  %93 = load i32, i32* @InvalidParameter, align 4
  %94 = load i32, i32* %1, align 4
  %95 = call i32 @expect(i32 %93, i32 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %98 = call i32 @GdipAddPathCurve3(i32* %96, %struct.TYPE_4__* %97, i32 4, i32 0, i32 4, double 0.000000e+00)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* @InvalidParameter, align 4
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @expect(i32 %99, i32 %100)
  %102 = load i32*, i32** %2, align 8
  %103 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %104 = call i32 @GdipAddPathCurve3(i32* %102, %struct.TYPE_4__* %103, i32 4, i32 1, i32 3, double 0.000000e+00)
  store i32 %104, i32* %1, align 4
  %105 = load i32, i32* @InvalidParameter, align 4
  %106 = load i32, i32* %1, align 4
  %107 = call i32 @expect(i32 %105, i32 %106)
  %108 = load i32*, i32** %2, align 8
  %109 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %110 = call i32 @GdipAddPathCurve3(i32* %108, %struct.TYPE_4__* %109, i32 4, i32 1, i32 0, double 0.000000e+00)
  store i32 %110, i32* %1, align 4
  %111 = load i32, i32* @InvalidParameter, align 4
  %112 = load i32, i32* %1, align 4
  %113 = call i32 @expect(i32 %111, i32 %112)
  %114 = load i32*, i32** %2, align 8
  %115 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %116 = call i32 @GdipAddPathCurve3(i32* %114, %struct.TYPE_4__* %115, i32 4, i32 3, i32 1, double 0.000000e+00)
  store i32 %116, i32* %1, align 4
  %117 = load i32, i32* @InvalidParameter, align 4
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @expect(i32 %117, i32 %118)
  %120 = load i32*, i32** %2, align 8
  %121 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %122 = call i32 @GdipAddPathCurve3(i32* %120, %struct.TYPE_4__* %121, i32 4, i32 0, i32 3, double 1.000000e+00)
  store i32 %122, i32* %1, align 4
  %123 = load i32, i32* @Ok, align 4
  %124 = load i32, i32* %1, align 4
  %125 = call i32 @expect(i32 %123, i32 %124)
  %126 = load i32*, i32** %2, align 8
  %127 = load i32, i32* @addcurve_path, align 4
  %128 = load i32, i32* @addcurve_path, align 4
  %129 = call i32 @ARRAY_SIZE(i32 %128)
  %130 = load i32, i32* @FALSE, align 4
  %131 = call i32 @ok_path(i32* %126, i32 %127, i32 %129, i32 %130)
  %132 = load i32*, i32** %2, align 8
  %133 = call i32 @GdipResetPath(i32* %132)
  %134 = load i32*, i32** %2, align 8
  %135 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %3, i64 0, i64 0
  %136 = call i32 @GdipAddPathCurve3(i32* %134, %struct.TYPE_4__* %135, i32 4, i32 1, i32 2, double 1.000000e+00)
  store i32 %136, i32* %1, align 4
  %137 = load i32, i32* @Ok, align 4
  %138 = load i32, i32* %1, align 4
  %139 = call i32 @expect(i32 %137, i32 %138)
  %140 = load i32*, i32** %2, align 8
  %141 = load i32, i32* @addcurve_path3, align 4
  %142 = load i32, i32* @addcurve_path3, align 4
  %143 = call i32 @ARRAY_SIZE(i32 %142)
  %144 = load i32, i32* @FALSE, align 4
  %145 = call i32 @ok_path(i32* %140, i32 %141, i32 %143, i32 %144)
  %146 = load i32*, i32** %2, align 8
  %147 = call i32 @GdipDeletePath(i32* %146)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathCurve2(i32*, %struct.TYPE_4__*, i32, double) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok_path(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

declare dso_local i32 @GdipAddPathLine(i32*, double, double, double, double) #1

declare dso_local i32 @GdipResetPath(i32*) #1

declare dso_local i32 @GdipAddPathCurve3(i32*, %struct.TYPE_4__*, i32, i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
