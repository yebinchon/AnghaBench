; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_get_item_dimensions.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_get_item_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@GTK_ORIENTATION_HORIZONTAL = common dso_local global i64 0, align 8
@BONOBO_TYPE_DOCK_ITEM = common dso_local global i64 0, align 8
@using_gnome = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64)* @get_item_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_item_dimensions(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* @GTK_ORIENTATION_HORIZONTAL, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = icmp ne %struct.TYPE_14__* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = call i64 @GTK_WIDGET_REALIZED(%struct.TYPE_14__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = call i64 @GTK_WIDGET_VISIBLE(%struct.TYPE_14__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @GTK_ORIENTATION_HORIZONTAL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %22
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %18, %14, %10, %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %31, %26
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @GTK_WIDGET_REALIZED(%struct.TYPE_14__*) #1

declare dso_local i64 @GTK_WIDGET_VISIBLE(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
