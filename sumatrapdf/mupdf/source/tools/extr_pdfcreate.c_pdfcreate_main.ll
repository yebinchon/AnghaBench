; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfcreate.c_pdfcreate_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfcreate.c_pdfcreate_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pdf_default_write_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"out.pdf\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"o:O:\00", align 1
@fz_optarg = common dso_local global i8* null, align 8
@fz_optind = common dso_local global i32 0, align 4
@FZ_STORE_UNLIMITED = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot initialise context\0A\00", align 1
@doc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdfcreate_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = load i32, i32* @pdf_default_write_options, align 4
  store i32 %10, i32* %5, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i32, i32* %3, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = call i32 @fz_getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %22 [
    i32 111, label %18
    i32 79, label %20
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** @fz_optarg, align 8
  store i8* %19, i8** %6, align 8
  br label %24

20:                                               ; preds = %16
  %21 = load i8*, i8** @fz_optarg, align 8
  store i8* %21, i8** %7, align 8
  br label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @usage()
  br label %24

24:                                               ; preds = %22, %20, %18
  br label %11

25:                                               ; preds = %11
  %26 = load i32, i32* @fz_optind, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* @FZ_STORE_UNLIMITED, align 4
  %33 = call i32 @fz_new_context(i32* null, i32* null, i32 %32)
  store i32 %33, i32* @ctx, align 4
  %34 = load i32, i32* @ctx, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %31
  %41 = load i32, i32* @ctx, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @pdf_parse_write_options(i32 %41, i32* %5, i8* %42)
  %44 = load i32, i32* @ctx, align 4
  %45 = call i32 @pdf_create_document(i32 %44)
  store i32 %45, i32* @doc, align 4
  %46 = load i32, i32* @fz_optind, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %58, %40
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i8**, i8*** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @create_page(i8* %56)
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %47

61:                                               ; preds = %47
  %62 = load i32, i32* @ctx, align 4
  %63 = load i32, i32* @doc, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @pdf_save_document(i32 %62, i32 %63, i8* %64, i32* %5)
  %66 = load i32, i32* @ctx, align 4
  %67 = load i32, i32* @doc, align 4
  %68 = call i32 @pdf_drop_document(i32 %66, i32 %67)
  %69 = load i32, i32* @ctx, align 4
  %70 = call i32 @fz_flush_warnings(i32 %69)
  %71 = load i32, i32* @ctx, align 4
  %72 = call i32 @fz_drop_context(i32 %71)
  ret i32 0
}

declare dso_local i32 @fz_getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fz_new_context(i32*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pdf_parse_write_options(i32, i32*, i8*) #1

declare dso_local i32 @pdf_create_document(i32) #1

declare dso_local i32 @create_page(i8*) #1

declare dso_local i32 @pdf_save_document(i32, i32, i8*, i32*) #1

declare dso_local i32 @pdf_drop_document(i32, i32) #1

declare dso_local i32 @fz_flush_warnings(i32) #1

declare dso_local i32 @fz_drop_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
