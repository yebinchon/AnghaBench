; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_shear.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_shear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MatrixOrderPrepend = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MatrixOrderAppend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_shear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_shear() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* @MatrixOrderPrepend, align 4
  %6 = call i32 @GdipShearMatrix(i32* null, double 0.000000e+00, double 0.000000e+00, i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @InvalidParameter, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @expect(i32 %7, i32 %8)
  %10 = call i32 @GdipCreateMatrix2(double 1.000000e+00, double 2.000000e+00, double 4.000000e+00, double -1.000000e+00, double 6.000000e+00, double 3.000000e+00, i32** %2)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @MatrixOrderPrepend, align 4
  %13 = call i32 @GdipShearMatrix(i32* %11, double 1.500000e+00, double 0.000000e+00, i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @Ok, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = call i32 @GdipCreateMatrix2(double 1.000000e+00, double 2.000000e+00, double 5.500000e+00, double 2.000000e+00, double 6.000000e+00, double 3.000000e+00, i32** %3)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @GdipIsMatrixEqual(i32* %18, i32* %19, i32* %4)
  %21 = load i32, i32* @TRUE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @GdipDeleteMatrix(i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @GdipDeleteMatrix(i32* %26)
  %28 = call i32 @GdipCreateMatrix2(double 1.000000e+00, double 2.000000e+00, double 4.000000e+00, double -1.000000e+00, double 6.000000e+00, double 3.000000e+00, i32** %2)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @MatrixOrderAppend, align 4
  %31 = call i32 @GdipShearMatrix(i32* %29, double 1.500000e+00, double 0.000000e+00, i32 %30)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* @Ok, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @expect(i32 %32, i32 %33)
  %35 = call i32 @GdipCreateMatrix2(double 4.000000e+00, double 2.000000e+00, double 2.500000e+00, double -1.000000e+00, double 1.050000e+01, double 3.000000e+00, i32** %3)
  %36 = load i32*, i32** %2, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @GdipIsMatrixEqual(i32* %36, i32* %37, i32* %4)
  %39 = load i32, i32* @TRUE, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @GdipDeleteMatrix(i32* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @GdipDeleteMatrix(i32* %44)
  %46 = call i32 @GdipCreateMatrix2(double 1.000000e+00, double 2.000000e+00, double 4.000000e+00, double -1.000000e+00, double 6.000000e+00, double 3.000000e+00, i32** %2)
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* @MatrixOrderPrepend, align 4
  %49 = call i32 @GdipShearMatrix(i32* %47, double 0.000000e+00, double 1.500000e+00, i32 %48)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @Ok, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  %53 = call i32 @GdipCreateMatrix2(double 7.000000e+00, double 5.000000e-01, double 4.000000e+00, double -1.000000e+00, double 6.000000e+00, double 3.000000e+00, i32** %3)
  %54 = load i32*, i32** %2, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @GdipIsMatrixEqual(i32* %54, i32* %55, i32* %4)
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @expect(i32 %57, i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @GdipDeleteMatrix(i32* %60)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @GdipDeleteMatrix(i32* %62)
  %64 = call i32 @GdipCreateMatrix2(double 1.000000e+00, double 2.000000e+00, double 4.000000e+00, double -1.000000e+00, double 6.000000e+00, double 3.000000e+00, i32** %2)
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* @MatrixOrderAppend, align 4
  %67 = call i32 @GdipShearMatrix(i32* %65, double 0.000000e+00, double 1.500000e+00, i32 %66)
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* @Ok, align 4
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @expect(i32 %68, i32 %69)
  %71 = call i32 @GdipCreateMatrix2(double 1.000000e+00, double 3.500000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 1.200000e+01, i32** %3)
  %72 = load i32*, i32** %2, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @GdipIsMatrixEqual(i32* %72, i32* %73, i32* %4)
  %75 = load i32, i32* @TRUE, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @expect(i32 %75, i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @GdipDeleteMatrix(i32* %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @GdipDeleteMatrix(i32* %80)
  %82 = call i32 @GdipCreateMatrix2(double 1.000000e+00, double 2.000000e+00, double 4.000000e+00, double -1.000000e+00, double 6.000000e+00, double 3.000000e+00, i32** %2)
  %83 = load i32*, i32** %2, align 8
  %84 = load i32, i32* @MatrixOrderPrepend, align 4
  %85 = call i32 @GdipShearMatrix(i32* %83, double 4.000000e+00, double 1.500000e+00, i32 %84)
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* @Ok, align 4
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @expect(i32 %86, i32 %87)
  %89 = call i32 @GdipCreateMatrix2(double 7.000000e+00, double 5.000000e-01, double 8.000000e+00, double 7.000000e+00, double 6.000000e+00, double 3.000000e+00, i32** %3)
  %90 = load i32*, i32** %2, align 8
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @GdipIsMatrixEqual(i32* %90, i32* %91, i32* %4)
  %93 = load i32, i32* @TRUE, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @expect(i32 %93, i32 %94)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @GdipDeleteMatrix(i32* %96)
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @GdipDeleteMatrix(i32* %98)
  %100 = call i32 @GdipCreateMatrix2(double 1.000000e+00, double 2.000000e+00, double 4.000000e+00, double -1.000000e+00, double 6.000000e+00, double 3.000000e+00, i32** %2)
  %101 = load i32*, i32** %2, align 8
  %102 = load i32, i32* @MatrixOrderAppend, align 4
  %103 = call i32 @GdipShearMatrix(i32* %101, double 4.000000e+00, double 1.500000e+00, i32 %102)
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* @Ok, align 4
  %105 = load i32, i32* %1, align 4
  %106 = call i32 @expect(i32 %104, i32 %105)
  %107 = call i32 @GdipCreateMatrix2(double 9.000000e+00, double 3.500000e+00, double 0.000000e+00, double 5.000000e+00, double 1.800000e+01, double 1.200000e+01, i32** %3)
  %108 = load i32*, i32** %2, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @GdipIsMatrixEqual(i32* %108, i32* %109, i32* %4)
  %111 = load i32, i32* @TRUE, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @expect(i32 %111, i32 %112)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @GdipDeleteMatrix(i32* %114)
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @GdipDeleteMatrix(i32* %116)
  ret void
}

declare dso_local i32 @GdipShearMatrix(i32*, double, double, i32) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateMatrix2(double, double, double, double, double, double, i32**) #1

declare dso_local i32 @GdipIsMatrixEqual(i32*, i32*, i32*) #1

declare dso_local i32 @GdipDeleteMatrix(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
