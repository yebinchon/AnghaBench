; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_find_head_of_field_group.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-form.c_find_head_of_field_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T = common dso_local global i32 0, align 4
@Parent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @find_head_of_field_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_head_of_field_group(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @T, align 4
  %12 = call i32 @PDF_NAME(i32 %11)
  %13 = call i32* @pdf_dict_get(i32* %9, i32* %10, i32 %12)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %8, %2
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %3, align 8
  br label %25

17:                                               ; preds = %8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @Parent, align 4
  %22 = call i32 @PDF_NAME(i32 %21)
  %23 = call i32* @pdf_dict_get(i32* %19, i32* %20, i32 %22)
  %24 = call i32* @find_head_of_field_group(i32* %18, i32* %23)
  store i32* %24, i32** %3, align 8
  br label %25

25:                                               ; preds = %17, %15
  %26 = load i32*, i32** %3, align 8
  ret i32* %26
}

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
