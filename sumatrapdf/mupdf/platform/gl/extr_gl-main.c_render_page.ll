; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_render_page.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_render_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@currentaa = common dso_local global i32 0, align 4
@fzpage = common dso_local global i32 0, align 4
@draw_page_ctm = common dso_local global i32 0, align 4
@seps = common dso_local global i32 0, align 4
@currentinvert = common dso_local global i64 0, align 8
@currenttint = common dso_local global i64 0, align 8
@tint_black = common dso_local global i32 0, align 4
@tint_white = common dso_local global i32 0, align 4
@page_tex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_page() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @transform_page()
  %3 = load i32, i32* @ctx, align 4
  %4 = load i32, i32* @currentaa, align 4
  %5 = call i32 @fz_set_aa_level(i32 %3, i32 %4)
  %6 = load i32, i32* @ctx, align 4
  %7 = load i32, i32* @fzpage, align 4
  %8 = load i32, i32* @draw_page_ctm, align 4
  %9 = load i32, i32* @ctx, align 4
  %10 = call i32 @fz_device_rgb(i32 %9)
  %11 = load i32, i32* @seps, align 4
  %12 = call i32* @fz_new_pixmap_from_page_with_separations(i32 %6, i32 %7, i32 %8, i32 %10, i32 %11, i32 0)
  store i32* %12, i32** %1, align 8
  %13 = load i64, i64* @currentinvert, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %0
  %16 = load i32, i32* @ctx, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @fz_invert_pixmap_luminance(i32 %16, i32* %17)
  %19 = load i32, i32* @ctx, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @fz_gamma_pixmap(i32 %19, i32* %20, i32 0)
  br label %22

22:                                               ; preds = %15, %0
  %23 = load i64, i64* @currenttint, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* @ctx, align 4
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* @tint_black, align 4
  %29 = load i32, i32* @tint_white, align 4
  %30 = call i32 @fz_tint_pixmap(i32 %26, i32* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @ui_texture_from_pixmap(i32* @page_tex, i32* %32)
  %34 = load i32, i32* @ctx, align 4
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @fz_drop_pixmap(i32 %34, i32* %35)
  ret void
}

declare dso_local i32 @transform_page(...) #1

declare dso_local i32 @fz_set_aa_level(i32, i32) #1

declare dso_local i32* @fz_new_pixmap_from_page_with_separations(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fz_device_rgb(i32) #1

declare dso_local i32 @fz_invert_pixmap_luminance(i32, i32*) #1

declare dso_local i32 @fz_gamma_pixmap(i32, i32*, i32) #1

declare dso_local i32 @fz_tint_pixmap(i32, i32*, i32, i32) #1

declare dso_local i32 @ui_texture_from_pixmap(i32*, i32*) #1

declare dso_local i32 @fz_drop_pixmap(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
