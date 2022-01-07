; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_mudraw.c_file_level_trailers.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_mudraw.c_file_level_trailers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_format = common dso_local global i64 0, align 8
@OUT_STEXT = common dso_local global i64 0, align 8
@OUT_TRACE = common dso_local global i64 0, align 8
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"</document>\0A\00", align 1
@OUT_HTML = common dso_local global i64 0, align 8
@OUT_XHTML = common dso_local global i64 0, align 8
@OUT_PS = common dso_local global i64 0, align 8
@output_pagenum = common dso_local global i32 0, align 4
@OUT_PCLM = common dso_local global i64 0, align 8
@bander = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @file_level_trailers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_level_trailers(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @output_format, align 8
  %4 = load i64, i64* @OUT_STEXT, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @output_format, align 8
  %8 = load i64, i64* @OUT_TRACE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %1
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @out, align 4
  %13 = call i32 @fz_write_printf(i32* %11, i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %10, %6
  %15 = load i64, i64* @output_format, align 8
  %16 = load i64, i64* @OUT_HTML, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @out, align 4
  %21 = call i32 @fz_print_stext_trailer_as_html(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i64, i64* @output_format, align 8
  %24 = load i64, i64* @OUT_XHTML, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @out, align 4
  %29 = call i32 @fz_print_stext_trailer_as_xhtml(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i64, i64* @output_format, align 8
  %32 = load i64, i64* @OUT_PS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @out, align 4
  %37 = load i32, i32* @output_pagenum, align 4
  %38 = call i32 @fz_write_ps_file_trailer(i32* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i64, i64* @output_format, align 8
  %41 = load i64, i64* @OUT_PCLM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @bander, align 4
  %46 = call i32 @fz_drop_band_writer(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %39
  ret void
}

declare dso_local i32 @fz_write_printf(i32*, i32, i8*) #1

declare dso_local i32 @fz_print_stext_trailer_as_html(i32*, i32) #1

declare dso_local i32 @fz_print_stext_trailer_as_xhtml(i32*, i32) #1

declare dso_local i32 @fz_write_ps_file_trailer(i32*, i32, i32) #1

declare dso_local i32 @fz_drop_band_writer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
