; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_execute_action_imp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_execute_action_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@JavaScript = common dso_local global i32 0, align 4
@JS = common dso_local global i32 0, align 4
@ResetForm = common dso_local global i32 0, align 4
@Fields = common dso_local global i32 0, align 4
@Flags = common dso_local global i32 0, align 4
@S = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32*, i8*, i32*)* @pdf_execute_action_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_execute_action_imp(i32* %0, %struct.TYPE_5__* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = ptrtoint i32* %16 to i32
  %18 = call i32 @PDF_NAME(i32 %17)
  %19 = call i32* @pdf_dict_get(i32* %14, i32* %15, i32 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* @JavaScript, align 4
  %23 = call i32 @PDF_NAME(i32 %22)
  %24 = call i64 @pdf_name_eq(i32* %20, i32* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %5
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* @JS, align 4
  %39 = call i32 @PDF_NAME(i32 %38)
  %40 = call i32* @pdf_dict_get(i32* %36, i32* %37, i32 %39)
  %41 = call i32 @pdf_execute_js_action(i32* %32, %struct.TYPE_5__* %33, i32* %34, i8* %35, i32* %40)
  br label %42

42:                                               ; preds = %31, %26
  br label %43

43:                                               ; preds = %42, %5
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* @ResetForm, align 4
  %47 = call i32 @PDF_NAME(i32 %46)
  %48 = call i64 @pdf_name_eq(i32* %44, i32* %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* @Fields, align 4
  %54 = call i32 @PDF_NAME(i32 %53)
  %55 = call i32* @pdf_dict_get(i32* %51, i32* %52, i32 %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* @Flags, align 4
  %59 = call i32 @PDF_NAME(i32 %58)
  %60 = call i32 @pdf_dict_get_int(i32* %56, i32* %57, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, 1
  %66 = call i32 @pdf_reset_form(i32* %61, %struct.TYPE_5__* %62, i32* %63, i32 %65)
  br label %67

67:                                               ; preds = %50, %43
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i64 @pdf_name_eq(i32*, i32*, i32) #1

declare dso_local i32 @pdf_execute_js_action(i32*, %struct.TYPE_5__*, i32*, i8*, i32*) #1

declare dso_local i32 @pdf_dict_get_int(i32*, i32*, i32) #1

declare dso_local i32 @pdf_reset_form(i32*, %struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
