; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_button.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_ui_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@ui = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@UI_COLOR_BUTTON = common dso_local global i32 0, align 4
@UI_COLOR_TEXT_FG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_button(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @ui_measure_string(i8* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 20
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 3), align 8
  %12 = call { i64, i64 } @ui_pack(i32 %10, i32 %11)
  %13 = bitcast %struct.TYPE_6__* %4 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  %15 = extractvalue { i64, i64 } %12, 0
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  %17 = extractvalue { i64, i64 } %12, 1
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %21, %23
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sdiv i32 %26, 2
  %28 = add nsw i32 %19, %27
  store i32 %28, i32* %5, align 4
  %29 = bitcast %struct.TYPE_6__* %4 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @ui_mouse_inside(i64 %31, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load i8*, i8** %2, align 8
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 1), align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 2), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8*, i8** %2, align 8
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 1), align 8
  br label %45

45:                                               ; preds = %43, %40, %36
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %48 = load i8*, i8** %2, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 1), align 8
  %52 = load i8*, i8** %2, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 2), align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %54, %50, %46
  %58 = phi i1 [ false, %50 ], [ false, %46 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @UI_COLOR_BUTTON, align 4
  %61 = load i32, i32* %6, align 4
  %62 = bitcast %struct.TYPE_6__* %4 to { i64, i64 }*
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %62, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ui_draw_bevel_rect(i64 %64, i64 %66, i32 %60, i32 %61)
  %68 = load i32, i32* @UI_COLOR_TEXT_FG, align 4
  %69 = call i32 @glColorHex(i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 3
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 @ui_draw_string(i32 %72, i64 %78, i8* %79)
  %81 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %82 = load i8*, i8** %2, align 8
  %83 = icmp eq i8* %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %57
  %85 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 1), align 8
  %86 = load i8*, i8** %2, align 8
  %87 = icmp eq i8* %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 2), align 8
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %88, %84, %57
  %93 = phi i1 [ false, %84 ], [ false, %57 ], [ %91, %88 ]
  %94 = zext i1 %93 to i32
  ret i32 %94
}

declare dso_local i32 @ui_measure_string(i8*) #1

declare dso_local { i64, i64 } @ui_pack(i32, i32) #1

declare dso_local i64 @ui_mouse_inside(i64, i64) #1

declare dso_local i32 @ui_draw_bevel_rect(i64, i64, i32, i32) #1

declare dso_local i32 @glColorHex(i32) #1

declare dso_local i32 @ui_draw_string(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
