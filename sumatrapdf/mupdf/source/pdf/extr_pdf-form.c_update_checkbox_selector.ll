; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_update_checkbox_selector.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_update_checkbox_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Kids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"AP/N\00", align 1
@Off = common dso_local global i32 0, align 4
@AS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i8*)* @update_checkbox_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_checkbox_selector(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @Kids, align 4
  %17 = call i32* @PDF_NAME(i32 %16)
  %18 = call i32* @pdf_dict_get(i32* %14, i32* %15, i32* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @pdf_array_len(i32* %22, i32* %23)
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %37, %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32* @pdf_array_get(i32* %32, i32* %33, i32 %34)
  %36 = load i8*, i8** %8, align 8
  call void @update_checkbox_selector(i32* %30, i32* %31, i32* %35, i8* %36)
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %25

40:                                               ; preds = %25
  br label %64

41:                                               ; preds = %4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32* @pdf_dict_getp(i32* %42, i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @pdf_dict_gets(i32* %45, i32* %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32*, i32** %5, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32* @pdf_new_name(i32* %51, i8* %52)
  store i32* %53, i32** %13, align 8
  br label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @Off, align 4
  %56 = call i32* @PDF_NAME(i32 %55)
  store i32* %56, i32** %13, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @AS, align 4
  %61 = call i32* @PDF_NAME(i32 %60)
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @pdf_dict_put_drop(i32* %58, i32* %59, i32* %61, i32* %62)
  br label %64

64:                                               ; preds = %57, %40
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i32* @pdf_dict_getp(i32*, i32*, i8*) #1

declare dso_local i64 @pdf_dict_gets(i32*, i32*, i8*) #1

declare dso_local i32* @pdf_new_name(i32*, i8*) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
