; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_on_special.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-ui.c_on_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@ui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KEY_INSERT = common dso_local global i32 0, align 4
@KEY_DELETE = common dso_local global i32 0, align 4
@KEY_RIGHT = common dso_local global i32 0, align 4
@KEY_LEFT = common dso_local global i32 0, align 4
@KEY_DOWN = common dso_local global i32 0, align 4
@KEY_UP = common dso_local global i32 0, align 4
@KEY_PAGE_UP = common dso_local global i32 0, align 4
@KEY_PAGE_DOWN = common dso_local global i32 0, align 4
@KEY_HOME = common dso_local global i32 0, align 4
@KEY_END = common dso_local global i32 0, align 4
@KEY_F1 = common dso_local global i32 0, align 4
@KEY_F2 = common dso_local global i32 0, align 4
@KEY_F3 = common dso_local global i32 0, align 4
@KEY_F4 = common dso_local global i32 0, align 4
@KEY_F5 = common dso_local global i32 0, align 4
@KEY_F6 = common dso_local global i32 0, align 4
@KEY_F7 = common dso_local global i32 0, align 4
@KEY_F8 = common dso_local global i32 0, align 4
@KEY_F9 = common dso_local global i32 0, align 4
@KEY_F10 = common dso_local global i32 0, align 4
@KEY_F11 = common dso_local global i32 0, align 4
@KEY_F12 = common dso_local global i32 0, align 4
@GLUT_ACTIVE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @on_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_special(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 0), align 4
  %8 = load i32, i32* %6, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %54 [
    i32 133, label %10
    i32 149, label %12
    i32 129, label %14
    i32 132, label %16
    i32 148, label %18
    i32 128, label %20
    i32 130, label %22
    i32 131, label %24
    i32 134, label %26
    i32 147, label %28
    i32 146, label %30
    i32 142, label %32
    i32 141, label %34
    i32 140, label %36
    i32 139, label %38
    i32 138, label %40
    i32 137, label %42
    i32 136, label %44
    i32 135, label %46
    i32 145, label %48
    i32 144, label %50
    i32 143, label %52
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @KEY_INSERT, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

12:                                               ; preds = %3
  %13 = load i32, i32* @KEY_DELETE, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

14:                                               ; preds = %3
  %15 = load i32, i32* @KEY_RIGHT, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

16:                                               ; preds = %3
  %17 = load i32, i32* @KEY_LEFT, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

18:                                               ; preds = %3
  %19 = load i32, i32* @KEY_DOWN, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

20:                                               ; preds = %3
  %21 = load i32, i32* @KEY_UP, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

22:                                               ; preds = %3
  %23 = load i32, i32* @KEY_PAGE_UP, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

24:                                               ; preds = %3
  %25 = load i32, i32* @KEY_PAGE_DOWN, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

26:                                               ; preds = %3
  %27 = load i32, i32* @KEY_HOME, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

28:                                               ; preds = %3
  %29 = load i32, i32* @KEY_END, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

30:                                               ; preds = %3
  %31 = load i32, i32* @KEY_F1, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

32:                                               ; preds = %3
  %33 = load i32, i32* @KEY_F2, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

34:                                               ; preds = %3
  %35 = load i32, i32* @KEY_F3, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

36:                                               ; preds = %3
  %37 = load i32, i32* @KEY_F4, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

38:                                               ; preds = %3
  %39 = load i32, i32* @KEY_F5, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

40:                                               ; preds = %3
  %41 = load i32, i32* @KEY_F6, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

42:                                               ; preds = %3
  %43 = load i32, i32* @KEY_F7, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

44:                                               ; preds = %3
  %45 = load i32, i32* @KEY_F8, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

46:                                               ; preds = %3
  %47 = load i32, i32* @KEY_F9, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

48:                                               ; preds = %3
  %49 = load i32, i32* @KEY_F10, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

50:                                               ; preds = %3
  %51 = load i32, i32* @KEY_F11, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

52:                                               ; preds = %3
  %53 = load i32, i32* @KEY_F12, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  br label %54

54:                                               ; preds = %3, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = call i32 (...) @glutGetModifiers()
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 3), align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 3), align 4
  %60 = load i32, i32* @GLUT_ACTIVE_SHIFT, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 4), align 4
  %66 = call i32 (...) @run_main_loop()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui, i32 0, i32 2), align 4
  %67 = call i32 (...) @ui_invalidate()
  br label %68

68:                                               ; preds = %57, %54
  ret void
}

declare dso_local i32 @glutGetModifiers(...) #1

declare dso_local i32 @run_main_loop(...) #1

declare dso_local i32 @ui_invalidate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
