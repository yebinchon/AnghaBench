; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_ThemeDrawScrollBar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_ThemeDrawScrollBar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32*, i64, i32 }
%struct.TYPE_20__ = type { i64 }

@SCROLL_NOWHERE = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i64 0, align 8
@WS_VSCROLL = common dso_local global i32 0, align 4
@SB_HORZ = common dso_local global i64 0, align 8
@WS_HSCROLL = common dso_local global i32 0, align 4
@SIF_ALL = common dso_local global i32 0, align 4
@SCROLL_TOP_ARROW = common dso_local global i64 0, align 8
@STATE_SYSTEM_UNAVAILABLE = common dso_local global i32 0, align 4
@SCROLL_BOTTOM_ARROW = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ThemeDrawScrollBar(%struct.TYPE_21__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__, align 4
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @SCROLL_NOWHERE, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @SB_VERT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @WS_VSCROLL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %16, %3
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @SB_HORZ, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WS_HSCROLL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28, %16
  br label %137

37:                                               ; preds = %28, %24
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_20__* @ThemeGetWndData(i32 %40)
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %11, align 8
  %42 = icmp ne %struct.TYPE_20__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %137

44:                                               ; preds = %37
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %137

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store i32 32, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i32 8, i32* %52, align 4
  %53 = load i32, i32* @SIF_ALL, align 4
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @GetScrollInfo(i32 %57, i64 %58, %struct.TYPE_18__* %7)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @SCROLL_getObjectId(i64 %63)
  %65 = call i32 @GetScrollBarInfo(i32 %62, i32 %64, %struct.TYPE_19__* %8)
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @SCROLL_IsVertical(i32 %68, i64 %69)
  store i32 %70, i32* %9, align 4
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @SCROLL_TOP_ARROW, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @STATE_SYSTEM_UNAVAILABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %50
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @SCROLL_BOTTOM_ARROW, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @STATE_SYSTEM_UNAVAILABLE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %88, %79, %50
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 0, %96
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 0, %102
  %104 = call i32 @OffsetRect(i32* %91, i32 %97, i32 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %121

107:                                              ; preds = %90
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @ScreenToWindow(i32 %110, i32* %111)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @FALSE, align 4
  %120 = call i32 @SCROLL_HitTest(i32 %115, %struct.TYPE_19__* %8, i32 %116, i32 %118, i32 %119)
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %107, %90
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %123 = call i64 @IsRectEmpty(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %137

126:                                              ; preds = %121
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @SCROLL_DrawArrows(%struct.TYPE_21__* %127, %struct.TYPE_19__* %8, i32 %128, i32 0, i32 %129)
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @SCROLL_DrawInterior(%struct.TYPE_21__* %131, %struct.TYPE_19__* %8, i64 %133, i32 %134, i32 0, i32 %135)
  br label %137

137:                                              ; preds = %126, %125, %49, %43, %36
  ret void
}

declare dso_local %struct.TYPE_20__* @ThemeGetWndData(i32) #1

declare dso_local i32 @GetScrollInfo(i32, i64, %struct.TYPE_18__*) #1

declare dso_local i32 @GetScrollBarInfo(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @SCROLL_getObjectId(i64) #1

declare dso_local i32 @SCROLL_IsVertical(i32, i64) #1

declare dso_local i32 @OffsetRect(i32*, i32, i32) #1

declare dso_local i32 @ScreenToWindow(i32, i32*) #1

declare dso_local i32 @SCROLL_HitTest(i32, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i64 @IsRectEmpty(i32*) #1

declare dso_local i32 @SCROLL_DrawArrows(%struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @SCROLL_DrawInterior(%struct.TYPE_21__*, %struct.TYPE_19__*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
