; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_warning_dialog.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_warning_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32* }

@ui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@T = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@NW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%C %s\00", align 1
@warning_message = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Okay\00", align 1
@KEY_ENTER = common dso_local global i64 0, align 8
@KEY_ESCAPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @warning_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warning_dialog() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 8
  %2 = add nsw i32 %1, 4
  %3 = mul nsw i32 %2, 4
  %4 = call i32 @ui_dialog_begin(i32 500, i32 %3)
  %5 = load i32, i32* @T, align 4
  %6 = load i32, i32* @NONE, align 4
  %7 = load i32, i32* @NW, align 4
  %8 = call i32 @ui_layout(i32 %5, i32 %6, i32 %7, i32 2, i32 2)
  %9 = load i32, i32* @warning_message, align 4
  %10 = call i32 @ui_label(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 9888, i32 %9)
  %11 = load i32, i32* @B, align 4
  %12 = load i32, i32* @NONE, align 4
  %13 = load i32, i32* @S, align 4
  %14 = call i32 @ui_layout(i32 %11, i32 %12, i32 %13, i32 2, i32 2)
  %15 = call i64 @ui_button(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %0
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 1), align 8
  %19 = load i64, i64* @KEY_ENTER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 1), align 8
  %23 = load i64, i64* @KEY_ESCAPE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %0
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = call i32 (...) @ui_dialog_end()
  ret void
}

declare dso_local i32 @ui_dialog_begin(i32, i32) #1

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_label(i8*, i32, i32) #1

declare dso_local i64 @ui_button(i8*) #1

declare dso_local i32 @ui_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
