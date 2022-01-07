; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_draw_ibevel_rect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_draw_ibevel_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_draw_ibevel_rect(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %1, i32* %4, align 4
  store i32 %2, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ui_draw_ibevel(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %0, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @glColorHex(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %0, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, 2
  %22 = call i32 @glRectf(i64 %12, i64 %15, i64 %18, i64 %21)
  ret void
}

declare dso_local i32 @ui_draw_ibevel(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8, i32) #1

declare dso_local i32 @glColorHex(i32) #1

declare dso_local i32 @glRectf(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
