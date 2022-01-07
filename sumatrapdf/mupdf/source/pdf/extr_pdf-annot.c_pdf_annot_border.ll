; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_border.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@BS = common dso_local global i32 0, align 4
@W = common dso_local global i32 0, align 4
@Border = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @pdf_annot_border(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @BS, align 4
  %14 = call i32 @PDF_NAME(i32 %13)
  %15 = call i32* @pdf_dict_get(i32* %9, i32* %12, i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @W, align 4
  %19 = call i32 @PDF_NAME(i32 %18)
  %20 = call i32* @pdf_dict_get(i32* %16, i32* %17, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @pdf_is_number(i32* %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call float @pdf_to_real(i32* %26, i32* %27)
  store float %28, float* %3, align 4
  br label %49

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @Border, align 4
  %35 = call i32 @PDF_NAME(i32 %34)
  %36 = call i32* @pdf_dict_get(i32* %30, i32* %33, i32 %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @pdf_array_get(i32* %37, i32* %38, i32 2)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @pdf_is_number(i32* %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call float @pdf_to_real(i32* %45, i32* %46)
  store float %47, float* %3, align 4
  br label %49

48:                                               ; preds = %29
  store float 1.000000e+00, float* %3, align 4
  br label %49

49:                                               ; preds = %48, %44, %25
  %50 = load float, float* %3, align 4
  ret float %50
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i64 @pdf_is_number(i32*, i32*) #1

declare dso_local float @pdf_to_real(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
