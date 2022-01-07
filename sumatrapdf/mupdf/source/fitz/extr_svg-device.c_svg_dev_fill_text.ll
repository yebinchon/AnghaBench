; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_fill_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_svg-device.c_svg_dev_fill_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64, i32* }

@.str = private unnamed_addr constant [6 x i8] c"<text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_12__*, i32, i32*, float*, float, i32)* @svg_dev_fill_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svg_dev_fill_text(i32* %0, i32* %1, %struct.TYPE_12__* %2, i32 %3, i32* %4, float* %5, float %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store float* %5, float** %14, align 8
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %17, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %18, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %20, align 8
  br label %34

34:                                               ; preds = %53, %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %36 = icmp ne %struct.TYPE_11__* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %18, align 8
  %40 = call i32 @fz_write_printf(i32* %38, i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load float*, float** %14, align 8
  %45 = load float, float* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @svg_dev_fill_color(i32* %41, %struct.TYPE_10__* %42, i32* %43, float* %44, float %45, i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %52 = call i32 @svg_dev_text_span(i32* %48, %struct.TYPE_10__* %49, i32 %50, %struct.TYPE_11__* %51)
  br label %53

53:                                               ; preds = %37
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %20, align 8
  br label %34

57:                                               ; preds = %34
  br label %86

58:                                               ; preds = %8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %20, align 8
  br label %62

62:                                               ; preds = %81, %58
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %64 = icmp ne %struct.TYPE_11__* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32* @svg_dev_text_span_as_paths_defs(i32* %66, i32* %67, %struct.TYPE_11__* %68, i32 %69)
  store i32* %70, i32** %19, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load float*, float** %14, align 8
  %77 = load float, float* %15, align 4
  %78 = load i32*, i32** %19, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @svg_dev_text_span_as_paths_fill(i32* %71, i32* %72, %struct.TYPE_11__* %73, i32 %74, i32* %75, float* %76, float %77, i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %65
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %20, align 8
  br label %62

85:                                               ; preds = %62
  br label %86

86:                                               ; preds = %85, %57
  ret void
}

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*) #1

declare dso_local i32 @svg_dev_fill_color(i32*, %struct.TYPE_10__*, i32*, float*, float, i32) #1

declare dso_local i32 @svg_dev_text_span(i32*, %struct.TYPE_10__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32* @svg_dev_text_span_as_paths_defs(i32*, i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @svg_dev_text_span_as_paths_fill(i32*, i32*, %struct.TYPE_11__*, i32, i32*, float*, float, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
