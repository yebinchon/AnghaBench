; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_clip_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_clip_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_6__*, i32, i32)* @pdf_dev_clip_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_dev_clip_text(i32* %0, i32* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = call i32 @pdf_dev_end_text(i32* %14, i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @pdf_dev_push(i32* %17, i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @pdf_dev_ctm(i32* %20, i32* %21, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %12, align 8
  br label %27

27:                                               ; preds = %47, %5
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @pdf_dev_begin_text(i32* %31, i32* %32, i32 7)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pdf_dev_font(i32* %34, i32* %35, i32 %38, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = call i32 @pdf_dev_text_span(i32* %43, i32* %44, %struct.TYPE_5__* %45)
  br label %47

47:                                               ; preds = %30
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %12, align 8
  br label %27

51:                                               ; preds = %27
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
