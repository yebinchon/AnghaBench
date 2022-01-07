; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_stroke_moveto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-path.c_fz_stroke_moveto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctx = type { i32, i64, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { float, float }
%struct.TYPE_4__ = type { float, float }

@ONLY_MOVES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, float, float)* @fz_stroke_moveto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_stroke_moveto(i32* %0, i8* %1, float %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.sctx*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.sctx*
  store %struct.sctx* %11, %struct.sctx** %9, align 8
  %12 = load float, float* %7, align 4
  %13 = load %struct.sctx*, %struct.sctx** %9, align 8
  %14 = getelementptr inbounds %struct.sctx, %struct.sctx* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store float %12, float* %17, align 4
  %18 = load %struct.sctx*, %struct.sctx** %9, align 8
  %19 = getelementptr inbounds %struct.sctx, %struct.sctx* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store float %12, float* %22, align 4
  %23 = load float, float* %8, align 4
  %24 = load %struct.sctx*, %struct.sctx** %9, align 8
  %25 = getelementptr inbounds %struct.sctx, %struct.sctx* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store float %23, float* %28, align 4
  %29 = load %struct.sctx*, %struct.sctx** %9, align 8
  %30 = getelementptr inbounds %struct.sctx, %struct.sctx* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store float %23, float* %33, align 4
  %34 = load %struct.sctx*, %struct.sctx** %9, align 8
  %35 = getelementptr inbounds %struct.sctx, %struct.sctx* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @ONLY_MOVES, align 4
  %37 = load %struct.sctx*, %struct.sctx** %9, align 8
  %38 = getelementptr inbounds %struct.sctx, %struct.sctx* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sctx*, %struct.sctx** %9, align 8
  %40 = getelementptr inbounds %struct.sctx, %struct.sctx* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
