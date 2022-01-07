; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_SimpleLight.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_stb_gl.h_stbgl_SimpleLight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_LIGHT0 = common dso_local global i64 0, align 8
@GL_POSITION = common dso_local global i32 0, align 4
@GL_DIFFUSE = common dso_local global i32 0, align 4
@GL_AMBIENT = common dso_local global i32 0, align 4
@GL_SPECULAR = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4
@GL_AMBIENT_AND_DIFFUSE = common dso_local global i32 0, align 4
@GL_COLOR_MATERIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stbgl_SimpleLight(i32 %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x float], align 16
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %16 = load float, float* %8, align 4
  %17 = load float, float* %8, align 4
  %18 = fmul float %16, %17
  %19 = load float, float* %9, align 4
  %20 = load float, float* %9, align 4
  %21 = fmul float %19, %20
  %22 = fadd float %18, %21
  %23 = load float, float* %10, align 4
  %24 = load float, float* %10, align 4
  %25 = fmul float %23, %24
  %26 = fadd float %22, %25
  %27 = call float @sqrt(float %26)
  %28 = fdiv float 1.000000e+00, %27
  store float %28, float* %11, align 4
  %29 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %30 = load float, float* %8, align 4
  %31 = load float, float* %11, align 4
  %32 = fmul float %30, %31
  store float %32, float* %29, align 4
  %33 = getelementptr inbounds float, float* %29, i64 1
  %34 = load float, float* %9, align 4
  %35 = load float, float* %11, align 4
  %36 = fmul float %34, %35
  store float %36, float* %33, align 4
  %37 = getelementptr inbounds float, float* %33, i64 1
  %38 = load float, float* %10, align 4
  %39 = load float, float* %11, align 4
  %40 = fmul float %38, %39
  store float %40, float* %37, align 4
  %41 = getelementptr inbounds float, float* %37, i64 1
  store float 0.000000e+00, float* %41, align 4
  %42 = bitcast [4 x float]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 16, i1 false)
  %43 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %44 = load float, float* %7, align 4
  store float %44, float* %43, align 4
  %45 = getelementptr inbounds float, float* %43, i64 1
  %46 = load float, float* %7, align 4
  store float %46, float* %45, align 4
  %47 = getelementptr inbounds float, float* %45, i64 1
  %48 = load float, float* %7, align 4
  store float %48, float* %47, align 4
  %49 = getelementptr inbounds float, float* %47, i64 1
  store float 0.000000e+00, float* %49, align 4
  %50 = load i64, i64* @GL_LIGHT0, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i32, i32* @GL_POSITION, align 4
  %56 = getelementptr inbounds [4 x float], [4 x float]* %12, i64 0, i64 0
  %57 = call i32 @glLightfv(i64 %54, i32 %55, float* %56)
  %58 = load i64, i64* %15, align 8
  %59 = load i32, i32* @GL_DIFFUSE, align 4
  %60 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %61 = call i32 @glLightfv(i64 %58, i32 %59, float* %60)
  %62 = load i64, i64* %15, align 8
  %63 = load i32, i32* @GL_AMBIENT, align 4
  %64 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 0
  %65 = call i32 @glLightfv(i64 %62, i32 %63, float* %64)
  %66 = load i64, i64* %15, align 8
  %67 = load i32, i32* @GL_SPECULAR, align 4
  %68 = getelementptr inbounds [4 x float], [4 x float]* %13, i64 0, i64 0
  %69 = call i32 @glLightfv(i64 %66, i32 %67, float* %68)
  %70 = load i64, i64* %15, align 8
  %71 = call i32 @glEnable(i64 %70)
  %72 = load i32, i32* @GL_FRONT, align 4
  %73 = load i32, i32* @GL_AMBIENT_AND_DIFFUSE, align 4
  %74 = call i32 @glColorMaterial(i32 %72, i32 %73)
  %75 = load i64, i64* @GL_COLOR_MATERIAL, align 8
  %76 = call i32 @glEnable(i64 %75)
  ret void
}

declare dso_local float @sqrt(float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @glLightfv(i64, i32, float*) #1

declare dso_local i32 @glEnable(i64) #1

declare dso_local i32 @glColorMaterial(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
