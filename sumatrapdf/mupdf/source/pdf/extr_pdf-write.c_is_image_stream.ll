; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_is_image_stream.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_is_image_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Type = common dso_local global i32 0, align 4
@XObject = common dso_local global i32 0, align 4
@Subtype = common dso_local global i32 0, align 4
@Image = common dso_local global i32 0, align 4
@Filter = common dso_local global i32 0, align 4
@Width = common dso_local global i32 0, align 4
@Height = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @is_image_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_image_stream(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @Type, align 4
  %10 = call i32 @PDF_NAME(i32 %9)
  %11 = call i32* @pdf_dict_get(i32* %7, i32* %8, i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @XObject, align 4
  %15 = call i32 @PDF_NAME(i32 %14)
  %16 = call i32 @pdf_name_eq(i32* %12, i32* %13, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @Subtype, align 4
  %22 = call i32 @PDF_NAME(i32 %21)
  %23 = call i32* @pdf_dict_get(i32* %19, i32* %20, i32 %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @Image, align 4
  %27 = call i32 @PDF_NAME(i32 %26)
  %28 = call i32 @pdf_name_eq(i32* %24, i32* %25, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %59

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @Filter, align 4
  %36 = call i32 @PDF_NAME(i32 %35)
  %37 = call i32* @pdf_dict_get(i32* %33, i32* %34, i32 %36)
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @filter_implies_image(i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %59

43:                                               ; preds = %32
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @Width, align 4
  %47 = call i32 @PDF_NAME(i32 %46)
  %48 = call i32* @pdf_dict_get(i32* %44, i32* %45, i32 %47)
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @Height, align 4
  %54 = call i32 @PDF_NAME(i32 %53)
  %55 = call i32* @pdf_dict_get(i32* %51, i32* %52, i32 %54)
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %59

58:                                               ; preds = %50, %43
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57, %42, %30
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_name_eq(i32*, i32*, i32) #1

declare dso_local i32 @filter_implies_image(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
