; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_help_dialog.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_help_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@help_dialog.scroll = internal global i32 0, align 4
@T = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"MuPDF %s\00", align 1
@FZ_VERSION = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Okay\00", align 1
@ui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@KEY_ENTER = common dso_local global i64 0, align 8
@KEY_ESCAPE = common dso_local global i64 0, align 8
@ALL = common dso_local global i32 0, align 4
@BOTH = common dso_local global i32 0, align 4
@CENTER = common dso_local global i32 0, align 4
@help_dialog_text = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @help_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help_dialog() #0 {
  %1 = call i32 @ui_dialog_begin(i32 500, i32 1000)
  %2 = load i32, i32* @T, align 4
  %3 = load i32, i32* @X, align 4
  %4 = load i32, i32* @W, align 4
  %5 = call i32 @ui_layout(i32 %2, i32 %3, i32 %4, i32 2, i32 2)
  %6 = load i32, i32* @FZ_VERSION, align 4
  %7 = call i32 @ui_label(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 (...) @ui_spacer()
  %9 = load i32, i32* @B, align 4
  %10 = load i32, i32* @NONE, align 4
  %11 = load i32, i32* @S, align 4
  %12 = call i32 @ui_layout(i32 %9, i32 %10, i32 %11, i32 2, i32 2)
  %13 = call i64 @ui_button(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %0
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 8
  %17 = load i64, i64* @KEY_ENTER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 8
  %21 = load i64, i64* @KEY_ESCAPE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15, %0
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 1), align 8
  br label %24

24:                                               ; preds = %23, %19
  %25 = call i32 (...) @ui_spacer()
  %26 = load i32, i32* @ALL, align 4
  %27 = load i32, i32* @BOTH, align 4
  %28 = load i32, i32* @CENTER, align 4
  %29 = call i32 @ui_layout(i32 %26, i32 %27, i32 %28, i32 2, i32 2)
  %30 = load i32, i32* @help_dialog_text, align 4
  %31 = call i32 @ui_label_with_scrollbar(i32 %30, i32 0, i32 0, i32* @help_dialog.scroll)
  %32 = call i32 (...) @ui_dialog_end()
  ret void
}

declare dso_local i32 @ui_dialog_begin(i32, i32) #1

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_label(i8*, i32) #1

declare dso_local i32 @ui_spacer(...) #1

declare dso_local i64 @ui_button(i8*) #1

declare dso_local i32 @ui_label_with_scrollbar(i32, i32, i32, i32*) #1

declare dso_local i32 @ui_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
