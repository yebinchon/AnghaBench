; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_java_device_begin_mask.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_java_device_begin_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_11__**)*, i32 (%struct.TYPE_11__**, i32, i32, i32, i32, i32, i32, i32)* }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@mid_Device_beginMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32*, float*, i32)* @fz_java_device_begin_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_java_device_begin_mask(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, float* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_11__**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store float* %5, float** %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %15, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %24, align 8
  store %struct.TYPE_11__** %25, %struct.TYPE_11__*** %16, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @to_Rect(i32* %26, %struct.TYPE_11__** %27, i32 %28)
  store i32 %29, i32* %17, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @to_ColorSpace(i32* %30, %struct.TYPE_11__** %31, i32* %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %36 = load float*, float** %13, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %7
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @fz_colorspace_n(i32* %40, i32* %41)
  br label %45

43:                                               ; preds = %7
  %44 = load i32, i32* @FZ_MAX_COLORS, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %42, %39 ], [ %44, %43 ]
  %47 = call i32 @to_jfloatArray(i32* %34, %struct.TYPE_11__** %35, float* %36, i32 %46)
  store i32 %47, i32* %19, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @to_ColorParams_safe(i32* %48, %struct.TYPE_11__** %49, i32 %50)
  store i32 %51, i32* %20, align 4
  %52 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32 (%struct.TYPE_11__**, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_11__**, i32, i32, i32, i32, i32, i32, i32)** %54, align 8
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @mid_Device_beginMask, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %20, align 4
  %66 = call i32 %55(%struct.TYPE_11__** %56, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64 (%struct.TYPE_11__**)*, i64 (%struct.TYPE_11__**)** %69, align 8
  %71 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %72 = call i64 %70(%struct.TYPE_11__** %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %45
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  %77 = call i32 @fz_throw_java(i32* %75, %struct.TYPE_11__** %76)
  br label %78

78:                                               ; preds = %74, %45
  ret void
}

declare dso_local i32 @to_Rect(i32*, %struct.TYPE_11__**, i32) #1

declare dso_local i32 @to_ColorSpace(i32*, %struct.TYPE_11__**, i32*) #1

declare dso_local i32 @to_jfloatArray(i32*, %struct.TYPE_11__**, float*, i32) #1

declare dso_local i32 @fz_colorspace_n(i32*, i32*) #1

declare dso_local i32 @to_ColorParams_safe(i32*, %struct.TYPE_11__**, i32) #1

declare dso_local i32 @fz_throw_java(i32*, %struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
