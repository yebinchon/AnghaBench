; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_GetImageDimension.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_GetImageDimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PixelFormat24bppRGB = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Expected bitmap to not be 0xdeadbeef\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Expected bitmap to not be NULL\0A\00", align 1
@InvalidParameter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetImageDimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetImageDimension() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double 1.000000e+01, double* %3, align 8
  store double 2.000000e+01, double* %4, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %7 = load i32, i32* @PixelFormat24bppRGB, align 4
  %8 = call i32 @GdipCreateBitmapFromScan0(double 1.000000e+01, double 2.000000e+01, i32 0, i32 %7, i32* null, i32** %1)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @Ok, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @expect(i32 %9, i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* inttoptr (i64 3735928559 to i32*), %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %1, align 8
  %17 = icmp ne i32* null, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @GdipGetImageDimension(i32* null, double* %5, double* %6)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* @InvalidParameter, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @expect(i32 %21, i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @GdipGetImageDimension(i32* %24, double* null, double* %6)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* @InvalidParameter, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @expect(i32 %26, i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @GdipGetImageDimension(i32* %29, double* %5, double* null)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* @InvalidParameter, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @expect(i32 %31, i32 %32)
  store double -1.000000e+00, double* %5, align 8
  store double -1.000000e+00, double* %6, align 8
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @GdipGetImageDimension(i32* %34, double* %5, double* %6)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* @Ok, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = load double, double* %5, align 8
  %40 = call i32 @expectf(double 1.000000e+01, double %39)
  %41 = load double, double* %6, align 8
  %42 = call i32 @expectf(double 2.000000e+01, double %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @GdipDisposeImage(i32* %43)
  ret void
}

declare dso_local i32 @GdipCreateBitmapFromScan0(double, double, i32, i32, i32*, i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GdipGetImageDimension(i32*, double*, double*) #1

declare dso_local i32 @expectf(double, double) #1

declare dso_local i32 @GdipDisposeImage(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
