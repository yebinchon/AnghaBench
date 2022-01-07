; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_java_device_fill_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_java_device_fill_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__**)*, i32 (%struct.TYPE_12__**, i32, i32, i32, i32, i32, i32, i32, float, i32)* }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@mid_Device_fillPath = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32*, float*, float, i32)* @fz_java_device_fill_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_java_device_fill_path(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5, float* %6, float %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_12__**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = bitcast i32* %26 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %19, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %29, align 8
  store %struct.TYPE_12__** %30, %struct.TYPE_12__*** %20, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @to_Path(i32* %31, %struct.TYPE_12__** %32, i32* %33)
  store i32 %34, i32* %21, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @to_ColorSpace(i32* %35, %struct.TYPE_12__** %36, i32* %37)
  store i32 %38, i32* %22, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @to_Matrix(i32* %39, %struct.TYPE_12__** %40, i32 %41)
  store i32 %42, i32* %23, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %45 = load float*, float** %16, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %9
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @fz_colorspace_n(i32* %49, i32* %50)
  br label %54

52:                                               ; preds = %9
  %53 = load i32, i32* @FZ_MAX_COLORS, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i32 [ %51, %48 ], [ %53, %52 ]
  %56 = call i32 @to_jfloatArray(i32* %43, %struct.TYPE_12__** %44, float* %45, i32 %55)
  store i32 %56, i32* %24, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @to_ColorParams_safe(i32* %57, %struct.TYPE_12__** %58, i32 %59)
  store i32 %60, i32* %25, align 4
  %61 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32 (%struct.TYPE_12__**, i32, i32, i32, i32, i32, i32, i32, float, i32)*, i32 (%struct.TYPE_12__**, i32, i32, i32, i32, i32, i32, i32, float, i32)** %63, align 8
  %65 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @mid_Device_fillPath, align 4
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %24, align 4
  %75 = load float, float* %17, align 4
  %76 = load i32, i32* %25, align 4
  %77 = call i32 %64(%struct.TYPE_12__** %65, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, float %75, i32 %76)
  %78 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i64 (%struct.TYPE_12__**)*, i64 (%struct.TYPE_12__**)** %80, align 8
  %82 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %83 = call i64 %81(%struct.TYPE_12__** %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %54
  %86 = load i32*, i32** %10, align 8
  %87 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %20, align 8
  %88 = call i32 @fz_throw_java(i32* %86, %struct.TYPE_12__** %87)
  br label %89

89:                                               ; preds = %85, %54
  ret void
}

declare dso_local i32 @to_Path(i32*, %struct.TYPE_12__**, i32*) #1

declare dso_local i32 @to_ColorSpace(i32*, %struct.TYPE_12__**, i32*) #1

declare dso_local i32 @to_Matrix(i32*, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @to_jfloatArray(i32*, %struct.TYPE_12__**, float*, i32) #1

declare dso_local i32 @fz_colorspace_n(i32*, i32*) #1

declare dso_local i32 @to_ColorParams_safe(i32*, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @fz_throw_java(i32*, %struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
