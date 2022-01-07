; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_set_border_style.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_set_border_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Solid\00", align 1
@S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Dashed\00", align 1
@D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Beveled\00", align 1
@B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Inset\00", align 1
@I = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Underline\00", align 1
@U = common dso_local global i32 0, align 4
@BS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_field_set_border_style(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @S, align 4
  %13 = call i32* @PDF_NAME(i32 %12)
  store i32* %13, i32** %7, align 8
  br label %47

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @D, align 4
  %20 = call i32* @PDF_NAME(i32 %19)
  store i32* %20, i32** %7, align 8
  br label %46

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @B, align 4
  %27 = call i32* @PDF_NAME(i32 %26)
  store i32* %27, i32** %7, align 8
  br label %45

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @I, align 4
  %34 = call i32* @PDF_NAME(i32 %33)
  store i32* %34, i32** %7, align 8
  br label %44

35:                                               ; preds = %28
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @U, align 4
  %41 = call i32* @PDF_NAME(i32 %40)
  store i32* %41, i32** %7, align 8
  br label %43

42:                                               ; preds = %35
  br label %59

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %25
  br label %46

46:                                               ; preds = %45, %18
  br label %47

47:                                               ; preds = %46, %11
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @BS, align 4
  %52 = call i32* @PDF_NAME(i32 %51)
  %53 = load i32, i32* @S, align 4
  %54 = call i32* @PDF_NAME(i32 %53)
  %55 = call i32 @pdf_dict_putl_drop(i32* %48, i32* %49, i32* %50, i32* %52, i32* %54, i32* null)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @pdf_field_mark_dirty(i32* %56, i32* %57)
  br label %59

59:                                               ; preds = %47, %42
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_putl_drop(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pdf_field_mark_dirty(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
