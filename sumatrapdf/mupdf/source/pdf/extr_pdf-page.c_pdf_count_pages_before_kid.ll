; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-page.c_pdf_count_pages_before_kid.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-page.c_pdf_count_pages_before_kid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Kids = common dso_local global i32 0, align 4
@Type = common dso_local global i32 0, align 4
@Pages = common dso_local global i32 0, align 4
@Count = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"illegal or missing count in pages tree\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"kid not found in parent's kids array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @pdf_count_pages_before_kid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdf_count_pages_before_kid(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @Kids, align 4
  %20 = call i32 @PDF_NAME(i32 %19)
  %21 = call i32* @pdf_dict_get(i32* %17, i32* %18, i32 %20)
  store i32* %21, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @pdf_array_len(i32* %22, i32* %23)
  store i32 %24, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %80, %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32* @pdf_array_get(i32* %30, i32* %31, i32 %32)
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @pdf_to_num(i32* %34, i32* %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %87

41:                                               ; preds = %29
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* @Type, align 4
  %46 = call i32 @PDF_NAME(i32 %45)
  %47 = call i32* @pdf_dict_get(i32* %43, i32* %44, i32 %46)
  %48 = load i32, i32* @Pages, align 4
  %49 = call i32 @PDF_NAME(i32 %48)
  %50 = call i64 @pdf_name_eq(i32* %42, i32* %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %41
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = load i32, i32* @Count, align 4
  %56 = call i32 @PDF_NAME(i32 %55)
  %57 = call i32* @pdf_dict_get(i32* %53, i32* %54, i32 %56)
  store i32* %57, i32** %15, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = call i32 @pdf_to_int(i32* %58, i32* %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @pdf_is_int(i32* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65, %52
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %71 = call i32 @fz_throw(i32* %69, i32 %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %12, align 4
  br label %79

76:                                               ; preds = %41
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %25

83:                                               ; preds = %25
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %86 = call i32 @fz_throw(i32* %84, i32 %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %39
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i32 @pdf_to_num(i32*, i32*) #1

declare dso_local i64 @pdf_name_eq(i32*, i32*, i32) #1

declare dso_local i32 @pdf_to_int(i32*, i32*) #1

declare dso_local i32 @pdf_is_int(i32*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
