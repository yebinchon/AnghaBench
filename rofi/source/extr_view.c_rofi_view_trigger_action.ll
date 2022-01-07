; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_trigger_action.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_trigger_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rofi_view_trigger_action(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %56 [
    i32 137, label %12
    i32 135, label %16
    i32 134, label %16
    i32 136, label %16
    i32 132, label %16
    i32 133, label %16
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @rofi_view_trigger_global_action(i32 %13)
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %4, align 4
  br label %58

16:                                               ; preds = %3, %3, %3, %3, %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @WIDGET(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32* @widget_find_mouse_target(i32 %28, i32 %29, i32 %30, i32 %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %16
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %16
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @widget_xy_to_relative(i32* %38, i32* %8, i32* %9)
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @widget_trigger_action(i32* %40, i32 %41, i32 %42, i32 %43)
  switch i32 %44, label %55 [
    i32 128, label %45
    i32 130, label %47
    i32 131, label %48
    i32 129, label %53
  ]

45:                                               ; preds = %37
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %58

47:                                               ; preds = %37
  store i32* null, i32** %10, align 8
  br label %48

48:                                               ; preds = %37, %47
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32* %49, i32** %52, align 8
  br label %53

53:                                               ; preds = %37, %48
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %4, align 4
  br label %58

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %3, %55
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %53, %45, %35, %12
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @rofi_view_trigger_global_action(i32) #1

declare dso_local i32* @widget_find_mouse_target(i32, i32, i32, i32) #1

declare dso_local i32 @WIDGET(i32) #1

declare dso_local i32 @widget_xy_to_relative(i32*, i32*, i32*) #1

declare dso_local i32 @widget_trigger_action(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
