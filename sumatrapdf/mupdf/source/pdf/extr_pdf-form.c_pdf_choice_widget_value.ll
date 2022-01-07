; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_choice_widget_value.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_choice_widget_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_choice_widget_value(i32* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %8, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @V, align 4
  %24 = call i32 @PDF_NAME(i32 %23)
  %25 = call i32* @pdf_dict_get(i32* %19, i32 %22, i32 %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @pdf_is_string(i32* %26, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %18
  %31 = load i8**, i8*** %7, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i8* @pdf_to_text_string(i32* %34, i32* %35)
  %37 = load i8**, i8*** %7, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %33, %30
  store i32 1, i32* %4, align 4
  br label %78

40:                                               ; preds = %18
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @pdf_array_len(i32* %41, i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i8**, i8*** %7, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %46, label %76

46:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32* @pdf_array_get(i32* %52, i32* %53, i32 %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i64 @pdf_is_array(i32* %56, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32* @pdf_array_get(i32* %61, i32* %62, i32 1)
  store i32* %63, i32** %12, align 8
  br label %64

64:                                               ; preds = %60, %51
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i8* @pdf_to_text_string(i32* %65, i32* %66)
  %68 = load i8**, i8*** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  store i8* %67, i8** %71, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %47

75:                                               ; preds = %47
  br label %76

76:                                               ; preds = %75, %40
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %39, %17
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i64 @pdf_is_string(i32*, i32*) #1

declare dso_local i8* @pdf_to_text_string(i32*, i32*) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
