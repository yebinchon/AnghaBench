; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_error_dialog.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_error_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8 }

@ui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@T = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@NW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%C %s\00", align 1
@error_message = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Quit\00", align 1
@KEY_ENTER = common dso_local global i8 0, align 1
@KEY_ESCAPE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @error_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_dialog() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 4
  %2 = add nsw i32 %1, 4
  %3 = mul nsw i32 %2, 4
  %4 = call i32 @ui_dialog_begin(i32 500, i32 %3)
  %5 = load i32, i32* @T, align 4
  %6 = load i32, i32* @NONE, align 4
  %7 = load i32, i32* @NW, align 4
  %8 = call i32 @ui_layout(i32 %5, i32 %6, i32 %7, i32 2, i32 2)
  %9 = load i32, i32* @error_message, align 4
  %10 = call i32 @ui_label(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 128163, i32 %9)
  %11 = load i32, i32* @B, align 4
  %12 = load i32, i32* @NONE, align 4
  %13 = load i32, i32* @S, align 4
  %14 = call i32 @ui_layout(i32 %11, i32 %12, i32 %13, i32 2, i32 2)
  %15 = call i64 @ui_button(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %0
  %18 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 1), align 4
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* @KEY_ENTER, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 1), align 4
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @KEY_ESCAPE, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 1), align 4
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 113
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %23, %17, %0
  %34 = call i32 (...) @glutLeaveMainLoop()
  br label %35

35:                                               ; preds = %33, %29
  %36 = call i32 (...) @ui_dialog_end()
  ret void
}

declare dso_local i32 @ui_dialog_begin(i32, i32) #1

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_label(i8*, i32, i32) #1

declare dso_local i64 @ui_button(i8*) #1

declare dso_local i32 @glutLeaveMainLoop(...) #1

declare dso_local i32 @ui_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
