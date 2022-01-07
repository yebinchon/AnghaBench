; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-imp.h_fz_insert_rasterizer_rect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-imp.h_fz_insert_rasterizer_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_6__*, float, float, float, float)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, float, float, float, float)* @fz_insert_rasterizer_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_insert_rasterizer_rect(i32* %0, %struct.TYPE_6__* %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32 (i32*, %struct.TYPE_6__*, float, float, float, float)*, i32 (i32*, %struct.TYPE_6__*, float, float, float, float)** %15, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = load float, float* %9, align 4
  %20 = load float, float* %10, align 4
  %21 = load float, float* %11, align 4
  %22 = load float, float* %12, align 4
  %23 = call i32 %16(i32* %17, %struct.TYPE_6__* %18, float %19, float %20, float %21, float %22)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
