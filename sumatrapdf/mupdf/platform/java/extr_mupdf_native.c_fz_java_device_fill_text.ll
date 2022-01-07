; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_java_device_fill_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_java_device_fill_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__**)*, i32 (%struct.TYPE_12__**, i32, i32, i32, i32, i32, i32, float, i32)* }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@mid_Device_fillText = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32*, float*, float, i32)* @fz_java_device_fill_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_java_device_fill_text(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, float* %5, float %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_12__**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store float* %5, float** %14, align 8
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %17, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %27, align 8
  store %struct.TYPE_12__** %28, %struct.TYPE_12__*** %18, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @to_Text(i32* %29, %struct.TYPE_12__** %30, i32* %31)
  store i32 %32, i32* %19, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @to_Matrix(i32* %33, %struct.TYPE_12__** %34, i32 %35)
  store i32 %36, i32* %20, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @to_ColorSpace(i32* %37, %struct.TYPE_12__** %38, i32* %39)
  store i32 %40, i32* %21, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %43 = load float*, float** %14, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @fz_colorspace_n(i32* %47, i32* %48)
  br label %52

50:                                               ; preds = %8
  %51 = load i32, i32* @FZ_MAX_COLORS, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %49, %46 ], [ %51, %50 ]
  %54 = call i32 @to_jfloatArray(i32* %41, %struct.TYPE_12__** %42, float* %43, i32 %53)
  store i32 %54, i32* %22, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @to_ColorParams_safe(i32* %55, %struct.TYPE_12__** %56, i32 %57)
  store i32 %58, i32* %23, align 4
  %59 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_12__**, i32, i32, i32, i32, i32, i32, float, i32)*, i32 (%struct.TYPE_12__**, i32, i32, i32, i32, i32, i32, float, i32)** %61, align 8
  %63 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @mid_Device_fillText, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %22, align 4
  %72 = load float, float* %15, align 4
  %73 = load i32, i32* %23, align 4
  %74 = call i32 %62(%struct.TYPE_12__** %63, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, float %72, i32 %73)
  %75 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64 (%struct.TYPE_12__**)*, i64 (%struct.TYPE_12__**)** %77, align 8
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %80 = call i64 %78(%struct.TYPE_12__** %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %52
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %18, align 8
  %85 = call i32 @fz_throw_java(i32* %83, %struct.TYPE_12__** %84)
  br label %86

86:                                               ; preds = %82, %52
  ret void
}

declare dso_local i32 @to_Text(i32*, %struct.TYPE_12__**, i32*) #1

declare dso_local i32 @to_Matrix(i32*, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @to_ColorSpace(i32*, %struct.TYPE_12__**, i32*) #1

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
