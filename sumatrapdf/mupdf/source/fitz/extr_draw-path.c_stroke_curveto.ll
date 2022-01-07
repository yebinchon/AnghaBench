; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_stroke_curveto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_stroke_curveto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, float, float, float, float, float, float)* @stroke_curveto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stroke_curveto(i32* %0, i8* %1, float %2, float %3, float %4, float %5, float %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %17, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load float, float* %28, align 4
  %30 = load float, float* %11, align 4
  %31 = load float, float* %12, align 4
  %32 = load float, float* %13, align 4
  %33 = load float, float* %14, align 4
  %34 = load float, float* %15, align 4
  %35 = load float, float* %16, align 4
  %36 = call i32 @fz_stroke_bezier(i32* %20, %struct.TYPE_5__* %21, float %25, float %29, float %30, float %31, float %32, float %33, float %34, float %35, i32 0)
  %37 = load float, float* %15, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store float %37, float* %40, align 4
  %41 = load float, float* %16, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store float %41, float* %44, align 4
  ret void
}

declare dso_local i32 @fz_stroke_bezier(i32*, %struct.TYPE_5__*, float, float, float, float, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
