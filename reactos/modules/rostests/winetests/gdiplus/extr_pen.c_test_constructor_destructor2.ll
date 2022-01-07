; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pen.c_test_constructor_destructor2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pen.c_test_constructor_destructor2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double }

@UnitPixel = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Expected pen to be NULL\0A\00", align 1
@WrapModeTile = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Expected brush to be initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Expected pen to be initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_constructor_destructor2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_constructor_destructor2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [2 x %struct.TYPE_4__], align 16
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* @UnitPixel, align 4
  %6 = call i32 @GdipCreatePen2(i32* null, float 1.000000e+01, i32 %5, i32** %2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @InvalidParameter, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @expect(i32 %7, i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store double 7.000000e+00, double* %15, align 16
  %16 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store double 1.100000e+01, double* %17, align 8
  %18 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %4, i64 0, i64 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store double 1.300000e+01, double* %19, align 16
  %20 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %4, i64 0, i64 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store double 1.700000e+01, double* %21, align 8
  %22 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %23 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %4, i64 0, i64 1
  %24 = load i32, i32* @WrapModeTile, align 4
  %25 = call i32 @GdipCreateLineBrush(%struct.TYPE_4__* %22, %struct.TYPE_4__* %23, i32 -65281, i32 -16776961, i32 %24, i32** %3)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* @Ok, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @expect(i32 %26, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @UnitPixel, align 4
  %35 = call i32 @GdipCreatePen2(i32* %33, float 1.000000e+01, i32 %34, i32** %2)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* @Ok, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @GdipDeletePen(i32* %43)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @Ok, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @expect(i32 %45, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @GdipDeleteBrush(i32* %48)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @Ok, align 4
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @expect(i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @GdipCreatePen2(i32*, float, i32, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipCreateLineBrush(%struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32, i32**) #1

declare dso_local i32 @GdipDeletePen(i32*) #1

declare dso_local i32 @GdipDeleteBrush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
