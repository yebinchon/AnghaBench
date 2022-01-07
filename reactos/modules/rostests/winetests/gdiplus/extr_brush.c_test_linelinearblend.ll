; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_linelinearblend.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_brush.c_test_linelinearblend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double }

@__const.test_linelinearblend.res_factors = private unnamed_addr constant [3 x float] [float 0x3FD3333340000000, float 0.000000e+00, float 0.000000e+00], align 4
@__const.test_linelinearblend.res_positions = private unnamed_addr constant [3 x float] [float 0x3FD3333340000000, float 0.000000e+00, float 0.000000e+00], align 4
@InvalidParameter = common dso_local global i32 0, align 4
@WrapModeTile = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_linelinearblend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_linelinearblend() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  store i32 10, i32* %5, align 4
  %8 = bitcast [3 x float]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([3 x float]* @__const.test_linelinearblend.res_factors to i8*), i64 12, i1 false)
  %9 = bitcast [3 x float]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ([3 x float]* @__const.test_linelinearblend.res_positions to i8*), i64 12, i1 false)
  %10 = call i32 @GdipSetLineLinearBlend(i32* null, double 6.000000e-01, double 8.000000e-01)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @InvalidParameter, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @expect(i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store double 1.000000e+00, double* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store double 1.000000e+00, double* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store double 1.000000e+02, double* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store double 1.000000e+02, double* %17, align 8
  %18 = load i32, i32* @WrapModeTile, align 4
  %19 = call i32 @GdipCreateLineBrush(%struct.TYPE_4__* %3, %struct.TYPE_4__* %4, i32 0, i32 0, i32 %18, i32** %1)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* @Ok, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @expect(i32 %20, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @GdipSetLineLinearBlend(i32* %23, double 6.000000e-01, double 8.000000e-01)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* @Ok, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @expect(i32 %25, i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @GdipGetLineBlendCount(i32* %28, i32* %5)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* @Ok, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @expect(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @expect(i32 3, i32 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 0
  %37 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 0
  %38 = call i32 @GdipGetLineBlend(i32* %35, float* %36, float* %37, i32 3)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* @Ok, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @expect(i32 %39, i32 %40)
  %42 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 0
  %43 = load float, float* %42, align 4
  %44 = call i32 @expectf(double 0.000000e+00, float %43)
  %45 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 0
  %46 = load float, float* %45, align 4
  %47 = call i32 @expectf(double 0.000000e+00, float %46)
  %48 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 1
  %49 = load float, float* %48, align 4
  %50 = call i32 @expectf(double 8.000000e-01, float %49)
  %51 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 1
  %52 = load float, float* %51, align 4
  %53 = call i32 @expectf(double 6.000000e-01, float %52)
  %54 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 2
  %55 = load float, float* %54, align 4
  %56 = call i32 @expectf(double 0.000000e+00, float %55)
  %57 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 2
  %58 = load float, float* %57, align 4
  %59 = call i32 @expectf(double 1.000000e+00, float %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @GdipSetLineLinearBlend(i32* %60, double 0.000000e+00, double 8.000000e-01)
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* @Ok, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @expect(i32 %62, i32 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @GdipGetLineBlendCount(i32* %65, i32* %5)
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* @Ok, align 4
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @expect(i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @expect(i32 2, i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 0
  %74 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 0
  %75 = call i32 @GdipGetLineBlend(i32* %72, float* %73, float* %74, i32 3)
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* @Ok, align 4
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @expect(i32 %76, i32 %77)
  %79 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 0
  %80 = load float, float* %79, align 4
  %81 = call i32 @expectf(double 8.000000e-01, float %80)
  %82 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 0
  %83 = load float, float* %82, align 4
  %84 = call i32 @expectf(double 0.000000e+00, float %83)
  %85 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 1
  %86 = load float, float* %85, align 4
  %87 = call i32 @expectf(double 0.000000e+00, float %86)
  %88 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 1
  %89 = load float, float* %88, align 4
  %90 = call i32 @expectf(double 1.000000e+00, float %89)
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @GdipSetLineLinearBlend(i32* %91, double 1.000000e+00, double 8.000000e-01)
  store i32 %92, i32* %2, align 4
  %93 = load i32, i32* @Ok, align 4
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @expect(i32 %93, i32 %94)
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @GdipGetLineBlendCount(i32* %96, i32* %5)
  store i32 %97, i32* %2, align 4
  %98 = load i32, i32* @Ok, align 4
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @expect(i32 %98, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @expect(i32 2, i32 %101)
  %103 = load i32*, i32** %1, align 8
  %104 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 0
  %105 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 0
  %106 = call i32 @GdipGetLineBlend(i32* %103, float* %104, float* %105, i32 3)
  store i32 %106, i32* %2, align 4
  %107 = load i32, i32* @Ok, align 4
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @expect(i32 %107, i32 %108)
  %110 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 0
  %111 = load float, float* %110, align 4
  %112 = call i32 @expectf(double 0.000000e+00, float %111)
  %113 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 0
  %114 = load float, float* %113, align 4
  %115 = call i32 @expectf(double 0.000000e+00, float %114)
  %116 = getelementptr inbounds [3 x float], [3 x float]* %6, i64 0, i64 1
  %117 = load float, float* %116, align 4
  %118 = call i32 @expectf(double 8.000000e-01, float %117)
  %119 = getelementptr inbounds [3 x float], [3 x float]* %7, i64 0, i64 1
  %120 = load float, float* %119, align 4
  %121 = call i32 @expectf(double 1.000000e+00, float %120)
  %122 = load i32*, i32** %1, align 8
  %123 = call i32 @GdipDeleteBrush(i32* %122)
  store i32 %123, i32* %2, align 4
  %124 = load i32, i32* @Ok, align 4
  %125 = load i32, i32* %2, align 4
  %126 = call i32 @expect(i32 %124, i32 %125)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GdipSetLineLinearBlend(i32*, double, double) #2

declare dso_local i32 @expect(i32, i32) #2

declare dso_local i32 @GdipCreateLineBrush(%struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32, i32**) #2

declare dso_local i32 @GdipGetLineBlendCount(i32*, i32*) #2

declare dso_local i32 @GdipGetLineBlend(i32*, float*, float*, i32) #2

declare dso_local i32 @expectf(double, float) #2

declare dso_local i32 @GdipDeleteBrush(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
