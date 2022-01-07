; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_reset_form_field.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_reset_form_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DV = common dso_local global i32 0, align 4
@Kids = common dso_local global i32 0, align 4
@V = common dso_local global i32 0, align 4
@Off = common dso_local global i32 0, align 4
@AS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32*)* @reset_form_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_form_field(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @DV, align 4
  %13 = call i32* @PDF_NAME(i32 %12)
  %14 = call i32* @pdf_dict_get(i32* %10, i32* %11, i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @Kids, align 4
  %18 = call i32* @PDF_NAME(i32 %17)
  %19 = call i32* @pdf_dict_get(i32* %15, i32* %16, i32* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @V, align 4
  %26 = call i32* @PDF_NAME(i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @pdf_dict_put(i32* %23, i32* %24, i32* %26, i32* %27)
  br label %35

29:                                               ; preds = %3
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @V, align 4
  %33 = call i32* @PDF_NAME(i32 %32)
  %34 = call i32 @pdf_dict_del(i32* %30, i32* %31, i32* %33)
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i32*, i32** %8, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @pdf_field_type(i32* %39, i32* %40)
  switch i32 %41, label %64 [
    i32 130, label %42
    i32 129, label %42
    i32 131, label %63
    i32 128, label %63
  ]

42:                                               ; preds = %38, %38
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @V, align 4
  %46 = call i32* @PDF_NAME(i32 %45)
  %47 = call i32* @pdf_dict_get_inheritable(i32* %43, i32* %44, i32* %46)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @Off, align 4
  %52 = call i32* @PDF_NAME(i32 %51)
  store i32* %52, i32** %9, align 8
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @AS, align 4
  %57 = call i32* @PDF_NAME(i32 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @pdf_dict_put(i32* %54, i32* %55, i32* %57, i32* %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @pdf_field_mark_dirty(i32* %60, i32* %61)
  br label %68

63:                                               ; preds = %38, %38
  br label %68

64:                                               ; preds = %38
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @pdf_field_mark_dirty(i32* %65, i32* %66)
  br label %68

68:                                               ; preds = %64, %63, %53
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i64 @pdf_field_dirties_document(i32* %70, %struct.TYPE_4__* %71, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %69
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pdf_dict_del(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_field_type(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get_inheritable(i32*, i32*, i32*) #1

declare dso_local i32 @pdf_field_mark_dirty(i32*, i32*) #1

declare dso_local i64 @pdf_field_dirties_document(i32*, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
