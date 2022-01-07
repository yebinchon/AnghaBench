; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_run_K.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_run_K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@FZ_DEVFLAG_STROKECOLOR_UNDEFINED = common dso_local global i32 0, align 4
@PDF_STROKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float, float)* @pdf_run_K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_run_K(i32* %0, i32* %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca [4 x float], align 16
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %13, align 8
  %17 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %18 = load float, float* %9, align 4
  store float %18, float* %17, align 4
  %19 = getelementptr inbounds float, float* %17, i64 1
  %20 = load float, float* %10, align 4
  store float %20, float* %19, align 4
  %21 = getelementptr inbounds float, float* %19, i64 1
  %22 = load float, float* %11, align 4
  store float %22, float* %21, align 4
  %23 = getelementptr inbounds float, float* %21, i64 1
  %24 = load float, float* %12, align 4
  store float %24, float* %23, align 4
  %25 = load i32, i32* @FZ_DEVFLAG_STROKECOLOR_UNDEFINED, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %35 = load i32, i32* @PDF_STROKE, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @fz_device_cmyk(i32* %36)
  %38 = call i32 @pdf_set_colorspace(i32* %33, %struct.TYPE_6__* %34, i32 %35, i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %41 = load i32, i32* @PDF_STROKE, align 4
  %42 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %43 = call i32 @pdf_set_color(i32* %39, %struct.TYPE_6__* %40, i32 %41, float* %42)
  ret void
}

declare dso_local i32 @pdf_set_colorspace(i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @fz_device_cmyk(i32*) #1

declare dso_local i32 @pdf_set_color(i32*, %struct.TYPE_6__*, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
