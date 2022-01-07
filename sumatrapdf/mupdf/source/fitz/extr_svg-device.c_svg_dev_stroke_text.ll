; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_stroke_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_stroke_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64, i32* }

@.str = private unnamed_addr constant [6 x i8] c"<text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_12__*, i32*, i32, i32*, float*, float, i32)* @svg_dev_stroke_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_stroke_text(i32* %0, i32* %1, %struct.TYPE_12__* %2, i32* %3, i32 %4, i32* %5, float* %6, float %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %19, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %20, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %9
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %22, align 8
  br label %36

36:                                               ; preds = %55, %32
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %20, align 8
  %42 = call i32 @fz_write_printf(i32* %40, i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load float*, float** %16, align 8
  %47 = load float, float* %17, align 4
  %48 = load i32, i32* %18, align 4
  %49 = call i32 @svg_dev_fill_color(i32* %43, %struct.TYPE_10__* %44, i32* %45, float* %46, float %47, i32 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %54 = call i32 @svg_dev_text_span(i32* %50, %struct.TYPE_10__* %51, i32 %52, %struct.TYPE_11__* %53)
  br label %55

55:                                               ; preds = %39
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %22, align 8
  br label %36

59:                                               ; preds = %36
  br label %89

60:                                               ; preds = %9
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %22, align 8
  br label %64

64:                                               ; preds = %84, %60
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %66 = icmp ne %struct.TYPE_11__* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32* @svg_dev_text_span_as_paths_defs(i32* %68, i32* %69, %struct.TYPE_11__* %70, i32 %71)
  store i32* %72, i32** %21, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = load float*, float** %16, align 8
  %80 = load float, float* %17, align 4
  %81 = load i32*, i32** %21, align 8
  %82 = load i32, i32* %18, align 4
  %83 = call i32 @svg_dev_text_span_as_paths_stroke(i32* %73, i32* %74, %struct.TYPE_11__* %75, i32* %76, i32 %77, i32* %78, float* %79, float %80, i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %67
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %22, align 8
  br label %64

88:                                               ; preds = %64
  br label %89

89:                                               ; preds = %88, %59
  ret void
}

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*) #1

declare dso_local i32 @svg_dev_fill_color(i32*, %struct.TYPE_10__*, i32*, float*, float, i32) #1

declare dso_local i32 @svg_dev_text_span(i32*, %struct.TYPE_10__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32* @svg_dev_text_span_as_paths_defs(i32*, i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @svg_dev_text_span_as_paths_stroke(i32*, i32*, %struct.TYPE_11__*, i32*, i32, i32*, float*, float, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
