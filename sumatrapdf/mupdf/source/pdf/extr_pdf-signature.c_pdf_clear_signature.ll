; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-signature.c_pdf_clear_signature.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-signature.c_pdf_clear_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@F = common dso_local global i32 0, align 4
@PDF_ANNOT_IS_LOCKED = common dso_local global i32 0, align 4
@V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_clear_signature(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @F, align 4
  %14 = call i32 @PDF_NAME(i32 %13)
  %15 = call i32 @pdf_dict_get_int(i32* %8, i32 %12, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @PDF_ANNOT_IS_LOCKED, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @F, align 4
  %29 = call i32 @PDF_NAME(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @pdf_dict_put_int(i32* %23, i32 %27, i32 %29, i32 %30)
  br label %41

32:                                               ; preds = %3
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = bitcast i32* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @F, align 4
  %39 = call i32 @PDF_NAME(i32 %38)
  %40 = call i32 @pdf_dict_del(i32* %33, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %32, %22
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = bitcast i32* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @V, align 4
  %48 = call i32 @PDF_NAME(i32 %47)
  %49 = call i32 @pdf_dict_del(i32* %42, i32 %46, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @pdf_update_signature_appearance(i32* %50, i32* %51, i32* null, i32* null, i32* null)
  ret void
}

declare dso_local i32 @pdf_dict_get_int(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_put_int(i32*, i32, i32, i32) #1

declare dso_local i32 @pdf_dict_del(i32*, i32, i32) #1

declare dso_local i32 @pdf_update_signature_appearance(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
