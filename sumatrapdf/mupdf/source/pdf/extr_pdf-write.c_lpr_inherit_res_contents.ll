; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_lpr_inherit_res_contents.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_lpr_inherit_res_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @lpr_inherit_res_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpr_inherit_res_contents(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @pdf_dict_get(i32* %15, i32* %16, i32* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %100

22:                                               ; preds = %4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @pdf_dict_get(i32* %23, i32* %24, i32* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32* @pdf_resolve_indirect(i32* %30, i32* %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @pdf_is_dict(i32* %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @pdf_copy_dict(i32* %38, i32* %39)
  store i32* %40, i32** %9, align 8
  br label %52

41:                                               ; preds = %29
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i64 @pdf_is_array(i32* %42, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32* @pdf_copy_array(i32* %47, i32* %48)
  store i32* %49, i32** %9, align 8
  br label %51

50:                                               ; preds = %41
  store i32* null, i32** %9, align 8
  br label %51

51:                                               ; preds = %50, %46
  br label %52

52:                                               ; preds = %51, %37
  %53 = load i32*, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @pdf_dict_put_drop(i32* %56, i32* %57, i32* %58, i32* %59)
  br label %61

61:                                               ; preds = %55, %52
  br label %100

62:                                               ; preds = %22
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @pdf_is_dict(i32* %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @pdf_dict_len(i32* %68, i32* %69)
  store i32 %70, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %96, %67
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %71
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32* @pdf_dict_get_key(i32* %76, i32* %77, i32 %78)
  store i32* %79, i32** %13, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32* @pdf_dict_get_val(i32* %80, i32* %81, i32 %82)
  store i32* %83, i32** %14, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = call i32* @pdf_dict_get(i32* %84, i32* %85, i32* %86)
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %96

90:                                               ; preds = %75
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @pdf_dict_put(i32* %91, i32* %92, i32* %93, i32* %94)
  br label %96

96:                                               ; preds = %90, %89
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %71

99:                                               ; preds = %71
  br label %100

100:                                              ; preds = %21, %61, %99, %62
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32*) #1

declare dso_local i32* @pdf_resolve_indirect(i32*, i32*) #1

declare dso_local i64 @pdf_is_dict(i32*, i32*) #1

declare dso_local i32* @pdf_copy_dict(i32*, i32*) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

declare dso_local i32* @pdf_copy_array(i32*, i32*) #1

declare dso_local i32 @pdf_dict_put_drop(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pdf_dict_len(i32*, i32*) #1

declare dso_local i32* @pdf_dict_get_key(i32*, i32*, i32) #1

declare dso_local i32* @pdf_dict_get_val(i32*, i32*, i32) #1

declare dso_local i32 @pdf_dict_put(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
