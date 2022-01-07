; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_hex_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_hex_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, float*, i32)* @svg_hex_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svg_hex_color(i32* %0, i32* %1, float* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @fz_device_rgb(i32* %14)
  %16 = icmp ne i32* %13, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load float*, float** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @fz_device_rgb(i32* %21)
  %23 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 0
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @fz_convert_color(i32* %18, i32* %19, float* %20, i32* %22, float* %23, i32* null, i32 %24)
  %26 = getelementptr inbounds [3 x float], [3 x float]* %9, i64 0, i64 0
  store float* %26, float** %7, align 8
  br label %27

27:                                               ; preds = %17, %4
  %28 = load float*, float** %7, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  %30 = load float, float* %29, align 4
  %31 = fmul float 2.550000e+02, %30
  %32 = fadd float %31, 5.000000e-01
  %33 = fptosi float %32 to i32
  %34 = call i32 @fz_clampi(i32 %33, i32 0, i32 255)
  store i32 %34, i32* %10, align 4
  %35 = load float*, float** %7, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  %37 = load float, float* %36, align 4
  %38 = fmul float 2.550000e+02, %37
  %39 = fadd float %38, 5.000000e-01
  %40 = fptosi float %39 to i32
  %41 = call i32 @fz_clampi(i32 %40, i32 0, i32 255)
  store i32 %41, i32* %11, align 4
  %42 = load float*, float** %7, align 8
  %43 = getelementptr inbounds float, float* %42, i64 2
  %44 = load float, float* %43, align 4
  %45 = fmul float 2.550000e+02, %44
  %46 = fadd float %45, 5.000000e-01
  %47 = fptosi float %46 to i32
  %48 = call i32 @fz_clampi(i32 %47, i32 0, i32 255)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = shl i32 %49, 16
  %51 = load i32, i32* %11, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %50, %52
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %53, %54
  ret i32 %55
}

declare dso_local i32* @fz_device_rgb(i32*) #1

declare dso_local i32 @fz_convert_color(i32*, i32*, float*, i32*, float*, i32*, i32) #1

declare dso_local i32 @fz_clampi(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
