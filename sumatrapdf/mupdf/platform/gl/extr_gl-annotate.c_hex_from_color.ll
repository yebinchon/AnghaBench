; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_hex_from_color.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_hex_from_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@fz_default_color_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, float*)* @hex_from_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hex_from_color(i32 %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca [4 x float], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %11 [
    i32 1, label %12
    i32 3, label %26
    i32 4, label %50
  ]

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

12:                                               ; preds = %2
  %13 = load float*, float** %5, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  %15 = load float, float* %14, align 4
  %16 = fmul float %15, 2.550000e+02
  %17 = fptosi float %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 16
  %20 = or i32 -16777216, %19
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 8
  %23 = or i32 %20, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %80

26:                                               ; preds = %2
  %27 = load float*, float** %5, align 8
  %28 = getelementptr inbounds float, float* %27, i64 0
  %29 = load float, float* %28, align 4
  %30 = fmul float %29, 2.550000e+02
  %31 = fptosi float %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load float*, float** %5, align 8
  %33 = getelementptr inbounds float, float* %32, i64 1
  %34 = load float, float* %33, align 4
  %35 = fmul float %34, 2.550000e+02
  %36 = fptosi float %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load float*, float** %5, align 8
  %38 = getelementptr inbounds float, float* %37, i64 2
  %39 = load float, float* %38, align 4
  %40 = fmul float %39, 2.550000e+02
  %41 = fptosi float %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 16
  %44 = or i32 -16777216, %43
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 8
  %47 = or i32 %44, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %3, align 4
  br label %80

50:                                               ; preds = %2
  %51 = load i32, i32* @ctx, align 4
  %52 = load i32, i32* @ctx, align 4
  %53 = call i32 @fz_device_cmyk(i32 %52)
  %54 = load float*, float** %5, align 8
  %55 = load i32, i32* @ctx, align 4
  %56 = call i32 @fz_device_rgb(i32 %55)
  %57 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 0
  %58 = load i32, i32* @fz_default_color_params, align 4
  %59 = call i32 @fz_convert_color(i32 %51, i32 %53, float* %54, i32 %56, float* %57, i32* null, i32 %58)
  %60 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 0
  %61 = load float, float* %60, align 16
  %62 = fmul float %61, 2.550000e+02
  %63 = fptosi float %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 1
  %65 = load float, float* %64, align 4
  %66 = fmul float %65, 2.550000e+02
  %67 = fptosi float %66 to i32
  store i32 %67, i32* %8, align 4
  %68 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 2
  %69 = load float, float* %68, align 8
  %70 = fmul float %69, 2.550000e+02
  %71 = fptosi float %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 16
  %74 = or i32 -16777216, %73
  %75 = load i32, i32* %8, align 4
  %76 = shl i32 %75, 8
  %77 = or i32 %74, %76
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %50, %26, %12, %11
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @fz_convert_color(i32, i32, float*, i32, float*, i32*, i32) #1

declare dso_local i32 @fz_device_cmyk(i32) #1

declare dso_local i32 @fz_device_rgb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
