; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_isinvertible.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_isinvertible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_isinvertible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_isinvertible() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  %4 = call i32 @GdipIsMatrixInvertible(i32* null, i32* %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @InvalidParameter, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @expect(i32 %5, i32 %6)
  %8 = call i32 @GdipIsMatrixInvertible(i32* inttoptr (i64 3735928559 to i32*), i32* null)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @InvalidParameter, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @expect(i32 %9, i32 %10)
  %12 = call i32 @GdipIsMatrixInvertible(i32* null, i32* null)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @InvalidParameter, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = call i32 @GdipCreateMatrix2(double 1.000000e+00, double 1.200000e+00, double 2.300000e+00, double -1.000000e+00, double 2.000000e+00, double 3.000000e+00, i32** %2)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @GdipIsMatrixInvertible(i32* %17, i32* %3)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @Ok, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @expect(i32 %19, i32 %20)
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @expect(i32 %22, i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @GdipDeleteMatrix(i32* %25)
  %27 = call i32 @GdipCreateMatrix2(double 2.000000e+00, double -1.000000e+00, double 6.000000e+00, double -3.000000e+00, double 2.200000e+00, double 3.000000e+00, i32** %2)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @GdipIsMatrixInvertible(i32* %28, i32* %3)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* @Ok, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @expect(i32 %33, i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @GdipDeleteMatrix(i32* %36)
  ret void
}

declare dso_local i32 @GdipIsMatrixInvertible(i32*, i32*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateMatrix2(double, double, double, double, double, double, i32**) #1

declare dso_local i32 @GdipDeleteMatrix(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
