; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_ellipse.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_test_ellipse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }

@FillModeAlternate = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@ellipse_path = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ellipse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ellipse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [2 x %struct.TYPE_3__], align 16
  %4 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store double 7.000000e+00, double* %5, align 16
  %6 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store double 1.100000e+01, double* %7, align 8
  %8 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store double 1.300000e+01, double* %9, align 16
  %10 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store double 1.700000e+01, double* %11, align 8
  %12 = load i32, i32* @FillModeAlternate, align 4
  %13 = call i32 @GdipCreatePath(i32 %12, i32** %2)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @GdipAddPathEllipse(i32* %14, double 1.000000e+01, double 1.000000e+02, double 2.000000e+01, double 5.050000e+01)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* @Ok, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @expect(i32 %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %21 = call i32 @GdipAddPathLine2(i32* %19, %struct.TYPE_3__* %20, i32 2)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @GdipAddPathEllipse(i32* %22, double 1.000000e+01, double 2.000000e+02, double -5.000000e+00, double -1.000000e+01)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @Ok, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @GdipClosePathFigure(i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @GdipAddPathEllipse(i32* %29, double 1.000000e+01, double 3.000000e+02, double 0.000000e+00, double 1.000000e+00)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* @Ok, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @ellipse_path, align 4
  %36 = load i32, i32* @ellipse_path, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @ok_path(i32* %34, i32 %35, i32 %37, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @GdipDeletePath(i32* %40)
  ret void
}

declare dso_local i32 @GdipCreatePath(i32, i32**) #1

declare dso_local i32 @GdipAddPathEllipse(i32*, double, double, double, double) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipAddPathLine2(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @GdipClosePathFigure(i32*) #1

declare dso_local i32 @ok_path(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @GdipDeletePath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
