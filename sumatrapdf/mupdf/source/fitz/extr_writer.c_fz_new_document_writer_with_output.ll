; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_writer.c_fz_new_document_writer_with_output.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_writer.c_fz_new_document_writer_with_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"cbz\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pcl\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pclm\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pwg\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"xhtml\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"stext\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"unknown output document format: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fz_new_document_writer_with_output(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = call i32 @fz_strcasecmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32* @fz_new_cbz_writer_with_output(i32* %14, i32* %15, i8* %16)
  store i32* %17, i32** %5, align 8
  br label %102

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @fz_strcasecmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32* @fz_new_pcl_writer_with_output(i32* %23, i32* %24, i8* %25)
  store i32* %26, i32** %5, align 8
  br label %102

27:                                               ; preds = %18
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @fz_strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32* @fz_new_pclm_writer_with_output(i32* %32, i32* %33, i8* %34)
  store i32* %35, i32** %5, align 8
  br label %102

36:                                               ; preds = %27
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @fz_strcasecmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32* @fz_new_ps_writer_with_output(i32* %41, i32* %42, i8* %43)
  store i32* %44, i32** %5, align 8
  br label %102

45:                                               ; preds = %36
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @fz_strcasecmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32* @fz_new_pwg_writer_with_output(i32* %50, i32* %51, i8* %52)
  store i32* %53, i32** %5, align 8
  br label %102

54:                                               ; preds = %45
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @fz_strcasecmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @fz_strcasecmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58, %54
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32* @fz_new_text_writer_with_output(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %64, i8* %65)
  store i32* %66, i32** %5, align 8
  br label %102

67:                                               ; preds = %58
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @fz_strcasecmp(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %6, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32* @fz_new_text_writer_with_output(i32* %72, i8* %73, i32* %74, i8* %75)
  store i32* %76, i32** %5, align 8
  br label %102

77:                                               ; preds = %67
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @fz_strcasecmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %6, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i32* @fz_new_text_writer_with_output(i32* %82, i8* %83, i32* %84, i8* %85)
  store i32* %86, i32** %5, align 8
  br label %102

87:                                               ; preds = %77
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @fz_strcasecmp(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %6, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i32* @fz_new_text_writer_with_output(i32* %92, i8* %93, i32* %94, i8* %95)
  store i32* %96, i32** %5, align 8
  br label %102

97:                                               ; preds = %87
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @fz_throw(i32* %98, i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %97, %91, %81, %71, %62, %49, %40, %31, %22, %13
  %103 = load i32*, i32** %5, align 8
  ret i32* %103
}

declare dso_local i32 @fz_strcasecmp(i8*, i8*) #1

declare dso_local i32* @fz_new_cbz_writer_with_output(i32*, i32*, i8*) #1

declare dso_local i32* @fz_new_pcl_writer_with_output(i32*, i32*, i8*) #1

declare dso_local i32* @fz_new_pclm_writer_with_output(i32*, i32*, i8*) #1

declare dso_local i32* @fz_new_ps_writer_with_output(i32*, i32*, i8*) #1

declare dso_local i32* @fz_new_pwg_writer_with_output(i32*, i32*, i8*) #1

declare dso_local i32* @fz_new_text_writer_with_output(i32*, i8*, i32*, i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
