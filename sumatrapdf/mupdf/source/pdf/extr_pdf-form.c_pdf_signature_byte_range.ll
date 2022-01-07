; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_signature_byte_range.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_pdf_signature_byte_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@V = common dso_local global i32 0, align 4
@ByteRange = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"offset of signature byte range outside of file\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"length of signature byte range negative\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"signature byte range extends past end of file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdf_signature_byte_range(i32* %0, %struct.TYPE_5__* %1, i32* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @V, align 4
  %17 = call i32 @PDF_NAME(i32 %16)
  %18 = load i32, i32* @ByteRange, align 4
  %19 = call i32 @PDF_NAME(i32 %18)
  %20 = call i32* @pdf_dict_getl(i32* %14, i32* %15, i32 %17, i32 %19, i32* null)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @pdf_array_len(i32* %21, i32* %22)
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %94

27:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %90, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %93

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 2, %35
  %37 = call i32 @pdf_array_get_int(i32* %33, i32* %34, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 2, %40
  %42 = add nsw i32 %41, 1
  %43 = call i32 @pdf_array_get_int(i32* %38, i32* %39, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46, %32
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %55 = call i32 @fz_throw(i32* %53, i32 %54, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %77

56:                                               ; preds = %46
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %62 = call i32 @fz_throw(i32* %60, i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %76

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %74 = call i32 @fz_throw(i32* %72, i32 %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %63
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %52
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 4
  br label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %28

93:                                               ; preds = %28
  br label %94

94:                                               ; preds = %93, %4
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local i32* @pdf_dict_getl(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32 @pdf_array_get_int(i32*, i32*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
