; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk.c_gui_mch_create_scrollbar.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk.c_gui_mch_create_scrollbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }

@SBAR_HORIZ = common dso_local global i32 0, align 4
@SBAR_VERT = common dso_local global i32 0, align 4
@GTK_CAN_FOCUS = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"value_changed\00", align 1
@adjustment_value_changed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_create_scrollbar(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SBAR_HORIZ, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = call i32* @gtk_hscrollbar_new(i32* null)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32* %10, i32** %12, align 8
  br label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SBAR_VERT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = call i32* @gtk_vscrollbar_new(i32* null)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  br label %21

21:                                               ; preds = %17, %13
  br label %22

22:                                               ; preds = %21, %9
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @GTK_CAN_FOCUS, align 4
  %32 = call i32 @GTK_WIDGET_UNSET_FLAGS(i32* %30, i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 4
  %34 = call i32 @GTK_FORM(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @gtk_form_put(i32 %34, i32* %37, i32 0, i32 0)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @GTK_RANGE(i32* %41)
  %43 = call i32* @gtk_range_get_adjustment(i32 %42)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @GTK_OBJECT(i32* %44)
  %46 = load i32, i32* @adjustment_value_changed, align 4
  %47 = call i32 @GTK_SIGNAL_FUNC(i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @GINT_TO_POINTER(i32 %50)
  %52 = call i32 @gtk_signal_connect(i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = call i32 (...) @gui_mch_update()
  br label %56

56:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32* @gtk_hscrollbar_new(i32*) #1

declare dso_local i32* @gtk_vscrollbar_new(i32*) #1

declare dso_local i32 @GTK_WIDGET_UNSET_FLAGS(i32*, i32) #1

declare dso_local i32 @gtk_form_put(i32, i32*, i32, i32) #1

declare dso_local i32 @GTK_FORM(i32) #1

declare dso_local i32* @gtk_range_get_adjustment(i32) #1

declare dso_local i32 @GTK_RANGE(i32*) #1

declare dso_local i32 @gtk_signal_connect(i32, i8*, i32, i32) #1

declare dso_local i32 @GTK_OBJECT(i32*) #1

declare dso_local i32 @GTK_SIGNAL_FUNC(i32) #1

declare dso_local i32 @GINT_TO_POINTER(i32) #1

declare dso_local i32 @gui_mch_update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
