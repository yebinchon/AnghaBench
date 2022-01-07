; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-form.c_sig_sign_dialog.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-form.c_sig_sign_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i32*, i32 }

@ctx = common dso_local global i32 0, align 4
@sig_widget = common dso_local global %struct.TYPE_4__* null, align 8
@ui = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@T = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@NW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Would you like to sign this field?\00", align 1
@B = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@KEY_ESCAPE = common dso_local global i64 0, align 8
@PDF_FIELD_IS_READ_ONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Sign\00", align 1
@cert_filename = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@cert_file_filter = common dso_local global i32 0, align 4
@cert_file_dialog = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sig_sign_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_sign_dialog() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @ctx, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sig_widget, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i8* @pdf_field_label(i32 %2, i32 %5)
  store i8* %6, i8** %1, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 8
  %8 = add nsw i32 %7, 4
  %9 = mul nsw i32 %8, 3
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 1), align 4
  %11 = mul nsw i32 %10, 10
  %12 = add nsw i32 %9, %11
  %13 = call i32 @ui_dialog_begin(i32 400, i32 %12)
  %14 = load i32, i32* @T, align 4
  %15 = load i32, i32* @X, align 4
  %16 = load i32, i32* @NW, align 4
  %17 = call i32 @ui_layout(i32 %14, i32 %15, i32 %16, i32 2, i32 2)
  %18 = load i8*, i8** %1, align 8
  %19 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 (...) @ui_spacer()
  %21 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @B, align 4
  %23 = load i32, i32* @X, align 4
  %24 = load i32, i32* @NW, align 4
  %25 = call i32 @ui_layout(i32 %22, i32 %23, i32 %24, i32 2, i32 2)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 8
  %27 = call i32 @ui_panel_begin(i32 0, i32 %26, i32 0, i32 0, i32 0)
  %28 = load i32, i32* @R, align 4
  %29 = load i32, i32* @NONE, align 4
  %30 = load i32, i32* @S, align 4
  %31 = call i32 @ui_layout(i32 %28, i32 %29, i32 %30, i32 0, i32 0)
  %32 = call i64 @ui_button(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %0
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 4), align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 2), align 8
  %39 = load i64, i64* @KEY_ESCAPE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %0
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 3), align 8
  br label %42

42:                                               ; preds = %41, %37, %34
  %43 = call i32 (...) @ui_spacer()
  %44 = load i32, i32* @ctx, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sig_widget, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pdf_field_flags(i32 %44, i32 %47)
  %49 = load i32, i32* @PDF_FIELD_IS_READ_ONLY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %42
  %53 = call i64 @ui_button(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* @cert_filename, align 4
  %57 = load i32, i32* @filename, align 4
  %58 = call i32 @fz_strlcpy(i32 %56, i32 %57, i32 4)
  %59 = load i32, i32* @cert_file_filter, align 4
  %60 = call i32 @ui_init_open_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** @cert_file_dialog, align 8
  store i32* %61, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 3), align 8
  br label %62

62:                                               ; preds = %55, %52
  br label %63

63:                                               ; preds = %62, %42
  %64 = call i32 (...) @ui_panel_end()
  %65 = call i32 (...) @ui_dialog_end()
  ret void
}

declare dso_local i8* @pdf_field_label(i32, i32) #1

declare dso_local i32 @ui_dialog_begin(i32, i32) #1

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_label(i8*, ...) #1

declare dso_local i32 @ui_spacer(...) #1

declare dso_local i32 @ui_panel_begin(i32, i32, i32, i32, i32) #1

declare dso_local i64 @ui_button(i8*) #1

declare dso_local i32 @pdf_field_flags(i32, i32) #1

declare dso_local i32 @fz_strlcpy(i32, i32, i32) #1

declare dso_local i32 @ui_init_open_file(i8*, i32) #1

declare dso_local i32 @ui_panel_end(...) #1

declare dso_local i32 @ui_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
