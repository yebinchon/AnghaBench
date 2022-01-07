; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_update_window_manager_hints.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_update_window_manager_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@update_window_manager_hints.old_width = internal global i32 0, align 4
@update_window_manager_hints.old_height = internal global i32 0, align 4
@update_window_manager_hints.old_min_width = internal global i32 0, align 4
@update_window_manager_hints.old_min_height = internal global i32 0, align 4
@update_window_manager_hints.old_char_width = internal global i32 0, align 4
@update_window_manager_hints.old_char_height = internal global i32 0, align 4
@init_window_hints_state = common dso_local global i32 0, align 4
@MIN_COLUMNS = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@MIN_LINES = common dso_local global i32 0, align 4
@GDK_HINT_BASE_SIZE = common dso_local global i32 0, align 4
@GDK_HINT_RESIZE_INC = common dso_local global i32 0, align 4
@GDK_HINT_MIN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @update_window_manager_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_window_manager_hints(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @init_window_hints_state, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 2, i32* @init_window_hints_state, align 4
  br label %105

20:                                               ; preds = %16, %13
  %21 = call i32 (...) @gui_get_base_width()
  store i32 %21, i32* %5, align 4
  %22 = call i32 (...) @gui_get_base_height()
  store i32 %22, i32* %6, align 4
  %23 = call i64 (...) @get_menu_tool_width()
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = call i64 (...) @get_menu_tool_height()
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %20
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %8, align 4
  br label %52

41:                                               ; preds = %35, %20
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MIN_COLUMNS, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %42, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MIN_LINES, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %41, %38
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @update_window_manager_hints.old_width, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %76, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @update_window_manager_hints.old_height, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @update_window_manager_hints.old_min_width, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @update_window_manager_hints.old_min_height, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 4
  %70 = load i32, i32* @update_window_manager_hints.old_char_width, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 4
  %74 = load i32, i32* @update_window_manager_hints.old_char_height, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %72, %68, %64, %60, %56, %52
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 5
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @GDK_HINT_BASE_SIZE, align 4
  %90 = load i32, i32* @GDK_HINT_RESIZE_INC, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @GDK_HINT_MIN_SIZE, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 2), align 4
  %95 = call i32 @GTK_WINDOW(i32 %94)
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 2), align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @gtk_window_set_geometry_hints(i32 %95, i32 %96, %struct.TYPE_4__* %9, i32 %97)
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* @update_window_manager_hints.old_width, align 4
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* @update_window_manager_hints.old_height, align 4
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* @update_window_manager_hints.old_min_width, align 4
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* @update_window_manager_hints.old_min_height, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 1), align 4
  store i32 %103, i32* @update_window_manager_hints.old_char_width, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gui, i32 0, i32 0), align 4
  store i32 %104, i32* @update_window_manager_hints.old_char_height, align 4
  br label %105

105:                                              ; preds = %19, %76, %72
  ret void
}

declare dso_local i32 @gui_get_base_width(...) #1

declare dso_local i32 @gui_get_base_height(...) #1

declare dso_local i64 @get_menu_tool_width(...) #1

declare dso_local i64 @get_menu_tool_height(...) #1

declare dso_local i32 @gtk_window_set_geometry_hints(i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @GTK_WINDOW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
