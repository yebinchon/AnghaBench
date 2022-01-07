; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-page.c_pdf_insert_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-page.c_pdf_insert_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cannot insert page beyond end of page tree\00", align 1
@Root = common dso_local global i32 0, align 4
@Pages = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot find page tree\00", align 1
@Kids = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"malformed page tree\00", align 1
@Parent = common dso_local global i32 0, align 4
@Count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_insert_page(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @pdf_count_pages(i32* %14, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @INT_MAX, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %34 = call i32 @fz_throw(i32* %32, i32 %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32* @pdf_trailer(i32* %40, i32* %41)
  %43 = load i32, i32* @Root, align 4
  %44 = call i32 @PDF_NAME(i32 %43)
  %45 = call i32* @pdf_dict_get(i32* %39, i32* %42, i32 %44)
  store i32* %45, i32** %13, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* @Pages, align 4
  %49 = call i32 @PDF_NAME(i32 %48)
  %50 = call i32* @pdf_dict_get(i32* %46, i32* %47, i32 %49)
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %38
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %56 = call i32 @fz_throw(i32* %54, i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %38
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @Kids, align 4
  %61 = call i32 @PDF_NAME(i32 %60)
  %62 = call i32* @pdf_dict_get(i32* %58, i32* %59, i32 %61)
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %57
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %68 = call i32 @fz_throw(i32* %66, i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %57
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @pdf_array_insert(i32* %70, i32* %71, i32* %72, i32 0)
  br label %111

74:                                               ; preds = %35
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load i32*, i32** %5, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 1
  %83 = call i32 @pdf_lookup_page_loc(i32* %79, i32* %80, i32 %82, i32** %10, i32* %12)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* @Kids, align 4
  %87 = call i32 @PDF_NAME(i32 %86)
  %88 = call i32* @pdf_dict_get(i32* %84, i32* %85, i32 %87)
  store i32* %88, i32** %11, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @pdf_array_insert(i32* %89, i32* %90, i32* %91, i32 %93)
  br label %110

95:                                               ; preds = %74
  %96 = load i32*, i32** %5, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @pdf_lookup_page_loc(i32* %96, i32* %97, i32 %98, i32** %10, i32* %12)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* @Kids, align 4
  %103 = call i32 @PDF_NAME(i32 %102)
  %104 = call i32* @pdf_dict_get(i32* %100, i32* %101, i32 %103)
  store i32* %104, i32** %11, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @pdf_array_insert(i32* %105, i32* %106, i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %95, %78
  br label %111

111:                                              ; preds = %110, %69
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* @Parent, align 4
  %115 = call i32 @PDF_NAME(i32 %114)
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @pdf_dict_put(i32* %112, i32* %113, i32 %115, i32* %116)
  br label %118

118:                                              ; preds = %121, %111
  %119 = load i32*, i32** %10, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %139

121:                                              ; preds = %118
  %122 = load i32*, i32** %5, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* @Count, align 4
  %125 = call i32 @PDF_NAME(i32 %124)
  %126 = call i32 @pdf_dict_get_int(i32* %122, i32* %123, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* @Count, align 4
  %130 = call i32 @PDF_NAME(i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  %133 = call i32 @pdf_dict_put_int(i32* %127, i32* %128, i32 %130, i32 %132)
  %134 = load i32*, i32** %5, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* @Parent, align 4
  %137 = call i32 @PDF_NAME(i32 %136)
  %138 = call i32* @pdf_dict_get(i32* %134, i32* %135, i32 %137)
  store i32* %138, i32** %10, align 8
  br label %118

139:                                              ; preds = %118
  ret void
}

declare dso_local i32 @pdf_count_pages(i32*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32* @pdf_trailer(i32*, i32*) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_array_insert(i32*, i32*, i32*, i32) #1

declare dso_local i32 @pdf_lookup_page_loc(i32*, i32*, i32, i32**, i32*) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pdf_dict_get_int(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put_int(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
