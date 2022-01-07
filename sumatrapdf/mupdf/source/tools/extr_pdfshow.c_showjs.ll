; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showjs.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showjs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@JavaScript = common dso_local global i32 0, align 4
@JS = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"// %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @showjs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showjs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = load i32, i32* @ctx, align 4
  %8 = load i32, i32* @doc, align 4
  %9 = load i32, i32* @JavaScript, align 4
  %10 = call i32 @PDF_NAME(i32 %9)
  %11 = call i32* @pdf_load_name_tree(i32 %7, i32 %8, i32 %10)
  store i32* %11, i32** %1, align 8
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %46, %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @ctx, align 4
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @pdf_dict_len(i32 %14, i32* %15)
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = load i32, i32* @ctx, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i32* @pdf_dict_get_key(i32 %19, i32* %20, i32 %21)
  store i32* %22, i32** %3, align 8
  %23 = load i32, i32* @ctx, align 4
  %24 = load i32*, i32** %1, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i32* @pdf_dict_get_val(i32 %23, i32* %24, i32 %25)
  store i32* %26, i32** %4, align 8
  %27 = load i32, i32* @ctx, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @JS, align 4
  %30 = call i32 @PDF_NAME(i32 %29)
  %31 = call i32* @pdf_dict_get(i32 %27, i32* %28, i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32, i32* @ctx, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @pdf_load_stream_or_string_as_utf8(i32 %32, i32* %33)
  store i8* %34, i8** %6, align 8
  %35 = load i32, i32* @ctx, align 4
  %36 = load i32, i32* @out, align 4
  %37 = load i32, i32* @ctx, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @pdf_to_name(i32 %37, i32* %38)
  %40 = call i32 @fz_write_printf(i32 %35, i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @showtext(i8* %41, i32 0)
  %43 = load i32, i32* @ctx, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @fz_free(i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %18
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %12

49:                                               ; preds = %12
  ret void
}

declare dso_local i32* @pdf_load_name_tree(i32, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_len(i32, i32*) #1

declare dso_local i32* @pdf_dict_get_key(i32, i32*, i32) #1

declare dso_local i32* @pdf_dict_get_val(i32, i32*, i32) #1

declare dso_local i32* @pdf_dict_get(i32, i32*, i32) #1

declare dso_local i8* @pdf_load_stream_or_string_as_utf8(i32, i32*) #1

declare dso_local i32 @fz_write_printf(i32, i32, i8*, i32) #1

declare dso_local i32 @pdf_to_name(i32, i32*) #1

declare dso_local i32 @showtext(i8*, i32) #1

declare dso_local i32 @fz_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
