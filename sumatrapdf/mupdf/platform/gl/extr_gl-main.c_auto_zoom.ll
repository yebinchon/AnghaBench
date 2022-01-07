; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_auto_zoom.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_auto_zoom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, i64 }

@page_tex = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@canvas_w = common dso_local global i64 0, align 8
@canvas_h = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @auto_zoom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auto_zoom() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 1), align 8
  %4 = sitofp i64 %3 to float
  %5 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 0), align 8
  %6 = fdiv float %4, %5
  store float %6, float* %1, align 4
  %7 = load i64, i64* @canvas_w, align 8
  %8 = sitofp i64 %7 to float
  %9 = load float, float* @canvas_h, align 4
  %10 = fdiv float %8, %9
  store float %10, float* %2, align 4
  %11 = load float, float* %1, align 4
  %12 = load float, float* %2, align 4
  %13 = fcmp ogt float %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 (...) @auto_zoom_w()
  br label %18

16:                                               ; preds = %0
  %17 = call i32 (...) @auto_zoom_h()
  br label %18

18:                                               ; preds = %16, %14
  ret void
}

declare dso_local i32 @auto_zoom_w(...) #1

declare dso_local i32 @auto_zoom_h(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
