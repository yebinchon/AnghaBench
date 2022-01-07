; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-link.c_pdf_parse_file_spec.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-link.c_pdf_parse_file_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Unix = common dso_local global i32 0, align 4
@UF = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot parse file specification\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"#page=%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"#%s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"file://%s%s\00", align 1
@DOS = common dso_local global i32 0, align 4
@FS = common dso_local global i32 0, align 4
@URL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pdf_parse_file_spec(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [256 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @pdf_is_string(i32* %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32*, i32** %8, align 8
  store i32* %19, i32** %10, align 8
  br label %20

20:                                               ; preds = %18, %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @pdf_is_dict(i32* %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @Unix, align 4
  %29 = call i32 @PDF_NAME(i32 %28)
  %30 = call i32* @pdf_dict_get(i32* %26, i32* %27, i32 %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @UF, align 4
  %37 = call i32 @PDF_NAME(i32 %36)
  %38 = load i32, i32* @F, align 4
  %39 = call i32 @PDF_NAME(i32 %38)
  %40 = call i32* @pdf_dict_geta(i32* %34, i32* %35, i32 %37, i32 %39)
  store i32* %40, i32** %10, align 8
  br label %41

41:                                               ; preds = %33, %25
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i64 @pdf_is_string(i32* %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @fz_warn(i32* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %101

50:                                               ; preds = %42
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @pdf_is_array(i32* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i64 @pdf_array_get_int(i32* %57, i32* %58, i32 0)
  %60 = add nsw i64 %59, 1
  %61 = call i32 @fz_snprintf(i8* %56, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  br label %88

62:                                               ; preds = %50
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @pdf_is_name(i32* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i64 @pdf_to_name(i32* %69, i32* %70)
  %72 = call i32 @fz_snprintf(i8* %68, i32 256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  br label %87

73:                                               ; preds = %62
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i64 @pdf_is_string(i32* %74, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i64 @pdf_to_str_buf(i32* %80, i32* %81)
  %83 = call i32 @fz_snprintf(i8* %79, i32 256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  br label %86

84:                                               ; preds = %73
  %85 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %85, align 16
  br label %86

86:                                               ; preds = %84, %78
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87, %55
  %89 = load i32*, i32** %6, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i8* @pdf_to_text_string(i32* %89, i32* %90)
  store i8* %91, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load i32*, i32** %6, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %98 = call i8* (i32*, i8*, ...) @fz_asprintf(i32* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %96, i8* %97)
  store i8* %98, i8** %12, align 8
  br label %99

99:                                               ; preds = %94, %88
  %100 = load i8*, i8** %12, align 8
  store i8* %100, i8** %5, align 8
  br label %101

101:                                              ; preds = %99, %47
  %102 = load i8*, i8** %5, align 8
  ret i8* %102
}

declare dso_local i64 @pdf_is_string(i32*, i32*) #1

declare dso_local i64 @pdf_is_dict(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_dict_geta(i32*, i32*, i32, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @pdf_array_get_int(i32*, i32*, i32) #1

declare dso_local i64 @pdf_is_name(i32*, i32*) #1

declare dso_local i64 @pdf_to_name(i32*, i32*) #1

declare dso_local i64 @pdf_to_str_buf(i32*, i32*) #1

declare dso_local i8* @pdf_to_text_string(i32*, i32*) #1

declare dso_local i8* @fz_asprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
