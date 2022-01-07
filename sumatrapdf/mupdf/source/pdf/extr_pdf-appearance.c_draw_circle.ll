; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_draw_circle.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_draw_circle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CIRCLE_MAGIC = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [9 x i8] c"%g %g m\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%g %g %g %g %g %g c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, float)* @draw_circle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_circle(i32* %0, i32* %1, float %2, float %3, float %4, float %5) #0 {
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
  %15 = load float, float* %9, align 4
  %16 = load float, float* @CIRCLE_MAGIC, align 4
  %17 = fmul float %15, %16
  store float %17, float* %13, align 4
  %18 = load float, float* %10, align 4
  %19 = load float, float* @CIRCLE_MAGIC, align 4
  %20 = fmul float %18, %19
  store float %20, float* %14, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load float, float* %11, align 4
  %24 = load float, float* %12, align 4
  %25 = load float, float* %10, align 4
  %26 = fadd float %24, %25
  %27 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %21, i32* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), float %23, float %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load float, float* %11, align 4
  %31 = load float, float* %13, align 4
  %32 = fadd float %30, %31
  %33 = load float, float* %12, align 4
  %34 = load float, float* %10, align 4
  %35 = fadd float %33, %34
  %36 = load float, float* %11, align 4
  %37 = load float, float* %9, align 4
  %38 = fadd float %36, %37
  %39 = fpext float %38 to double
  %40 = load float, float* %12, align 4
  %41 = load float, float* %14, align 4
  %42 = fadd float %40, %41
  %43 = fpext float %42 to double
  %44 = load float, float* %11, align 4
  %45 = load float, float* %9, align 4
  %46 = fadd float %44, %45
  %47 = fpext float %46 to double
  %48 = load float, float* %12, align 4
  %49 = fpext float %48 to double
  %50 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %28, i32* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), float %32, float %35, double %39, double %43, double %47, double %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load float, float* %11, align 4
  %54 = load float, float* %9, align 4
  %55 = fadd float %53, %54
  %56 = load float, float* %12, align 4
  %57 = load float, float* %14, align 4
  %58 = fsub float %56, %57
  %59 = load float, float* %11, align 4
  %60 = load float, float* %13, align 4
  %61 = fadd float %59, %60
  %62 = fpext float %61 to double
  %63 = load float, float* %12, align 4
  %64 = load float, float* %10, align 4
  %65 = fsub float %63, %64
  %66 = fpext float %65 to double
  %67 = load float, float* %11, align 4
  %68 = fpext float %67 to double
  %69 = load float, float* %12, align 4
  %70 = load float, float* %10, align 4
  %71 = fsub float %69, %70
  %72 = fpext float %71 to double
  %73 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %51, i32* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), float %55, float %58, double %62, double %66, double %68, double %72)
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load float, float* %11, align 4
  %77 = load float, float* %13, align 4
  %78 = fsub float %76, %77
  %79 = load float, float* %12, align 4
  %80 = load float, float* %10, align 4
  %81 = fsub float %79, %80
  %82 = load float, float* %11, align 4
  %83 = load float, float* %9, align 4
  %84 = fsub float %82, %83
  %85 = fpext float %84 to double
  %86 = load float, float* %12, align 4
  %87 = load float, float* %14, align 4
  %88 = fsub float %86, %87
  %89 = fpext float %88 to double
  %90 = load float, float* %11, align 4
  %91 = load float, float* %9, align 4
  %92 = fsub float %90, %91
  %93 = fpext float %92 to double
  %94 = load float, float* %12, align 4
  %95 = fpext float %94 to double
  %96 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %74, i32* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), float %78, float %81, double %85, double %89, double %93, double %95)
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load float, float* %11, align 4
  %100 = load float, float* %9, align 4
  %101 = fsub float %99, %100
  %102 = load float, float* %12, align 4
  %103 = load float, float* %14, align 4
  %104 = fadd float %102, %103
  %105 = load float, float* %11, align 4
  %106 = load float, float* %13, align 4
  %107 = fsub float %105, %106
  %108 = fpext float %107 to double
  %109 = load float, float* %12, align 4
  %110 = load float, float* %10, align 4
  %111 = fadd float %109, %110
  %112 = fpext float %111 to double
  %113 = load float, float* %11, align 4
  %114 = fpext float %113 to double
  %115 = load float, float* %12, align 4
  %116 = load float, float* %10, align 4
  %117 = fadd float %115, %116
  %118 = fpext float %117 to double
  %119 = call i32 (i32*, i32*, i8*, float, float, ...) @fz_append_printf(i32* %97, i32* %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), float %101, float %104, double %108, double %112, double %114, double %118)
  ret void
}

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, float, float, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
