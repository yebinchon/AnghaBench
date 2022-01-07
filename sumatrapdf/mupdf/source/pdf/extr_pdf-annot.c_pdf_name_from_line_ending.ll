; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_name_from_line_ending.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_name_from_line_ending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@None = common dso_local global i32 0, align 4
@Square = common dso_local global i32 0, align 4
@Circle = common dso_local global i32 0, align 4
@Diamond = common dso_local global i32 0, align 4
@OpenArrow = common dso_local global i32 0, align 4
@ClosedArrow = common dso_local global i32 0, align 4
@Butt = common dso_local global i32 0, align 4
@ROpenArrow = common dso_local global i32 0, align 4
@RClosedArrow = common dso_local global i32 0, align 4
@Slash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pdf_name_from_line_ending(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %7 [
    i32 133, label %8
    i32 128, label %11
    i32 136, label %14
    i32 134, label %17
    i32 132, label %20
    i32 135, label %23
    i32 137, label %26
    i32 130, label %29
    i32 131, label %32
    i32 129, label %35
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %2, %7
  %9 = load i32, i32* @None, align 4
  %10 = call i32* @PDF_NAME(i32 %9)
  store i32* %10, i32** %3, align 8
  br label %38

11:                                               ; preds = %2
  %12 = load i32, i32* @Square, align 4
  %13 = call i32* @PDF_NAME(i32 %12)
  store i32* %13, i32** %3, align 8
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* @Circle, align 4
  %16 = call i32* @PDF_NAME(i32 %15)
  store i32* %16, i32** %3, align 8
  br label %38

17:                                               ; preds = %2
  %18 = load i32, i32* @Diamond, align 4
  %19 = call i32* @PDF_NAME(i32 %18)
  store i32* %19, i32** %3, align 8
  br label %38

20:                                               ; preds = %2
  %21 = load i32, i32* @OpenArrow, align 4
  %22 = call i32* @PDF_NAME(i32 %21)
  store i32* %22, i32** %3, align 8
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* @ClosedArrow, align 4
  %25 = call i32* @PDF_NAME(i32 %24)
  store i32* %25, i32** %3, align 8
  br label %38

26:                                               ; preds = %2
  %27 = load i32, i32* @Butt, align 4
  %28 = call i32* @PDF_NAME(i32 %27)
  store i32* %28, i32** %3, align 8
  br label %38

29:                                               ; preds = %2
  %30 = load i32, i32* @ROpenArrow, align 4
  %31 = call i32* @PDF_NAME(i32 %30)
  store i32* %31, i32** %3, align 8
  br label %38

32:                                               ; preds = %2
  %33 = load i32, i32* @RClosedArrow, align 4
  %34 = call i32* @PDF_NAME(i32 %33)
  store i32* %34, i32** %3, align 8
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @Slash, align 4
  %37 = call i32* @PDF_NAME(i32 %36)
  store i32* %37, i32** %3, align 8
  br label %38

38:                                               ; preds = %35, %32, %29, %26, %23, %20, %17, %14, %11, %8
  %39 = load i32*, i32** %3, align 8
  ret i32* %39
}

declare dso_local i32* @PDF_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
