; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_clip_stroke_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_clip_stroke_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_6__*, i32*, i32, i32)* @pdf_dev_clip_stroke_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_dev_clip_stroke_text(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32*, i32** %8, align 8
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = call i32 @pdf_dev_end_text(i32* %16, i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32 @pdf_dev_push(i32* %19, i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @pdf_dev_ctm(i32* %22, i32* %23, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %14, align 8
  br label %29

29:                                               ; preds = %49, %6
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @pdf_dev_begin_text(i32* %33, i32* %34, i32 7)
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pdf_dev_font(i32* %36, i32* %37, i32 %40, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %48 = call i32 @pdf_dev_text_span(i32* %45, i32* %46, %struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %32
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %14, align 8
  br label %29

53:                                               ; preds = %29
  ret void
}

declare dso_local i32 @pdf_dev_end_text(i32*, i32*) #1

declare dso_local i32 @pdf_dev_push(i32*, i32*) #1

declare dso_local i32 @pdf_dev_ctm(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dev_begin_text(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dev_font(i32*, i32*, i32, i32) #1

declare dso_local i32 @pdf_dev_text_span(i32*, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
