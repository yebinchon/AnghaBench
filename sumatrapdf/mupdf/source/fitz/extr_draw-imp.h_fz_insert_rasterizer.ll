; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-imp.h_fz_insert_rasterizer.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-imp.h_fz_insert_rasterizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32*, %struct.TYPE_6__*, float, float, float, float, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, float, float, float, float, i32)* @fz_insert_rasterizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_insert_rasterizer(i32* %0, %struct.TYPE_6__* %1, float %2, float %3, float %4, float %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32 (i32*, %struct.TYPE_6__*, float, float, float, float, i32)*, i32 (i32*, %struct.TYPE_6__*, float, float, float, float, i32)** %17, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = load float, float* %10, align 4
  %22 = load float, float* %11, align 4
  %23 = load float, float* %12, align 4
  %24 = load float, float* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 %18(i32* %19, %struct.TYPE_6__* %20, float %21, float %22, float %23, float %24, i32 %25)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
