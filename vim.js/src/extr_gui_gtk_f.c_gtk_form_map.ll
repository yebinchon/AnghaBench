; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_f.c_gtk_form_map.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_f.c_gtk_form_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32 }

@GTK_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @gtk_form_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtk_form_map(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = call i32 @GTK_IS_FORM(%struct.TYPE_10__* %6)
  %8 = call i32 @g_return_if_fail(i32 %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = call %struct.TYPE_12__* @GTK_FORM(%struct.TYPE_10__* %9)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = load i32, i32* @GTK_MAPPED, align 4
  %13 = call i32 @GTK_WIDGET_SET_FLAGS(%struct.TYPE_10__* %11, i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gdk_window_show(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @gdk_window_show(i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %3, align 8
  br label %25

25:                                               ; preds = %49, %1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = icmp ne %struct.TYPE_13__* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %5, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @GTK_WIDGET_VISIBLE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @GTK_WIDGET_MAPPED(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gtk_widget_map(i32 %46)
  br label %48

48:                                               ; preds = %43, %37, %28
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %3, align 8
  br label %25

53:                                               ; preds = %25
  ret void
}

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @GTK_IS_FORM(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_12__* @GTK_FORM(%struct.TYPE_10__*) #1

declare dso_local i32 @GTK_WIDGET_SET_FLAGS(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gdk_window_show(i32) #1

declare dso_local i64 @GTK_WIDGET_VISIBLE(i32) #1

declare dso_local i32 @GTK_WIDGET_MAPPED(i32) #1

declare dso_local i32 @gtk_widget_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
