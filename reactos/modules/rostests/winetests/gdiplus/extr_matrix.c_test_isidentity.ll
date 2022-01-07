; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_isidentity.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_matrix.c_test_isidentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidParameter = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_isidentity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_isidentity() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i32 @GdipIsMatrixIdentity(i32* null, i64* null)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @InvalidParameter, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @expect(i32 %5, i32 %6)
  %8 = call i32 @GdipIsMatrixIdentity(i32* null, i64* %3)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @InvalidParameter, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @expect(i32 %9, i32 %10)
  %12 = call i32 @GdipCreateMatrix2(double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32** %1)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* @Ok, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @expect(i32 %13, i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @GdipIsMatrixIdentity(i32* %16, i64* null)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* @InvalidParameter, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @expect(i32 %18, i32 %19)
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %3, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @GdipIsMatrixIdentity(i32* %22, i64* %3)
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* @Ok, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @expect(i32 %24, i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @GdipSetMatrixElements(i32* %34, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 1.000000e-01, double 0.000000e+00)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* @Ok, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @expect(i32 %36, i32 %37)
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %3, align 8
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @GdipIsMatrixIdentity(i32* %40, i64* %3)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* @Ok, align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @expect(i32 %42, i32 %43)
  %45 = load i64, i64* %3, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @GdipDeleteMatrix(i32* %51)
  ret void
}

declare dso_local i32 @GdipIsMatrixIdentity(i32*, i64*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipCreateMatrix2(double, double, double, double, double, double, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @GdipSetMatrixElements(i32*, double, double, double, double, double, double) #1

declare dso_local i32 @GdipDeleteMatrix(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
