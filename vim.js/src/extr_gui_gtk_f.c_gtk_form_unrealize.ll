; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_f.c_gtk_form_unrealize.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_f.c_gtk_form_unrealize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 (i32*)* }

@gtk_form_child_map = common dso_local global i32 0, align 4
@gtk_form_child_unmap = common dso_local global i32 0, align 4
@parent_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @gtk_form_unrealize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtk_form_unrealize(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @GTK_IS_FORM(i32* %6)
  %8 = call i32 @g_return_if_fail(i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.TYPE_8__* @GTK_FORM(i32* %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @gdk_window_set_user_data(i32* %16, i32* null)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @gdk_window_destroy(i32* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %62, %1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %66

27:                                               ; preds = %24
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %5, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %27
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @GTK_OBJECT(i32 %38)
  %40 = load i32, i32* @gtk_form_child_map, align 4
  %41 = call i32 @GTK_SIGNAL_FUNC(i32 %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = call i32 @gtk_signal_disconnect_by_func(i32 %39, i32 %41, %struct.TYPE_7__* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @GTK_OBJECT(i32 %46)
  %48 = load i32, i32* @gtk_form_child_unmap, align 4
  %49 = call i32 @GTK_SIGNAL_FUNC(i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = call i32 @gtk_signal_disconnect_by_func(i32 %47, i32 %49, %struct.TYPE_7__* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @gdk_window_set_user_data(i32* %54, i32* null)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @gdk_window_destroy(i32* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %35, %27
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %3, align 8
  br label %24

66:                                               ; preds = %24
  %67 = load i32, i32* @parent_class, align 4
  %68 = call %struct.TYPE_10__* @GTK_WIDGET_CLASS(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32 (i32*)*, i32 (i32*)** %69, align 8
  %71 = icmp ne i32 (i32*)* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* @parent_class, align 4
  %74 = call %struct.TYPE_10__* @GTK_WIDGET_CLASS(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32 (i32*)*, i32 (i32*)** %75, align 8
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 %76(i32* %77)
  br label %79

79:                                               ; preds = %72, %66
  ret void
}

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @GTK_IS_FORM(i32*) #1

declare dso_local %struct.TYPE_8__* @GTK_FORM(i32*) #1

declare dso_local i32 @gdk_window_set_user_data(i32*, i32*) #1

declare dso_local i32 @gdk_window_destroy(i32*) #1

declare dso_local i32 @gtk_signal_disconnect_by_func(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @GTK_OBJECT(i32) #1

declare dso_local i32 @GTK_SIGNAL_FUNC(i32) #1

declare dso_local %struct.TYPE_10__* @GTK_WIDGET_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
