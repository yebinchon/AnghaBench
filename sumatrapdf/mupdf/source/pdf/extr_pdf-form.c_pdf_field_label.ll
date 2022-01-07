; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_label.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_field_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TU = common dso_local global i32 0, align 4
@T = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unnamed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pdf_field_label(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @TU, align 4
  %10 = call i32 @PDF_NAME(i32 %9)
  %11 = call i32* @pdf_dict_get_inheritable(i32* %7, i32* %8, i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @T, align 4
  %18 = call i32 @PDF_NAME(i32 %17)
  %19 = call i32* @pdf_dict_get_inheritable(i32* %15, i32* %16, i32 %18)
  store i32* %19, i32** %6, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i8* @pdf_to_text_string(i32* %24, i32* %25)
  store i8* %26, i8** %3, align 8
  br label %28

27:                                               ; preds = %20
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

declare dso_local i32* @pdf_dict_get_inheritable(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i8* @pdf_to_text_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
