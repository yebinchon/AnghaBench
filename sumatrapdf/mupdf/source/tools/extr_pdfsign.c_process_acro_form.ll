; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfsign.c_process_acro_form.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfsign.c_process_acro_form.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Root = common dso_local global i32 0, align 4
@AcroForm = common dso_local global i32 0, align 4
@Fields = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @process_acro_form to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_acro_form(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @pdf_trailer(i32* %11, i32* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @Root, align 4
  %17 = call i32 @PDF_NAME(i32 %16)
  %18 = call i32* @pdf_dict_get(i32* %14, i32* %15, i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @AcroForm, align 4
  %22 = call i32 @PDF_NAME(i32 %21)
  %23 = call i32* @pdf_dict_get(i32* %19, i32* %20, i32 %22)
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @Fields, align 4
  %27 = call i32 @PDF_NAME(i32 %26)
  %28 = call i32* @pdf_dict_get(i32* %24, i32* %25, i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @pdf_array_len(i32* %29, i32* %30)
  store i32 %31, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %44, %2
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @pdf_array_get(i32* %39, i32* %40, i32 %41)
  %43 = call i32 @process_field_hierarchy(i32* %37, i32* %38, i32 %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %32

47:                                               ; preds = %32
  ret void
}

declare dso_local i32* @pdf_trailer(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32 @process_field_hierarchy(i32*, i32*, i32) #1

declare dso_local i32 @pdf_array_get(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
