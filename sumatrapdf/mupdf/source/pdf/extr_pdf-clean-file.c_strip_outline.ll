; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean-file.c_strip_outline.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-clean-file.c_strip_outline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Next = common dso_local global i32 0, align 4
@Prev = common dso_local global i32 0, align 4
@Dest = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32*, i32*, i32**, i32**)* @strip_outline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strip_outline(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5, i32** %6, i32** %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32** %6, i32*** %15, align 8
  store i32** %7, i32*** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %20, align 4
  %23 = load i32*, i32** %11, align 8
  store i32* %23, i32** %19, align 8
  br label %24

24:                                               ; preds = %119, %8
  %25 = load i32*, i32** %19, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %120

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %19, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @strip_outlines(i32* %28, i32* %29, i32* %30, i32 %31, i32* %32, i32* %33)
  store i32 %34, i32* %21, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %19, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @dest_is_valid(i32* %35, i32* %36, i32 %37, i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %105, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* %21, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %88

45:                                               ; preds = %42
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = load i32, i32* @Next, align 4
  %49 = call i32 @PDF_NAME(i32 %48)
  %50 = call i32* @pdf_dict_get(i32* %46, i32* %47, i32 %49)
  store i32* %50, i32** %22, align 8
  %51 = load i32*, i32** %22, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %45
  %54 = load i32*, i32** %17, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load i32, i32* @Next, align 4
  %60 = call i32 @PDF_NAME(i32 %59)
  %61 = call i32 @pdf_dict_del(i32* %57, i32* %58, i32 %60)
  br label %62

62:                                               ; preds = %56, %53
  br label %86

63:                                               ; preds = %45
  %64 = load i32*, i32** %17, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = load i32, i32* @Next, align 4
  %70 = call i32 @PDF_NAME(i32 %69)
  %71 = load i32*, i32** %22, align 8
  %72 = call i32 @pdf_dict_put(i32* %67, i32* %68, i32 %70, i32* %71)
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %22, align 8
  %75 = load i32, i32* @Prev, align 4
  %76 = call i32 @PDF_NAME(i32 %75)
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @pdf_dict_put(i32* %73, i32* %74, i32 %76, i32* %77)
  br label %85

79:                                               ; preds = %63
  %80 = load i32*, i32** %9, align 8
  %81 = load i32*, i32** %22, align 8
  %82 = load i32, i32* @Prev, align 4
  %83 = call i32 @PDF_NAME(i32 %82)
  %84 = call i32 @pdf_dict_del(i32* %80, i32* %81, i32 %83)
  br label %85

85:                                               ; preds = %79, %66
  br label %86

86:                                               ; preds = %85, %62
  %87 = load i32*, i32** %22, align 8
  store i32* %87, i32** %19, align 8
  br label %104

88:                                               ; preds = %42
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = load i32, i32* @Dest, align 4
  %92 = call i32 @PDF_NAME(i32 %91)
  %93 = call i32 @pdf_dict_del(i32* %89, i32* %90, i32 %92)
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %19, align 8
  %96 = load i32, i32* @A, align 4
  %97 = call i32 @PDF_NAME(i32 %96)
  %98 = call i32 @pdf_dict_del(i32* %94, i32* %95, i32 %97)
  %99 = load i32*, i32** %9, align 8
  %100 = load i32*, i32** %19, align 8
  %101 = load i32, i32* @Next, align 4
  %102 = call i32 @PDF_NAME(i32 %101)
  %103 = call i32* @pdf_dict_get(i32* %99, i32* %100, i32 %102)
  store i32* %103, i32** %19, align 8
  br label %104

104:                                              ; preds = %88, %86
  br label %119

105:                                              ; preds = %27
  %106 = load i32*, i32** %18, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32*, i32** %19, align 8
  store i32* %109, i32** %18, align 8
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i32*, i32** %19, align 8
  store i32* %111, i32** %17, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32*, i32** %19, align 8
  %114 = load i32, i32* @Next, align 4
  %115 = call i32 @PDF_NAME(i32 %114)
  %116 = call i32* @pdf_dict_get(i32* %112, i32* %113, i32 %115)
  store i32* %116, i32** %19, align 8
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %20, align 4
  br label %119

119:                                              ; preds = %110, %104
  br label %24

120:                                              ; preds = %24
  %121 = load i32*, i32** %18, align 8
  %122 = load i32**, i32*** %15, align 8
  store i32* %121, i32** %122, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = load i32**, i32*** %16, align 8
  store i32* %123, i32** %124, align 8
  %125 = load i32, i32* %20, align 4
  ret i32 %125
}

declare dso_local i32 @strip_outlines(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @dest_is_valid(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @pdf_dict_del(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
