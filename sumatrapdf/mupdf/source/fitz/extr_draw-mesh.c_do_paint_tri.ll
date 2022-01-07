; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-mesh.c_do_paint_tri.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-mesh.c_do_paint_tri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paint_tri_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*, i32*, i32*)* @do_paint_tri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_paint_tri(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.paint_tri_data*, align 8
  %12 = alloca [3 x float*], align 16
  %13 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.paint_tri_data*
  store %struct.paint_tri_data* %15, %struct.paint_tri_data** %11, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = bitcast i32* %16 to float*
  %18 = getelementptr inbounds [3 x float*], [3 x float*]* %12, i64 0, i64 0
  store float* %17, float** %18, align 16
  %19 = load i32*, i32** %9, align 8
  %20 = bitcast i32* %19 to float*
  %21 = getelementptr inbounds [3 x float*], [3 x float*]* %12, i64 0, i64 1
  store float* %20, float** %21, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = bitcast i32* %22 to float*
  %24 = getelementptr inbounds [3 x float*], [3 x float*]* %12, i64 0, i64 2
  store float* %23, float** %24, align 16
  %25 = load %struct.paint_tri_data*, %struct.paint_tri_data** %11, align 8
  %26 = getelementptr inbounds %struct.paint_tri_data, %struct.paint_tri_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %13, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %29 = getelementptr inbounds [3 x float*], [3 x float*]* %12, i64 0, i64 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 2, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = load %struct.paint_tri_data*, %struct.paint_tri_data** %11, align 8
  %39 = getelementptr inbounds %struct.paint_tri_data, %struct.paint_tri_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @fz_paint_triangle(%struct.TYPE_3__* %28, float** %29, i64 %37, i32 %40)
  ret void
}

declare dso_local i32 @fz_paint_triangle(%struct.TYPE_3__*, float**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
