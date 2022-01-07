; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_check_copy_area.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_check_copy_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@gui = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GDK_VISIBILITY_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_copy_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_copy_area() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 0), align 8
  %4 = load i64, i64* @GDK_VISIBILITY_PARTIAL, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %50

7:                                                ; preds = %0
  %8 = call i32 (...) @gui_dont_update_cursor()
  br label %9

9:                                                ; preds = %45, %7
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 1), align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_11__* @gdk_event_get_graphics_expose(i32 %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %1, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %15 = icmp eq %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %48

17:                                               ; preds = %9
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gui_redraw(i32 %22, i32 %27, i32 %32, i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %2, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %44 = call i32 @gdk_event_free(%struct.TYPE_11__* %43)
  br label %45

45:                                               ; preds = %17
  %46 = load i32, i32* %2, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %9, label %48

48:                                               ; preds = %45, %16
  %49 = call i32 (...) @gui_can_update_cursor()
  br label %50

50:                                               ; preds = %48, %6
  ret void
}

declare dso_local i32 @gui_dont_update_cursor(...) #1

declare dso_local %struct.TYPE_11__* @gdk_event_get_graphics_expose(i32) #1

declare dso_local i32 @gui_redraw(i32, i32, i32, i32) #1

declare dso_local i32 @gdk_event_free(%struct.TYPE_11__*) #1

declare dso_local i32 @gui_can_update_cursor(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
