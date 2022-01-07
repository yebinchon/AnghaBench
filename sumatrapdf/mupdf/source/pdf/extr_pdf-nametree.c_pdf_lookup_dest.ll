; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-nametree.c_pdf_lookup_dest.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-nametree.c_pdf_lookup_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Root = common dso_local global i32 0, align 4
@Dests = common dso_local global i32 0, align 4
@Names = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pdf_lookup_dest(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @pdf_trailer(i32* %14, i32* %15)
  %17 = load i32, i32* @Root, align 4
  %18 = call i32* @PDF_NAME(i32 %17)
  %19 = call i32* @pdf_dict_get(i32* %13, i32* %16, i32* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @Dests, align 4
  %23 = call i32* @PDF_NAME(i32 %22)
  %24 = call i32* @pdf_dict_get(i32* %20, i32* %21, i32* %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @Names, align 4
  %28 = call i32* @PDF_NAME(i32 %27)
  %29 = call i32* @pdf_dict_get(i32* %25, i32* %26, i32* %28)
  store i32* %29, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @pdf_is_name(i32* %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32* @pdf_dict_get(i32* %38, i32* %39, i32* %40)
  store i32* %41, i32** %4, align 8
  br label %66

42:                                               ; preds = %32
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @pdf_to_str_buf(i32* %45, i32* %46)
  %48 = call i32* @pdf_dict_gets(i32* %43, i32* %44, i32 %47)
  store i32* %48, i32** %4, align 8
  br label %66

49:                                               ; preds = %3
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* @Dests, align 4
  %59 = call i32* @PDF_NAME(i32 %58)
  %60 = call i32* @pdf_dict_get(i32* %56, i32* %57, i32* %59)
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32* @pdf_lookup_name_imp(i32* %61, i32* %62, i32* %63)
  store i32* %64, i32** %4, align 8
  br label %66

65:                                               ; preds = %52, %49
  store i32* null, i32** %4, align 8
  br label %66

66:                                               ; preds = %65, %55, %42, %37
  %67 = load i32*, i32** %4, align 8
  ret i32* %67
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32*) #1

declare dso_local i32* @pdf_trailer(i32*, i32*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i64 @pdf_is_name(i32*, i32*) #1

declare dso_local i32* @pdf_dict_gets(i32*, i32*, i32) #1

declare dso_local i32 @pdf_to_str_buf(i32*, i32*) #1

declare dso_local i32* @pdf_lookup_name_imp(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
