; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_new_annot.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_new_annot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@page = common dso_local global i32 0, align 4
@selected_annot = common dso_local global i32 0, align 4
@is_draw_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @new_annot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_annot(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @ctx, align 4
  %4 = load i32, i32* @page, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @pdf_create_annot(i32 %3, i32 %4, i32 %5)
  store i32 %6, i32* @selected_annot, align 4
  %7 = load i32, i32* @ctx, align 4
  %8 = load i32, i32* @selected_annot, align 4
  %9 = call i32 @time(i32* null)
  %10 = call i32 @pdf_set_annot_modification_date(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @ctx, align 4
  %12 = load i32, i32* @selected_annot, align 4
  %13 = call i64 @pdf_annot_has_author(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @ctx, align 4
  %17 = load i32, i32* @selected_annot, align 4
  %18 = call i32 (...) @getuser()
  %19 = call i32 @pdf_set_annot_author(i32 %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* @ctx, align 4
  %22 = load i32, i32* @selected_annot, align 4
  %23 = call i32 @pdf_update_appearance(i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  switch i32 %24, label %26 [
    i32 134, label %25
    i32 133, label %25
    i32 132, label %25
    i32 135, label %25
    i32 128, label %25
    i32 129, label %25
    i32 130, label %25
    i32 131, label %25
  ]

25:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  store i32 1, i32* @is_draw_mode, align 4
  br label %26

26:                                               ; preds = %20, %25
  %27 = call i32 (...) @render_page()
  ret void
}

declare dso_local i32 @pdf_create_annot(i32, i32, i32) #1

declare dso_local i32 @pdf_set_annot_modification_date(i32, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @pdf_annot_has_author(i32, i32) #1

declare dso_local i32 @pdf_set_annot_author(i32, i32, i32) #1

declare dso_local i32 @getuser(...) #1

declare dso_local i32 @pdf_update_appearance(i32, i32) #1

declare dso_local i32 @render_page(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
