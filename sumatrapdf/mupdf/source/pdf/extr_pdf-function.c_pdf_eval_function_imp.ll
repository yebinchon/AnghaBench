; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-function.c_pdf_eval_function_imp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-function.c_pdf_eval_function_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, float*, float*)* @pdf_eval_function_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_eval_function_imp(i32* %0, %struct.TYPE_7__* %1, float* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %38 [
    i32 129, label %12
    i32 131, label %18
    i32 128, label %25
    i32 130, label %32
  ]

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = load float*, float** %7, align 8
  %16 = load float*, float** %8, align 8
  %17 = call i32 @eval_sample_func(i32* %13, %struct.TYPE_7__* %14, float* %15, float* %16)
  br label %38

18:                                               ; preds = %4
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = load float*, float** %7, align 8
  %22 = load float, float* %21, align 4
  %23 = load float*, float** %8, align 8
  %24 = call i32 @eval_exponential_func(i32* %19, %struct.TYPE_7__* %20, float %22, float* %23)
  br label %38

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = load float*, float** %7, align 8
  %29 = load float, float* %28, align 4
  %30 = load float*, float** %8, align 8
  %31 = call i32 @eval_stitching_func(i32* %26, %struct.TYPE_7__* %27, float %29, float* %30)
  br label %38

32:                                               ; preds = %4
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = load float*, float** %7, align 8
  %36 = load float*, float** %8, align 8
  %37 = call i32 @eval_postscript_func(i32* %33, %struct.TYPE_7__* %34, float* %35, float* %36)
  br label %38

38:                                               ; preds = %4, %32, %25, %18, %12
  ret void
}

declare dso_local i32 @eval_sample_func(i32*, %struct.TYPE_7__*, float*, float*) #1

declare dso_local i32 @eval_exponential_func(i32*, %struct.TYPE_7__*, float, float*) #1

declare dso_local i32 @eval_stitching_func(i32*, %struct.TYPE_7__*, float, float*) #1

declare dso_local i32 @eval_postscript_func(i32*, %struct.TYPE_7__*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
