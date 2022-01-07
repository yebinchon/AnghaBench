; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_line_ending_styles.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_line_ending_styles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@LE = common dso_local global i32 0, align 4
@line_ending_subtypes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_set_annot_line_ending_styles(i32* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = load i32, i32* @LE, align 4
  %19 = call i32 @PDF_NAME(i32 %18)
  %20 = load i32, i32* @line_ending_subtypes, align 4
  %21 = call i32 @check_allowed_subtypes(i32* %16, %struct.TYPE_7__* %17, i32 %19, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32* @pdf_new_array(i32* %22, i32* %23, i32 2)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @LE, align 4
  %30 = call i32 @PDF_NAME(i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @pdf_dict_put_drop(i32* %25, i32 %28, i32 %30, i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @pdf_name_from_line_ending(i32* %35, i32 %36)
  %38 = call i32 @pdf_array_put_drop(i32* %33, i32* %34, i32 0, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @pdf_name_from_line_ending(i32* %41, i32 %42)
  %44 = call i32 @pdf_array_put_drop(i32* %39, i32* %40, i32 1, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = call i32 @pdf_dirty_annot(i32* %45, %struct.TYPE_7__* %46)
  ret void
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_new_array(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32, i32, i32*) #1

declare dso_local i32 @pdf_array_put_drop(i32*, i32*, i32, i32) #1

declare dso_local i32 @pdf_name_from_line_ending(i32*, i32) #1

declare dso_local i32 @pdf_dirty_annot(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
