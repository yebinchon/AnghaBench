; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_lab_to_rgb.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-fast.c_lab_to_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float*, float*)* @lab_to_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lab_to_rgb(i32* %0, i32* %1, float* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %21 = load float*, float** %7, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  %23 = load float, float* %22, align 4
  store float %23, float* %9, align 4
  %24 = load float*, float** %7, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  store float %26, float* %10, align 4
  %27 = load float*, float** %7, align 8
  %28 = getelementptr inbounds float, float* %27, i64 2
  %29 = load float, float* %28, align 4
  store float %29, float* %11, align 4
  %30 = load float, float* %9, align 4
  %31 = fadd float %30, 1.600000e+01
  %32 = fdiv float %31, 1.160000e+02
  store float %32, float* %13, align 4
  %33 = load float, float* %13, align 4
  %34 = load float, float* %10, align 4
  %35 = fdiv float %34, 5.000000e+02
  %36 = fadd float %33, %35
  store float %36, float* %12, align 4
  %37 = load float, float* %13, align 4
  %38 = load float, float* %11, align 4
  %39 = fdiv float %38, 2.000000e+02
  %40 = fsub float %37, %39
  store float %40, float* %14, align 4
  %41 = load float, float* %12, align 4
  %42 = call float @fung(float %41)
  store float %42, float* %15, align 4
  %43 = load float, float* %13, align 4
  %44 = call float @fung(float %43)
  store float %44, float* %16, align 4
  %45 = load float, float* %14, align 4
  %46 = call float @fung(float %45)
  store float %46, float* %17, align 4
  %47 = load float, float* %15, align 4
  %48 = fmul float 0x4009EC7080000000, %47
  %49 = load float, float* %16, align 4
  %50 = fmul float 0xBFF8981BE0000000, %49
  %51 = fadd float %48, %50
  %52 = load float, float* %17, align 4
  %53 = fmul float 0xBFDFE7EEA0000000, %52
  %54 = fadd float %51, %53
  %55 = fmul float %54, 0x3FEA8F92A0000000
  store float %55, float* %18, align 4
  %56 = load float, float* %15, align 4
  %57 = fmul float 0xBFEF043800000000, %56
  %58 = load float, float* %16, align 4
  %59 = fmul float 0x3FFE042420000000, %58
  %60 = fadd float %57, %59
  %61 = load float, float* %17, align 4
  %62 = fmul float 0x3FA546D400000000, %61
  %63 = fadd float %60, %62
  %64 = fmul float %63, 0x3FF0DF5060000000
  store float %64, float* %19, align 4
  %65 = load float, float* %15, align 4
  %66 = fmul float 0x3FAC7D3D40000000, %65
  %67 = load float, float* %16, align 4
  %68 = fmul float 0xBFCA1D8620000000, %67
  %69 = fadd float %66, %68
  %70 = load float, float* %17, align 4
  %71 = fmul float 0x3FF0EA6900000000, %70
  %72 = fadd float %69, %71
  %73 = fmul float %72, 0x3FF19AD420000000
  store float %73, float* %20, align 4
  %74 = load float, float* %18, align 4
  %75 = call i32 @fz_clamp(float %74, i32 0, i32 1)
  %76 = call float @sqrtf(i32 %75)
  %77 = load float*, float** %8, align 8
  %78 = getelementptr inbounds float, float* %77, i64 0
  store float %76, float* %78, align 4
  %79 = load float, float* %19, align 4
  %80 = call i32 @fz_clamp(float %79, i32 0, i32 1)
  %81 = call float @sqrtf(i32 %80)
  %82 = load float*, float** %8, align 8
  %83 = getelementptr inbounds float, float* %82, i64 1
  store float %81, float* %83, align 4
  %84 = load float, float* %20, align 4
  %85 = call i32 @fz_clamp(float %84, i32 0, i32 1)
  %86 = call float @sqrtf(i32 %85)
  %87 = load float*, float** %8, align 8
  %88 = getelementptr inbounds float, float* %87, i64 2
  store float %86, float* %88, align 4
  ret void
}

declare dso_local float @fung(float) #1

declare dso_local float @sqrtf(i32) #1

declare dso_local i32 @fz_clamp(float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
