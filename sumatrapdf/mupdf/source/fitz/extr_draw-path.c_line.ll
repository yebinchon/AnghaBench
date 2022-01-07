; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_line.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*, float, float, float, float)* @line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line(i32* %0, i32* %1, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  store float %6, float* %13, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %19 = load float, float* %18, align 8
  %20 = load float, float* %10, align 4
  %21 = fmul float %19, %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %23 = load float, float* %22, align 4
  %24 = load float, float* %11, align 4
  %25 = fmul float %23, %24
  %26 = fadd float %21, %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %28 = load float, float* %27, align 8
  %29 = fadd float %26, %28
  store float %29, float* %14, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %31 = load float, float* %30, align 4
  %32 = load float, float* %10, align 4
  %33 = fmul float %31, %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %35 = load float, float* %34, align 8
  %36 = load float, float* %11, align 4
  %37 = fmul float %35, %36
  %38 = fadd float %33, %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  %40 = load float, float* %39, align 4
  %41 = fadd float %38, %40
  store float %41, float* %15, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %43 = load float, float* %42, align 8
  %44 = load float, float* %12, align 4
  %45 = fmul float %43, %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = load float, float* %13, align 4
  %49 = fmul float %47, %48
  %50 = fadd float %45, %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %52 = load float, float* %51, align 8
  %53 = fadd float %50, %52
  store float %53, float* %16, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %55 = load float, float* %54, align 4
  %56 = load float, float* %12, align 4
  %57 = fmul float %55, %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %59 = load float, float* %58, align 8
  %60 = load float, float* %13, align 4
  %61 = fmul float %59, %60
  %62 = fadd float %57, %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  %64 = load float, float* %63, align 4
  %65 = fadd float %62, %64
  store float %65, float* %17, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load float, float* %14, align 4
  %69 = load float, float* %15, align 4
  %70 = load float, float* %16, align 4
  %71 = load float, float* %17, align 4
  %72 = call i32 @fz_insert_rasterizer(i32* %66, i32* %67, float %68, float %69, float %70, float %71, i32 0)
  ret void
}

declare dso_local i32 @fz_insert_rasterizer(i32*, i32*, float, float, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
