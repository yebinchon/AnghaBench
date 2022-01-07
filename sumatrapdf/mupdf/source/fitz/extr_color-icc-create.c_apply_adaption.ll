; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-icc-create.c_apply_adaption.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_color-icc-create.c_apply_adaption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, float*, float*)* @apply_adaption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_adaption(i32* %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  store i32* %0, i32** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %9 = load float*, float** %6, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = load float*, float** %7, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  %14 = load float, float* %13, align 4
  %15 = fmul float %11, %14
  %16 = load float*, float** %6, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %7, align 8
  %20 = getelementptr inbounds float, float* %19, i64 1
  %21 = load float, float* %20, align 4
  %22 = fmul float %18, %21
  %23 = fadd float %15, %22
  %24 = load float*, float** %6, align 8
  %25 = getelementptr inbounds float, float* %24, i64 2
  %26 = load float, float* %25, align 4
  %27 = load float*, float** %7, align 8
  %28 = getelementptr inbounds float, float* %27, i64 2
  %29 = load float, float* %28, align 4
  %30 = fmul float %26, %29
  %31 = fadd float %23, %30
  %32 = load float*, float** %8, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  store float %31, float* %33, align 4
  %34 = load float*, float** %6, align 8
  %35 = getelementptr inbounds float, float* %34, i64 3
  %36 = load float, float* %35, align 4
  %37 = load float*, float** %7, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  %39 = load float, float* %38, align 4
  %40 = fmul float %36, %39
  %41 = load float*, float** %6, align 8
  %42 = getelementptr inbounds float, float* %41, i64 4
  %43 = load float, float* %42, align 4
  %44 = load float*, float** %7, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = load float, float* %45, align 4
  %47 = fmul float %43, %46
  %48 = fadd float %40, %47
  %49 = load float*, float** %6, align 8
  %50 = getelementptr inbounds float, float* %49, i64 5
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %7, align 8
  %53 = getelementptr inbounds float, float* %52, i64 2
  %54 = load float, float* %53, align 4
  %55 = fmul float %51, %54
  %56 = fadd float %48, %55
  %57 = load float*, float** %8, align 8
  %58 = getelementptr inbounds float, float* %57, i64 1
  store float %56, float* %58, align 4
  %59 = load float*, float** %6, align 8
  %60 = getelementptr inbounds float, float* %59, i64 6
  %61 = load float, float* %60, align 4
  %62 = load float*, float** %7, align 8
  %63 = getelementptr inbounds float, float* %62, i64 0
  %64 = load float, float* %63, align 4
  %65 = fmul float %61, %64
  %66 = load float*, float** %6, align 8
  %67 = getelementptr inbounds float, float* %66, i64 7
  %68 = load float, float* %67, align 4
  %69 = load float*, float** %7, align 8
  %70 = getelementptr inbounds float, float* %69, i64 1
  %71 = load float, float* %70, align 4
  %72 = fmul float %68, %71
  %73 = fadd float %65, %72
  %74 = load float*, float** %6, align 8
  %75 = getelementptr inbounds float, float* %74, i64 8
  %76 = load float, float* %75, align 4
  %77 = load float*, float** %7, align 8
  %78 = getelementptr inbounds float, float* %77, i64 2
  %79 = load float, float* %78, align 4
  %80 = fmul float %76, %79
  %81 = fadd float %73, %80
  %82 = load float*, float** %8, align 8
  %83 = getelementptr inbounds float, float* %82, i64 2
  store float %81, float* %83, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
