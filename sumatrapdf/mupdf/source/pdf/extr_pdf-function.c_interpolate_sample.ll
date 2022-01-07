; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-function.c_interpolate_sample.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-function.c_interpolate_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_7__*, i32*, i32*, i32*, float*, i32, i32)* @interpolate_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @interpolate_sample(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, float* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store float* %4, float** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %23, %28
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %17, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %36, %41
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %7
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load float*, float** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  store float %56, float* %15, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load float*, float** %60, align 8
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  %65 = load float, float* %64, align 4
  store float %65, float* %16, align 4
  br label %85

66:                                               ; preds = %7
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load float*, float** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* %17, align 4
  %75 = call float @interpolate_sample(%struct.TYPE_7__* %67, i32* %68, i32* %69, i32* %70, float* %71, i32 %73, i32 %74)
  store float %75, float* %15, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load float*, float** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %18, align 4
  %84 = call float @interpolate_sample(%struct.TYPE_7__* %76, i32* %77, i32* %78, i32* %79, float* %80, i32 %82, i32 %83)
  store float %84, float* %16, align 4
  br label %85

85:                                               ; preds = %66, %47
  %86 = load float, float* %15, align 4
  %87 = load float, float* %16, align 4
  %88 = load float, float* %15, align 4
  %89 = fsub float %87, %88
  %90 = load float*, float** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fmul float %89, %94
  %96 = fadd float %86, %95
  ret float %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
