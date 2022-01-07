; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_adjust_charheight.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_adjust_charheight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PANGO_SCALE = common dso_local global i32 0, align 4
@p_linespace = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_adjust_charheight() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 2), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 3), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 2), align 4
  %7 = call i32 @pango_context_get_language(i32 %6)
  %8 = call i32* @pango_context_get_metrics(i32 %4, i32 %5, i32 %7)
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @pango_font_metrics_get_ascent(i32* %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @pango_font_metrics_get_descent(i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @pango_font_metrics_unref(i32* %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @PANGO_SCALE, align 4
  %19 = add nsw i32 %17, %18
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @PANGO_SCALE, align 4
  %22 = sdiv i32 %20, %21
  %23 = load i32, i32* @p_linespace, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @p_linespace, align 4
  %27 = load i32, i32* @PANGO_SCALE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %25, %29
  %31 = call i32 @PANGO_PIXELS(i32 %30)
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %33 = call i8* @MAX(i32 %32, i32 0)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 1), align 4
  %37 = add nsw i32 %36, 1
  %38 = call i8* @MAX(i32 %35, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gui, i32 0, i32 0), align 4
  %40 = load i32, i32* @OK, align 4
  ret i32 %40
}

declare dso_local i32* @pango_context_get_metrics(i32, i32, i32) #1

declare dso_local i32 @pango_context_get_language(i32) #1

declare dso_local i32 @pango_font_metrics_get_ascent(i32*) #1

declare dso_local i32 @pango_font_metrics_get_descent(i32*) #1

declare dso_local i32 @pango_font_metrics_unref(i32*) #1

declare dso_local i32 @PANGO_PIXELS(i32) #1

declare dso_local i8* @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
