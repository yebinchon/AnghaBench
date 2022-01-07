; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showaction.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@JS = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"    %s: {\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"    }\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"    %s: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @showaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showaction(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %56

9:                                                ; preds = %2
  %10 = load i32, i32* @ctx, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @JS, align 4
  %13 = call i32 @PDF_NAME(i32 %12)
  %14 = call i32* @pdf_dict_get(i32 %10, i32* %11, i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %9
  %18 = load i32, i32* @ctx, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @pdf_load_stream_or_string_as_utf8(i32 %18, i32* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i32, i32* @ctx, align 4
  %22 = load i32, i32* @out, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %21, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @showtext(i8* %25, i32 1)
  %27 = load i32, i32* @ctx, align 4
  %28 = load i32, i32* @out, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @ctx, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @fz_free(i32 %31, i8* %32)
  br label %55

34:                                               ; preds = %9
  %35 = load i32, i32* @ctx, align 4
  %36 = load i32, i32* @out, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %35, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @ctx, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = call i64 @pdf_is_indirect(i32 %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @ctx, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = call i32* @pdf_resolve_indirect(i32 %44, i32* %45)
  store i32* %46, i32** %3, align 8
  br label %47

47:                                               ; preds = %43, %34
  %48 = load i32, i32* @ctx, align 4
  %49 = load i32, i32* @out, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @pdf_print_obj(i32 %48, i32 %49, i32* %50, i32 1, i32 1)
  %52 = load i32, i32* @ctx, align 4
  %53 = load i32, i32* @out, align 4
  %54 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %52, i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %47, %17
  br label %56

56:                                               ; preds = %55, %2
  ret void
}

declare dso_local i32* @pdf_dict_get(i32, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i8* @pdf_load_stream_or_string_as_utf8(i32, i32*) #1

declare dso_local i32 @fz_write_printf(i32, i32, i8*, ...) #1

declare dso_local i32 @showtext(i8*, i32) #1

declare dso_local i32 @fz_free(i32, i8*) #1

declare dso_local i64 @pdf_is_indirect(i32, i32*) #1

declare dso_local i32* @pdf_resolve_indirect(i32, i32*) #1

declare dso_local i32 @pdf_print_obj(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
