; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-icc-create.c_gsicc_create_compute_cam.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-icc-create.c_gsicc_create_compute_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.gsicc_create_compute_cam.cat02matrix = private unnamed_addr constant [9 x float] [float 0x3FE7731900000000, float 0x3FDB7E9100000000, float 0xBFC4C98600000000, float 0xBFE683E420000000, float 0x3FFB28F5C0000000, float 0x3F78FC5040000000, float 0x3F689374C0000000, float 0x3F8BDA5120000000, float 0x3FEF780340000000], align 16
@__const.gsicc_create_compute_cam.cat02matrixinv = private unnamed_addr constant [9 x float] [float 0x3FF189A020000000, float 0xBFD1D97F60000000, float 0x3FC762B6A0000000, float 0x3FDD14E3C0000000, float 0x3FDE4DD300000000, float 0x3FB2752540000000, float 0xBF83A92A40000000, float 0xBF7758E220000000, float 0x3FF03EAB40000000], align 16
@D50_X = common dso_local global float 0.000000e+00, align 4
@D50_Y = common dso_local global float 0.000000e+00, align 4
@D50_Z = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, float*)* @gsicc_create_compute_cam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsicc_create_compute_cam(i32* %0, float* %1, float* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca [9 x float], align 16
  %8 = alloca [9 x float], align 16
  %9 = alloca [9 x float], align 16
  %10 = alloca [9 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x float], align 4
  store i32* %0, i32** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %15 = bitcast [9 x float]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([9 x float]* @__const.gsicc_create_compute_cam.cat02matrix to i8*), i64 36, i1 false)
  %16 = bitcast [9 x float]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([9 x float]* @__const.gsicc_create_compute_cam.cat02matrixinv to i8*), i64 36, i1 false)
  %17 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %18 = load float, float* @D50_X, align 4
  store float %18, float* %17, align 4
  %19 = getelementptr inbounds float, float* %17, i64 1
  %20 = load float, float* @D50_Y, align 4
  store float %20, float* %19, align 4
  %21 = getelementptr inbounds float, float* %19, i64 1
  %22 = load float, float* @D50_Z, align 4
  store float %22, float* %21, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds [9 x float], [9 x float]* %7, i64 0, i64 0
  %25 = load float*, float** %5, align 8
  %26 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %27 = call i32 @matrixmult(i32* %23, float* %24, i32 3, i32 3, float* %25, i32 3, i32 1, float* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds [9 x float], [9 x float]* %7, i64 0, i64 0
  %30 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 0
  %31 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %32 = call i32 @matrixmult(i32* %28, float* %29, i32 3, i32 3, float* %30, i32 3, i32 1, float* %31)
  %33 = getelementptr inbounds [9 x float], [9 x float]* %9, i64 0, i64 0
  %34 = call i32 @memset(float* %33, i32 0, i32 36)
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %68, %3
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fcmp ogt float %42, 0.000000e+00
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 %46
  %48 = load float, float* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 %50
  %52 = load float, float* %51, align 4
  %53 = fdiv float %48, %52
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %54, 3
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [9 x float], [9 x float]* %9, i64 0, i64 %58
  store float %53, float* %59, align 4
  br label %67

60:                                               ; preds = %38
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %61, 3
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [9 x float], [9 x float]* %9, i64 0, i64 %65
  store float 1.000000e+00, float* %66, align 4
  br label %67

67:                                               ; preds = %60, %44
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %35

71:                                               ; preds = %35
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds [9 x float], [9 x float]* %9, i64 0, i64 0
  %74 = getelementptr inbounds [9 x float], [9 x float]* %7, i64 0, i64 0
  %75 = getelementptr inbounds [9 x float], [9 x float]* %10, i64 0, i64 0
  %76 = call i32 @matrixmult(i32* %72, float* %73, i32 3, i32 3, float* %74, i32 3, i32 3, float* %75)
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds [9 x float], [9 x float]* %8, i64 0, i64 0
  %79 = getelementptr inbounds [9 x float], [9 x float]* %10, i64 0, i64 0
  %80 = load float*, float** %6, align 8
  %81 = call i32 @matrixmult(i32* %77, float* %78, i32 3, i32 3, float* %79, i32 3, i32 3, float* %80)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @matrixmult(i32*, float*, i32, i32, float*, i32, i32, float*) #2

declare dso_local i32 @memset(float*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
