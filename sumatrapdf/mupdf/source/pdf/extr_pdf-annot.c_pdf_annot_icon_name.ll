; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_icon_name.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_annot_icon_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@Name = common dso_local global i32 0, align 4
@icon_name_subtypes = common dso_local global i32 0, align 4
@Subtype = common dso_local global i32 0, align 4
@Text = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Note\00", align 1
@Stamp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Draft\00", align 1
@FileAttachment = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"PushPin\00", align 1
@Sound = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pdf_annot_icon_name(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = load i32, i32* @Name, align 4
  %11 = call i32 @PDF_NAME(i32 %10)
  %12 = load i32, i32* @icon_name_subtypes, align 4
  %13 = call i32 @check_allowed_subtypes(i32* %8, %struct.TYPE_4__* %9, i32 %11, i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @Name, align 4
  %19 = call i32 @PDF_NAME(i32 %18)
  %20 = call i32* @pdf_dict_get(i32* %14, i32 %17, i32 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %63, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @Subtype, align 4
  %29 = call i32 @PDF_NAME(i32 %28)
  %30 = call i32* @pdf_dict_get(i32* %24, i32 %27, i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @Text, align 4
  %34 = call i32 @PDF_NAME(i32 %33)
  %35 = call i64 @pdf_name_eq(i32* %31, i32* %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %67

38:                                               ; preds = %23
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @Stamp, align 4
  %42 = call i32 @PDF_NAME(i32 %41)
  %43 = call i64 @pdf_name_eq(i32* %39, i32* %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %67

46:                                               ; preds = %38
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @FileAttachment, align 4
  %50 = call i32 @PDF_NAME(i32 %49)
  %51 = call i64 @pdf_name_eq(i32* %47, i32* %48, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %67

54:                                               ; preds = %46
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @Sound, align 4
  %58 = call i32 @PDF_NAME(i32 %57)
  %59 = call i64 @pdf_name_eq(i32* %55, i32* %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %67

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i8* @pdf_to_name(i32* %64, i32* %65)
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %63, %61, %53, %45, %37
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i64 @pdf_name_eq(i32*, i32*, i32) #1

declare dso_local i8* @pdf_to_name(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
