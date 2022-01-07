; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_splitter.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_splitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@ui_splitter.start_x = internal global i32 0, align 4
@ui = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GLUT_CURSOR_LEFT_RIGHT = common dso_local global i32 0, align 4
@L = common dso_local global i32 0, align 4
@UI_COLOR_BEVEL_4 = common dso_local global i32 0, align 4
@UI_COLOR_BEVEL_3 = common dso_local global i32 0, align 4
@UI_COLOR_PANEL = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@UI_COLOR_BEVEL_2 = common dso_local global i32 0, align 4
@UI_COLOR_BEVEL_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_splitter(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  call void @ui_pack(%struct.TYPE_5__* sret %9, i32 4, i32 0)
  %10 = call i64 @ui_mouse_inside(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 0), align 8
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 1), align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 5), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 1), align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* @ui_splitter.start_x, align 4
  br label %23

23:                                               ; preds = %19, %16, %12
  br label %24

24:                                               ; preds = %23, %4
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 1), align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* @ui_splitter.start_x, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 4), align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 3), align 8
  %33 = sub nsw i64 %31, %32
  %34 = add nsw i64 %30, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @fz_clampi(i64 %34, i32 %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %28, %24
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 0), align 8
  %41 = load i32*, i32** %5, align 8
  %42 = icmp eq i32* %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 1), align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @GLUT_CURSOR_LEFT_RIGHT, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ui, i32 0, i32 2), align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @L, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  %54 = load i32, i32* @UI_COLOR_BEVEL_4, align 4
  %55 = call i32 @glColorHex(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @glRectf(i64 %58, i32 %60, i64 %63, i32 %65)
  %67 = load i32, i32* @UI_COLOR_BEVEL_3, align 4
  %68 = call i32 @glColorHex(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @glRectf(i64 %71, i32 %73, i64 %76, i32 %78)
  %80 = load i32, i32* @UI_COLOR_PANEL, align 4
  %81 = call i32 @glColorHex(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @glRectf(i64 %84, i32 %86, i64 %89, i32 %91)
  br label %93

93:                                               ; preds = %53, %49
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @R, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %136

97:                                               ; preds = %93
  %98 = load i32, i32* @UI_COLOR_PANEL, align 4
  %99 = call i32 @glColorHex(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @glRectf(i64 %101, i32 %103, i64 %106, i32 %108)
  %110 = load i32, i32* @UI_COLOR_BEVEL_2, align 4
  %111 = call i32 @glColorHex(i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 3
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @glRectf(i64 %114, i32 %116, i64 %119, i32 %121)
  %123 = load i32, i32* @UI_COLOR_BEVEL_1, align 4
  %124 = call i32 @glColorHex(i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 3
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 4
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @glRectf(i64 %127, i32 %129, i64 %132, i32 %134)
  br label %136

136:                                              ; preds = %97, %93
  ret void
}

declare dso_local void @ui_pack(%struct.TYPE_5__* sret, i32, i32) #1

declare dso_local i64 @ui_mouse_inside(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

declare dso_local i32 @fz_clampi(i64, i32, i32) #1

declare dso_local i32 @glColorHex(i32) #1

declare dso_local i32 @glRectf(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
