; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-stream.c_pdf_stream_has_crypt.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-stream.c_pdf_stream_has_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Filter = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@Crypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pdf_stream_has_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdf_stream_has_crypt(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @Filter, align 4
  %13 = call i32 @PDF_NAME(i32 %12)
  %14 = load i32, i32* @F, align 4
  %15 = call i32 @PDF_NAME(i32 %14)
  %16 = call i32* @pdf_dict_geta(i32* %10, i32* %11, i32 %13, i32 %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @Crypt, align 4
  %23 = call i32 @PDF_NAME(i32 %22)
  %24 = call i64 @pdf_name_eq(i32* %20, i32* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %59

27:                                               ; preds = %19
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @pdf_is_array(i32* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @pdf_array_len(i32* %33, i32* %34)
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %53, %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32* @pdf_array_get(i32* %41, i32* %42, i32 %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @Crypt, align 4
  %48 = call i32 @PDF_NAME(i32 %47)
  %49 = call i64 @pdf_name_eq(i32* %45, i32* %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %59

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %36

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %27
  br label %58

58:                                               ; preds = %57, %2
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %51, %26
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32* @pdf_dict_geta(i32*, i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i64 @pdf_name_eq(i32*, i32*, i32) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
