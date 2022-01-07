; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_approx_circle.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/svg/extr_svg-run.c_approx_circle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAGIC_CIRCLE = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, float)* @approx_circle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @approx_circle(i32* %0, i32* %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %15 = load float, float* %11, align 4
  %16 = load float, float* @MAGIC_CIRCLE, align 4
  %17 = fmul float %15, %16
  store float %17, float* %13, align 4
  %18 = load float, float* %12, align 4
  %19 = load float, float* @MAGIC_CIRCLE, align 4
  %20 = fmul float %18, %19
  store float %20, float* %14, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load float, float* %9, align 4
  %24 = load float, float* %10, align 4
  %25 = load float, float* %12, align 4
  %26 = fadd float %24, %25
  %27 = call i32 @fz_moveto(i32* %21, i32* %22, float %23, float %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load float, float* %9, align 4
  %31 = load float, float* %13, align 4
  %32 = fadd float %30, %31
  %33 = load float, float* %10, align 4
  %34 = load float, float* %12, align 4
  %35 = fadd float %33, %34
  %36 = load float, float* %9, align 4
  %37 = load float, float* %11, align 4
  %38 = fadd float %36, %37
  %39 = load float, float* %10, align 4
  %40 = load float, float* %14, align 4
  %41 = fadd float %39, %40
  %42 = load float, float* %9, align 4
  %43 = load float, float* %11, align 4
  %44 = fadd float %42, %43
  %45 = load float, float* %10, align 4
  %46 = call i32 @fz_curveto(i32* %28, i32* %29, float %32, float %35, float %38, float %41, float %44, float %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load float, float* %9, align 4
  %50 = load float, float* %11, align 4
  %51 = fadd float %49, %50
  %52 = load float, float* %10, align 4
  %53 = load float, float* %14, align 4
  %54 = fsub float %52, %53
  %55 = load float, float* %9, align 4
  %56 = load float, float* %13, align 4
  %57 = fadd float %55, %56
  %58 = load float, float* %10, align 4
  %59 = load float, float* %12, align 4
  %60 = fsub float %58, %59
  %61 = load float, float* %9, align 4
  %62 = load float, float* %10, align 4
  %63 = load float, float* %12, align 4
  %64 = fsub float %62, %63
  %65 = call i32 @fz_curveto(i32* %47, i32* %48, float %51, float %54, float %57, float %60, float %61, float %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load float, float* %9, align 4
  %69 = load float, float* %13, align 4
  %70 = fsub float %68, %69
  %71 = load float, float* %10, align 4
  %72 = load float, float* %12, align 4
  %73 = fsub float %71, %72
  %74 = load float, float* %9, align 4
  %75 = load float, float* %11, align 4
  %76 = fsub float %74, %75
  %77 = load float, float* %10, align 4
  %78 = load float, float* %14, align 4
  %79 = fsub float %77, %78
  %80 = load float, float* %9, align 4
  %81 = load float, float* %11, align 4
  %82 = fsub float %80, %81
  %83 = load float, float* %10, align 4
  %84 = call i32 @fz_curveto(i32* %66, i32* %67, float %70, float %73, float %76, float %79, float %82, float %83)
  %85 = load i32*, i32** %7, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load float, float* %9, align 4
  %88 = load float, float* %11, align 4
  %89 = fsub float %87, %88
  %90 = load float, float* %10, align 4
  %91 = load float, float* %14, align 4
  %92 = fadd float %90, %91
  %93 = load float, float* %9, align 4
  %94 = load float, float* %13, align 4
  %95 = fsub float %93, %94
  %96 = load float, float* %10, align 4
  %97 = load float, float* %12, align 4
  %98 = fadd float %96, %97
  %99 = load float, float* %9, align 4
  %100 = load float, float* %10, align 4
  %101 = load float, float* %12, align 4
  %102 = fadd float %100, %101
  %103 = call i32 @fz_curveto(i32* %85, i32* %86, float %89, float %92, float %95, float %98, float %99, float %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @fz_closepath(i32* %104, i32* %105)
  ret void
}

declare dso_local i32 @fz_moveto(i32*, i32*, float, float) #1

declare dso_local i32 @fz_curveto(i32*, i32*, float, float, float, float, float, float) #1

declare dso_local i32 @fz_closepath(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
