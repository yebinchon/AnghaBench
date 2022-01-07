; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_border.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_set_annot_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@BS = common dso_local global i32 0, align 4
@W = common dso_local global i32 0, align 4
@Border = common dso_local global i32 0, align 4
@BE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_set_annot_border(i32* %0, %struct.TYPE_4__* %1, float %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store float %2, float* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BS, align 4
  %13 = call i32 @PDF_NAME(i32 %12)
  %14 = call i32* @pdf_dict_get(i32* %8, i32 %11, i32 %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @pdf_is_dict(i32* %15, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BS, align 4
  %25 = call i32 @PDF_NAME(i32 %24)
  %26 = call i32* @pdf_dict_put_dict(i32* %20, i32 %23, i32 %25, i32 1)
  store i32* %26, i32** %7, align 8
  br label %27

27:                                               ; preds = %19, %3
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @W, align 4
  %31 = call i32 @PDF_NAME(i32 %30)
  %32 = load float, float* %6, align 4
  %33 = call i32 @pdf_dict_put_real(i32* %28, i32* %29, i32 %31, float %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @Border, align 4
  %39 = call i32 @PDF_NAME(i32 %38)
  %40 = call i32 @pdf_dict_del(i32* %34, i32 %37, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BE, align 4
  %46 = call i32 @PDF_NAME(i32 %45)
  %47 = call i32 @pdf_dict_del(i32* %41, i32 %44, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = call i32 @pdf_dirty_annot(i32* %48, %struct.TYPE_4__* %49)
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_is_dict(i32*, i32*) #1

declare dso_local i32* @pdf_dict_put_dict(i32*, i32, i32, i32) #1

declare dso_local i32 @pdf_dict_put_real(i32*, i32*, i32, float) #1

declare dso_local i32 @pdf_dict_del(i32*, i32, i32) #1

declare dso_local i32 @pdf_dirty_annot(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
