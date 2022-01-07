; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_default_appearance.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_default_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@DA = common dso_local global i32 0, align 4
@Root = common dso_local global i32 0, align 4
@AcroForm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_annot_default_appearance(i32* %0, %struct.TYPE_5__* %1, i8** %2, float* %3, float* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8** %2, i8*** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DA, align 4
  %18 = call i32 @PDF_NAME(i32 %17)
  %19 = call i32* @pdf_dict_get_inheritable(i32* %13, i32 %16, i32 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %5
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @pdf_trailer(i32* %23, i32 %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* @Root, align 4
  %33 = call i32 @PDF_NAME(i32 %32)
  %34 = load i32, i32* @AcroForm, align 4
  %35 = call i32 @PDF_NAME(i32 %34)
  %36 = load i32, i32* @DA, align 4
  %37 = call i32 @PDF_NAME(i32 %36)
  %38 = call i32* @pdf_dict_getl(i32* %30, i32* %31, i32 %33, i32 %35, i32 %37, i32* null)
  store i32* %38, i32** %11, align 8
  br label %39

39:                                               ; preds = %22, %5
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @pdf_to_str_buf(i32* %41, i32* %42)
  %44 = load i8**, i8*** %8, align 8
  %45 = load float*, float** %9, align 8
  %46 = load float*, float** %10, align 8
  %47 = call i32 @pdf_parse_default_appearance(i32* %40, i32 %43, i8** %44, float* %45, float* %46)
  ret void
}

declare dso_local i32* @pdf_dict_get_inheritable(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_trailer(i32*, i32) #1

declare dso_local i32* @pdf_dict_getl(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @pdf_parse_default_appearance(i32*, i32, i8**, float*, float*) #1

declare dso_local i32 @pdf_to_str_buf(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
