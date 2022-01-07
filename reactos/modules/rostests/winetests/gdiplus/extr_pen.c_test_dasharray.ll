; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pen.c_test_dasharray.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_pen.c_test_dasharray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UnitWorld = common dso_local global i32 0, align 4
@DashStyleSolid = common dso_local global i64 0, align 8
@Ok = common dso_local global i64 0, align 8
@DashStyleCustom = common dso_local global i64 0, align 8
@InvalidParameter = common dso_local global i64 0, align 8
@DashStyleDot = common dso_local global i64 0, align 8
@OutOfMemory = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Expected OutOfMemory or InvalidParameter, got %.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dasharray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dasharray() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [12 x double], align 16
  %5 = load i32, i32* @UnitWorld, align 4
  %6 = call i32 @GdipCreatePen1(i32 -559038737, double 1.000000e+01, i32 %5, i32** %1)
  %7 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 0
  store double 1.000000e+01, double* %7, align 16
  %8 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 1
  store double 1.100000e+01, double* %8, align 8
  %9 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 2
  store double 1.200000e+01, double* %9, align 16
  %10 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 3
  store double 1.300000e+01, double* %10, align 8
  %11 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 4
  store double 1.400000e+01, double* %11, align 16
  %12 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  store double -1.000000e+02, double* %12, align 8
  %13 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 6
  store double -1.000000e+02, double* %13, align 16
  %14 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 11
  store double 0.000000e+00, double* %14, align 8
  %15 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 10
  store double 0.000000e+00, double* %15, align 16
  %16 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 9
  store double 0.000000e+00, double* %16, align 8
  %17 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 8
  store double 0.000000e+00, double* %17, align 16
  %18 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 7
  store double 0.000000e+00, double* %18, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @GdipGetPenDashStyle(i32* %19, i64* %2)
  %21 = load i64, i64* @DashStyleSolid, align 8
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @expect(i64 %21, i64 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 0
  %26 = call i64 @GdipSetPenDashArray(i32* %24, double* %25, i32 2)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* @Ok, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @expect(i64 %27, i64 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @GdipGetPenDashStyle(i32* %30, i64* %2)
  %32 = load i64, i64* @DashStyleCustom, align 8
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @expect(i64 %32, i64 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = load i64, i64* @DashStyleSolid, align 8
  %37 = call i32 @GdipSetPenDashStyle(i32* %35, i64 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  %40 = call i64 @GdipGetPenDashArray(i32* %38, double* %39, i32 2)
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* @InvalidParameter, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @expect(i64 %41, i64 %42)
  %44 = load i32*, i32** %1, align 8
  %45 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  %46 = call i64 @GdipGetPenDashArray(i32* %44, double* %45, i32 0)
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* @Ok, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @expect(i64 %47, i64 %48)
  %50 = load i32*, i32** %1, align 8
  %51 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 0
  %52 = call i64 @GdipSetPenDashArray(i32* %50, double* %51, i32 2)
  %53 = load i32*, i32** %1, align 8
  %54 = load i64, i64* @DashStyleCustom, align 8
  %55 = call i32 @GdipSetPenDashStyle(i32* %53, i64 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  %58 = call i64 @GdipGetPenDashArray(i32* %56, double* %57, i32 2)
  store i64 %58, i64* %3, align 8
  %59 = load i64, i64* @Ok, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i32 @expect(i64 %59, i64 %60)
  %62 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  %63 = load double, double* %62, align 8
  %64 = call i32 @expectf(double 1.000000e+01, double %63)
  %65 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 6
  %66 = load double, double* %65, align 16
  %67 = call i32 @expectf(double 1.100000e+01, double %66)
  %68 = load i32*, i32** %1, align 8
  %69 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 0
  %70 = call i64 @GdipSetPenDashArray(i32* %68, double* %69, i32 5)
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* @Ok, align 8
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @expect(i64 %71, i64 %72)
  %74 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  store double -1.000000e+02, double* %74, align 8
  %75 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 6
  store double -1.000000e+02, double* %75, align 16
  %76 = load i32*, i32** %1, align 8
  %77 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  %78 = call i64 @GdipGetPenDashArray(i32* %76, double* %77, i32 1)
  store i64 %78, i64* %3, align 8
  %79 = load i64, i64* @Ok, align 8
  %80 = load i64, i64* %3, align 8
  %81 = call i32 @expect(i64 %79, i64 %80)
  %82 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  %83 = load double, double* %82, align 8
  %84 = call i32 @expectf(double 1.000000e+01, double %83)
  %85 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 6
  %86 = load double, double* %85, align 16
  %87 = call i32 @expectf(double -1.000000e+02, double %86)
  %88 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  store double -1.000000e+02, double* %88, align 8
  %89 = load i32*, i32** %1, align 8
  %90 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  %91 = call i64 @GdipGetPenDashArray(i32* %89, double* %90, i32 6)
  store i64 %91, i64* %3, align 8
  %92 = load i64, i64* @InvalidParameter, align 8
  %93 = load i64, i64* %3, align 8
  %94 = call i32 @expect(i64 %92, i64 %93)
  %95 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  %96 = load double, double* %95, align 8
  %97 = call i32 @expectf(double -1.000000e+02, double %96)
  %98 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 6
  %99 = load double, double* %98, align 16
  %100 = call i32 @expectf(double -1.000000e+02, double %99)
  %101 = load i32*, i32** %1, align 8
  %102 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 7
  %103 = call i64 @GdipSetPenDashArray(i32* %101, double* %102, i32 5)
  store i64 %103, i64* %3, align 8
  %104 = load i64, i64* @InvalidParameter, align 8
  %105 = load i64, i64* %3, align 8
  %106 = call i32 @expect(i64 %104, i64 %105)
  %107 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 9
  store double -1.000000e+00, double* %107, align 8
  %108 = load i32*, i32** %1, align 8
  %109 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 7
  %110 = call i64 @GdipSetPenDashArray(i32* %108, double* %109, i32 5)
  store i64 %110, i64* %3, align 8
  %111 = load i64, i64* @InvalidParameter, align 8
  %112 = load i64, i64* %3, align 8
  %113 = call i32 @expect(i64 %111, i64 %112)
  %114 = load i32*, i32** %1, align 8
  %115 = load i64, i64* @DashStyleDot, align 8
  %116 = call i32 @GdipSetPenDashStyle(i32* %114, i64 %115)
  %117 = load i32*, i32** %1, align 8
  %118 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 0
  %119 = call i64 @GdipSetPenDashArray(i32* %117, double* %118, i32 -1)
  store i64 %119, i64* %3, align 8
  %120 = load i64, i64* %3, align 8
  %121 = load i64, i64* @OutOfMemory, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %0
  %124 = load i64, i64* %3, align 8
  %125 = load i64, i64* @InvalidParameter, align 8
  %126 = icmp eq i64 %124, %125
  br label %127

127:                                              ; preds = %123, %0
  %128 = phi i1 [ true, %0 ], [ %126, %123 ]
  %129 = zext i1 %128 to i32
  %130 = load i64, i64* %3, align 8
  %131 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %130)
  %132 = load i32*, i32** %1, align 8
  %133 = call i32 @GdipGetPenDashStyle(i32* %132, i64* %2)
  %134 = load i64, i64* @DashStyleDot, align 8
  %135 = load i64, i64* %2, align 8
  %136 = call i32 @expect(i64 %134, i64 %135)
  %137 = load i32*, i32** %1, align 8
  %138 = call i32 @GdipDeletePen(i32* %137)
  ret void
}

declare dso_local i32 @GdipCreatePen1(i32, double, i32, i32**) #1

declare dso_local i32 @GdipGetPenDashStyle(i32*, i64*) #1

declare dso_local i32 @expect(i64, i64) #1

declare dso_local i64 @GdipSetPenDashArray(i32*, double*, i32) #1

declare dso_local i32 @GdipSetPenDashStyle(i32*, i64) #1

declare dso_local i64 @GdipGetPenDashArray(i32*, double*, i32) #1

declare dso_local i32 @expectf(double, double) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @GdipDeletePen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
