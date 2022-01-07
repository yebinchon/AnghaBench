; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-output.c_fz_print_stext_header_as_xhtml.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_stext-output.c_fz_print_stext_header_as_xhtml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"<?xml version=\221.0\22?>\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<!DOCTYPE html\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c" PUBLIC \22-//W3C//DTD XHTML 1.0 Strict//EN\22\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c" \22http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\22>\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"<html xmlns=\22http://www.w3.org/1999/xhtml\22>\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"<head>\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"<style>\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"p{white-space:pre-wrap}\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"</style>\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"</head>\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"<body>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_print_stext_header_as_xhtml(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @fz_write_string(i32* %5, i32* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @fz_write_string(i32* %8, i32* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @fz_write_string(i32* %11, i32* %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @fz_write_string(i32* %14, i32* %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @fz_write_string(i32* %17, i32* %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @fz_write_string(i32* %20, i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @fz_write_string(i32* %23, i32* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fz_write_string(i32* %26, i32* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @fz_write_string(i32* %29, i32* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @fz_write_string(i32* %32, i32* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fz_write_string(i32* %35, i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fz_write_string(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
