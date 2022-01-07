; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-form.c_sig_verify_dialog.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-form.c_sig_verify_dialog.c"
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
@.str.1 = private unnamed_addr constant [21 x i8] c"Designated name: %s.\00", align 1
@sig_designated_name = common dso_local global i32 0, align 4
@sig_cert_error = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Certificate error: %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Certificate is trusted.\00", align 1
@sig_digest_error = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Digest error: %s\00", align 1
@sig_subsequent_edits = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [64 x i8] c"The signature is valid but there have been edits since signing.\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"The document is unchanged since signing.\00", align 1
@B = common dso_local global i32 0, align 4
@L = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@R = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@KEY_ESCAPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sig_verify_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_verify_dialog() #0 {
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
  %21 = load i32, i32* @sig_designated_name, align 4
  %22 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = call i32 (...) @ui_spacer()
  %24 = load i64, i64* @sig_cert_error, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %0
  %27 = load i64, i64* @sig_cert_error, align 8
  %28 = call i32 @pdf_signature_error_description(i64 %27)
  %29 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %32

30:                                               ; preds = %0
  %31 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = call i32 (...) @ui_spacer()
  %34 = load i64, i64* @sig_digest_error, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* @sig_digest_error, align 8
  %38 = call i32 @pdf_signature_error_description(i64 %37)
  %39 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  br label %48

40:                                               ; preds = %32
  %41 = load i64, i64* @sig_subsequent_edits, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  br label %47

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32, i32* @B, align 4
  %50 = load i32, i32* @X, align 4
  %51 = load i32, i32* @NW, align 4
  %52 = call i32 @ui_layout(i32 %49, i32 %50, i32 %51, i32 2, i32 2)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 8
  %54 = call i32 @ui_panel_begin(i32 0, i32 %53, i32 0, i32 0, i32 0)
  %55 = load i32, i32* @L, align 4
  %56 = load i32, i32* @NONE, align 4
  %57 = load i32, i32* @S, align 4
  %58 = call i32 @ui_layout(i32 %55, i32 %56, i32 %57, i32 0, i32 0)
  %59 = call i64 @ui_button(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 3), align 8
  %62 = call i32 (...) @do_clear_signature()
  br label %63

63:                                               ; preds = %61, %48
  %64 = load i32, i32* @R, align 4
  %65 = load i32, i32* @NONE, align 4
  %66 = load i32, i32* @S, align 4
  %67 = call i32 @ui_layout(i32 %64, i32 %65, i32 %66, i32 0, i32 0)
  %68 = call i64 @ui_button(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 4), align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 2), align 8
  %75 = load i64, i64* @KEY_ESCAPE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %63
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 3), align 8
  br label %78

78:                                               ; preds = %77, %73, %70
  %79 = call i32 (...) @ui_panel_end()
  %80 = call i32 (...) @ui_dialog_end()
  ret void
}

declare dso_local i8* @pdf_field_label(i32, i32) #1

declare dso_local i32 @ui_dialog_begin(i32, i32) #1

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_label(i8*, ...) #1

declare dso_local i32 @ui_spacer(...) #1

declare dso_local i32 @pdf_signature_error_description(i64) #1

declare dso_local i32 @ui_panel_begin(i32, i32, i32, i32, i32) #1

declare dso_local i64 @ui_button(i8*) #1

declare dso_local i32 @do_clear_signature(...) #1

declare dso_local i32 @ui_panel_end(...) #1

declare dso_local i32 @ui_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
