; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-page.c_pdf_delete_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-page.c_pdf_delete_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Kids = common dso_local global i32 0, align 4
@Count = common dso_local global i32 0, align 4
@Parent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_delete_page(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @pdf_lookup_page_loc(i32* %11, i32* %12, i32 %13, i32** %7, i32* %9)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @Kids, align 4
  %18 = call i32 @PDF_NAME(i32 %17)
  %19 = call i32* @pdf_dict_get(i32* %15, i32* %16, i32 %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @pdf_array_delete(i32* %20, i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %27, %3
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @Count, align 4
  %31 = call i32 @PDF_NAME(i32 %30)
  %32 = call i32 @pdf_dict_get_int(i32* %28, i32* %29, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @Count, align 4
  %36 = call i32 @PDF_NAME(i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @pdf_dict_put_int(i32* %33, i32* %34, i32 %36, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @Parent, align 4
  %43 = call i32 @PDF_NAME(i32 %42)
  %44 = call i32* @pdf_dict_get(i32* %40, i32* %41, i32 %43)
  store i32* %44, i32** %7, align 8
  br label %24

45:                                               ; preds = %24
  ret void
}

declare dso_local i32 @pdf_lookup_page_loc(i32*, i32*, i32, i32**, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_delete(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_get_int(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put_int(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
