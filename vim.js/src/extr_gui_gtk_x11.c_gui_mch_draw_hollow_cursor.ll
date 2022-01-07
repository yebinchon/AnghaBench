; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_draw_hollow_cursor.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_gui_mch_draw_hollow_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }

@gui = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_draw_hollow_cursor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 5), align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %37

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @gui_mch_set_fg_color(i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 4), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 6), align 8
  %14 = call i32 @gdk_gc_set_foreground(i32 %12, i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 2), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 3), align 4
  %17 = call i64 @mb_lefthalve(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 2, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %9
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 5), align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 4), align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 3), align 4
  %27 = call i32 @FILL_X(i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 2), align 8
  %29 = call i32 @FILL_Y(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %32 = mul nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @gdk_draw_rectangle(i32* %23, i32 %24, i32 %25, i32 %27, i32 %29, i32 %33, i64 %35)
  br label %37

37:                                               ; preds = %20, %8
  ret void
}

declare dso_local i32 @gui_mch_set_fg_color(i32) #1

declare dso_local i32 @gdk_gc_set_foreground(i32, i32) #1

declare dso_local i64 @mb_lefthalve(i32, i32) #1

declare dso_local i32 @gdk_draw_rectangle(i32*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @FILL_X(i32) #1

declare dso_local i32 @FILL_Y(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
