; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_lpr_inherit_res.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_lpr_inherit_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Parent = common dso_local global i32 0, align 4
@Resources = common dso_local global i32 0, align 4
@ExtGState = common dso_local global i32 0, align 4
@ColorSpace = common dso_local global i32 0, align 4
@Pattern = common dso_local global i32 0, align 4
@Shading = common dso_local global i32 0, align 4
@XObject = common dso_local global i32 0, align 4
@Font = common dso_local global i32 0, align 4
@ProcSet = common dso_local global i32 0, align 4
@Properties = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*)* @lpr_inherit_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpr_inherit_res(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  br label %10

10:                                               ; preds = %4, %81
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @Parent, align 4
  %14 = call i32 @PDF_NAME(i32 %13)
  %15 = call i32* @pdf_dict_get(i32* %11, i32* %12, i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %10
  br label %82

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @Resources, align 4
  %28 = call i32 @PDF_NAME(i32 %27)
  %29 = call i32* @pdf_dict_get(i32* %25, i32* %26, i32 %28)
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %81

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @ExtGState, align 4
  %37 = call i32 @PDF_NAME(i32 %36)
  %38 = call i32 @lpr_inherit_res_contents(i32* %33, i32* %34, i32* %35, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* @ColorSpace, align 4
  %43 = call i32 @PDF_NAME(i32 %42)
  %44 = call i32 @lpr_inherit_res_contents(i32* %39, i32* %40, i32* %41, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @Pattern, align 4
  %49 = call i32 @PDF_NAME(i32 %48)
  %50 = call i32 @lpr_inherit_res_contents(i32* %45, i32* %46, i32* %47, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @Shading, align 4
  %55 = call i32 @PDF_NAME(i32 %54)
  %56 = call i32 @lpr_inherit_res_contents(i32* %51, i32* %52, i32* %53, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* @XObject, align 4
  %61 = call i32 @PDF_NAME(i32 %60)
  %62 = call i32 @lpr_inherit_res_contents(i32* %57, i32* %58, i32* %59, i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @Font, align 4
  %67 = call i32 @PDF_NAME(i32 %66)
  %68 = call i32 @lpr_inherit_res_contents(i32* %63, i32* %64, i32* %65, i32 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* @ProcSet, align 4
  %73 = call i32 @PDF_NAME(i32 %72)
  %74 = call i32 @lpr_inherit_res_contents(i32* %69, i32* %70, i32* %71, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* @Properties, align 4
  %79 = call i32 @PDF_NAME(i32 %78)
  %80 = call i32 @lpr_inherit_res_contents(i32* %75, i32* %76, i32* %77, i32 %79)
  br label %81

81:                                               ; preds = %32, %24
  br label %10

82:                                               ; preds = %23
  ret void
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32 @lpr_inherit_res_contents(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
