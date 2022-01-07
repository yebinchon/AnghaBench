; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-form.c_tx_dialog.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-form.c_tx_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32*, i32 }
%struct.TYPE_6__ = type { i32 }

@ctx = common dso_local global i32 0, align 4
@tx_widget = common dso_local global %struct.TYPE_8__* null, align 8
@PDF_TX_FIELD_IS_MULTILINE = common dso_local global i32 0, align 4
@ui = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@T = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@NW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tx_input = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@B = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@KEY_ESCAPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Okay\00", align 1
@UI_INPUT_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tx_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_dialog() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @ctx, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tx_widget, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pdf_field_flags(i32 %6, i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* @ctx, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tx_widget, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @pdf_field_label(i32 %11, i32 %14)
  store i8* %15, i8** %2, align 8
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @PDF_TX_FIELD_IS_MULTILINE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 10, i32 1
  store i32 %21, i32* %3, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @ui_break_lines(i8* %22, i32* null, i32 20, i32 394, i32* null)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %25 = add nsw i32 %24, 4
  %26 = mul nsw i32 %25, 3
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 1), align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %30, 2
  %32 = mul nsw i32 %27, %31
  %33 = add nsw i32 %26, %32
  %34 = call i32 @ui_dialog_begin(i32 400, i32 %33)
  %35 = load i32, i32* @T, align 4
  %36 = load i32, i32* @X, align 4
  %37 = load i32, i32* @NW, align 4
  %38 = call i32 @ui_layout(i32 %35, i32 %36, i32 %37, i32 2, i32 2)
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @ui_label(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ui_input(%struct.TYPE_6__* @tx_input, i32 200, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @B, align 4
  %44 = load i32, i32* @X, align 4
  %45 = load i32, i32* @NW, align 4
  %46 = call i32 @ui_layout(i32 %43, i32 %44, i32 %45, i32 2, i32 2)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 0), align 8
  %48 = call i32 @ui_panel_begin(i32 0, i32 %47, i32 0, i32 0, i32 0)
  %49 = load i32, i32* @R, align 4
  %50 = load i32, i32* @NONE, align 4
  %51 = load i32, i32* @S, align 4
  %52 = call i32 @ui_layout(i32 %49, i32 %50, i32 %51, i32 0, i32 0)
  %53 = call i64 @ui_button(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %0
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 4), align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 2), align 8
  %60 = load i64, i64* @KEY_ESCAPE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %0
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 3), align 8
  br label %63

63:                                               ; preds = %62, %58, %55
  %64 = call i32 (...) @ui_spacer()
  %65 = call i64 @ui_button(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @UI_INPUT_ACCEPT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67, %63
  %72 = load i32, i32* @ctx, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tx_widget, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tx_input, i32 0, i32 0), align 4
  %75 = call i32 @pdf_set_text_field_value(i32 %72, %struct.TYPE_8__* %73, i32 %74)
  %76 = load i32, i32* @ctx, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tx_widget, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @pdf_update_page(i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = call i32 (...) @render_page()
  br label %84

84:                                               ; preds = %82, %71
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ui, i32 0, i32 3), align 8
  br label %85

85:                                               ; preds = %84, %67
  %86 = call i32 (...) @ui_panel_end()
  %87 = call i32 (...) @ui_dialog_end()
  ret void
}

declare dso_local i32 @pdf_field_flags(i32, i32) #1

declare dso_local i8* @pdf_field_label(i32, i32) #1

declare dso_local i32 @ui_break_lines(i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ui_dialog_begin(i32, i32) #1

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_label(i8*, i8*) #1

declare dso_local i32 @ui_input(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ui_panel_begin(i32, i32, i32, i32, i32) #1

declare dso_local i64 @ui_button(i8*) #1

declare dso_local i32 @ui_spacer(...) #1

declare dso_local i32 @pdf_set_text_field_value(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @pdf_update_page(i32, i32) #1

declare dso_local i32 @render_page(...) #1

declare dso_local i32 @ui_panel_end(...) #1

declare dso_local i32 @ui_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
