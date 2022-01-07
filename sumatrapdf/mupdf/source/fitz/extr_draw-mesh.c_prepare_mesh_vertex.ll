; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-mesh.c_prepare_mesh_vertex.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-mesh.c_prepare_mesh_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float* }
%struct.paint_tri_data = type { %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 (i32*, %struct.TYPE_9__*, float*, float*)* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.TYPE_6__*, float*)* @prepare_mesh_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_mesh_vertex(i32* %0, i8* %1, %struct.TYPE_6__* %2, float* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.paint_tri_data*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store float* %3, float** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.paint_tri_data*
  store %struct.paint_tri_data* %18, %struct.paint_tri_data** %9, align 8
  %19 = load %struct.paint_tri_data*, %struct.paint_tri_data** %9, align 8
  %20 = getelementptr inbounds %struct.paint_tri_data, %struct.paint_tri_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %10, align 8
  %22 = load %struct.paint_tri_data*, %struct.paint_tri_data** %9, align 8
  %23 = getelementptr inbounds %struct.paint_tri_data, %struct.paint_tri_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %11, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load float*, float** %26, align 8
  store float* %27, float** %12, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load float*, float** %8, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  %35 = load float, float* %34, align 4
  %36 = fmul float %35, 2.550000e+02
  %37 = load float*, float** %12, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  store float %36, float* %38, align 4
  br label %106

39:                                               ; preds = %4
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @fz_colorspace_n(i32* %40, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %15, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %16, align 4
  %53 = load %struct.paint_tri_data*, %struct.paint_tri_data** %9, align 8
  %54 = getelementptr inbounds %struct.paint_tri_data, %struct.paint_tri_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32 (i32*, %struct.TYPE_9__*, float*, float*)*, i32 (i32*, %struct.TYPE_9__*, float*, float*)** %55, align 8
  %57 = icmp ne i32 (i32*, %struct.TYPE_9__*, float*, float*)* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %39
  %59 = load %struct.paint_tri_data*, %struct.paint_tri_data** %9, align 8
  %60 = getelementptr inbounds %struct.paint_tri_data, %struct.paint_tri_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32 (i32*, %struct.TYPE_9__*, float*, float*)*, i32 (i32*, %struct.TYPE_9__*, float*, float*)** %61, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.paint_tri_data*, %struct.paint_tri_data** %9, align 8
  %65 = getelementptr inbounds %struct.paint_tri_data, %struct.paint_tri_data* %64, i32 0, i32 0
  %66 = load float*, float** %8, align 8
  %67 = load float*, float** %12, align 8
  %68 = call i32 %62(i32* %63, %struct.TYPE_9__* %65, float* %66, float* %67)
  br label %69

69:                                               ; preds = %58, %39
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %81, %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load float*, float** %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fmul float %79, 2.550000e+02
  store float %80, float* %78, align 4
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %70

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %94, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load float*, float** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  store float 0.000000e+00, float* %93, align 4
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %85

97:                                               ; preds = %85
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load float*, float** %12, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  store float 2.550000e+02, float* %104, align 4
  br label %105

105:                                              ; preds = %100, %97
  br label %106

106:                                              ; preds = %105, %32
  ret void
}

declare dso_local i32 @fz_colorspace_n(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
