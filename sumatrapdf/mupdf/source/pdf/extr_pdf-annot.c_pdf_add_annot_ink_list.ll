; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_add_annot_ink_list.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-annot.c_pdf_add_annot_ink_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@InkList = common dso_local global i32 0, align 4
@ink_list_subtypes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_add_annot_ink_list(i32* %0, %struct.TYPE_9__* %1, i32 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = load i32, i32* @InkList, align 4
  %18 = call i32 @PDF_NAME(i32 %17)
  %19 = load i32, i32* @ink_list_subtypes, align 4
  %20 = call i32 @check_allowed_subtypes(i32* %15, %struct.TYPE_9__* %16, i32 %18, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pdf_page_transform(i32* %21, i32 %24, i32* null, i32* %9)
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @fz_invert_matrix(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @InkList, align 4
  %33 = call i32 @PDF_NAME(i32 %32)
  %34 = call i32* @pdf_dict_get(i32* %28, i32 %31, i32 %33)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @pdf_is_array(i32* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %4
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @InkList, align 4
  %45 = call i32 @PDF_NAME(i32 %44)
  %46 = call i32* @pdf_dict_put_array(i32* %40, i32 %43, i32 %45, i32 10)
  store i32* %46, i32** %11, align 8
  br label %47

47:                                               ; preds = %39, %4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 2
  %52 = call i32* @pdf_array_push_array(i32* %48, i32* %49, i32 %51)
  store i32* %52, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %77, %47
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %60
  %62 = load i32, i32* %10, align 4
  %63 = bitcast %struct.TYPE_10__* %61 to i64*
  %64 = load i64, i64* %63, align 4
  %65 = call i64 @fz_transform_point(i64 %64, i32 %62)
  %66 = bitcast %struct.TYPE_10__* %14 to i64*
  store i64 %65, i64* %66, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pdf_array_push_real(i32* %67, i32* %68, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pdf_array_push_real(i32* %72, i32* %73, i32 %75)
  br label %77

77:                                               ; preds = %57
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %53

80:                                               ; preds = %53
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = call i32 @pdf_dirty_annot(i32* %81, %struct.TYPE_9__* %82)
  ret void
}

declare dso_local i32 @check_allowed_subtypes(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_page_transform(i32*, i32, i32*, i32*) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local i32* @pdf_dict_get(i32*, i32, i32) #1

declare dso_local i32 @pdf_is_array(i32*, i32*) #1

declare dso_local i32* @pdf_dict_put_array(i32*, i32, i32, i32) #1

declare dso_local i32* @pdf_array_push_array(i32*, i32*, i32) #1

declare dso_local i64 @fz_transform_point(i64, i32) #1

declare dso_local i32 @pdf_array_push_real(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dirty_annot(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
