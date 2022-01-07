; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean-file.c_strip_outlines.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean-file.c_strip_outlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@First = common dso_local global i32 0, align 4
@Last = common dso_local global i32 0, align 4
@Count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32*, i32*)* @strip_outlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strip_outlines(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %91

21:                                               ; preds = %6
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* @First, align 4
  %25 = call i32 @PDF_NAME(i32 %24)
  %26 = call i32* @pdf_dict_get(i32* %22, i32* %23, i32 %25)
  store i32* %26, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %14, align 4
  br label %38

30:                                               ; preds = %21
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @strip_outline(i32* %31, i32* %32, i32* %33, i32 %34, i32* %35, i32* %36, i32** %15, i32** %16)
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %30, %29
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* @First, align 4
  %45 = call i32 @PDF_NAME(i32 %44)
  %46 = call i32 @pdf_dict_del(i32* %42, i32* %43, i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @Last, align 4
  %50 = call i32 @PDF_NAME(i32 %49)
  %51 = call i32 @pdf_dict_del(i32* %47, i32* %48, i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* @Count, align 4
  %55 = call i32 @PDF_NAME(i32 %54)
  %56 = call i32 @pdf_dict_del(i32* %52, i32* %53, i32 %55)
  br label %89

57:                                               ; preds = %38
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @Count, align 4
  %61 = call i32 @PDF_NAME(i32 %60)
  %62 = call i32 @pdf_dict_get_int(i32* %58, i32* %59, i32 %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* @First, align 4
  %66 = call i32 @PDF_NAME(i32 %65)
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @pdf_dict_put(i32* %63, i32* %64, i32 %66, i32* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* @Last, align 4
  %72 = call i32 @PDF_NAME(i32 %71)
  %73 = load i32*, i32** %16, align 8
  %74 = call i32 @pdf_dict_put(i32* %69, i32* %70, i32 %72, i32* %73)
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* @Count, align 4
  %78 = call i32 @PDF_NAME(i32 %77)
  %79 = load i32, i32* %17, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %57
  %82 = load i32, i32* %14, align 4
  br label %86

83:                                               ; preds = %57
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 0, %84
  br label %86

86:                                               ; preds = %83, %81
  %87 = phi i32 [ %82, %81 ], [ %85, %83 ]
  %88 = call i32 @pdf_dict_put_int(i32* %75, i32* %76, i32 %78, i32 %87)
  br label %89

89:                                               ; preds = %86, %41
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %89, %20
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @strip_outline(i32*, i32*, i32*, i32, i32*, i32*, i32**, i32**) #1

declare dso_local i32 @pdf_dict_del(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_get_int(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pdf_dict_put_int(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
