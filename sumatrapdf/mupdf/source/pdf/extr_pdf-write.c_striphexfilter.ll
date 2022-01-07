; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_striphexfilter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_striphexfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Filter = common dso_local global i32 0, align 4
@DecodeParms = common dso_local global i32 0, align 4
@ASCIIHexDecode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @striphexfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @striphexfilter(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @Filter, align 4
  %13 = call i32* @PDF_NAME(i32 %12)
  %14 = call i32* @pdf_dict_get(i32* %10, i32* %11, i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @DecodeParms, align 4
  %18 = call i32* @PDF_NAME(i32 %17)
  %19 = call i32* @pdf_dict_get(i32* %15, i32* %16, i32* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @pdf_is_array(i32* %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %90

24:                                               ; preds = %3
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @pdf_array_get(i32* %25, i32* %26, i32 0)
  %28 = load i32, i32* @ASCIIHexDecode, align 4
  %29 = call i32* @PDF_NAME(i32 %28)
  %30 = icmp eq i32* %27, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @pdf_array_delete(i32* %32, i32* %33, i32 0)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @pdf_is_array(i32* %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @pdf_array_delete(i32* %40, i32* %41, i32 0)
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @pdf_array_len(i32* %45, i32* %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32* @pdf_array_get(i32* %50, i32* %51, i32 0)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @Filter, align 4
  %56 = call i32* @PDF_NAME(i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @pdf_dict_put(i32* %53, i32* %54, i32* %56, i32* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %49
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32* @pdf_array_get(i32* %62, i32* %63, i32 0)
  store i32* %64, i32** %8, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @DecodeParms, align 4
  %68 = call i32* @PDF_NAME(i32 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @pdf_dict_put(i32* %65, i32* %66, i32* %68, i32* %69)
  br label %71

71:                                               ; preds = %61, %49
  br label %89

72:                                               ; preds = %44
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @pdf_array_len(i32* %73, i32* %74)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @Filter, align 4
  %81 = call i32* @PDF_NAME(i32 %80)
  %82 = call i32 @pdf_dict_del(i32* %78, i32* %79, i32* %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @DecodeParms, align 4
  %86 = call i32* @PDF_NAME(i32 %85)
  %87 = call i32 @pdf_dict_del(i32* %83, i32* %84, i32* %86)
  br label %88

88:                                               ; preds = %77, %72
  br label %89

89:                                               ; preds = %88, %71
  br label %107

90:                                               ; preds = %3
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* @ASCIIHexDecode, align 4
  %93 = call i32* @PDF_NAME(i32 %92)
  %94 = icmp eq i32* %91, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  store i32 1, i32* %9, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @Filter, align 4
  %99 = call i32* @PDF_NAME(i32 %98)
  %100 = call i32 @pdf_dict_del(i32* %96, i32* %97, i32* %99)
  %101 = load i32*, i32** %4, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* @DecodeParms, align 4
  %104 = call i32* @PDF_NAME(i32 %103)
  %105 = call i32 @pdf_dict_del(i32* %101, i32* %102, i32* %104)
  br label %106

106:                                              ; preds = %95, %90
  br label %107

107:                                              ; preds = %106, %89
  %108 = load i32, i32* %9, align 4
  ret i32 %108
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32*) #1

declare dso_local i32* @PDF_NAME(i32) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i32 @pdf_array_delete(i32*, i32*, i32) #1

declare dso_local i32 @pdf_array_len(i32*, i32*) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pdf_dict_del(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
