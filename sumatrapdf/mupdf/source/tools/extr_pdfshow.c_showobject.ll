; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showobject.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@showbinary = common dso_local global i64 0, align 8
@tight = common dso_local global i64 0, align 8
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%d 0 obj \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" stream\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d 0 obj\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\0Astream\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"endstream\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"endobj\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0Aendobj\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @showobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showobject(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @ctx, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @pdf_resolve_indirect(i32 %5, i32* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32, i32* @ctx, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @pdf_to_num(i32 %8, i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @ctx, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @pdf_is_stream(i32 %11, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %1
  %16 = load i64, i64* @showbinary, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @showstream(i32 %19)
  br label %57

21:                                               ; preds = %15
  %22 = load i64, i64* @tight, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* @ctx, align 4
  %26 = load i32, i32* @out, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %25, i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ctx, align 4
  %30 = load i32, i32* @out, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @pdf_print_obj(i32 %29, i32 %30, i32* %31, i32 1, i32 1)
  %33 = load i32, i32* @ctx, align 4
  %34 = load i32, i32* @out, align 4
  %35 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %33, i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %56

36:                                               ; preds = %21
  %37 = load i32, i32* @ctx, align 4
  %38 = load i32, i32* @out, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %37, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ctx, align 4
  %42 = load i32, i32* @out, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @pdf_print_obj(i32 %41, i32 %42, i32* %43, i32 0, i32 1)
  %45 = load i32, i32* @ctx, align 4
  %46 = load i32, i32* @out, align 4
  %47 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %45, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @showstream(i32 %48)
  %50 = load i32, i32* @ctx, align 4
  %51 = load i32, i32* @out, align 4
  %52 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %50, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @ctx, align 4
  %54 = load i32, i32* @out, align 4
  %55 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %53, i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %36, %24
  br label %57

57:                                               ; preds = %56, %18
  br label %86

58:                                               ; preds = %1
  %59 = load i64, i64* @tight, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* @ctx, align 4
  %63 = load i32, i32* @out, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %62, i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ctx, align 4
  %67 = load i32, i32* @out, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @pdf_print_obj(i32 %66, i32 %67, i32* %68, i32 1, i32 1)
  %70 = load i32, i32* @ctx, align 4
  %71 = load i32, i32* @out, align 4
  %72 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %70, i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %85

73:                                               ; preds = %58
  %74 = load i32, i32* @ctx, align 4
  %75 = load i32, i32* @out, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %74, i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ctx, align 4
  %79 = load i32, i32* @out, align 4
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @pdf_print_obj(i32 %78, i32 %79, i32* %80, i32 0, i32 1)
  %82 = load i32, i32* @ctx, align 4
  %83 = load i32, i32* @out, align 4
  %84 = call i32 (i32, i32, i8*, ...) @fz_write_printf(i32 %82, i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %85

85:                                               ; preds = %73, %61
  br label %86

86:                                               ; preds = %85, %57
  ret void
}

declare dso_local i32* @pdf_resolve_indirect(i32, i32*) #1

declare dso_local i32 @pdf_to_num(i32, i32*) #1

declare dso_local i64 @pdf_is_stream(i32, i32*) #1

declare dso_local i32 @showstream(i32) #1

declare dso_local i32 @fz_write_printf(i32, i32, i8*, ...) #1

declare dso_local i32 @pdf_print_obj(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
