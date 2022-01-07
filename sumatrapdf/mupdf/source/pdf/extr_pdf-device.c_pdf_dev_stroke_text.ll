; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_stroke_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_stroke_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_6__*, i32*, i32, i32*, float*, float, i32)* @pdf_dev_stroke_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_dev_stroke_text(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3, i32 %4, i32* %5, float* %6, float %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32*, i32** %11, align 8
  store i32* %21, i32** %19, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %19, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @pdf_dev_ctm(i32* %22, i32* %23, i32 %24)
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %19, align 8
  %28 = load float, float* %17, align 4
  %29 = call i32 @pdf_dev_alpha(i32* %26, i32* %27, float %28, i32 1)
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %19, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = load float*, float** %16, align 8
  %34 = load i32, i32* %18, align 4
  %35 = call i32 @pdf_dev_color(i32* %30, i32* %31, i32* %32, float* %33, i32 1, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %20, align 8
  br label %39

39:                                               ; preds = %59, %9
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %19, align 8
  %45 = call i32 @pdf_dev_begin_text(i32* %43, i32* %44, i32 1)
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pdf_dev_font(i32* %46, i32* %47, i32 %50, i32 %53)
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %19, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %58 = call i32 @pdf_dev_text_span(i32* %55, i32* %56, %struct.TYPE_5__* %57)
  br label %59

59:                                               ; preds = %42
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %20, align 8
  br label %39

63:                                               ; preds = %39
  ret void
}

declare dso_local i32 @pdf_dev_ctm(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dev_alpha(i32*, i32*, float, i32) #1

declare dso_local i32 @pdf_dev_color(i32*, i32*, i32*, float*, i32, i32) #1

declare dso_local i32 @pdf_dev_begin_text(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dev_font(i32*, i32*, i32, i32) #1

declare dso_local i32 @pdf_dev_text_span(i32*, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
