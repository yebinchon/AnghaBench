; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_invert.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"elems[0] = %.10g\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"elems[1] = %.10g\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"elems[2] = %.10g\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"elems[3] = %.10g\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"elems[4] = %.10g\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"elems[5] = %.10g\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_invert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invert() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %4, align 4
  %7 = call i32 @GdipInvertMatrix(i32* null)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @InvalidParameter, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @expect(i32 %8, i32 %9)
  %11 = call i32 @GdipCreateMatrix2(double 2.000000e+00, double -1.000000e+00, double 6.000000e+00, double -3.000000e+00, i32 2, i32 3, i32** %2)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @GdipInvertMatrix(i32* %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @InvalidParameter, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 %14, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @GdipDeleteMatrix(i32* %17)
  %19 = call i32 @GdipCreateMatrix2(double 3.000000e+00, double -2.000000e+00, double 5.000000e+00, double 2.000000e+00, i32 6, i32 3, i32** %2)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @GdipInvertMatrix(i32* %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* @Ok, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = call i32 @GdipCreateMatrix2(double 1.250000e-01, double 1.250000e-01, double -3.125000e-01, double 1.875000e-01, i32 0, i32 -1, i32** %3)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @GdipIsMatrixEqual(i32* %26, i32* %27, i32* %4)
  %29 = load i32, i32* @TRUE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @expect(i32 %29, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @GdipDeleteMatrix(i32* %32)
  %34 = call i32 @GdipCreateMatrix2(double 6.000000e-04, double 0.000000e+00, double 0.000000e+00, double 6.000000e-04, i32 400, i32 400, i32** %2)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @GdipInvertMatrix(i32* %35)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* @Ok, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @expect(i32 %37, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %42 = call i32 @GdipGetMatrixElements(i32* %40, i32* %41)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* @Ok, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @expect(i32 %43, i32 %44)
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = call i32 @compare_float(i32 %47, double 0x409A0AAA80064A9D, i32 1)
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %50 = load i32, i32* %49, align 16
  %51 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @compare_float(i32 %53, double 0.000000e+00, i32 0)
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @compare_float(i32 %59, double 0.000000e+00, i32 0)
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @compare_float(i32 %65, double 0x409A0AAA80064A9D, i32 1)
  %67 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %71 = load i32, i32* %70, align 16
  %72 = call i32 @compare_float(i32 %71, double 0xC124585560000000, i32 1)
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %74 = load i32, i32* %73, align 16
  %75 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @compare_float(i32 %77, double 0xC124585560000000, i32 1)
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @GdipDeleteMatrix(i32* %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @GdipDeleteMatrix(i32* %84)
  ret void
}

declare dso_local i32 @GdipInvertMatrix(i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateMatrix2(double, double, double, double, i32, i32, i32**) #1

declare dso_local i32 @GdipDeleteMatrix(i32*) #1

declare dso_local i32 @GdipIsMatrixEqual(i32*, i32*, i32*) #1

declare dso_local i32 @GdipGetMatrixElements(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @compare_float(i32, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
