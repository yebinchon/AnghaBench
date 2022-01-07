; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_fill_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_fill_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_6__*, i32, i32*, float*, float, i32)* @pdf_dev_fill_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_dev_fill_text(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32 %3, i32* %4, float* %5, float %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store float* %5, float** %14, align 8
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32*, i32** %10, align 8
  store i32* %19, i32** %17, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %17, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @pdf_dev_ctm(i32* %20, i32* %21, i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %17, align 8
  %26 = load float, float* %15, align 4
  %27 = call i32 @pdf_dev_alpha(i32* %24, i32* %25, float %26, i32 0)
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load float*, float** %14, align 8
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @pdf_dev_color(i32* %28, i32* %29, i32* %30, float* %31, i32 0, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %18, align 8
  br label %37

37:                                               ; preds = %57, %8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @pdf_dev_begin_text(i32* %41, i32* %42, i32 0)
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pdf_dev_font(i32* %44, i32* %45, i32 %48, i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %56 = call i32 @pdf_dev_text_span(i32* %53, i32* %54, %struct.TYPE_5__* %55)
  br label %57

57:                                               ; preds = %40
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %18, align 8
  br label %37

61:                                               ; preds = %37
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
