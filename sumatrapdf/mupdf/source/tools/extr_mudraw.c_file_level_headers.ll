; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_mudraw.c_file_level_headers.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_mudraw.c_file_level_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@output_format = common dso_local global i64 0, align 8
@OUT_STEXT = common dso_local global i64 0, align 8
@OUT_TRACE = common dso_local global i64 0, align 8
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"<?xml version=\221.0\22?>\0A\00", align 1
@OUT_HTML = common dso_local global i64 0, align 8
@OUT_XHTML = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"<document name=\22%s\22>\0A\00", align 1
@filename = common dso_local global i32 0, align 4
@OUT_PS = common dso_local global i64 0, align 8
@OUT_PWG = common dso_local global i64 0, align 8
@OUT_PCLM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"compression=flate\00", align 1
@bander = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @file_level_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_level_headers(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i64, i64* @output_format, align 8
  %5 = load i64, i64* @OUT_STEXT, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @output_format, align 8
  %9 = load i64, i64* @OUT_TRACE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @out, align 4
  %14 = call i32 (i32*, i32, i8*, ...) @fz_write_printf(i32* %12, i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %11, %7
  %16 = load i64, i64* @output_format, align 8
  %17 = load i64, i64* @OUT_HTML, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @out, align 4
  %22 = call i32 @fz_print_stext_header_as_html(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i64, i64* @output_format, align 8
  %25 = load i64, i64* @OUT_XHTML, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @out, align 4
  %30 = call i32 @fz_print_stext_header_as_xhtml(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i64, i64* @output_format, align 8
  %33 = load i64, i64* @OUT_STEXT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @output_format, align 8
  %37 = load i64, i64* @OUT_TRACE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %31
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @out, align 4
  %42 = load i32, i32* @filename, align 4
  %43 = call i32 (i32*, i32, i8*, ...) @fz_write_printf(i32* %40, i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i64, i64* @output_format, align 8
  %46 = load i64, i64* @OUT_PS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @out, align 4
  %51 = call i32 @fz_write_ps_file_header(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i64, i64* @output_format, align 8
  %54 = load i64, i64* @OUT_PWG, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* @out, align 4
  %59 = call i32 @fz_write_pwg_file_header(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i64, i64* @output_format, align 8
  %62 = load i64, i64* @OUT_PCLM, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %65, i8 0, i64 4, i1 false)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @fz_parse_pclm_options(i32* %66, %struct.TYPE_4__* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* @out, align 4
  %70 = call i32 @fz_new_pclm_band_writer(i32* %68, i32 %69, %struct.TYPE_4__* %3)
  store i32 %70, i32* @bander, align 4
  br label %71

71:                                               ; preds = %64, %60
  ret void
}

declare dso_local i32 @fz_write_printf(i32*, i32, i8*, ...) #1

declare dso_local i32 @fz_print_stext_header_as_html(i32*, i32) #1

declare dso_local i32 @fz_print_stext_header_as_xhtml(i32*, i32) #1

declare dso_local i32 @fz_write_ps_file_header(i32*, i32) #1

declare dso_local i32 @fz_write_pwg_file_header(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fz_parse_pclm_options(i32*, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @fz_new_pclm_band_writer(i32*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
