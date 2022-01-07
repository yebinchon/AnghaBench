; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_reset.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Kids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_field_reset(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @Kids, align 4
  %13 = call i32 @PDF_NAME(i32 %12)
  %14 = call i32* @pdf_dict_get(i32* %10, i32* %11, i32 %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @reset_form_field(i32* %15, i32* %16, i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @pdf_array_len(i32* %22, i32* %23)
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %36, %21
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32* @pdf_array_get(i32* %32, i32* %33, i32 %34)
  call void @pdf_field_reset(i32* %30, i32* %31, i32* %35)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %25

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %3
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @reset_form_field(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
