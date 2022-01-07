; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_pdfapp_usage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_pdfapp_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [923 x i8] c"[\09\09-- rotate left\0A]\09\09-- rotate right\0Ah left\09\09-- scroll left\0Aj down\09\09-- scroll down\0Ak up\09\09-- scroll up\0Al right\09\09-- scroll right\0A+\09\09-- zoom in\0A-\09\09-- zoom out\0AW\09\09-- zoom to fit window width\0AH\09\09-- zoom to fit window height\0AZ\09\09-- zoom to fit page\0Az\09\09-- reset zoom\0A<\09\09-- decrease font size (EPUB only)\0A>\09\09-- increase font size (EPUB only)\0Aw\09\09-- shrinkwrap\0Af\09\09-- fullscreen\0Ar\09\09-- reload file\0A. pgdn space\09-- next page\0A, pgup b\09-- previous page\0Am\09\09-- mark page for snap back\0At\09\09-- pop back to latest mark\0A1m\09\09-- mark page in register 1\0A1t\09\09-- go to page in register 1\0AG\09\09-- go to last page\0A123g\09\09-- go to page 123\0A/\09\09-- search forwards for text\0A?\09\09-- search backwards for text\0An\09\09-- find next search result\0AN\09\09-- find previous search result\0Ac\09\09-- toggle between color and grayscale\0AI\09\09-- toggle inverted color mode\0AC\09\09-- toggle tinted color mode\0AE\09\09-- enable/disable ICC color mode\0Ae\09\09-- enable/disable spot color mode\0Aq\09\09-- quit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pdfapp_usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  ret i8* getelementptr inbounds ([923 x i8], [923 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
