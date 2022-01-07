; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/cbz/extr_mucbz.c_cbz_run_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/cbz/extr_mucbz.c_cbz_run_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@DPI = common dso_local global i32 0, align 4
@fz_default_color_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32*)* @cbz_run_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbz_run_page(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %11, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %13, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %24 = call i32 @fz_image_resolution(%struct.TYPE_5__* %23, i32* %14, i32* %15)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DPI, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %14, align 4
  %31 = sdiv i32 %29, %30
  %32 = sitofp i32 %31 to float
  store float %32, float* %16, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DPI, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %15, align 4
  %39 = sdiv i32 %37, %38
  %40 = sitofp i32 %39 to float
  store float %40, float* %17, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load float, float* %16, align 4
  %43 = load float, float* %17, align 4
  %44 = call i32 @fz_pre_scale(i32 %41, float %42, float %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @fz_default_color_params, align 4
  %50 = call i32 @fz_fill_image(i32* %45, i32* %46, %struct.TYPE_5__* %47, i32 %48, i32 1, i32 %49)
  ret void
}

declare dso_local i32 @fz_image_resolution(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @fz_pre_scale(i32, float, float) #1

declare dso_local i32 @fz_fill_image(i32*, i32*, %struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
