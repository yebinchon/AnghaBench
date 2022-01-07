; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_smart_move_forward.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_smart_move_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@page_tex = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@scroll_y = common dso_local global i32 0, align 4
@canvas_h = common dso_local global i32 0, align 4
@scroll_x = common dso_local global i32 0, align 4
@canvas_w = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@currentpage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @smart_move_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smart_move_forward() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 0), align 4
  %5 = sdiv i32 %4, 20
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 1), align 4
  %7 = sdiv i32 %6, 20
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @scroll_y, align 4
  %9 = load i32, i32* @canvas_h, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 1), align 4
  %12 = load i32, i32* %2, align 4
  %13 = sub nsw i32 %11, %12
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %0
  %16 = load i32, i32* @scroll_x, align 4
  %17 = load i32, i32* @canvas_w, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 0), align 4
  %20 = load i32, i32* %1, align 4
  %21 = sub nsw i32 %19, %20
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load i32, i32* @ctx, align 4
  %25 = load i32, i32* @doc, align 4
  %26 = load i32, i32* @currentpage, align 4
  %27 = call i32 @fz_next_page(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @currentpage, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @eqloc(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  store i32 0, i32* @scroll_x, align 4
  store i32 0, i32* @scroll_y, align 4
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* @currentpage, align 4
  br label %34

34:                                               ; preds = %32, %23
  br label %41

35:                                               ; preds = %15
  store i32 0, i32* @scroll_y, align 4
  %36 = load i32, i32* @canvas_w, align 4
  %37 = mul nsw i32 %36, 9
  %38 = sdiv i32 %37, 10
  %39 = load i32, i32* @scroll_x, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* @scroll_x, align 4
  br label %41

41:                                               ; preds = %35, %34
  br label %48

42:                                               ; preds = %0
  %43 = load i32, i32* @canvas_h, align 4
  %44 = mul nsw i32 %43, 9
  %45 = sdiv i32 %44, 10
  %46 = load i32, i32* @scroll_y, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* @scroll_y, align 4
  br label %48

48:                                               ; preds = %42, %41
  ret void
}

declare dso_local i32 @fz_next_page(i32, i32, i32) #1

declare dso_local i32 @eqloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
