; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-shade.c_pdf_load_shading.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-shade.c_pdf_load_shading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fz_drop_shade_imp = common dso_local global i32 0, align 4
@PatternType = common dso_local global i32 0, align 4
@Matrix = common dso_local global i32 0, align 4
@ExtGState = common dso_local global i32 0, align 4
@CA = common dso_local global i32 0, align 4
@ca = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"shading with alpha not supported\00", align 1
@Shading = common dso_local global i32 0, align 4
@FZ_ERROR_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"missing shading dictionary\00", align 1
@fz_identity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pdf_load_shading(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @fz_drop_shade_imp, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @pdf_find_item(i32* %11, i32 %12, i32* %13)
  store i32* %14, i32** %10, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** %10, align 8
  store i32* %17, i32** %4, align 8
  br label %89

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @PatternType, align 4
  %22 = call i32 @PDF_NAME(i32 %21)
  %23 = call i32* @pdf_dict_get(i32* %19, i32* %20, i32 %22)
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @Matrix, align 4
  %29 = call i32 @PDF_NAME(i32 %28)
  %30 = call i32 @pdf_dict_get_matrix(i32* %26, i32* %27, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @ExtGState, align 4
  %34 = call i32 @PDF_NAME(i32 %33)
  %35 = call i32* @pdf_dict_get(i32* %31, i32* %32, i32 %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %25
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* @CA, align 4
  %42 = call i32 @PDF_NAME(i32 %41)
  %43 = call i32* @pdf_dict_get(i32* %39, i32* %40, i32 %42)
  %44 = icmp ne i32* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @ca, align 4
  %49 = call i32 @PDF_NAME(i32 %48)
  %50 = call i32* @pdf_dict_get(i32* %46, i32* %47, i32 %49)
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %45, %38
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @fz_warn(i32* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %45
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @Shading, align 4
  %60 = call i32 @PDF_NAME(i32 %59)
  %61 = call i32* @pdf_dict_get(i32* %57, i32* %58, i32 %60)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %67 = call i32 @fz_throw(i32* %65, i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32* @pdf_load_shading_dict(i32* %69, i32* %70, i32* %71, i32 %72)
  store i32* %73, i32** %10, align 8
  br label %80

74:                                               ; preds = %18
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* @fz_identity, align 4
  %79 = call i32* @pdf_load_shading_dict(i32* %75, i32* %76, i32* %77, i32 %78)
  store i32* %79, i32** %10, align 8
  br label %80

80:                                               ; preds = %74, %68
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @fz_shade_size(i32* %84, i32* %85)
  %87 = call i32 @pdf_store_item(i32* %81, i32* %82, i32* %83, i32 %86)
  %88 = load i32*, i32** %10, align 8
  store i32* %88, i32** %4, align 8
  br label %89

89:                                               ; preds = %80, %16
  %90 = load i32*, i32** %4, align 8
  ret i32* %90
}

declare dso_local i32* @pdf_find_item(i32*, i32, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_get_matrix(i32*, i32*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32* @pdf_load_shading_dict(i32*, i32*, i32*, i32) #1

declare dso_local i32 @pdf_store_item(i32*, i32*, i32*, i32) #1

declare dso_local i32 @fz_shade_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
