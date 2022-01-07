; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_run_rg.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-run.c_pdf_run_rg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@FZ_DEVFLAG_FILLCOLOR_UNDEFINED = common dso_local global i32 0, align 4
@PDF_FILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, float, float, float)* @pdf_run_rg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_run_rg(i32* %0, i32* %1, float %2, float %3, float %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca [3 x float], align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %11, align 8
  %15 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %16 = load float, float* %8, align 4
  store float %16, float* %15, align 4
  %17 = getelementptr inbounds float, float* %15, i64 1
  %18 = load float, float* %9, align 4
  store float %18, float* %17, align 4
  %19 = getelementptr inbounds float, float* %17, i64 1
  %20 = load float, float* %10, align 4
  store float %20, float* %19, align 4
  %21 = load i32, i32* @FZ_DEVFLAG_FILLCOLOR_UNDEFINED, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %31 = load i32, i32* @PDF_FILL, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @fz_device_rgb(i32* %32)
  %34 = call i32 @pdf_set_colorspace(i32* %29, %struct.TYPE_6__* %30, i32 %31, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %37 = load i32, i32* @PDF_FILL, align 4
  %38 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %39 = call i32 @pdf_set_color(i32* %35, %struct.TYPE_6__* %36, i32 %37, float* %38)
  ret void
}

declare dso_local i32 @pdf_set_colorspace(i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @fz_device_rgb(i32*) #1

declare dso_local i32 @pdf_set_color(i32*, %struct.TYPE_6__*, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
