; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_popup_item.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_popup_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }

@ui = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@UI_COLOR_TEXT_SEL_BG = common dso_local global i32 0, align 4
@UI_COLOR_TEXT_SEL_FG = common dso_local global i32 0, align 4
@UI_COLOR_TEXT_FG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_popup_item(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 2), align 4
  call void @ui_pack(%struct.TYPE_5__* sret %3, i32 0, i32 %4)
  %5 = call i64 @ui_mouse_inside(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 0), align 8
  %9 = load i32, i32* @UI_COLOR_TEXT_SEL_BG, align 4
  %10 = call i32 @glColorHex(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @glRectf(i64 %12, i32 %14, i32 %16, i32 %18)
  %20 = load i32, i32* @UI_COLOR_TEXT_SEL_FG, align 4
  %21 = call i32 @glColorHex(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @ui_draw_string(i64 %24, i32 %26, i8* %27)
  br label %39

29:                                               ; preds = %1
  %30 = load i32, i32* @UI_COLOR_TEXT_FG, align 4
  %31 = call i32 @glColorHex(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @ui_draw_string(i64 %34, i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %29, %7
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 0), align 8
  %41 = load i8*, i8** %2, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 1), align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local void @ui_pack(%struct.TYPE_5__* sret, i32, i32) #1

declare dso_local i64 @ui_mouse_inside(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

declare dso_local i32 @glColorHex(i32) #1

declare dso_local i32 @glRectf(i64, i32, i32, i32) #1

declare dso_local i32 @ui_draw_string(i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
