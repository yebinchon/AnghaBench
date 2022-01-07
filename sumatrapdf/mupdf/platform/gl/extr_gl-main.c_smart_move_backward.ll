; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_smart_move_backward.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_smart_move_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@page_tex = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@scroll_y = common dso_local global i32 0, align 4
@scroll_x = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@currentpage = common dso_local global i32 0, align 4
@canvas_w = common dso_local global i32 0, align 4
@canvas_h = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @smart_move_backward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smart_move_backward() #0 {
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
  %9 = load i32, i32* %2, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %0
  %12 = load i32, i32* @scroll_x, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load i32, i32* @ctx, align 4
  %17 = load i32, i32* @doc, align 4
  %18 = load i32, i32* @currentpage, align 4
  %19 = call i32 @fz_previous_page(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @currentpage, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @eqloc(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 0), align 4
  %26 = load i32, i32* @canvas_w, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %33

29:                                               ; preds = %24
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 0), align 4
  %31 = load i32, i32* @canvas_w, align 4
  %32 = sub nsw i32 %30, %31
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i32 [ 0, %28 ], [ %32, %29 ]
  store i32 %34, i32* @scroll_x, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 1), align 4
  %36 = load i32, i32* @canvas_h, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %43

39:                                               ; preds = %33
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 1), align 4
  %41 = load i32, i32* @canvas_h, align 4
  %42 = sub nsw i32 %40, %41
  br label %43

43:                                               ; preds = %39, %38
  %44 = phi i32 [ 0, %38 ], [ %42, %39 ]
  store i32 %44, i32* @scroll_y, align 4
  %45 = load i32, i32* %3, align 4
  store i32 %45, i32* @currentpage, align 4
  br label %46

46:                                               ; preds = %43, %15
  br label %54

47:                                               ; preds = %11
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @page_tex, i32 0, i32 1), align 4
  store i32 %48, i32* @scroll_y, align 4
  %49 = load i32, i32* @canvas_w, align 4
  %50 = mul nsw i32 %49, 9
  %51 = sdiv i32 %50, 10
  %52 = load i32, i32* @scroll_x, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* @scroll_x, align 4
  br label %54

54:                                               ; preds = %47, %46
  br label %61

55:                                               ; preds = %0
  %56 = load i32, i32* @canvas_h, align 4
  %57 = mul nsw i32 %56, 9
  %58 = sdiv i32 %57, 10
  %59 = load i32, i32* @scroll_y, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* @scroll_y, align 4
  br label %61

61:                                               ; preds = %55, %54
  ret void
}

declare dso_local i32 @fz_previous_page(i32, i32, i32) #1

declare dso_local i32 @eqloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
