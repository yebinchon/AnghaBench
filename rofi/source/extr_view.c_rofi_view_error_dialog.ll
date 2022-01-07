; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_error_dialog.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_error_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32*, i32, i32, i32 }

@MENU_CANCEL = common dso_local global i32 0, align 4
@MENU_ERROR_DIALOG = common dso_local global i32 0, align 4
@process_result = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"window\00", align 1
@ROFI_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"error-message\00", align 1
@TRUE = common dso_local global i32 0, align 4
@WIDGET_TYPE_TEXTBOX_TEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"textbox\00", align 1
@TB_AUTOHEIGHT = common dso_local global i32 0, align 4
@TB_WRAP = common dso_local global i32 0, align 4
@TB_MARKUP = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CacheState = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@MENU_NORMAL_WINDOW = common dso_local global i32 0, align 4
@xcb = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rofi_view_error_dialog(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.TYPE_9__* (...) @__rofi_view_state_create()
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %5, align 8
  %8 = load i32, i32* @MENU_CANCEL, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @MENU_ERROR_DIALOG, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @process_result, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @ROFI_ORIENTATION_VERTICAL, align 4
  %18 = call i8* @box_create(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32* @WIDGET(i32* %24)
  %26 = load i32, i32* @ROFI_ORIENTATION_VERTICAL, align 4
  %27 = call i8* @box_create(i32* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %6, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32* @WIDGET(i32* %32)
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @box_add(i32* %31, i32* %33, i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @WIDGET(i32* %36)
  %38 = load i32, i32* @WIDGET_TYPE_TEXTBOX_TEXT, align 4
  %39 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %40 = load i32, i32* @TB_WRAP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @TB_MARKUP, align 4
  br label %47

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = add nsw i32 %41, %48
  %50 = load i32, i32* @NORMAL, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i8* [ %54, %53 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %55 ]
  %58 = call i32* @textbox_create(i32* %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50, i8* %57, i32 0, i32 0)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  store i32* %58, i32** %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = call i32* @WIDGET(i32* %64)
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i32 @box_add(i32* %61, i32* %65, i32 %66)
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CacheState, i32 0, i32 0), align 4
  %69 = load i32, i32* @MENU_NORMAL_WINDOW, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @MENU_NORMAL_WINDOW, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %56
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @listview_set_fixed_num_lines(i32 %76)
  br label %78

78:                                               ; preds = %73, %56
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = call i32 @rofi_view_calculate_window_width(%struct.TYPE_9__* %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32* @WIDGET(i32* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @widget_resize(i32* %84, i32 %87, i32 100)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32* @WIDGET(i32* %91)
  %93 = call i32 @widget_get_desired_height(i32* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = call i32 @rofi_view_calculate_window_position(%struct.TYPE_9__* %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = call i32 @rofi_view_window_update_size(%struct.TYPE_9__* %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xcb, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CacheState, i32 0, i32 1), align 4
  %104 = call i32 @xcb_map_window(i32 %102, i32 %103)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32* @WIDGET(i32* %107)
  %109 = call i32 @widget_queue_redraw(i32* %108)
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xcb, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %78
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xcb, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @sn_launchee_context_complete(i32* %117)
  br label %119

119:                                              ; preds = %114, %78
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = call i32 @rofi_view_set_active(%struct.TYPE_9__* %120)
  %122 = load i32, i32* @TRUE, align 4
  ret i32 %122
}

declare dso_local %struct.TYPE_9__* @__rofi_view_state_create(...) #1

declare dso_local i8* @box_create(i32*, i8*, i32) #1

declare dso_local i32* @WIDGET(i32*) #1

declare dso_local i32 @box_add(i32*, i32*, i32) #1

declare dso_local i32* @textbox_create(i32*, i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @listview_set_fixed_num_lines(i32) #1

declare dso_local i32 @rofi_view_calculate_window_width(%struct.TYPE_9__*) #1

declare dso_local i32 @widget_resize(i32*, i32, i32) #1

declare dso_local i32 @widget_get_desired_height(i32*) #1

declare dso_local i32 @rofi_view_calculate_window_position(%struct.TYPE_9__*) #1

declare dso_local i32 @rofi_view_window_update_size(%struct.TYPE_9__*) #1

declare dso_local i32 @xcb_map_window(i32, i32) #1

declare dso_local i32 @widget_queue_redraw(i32*) #1

declare dso_local i32 @sn_launchee_context_complete(i32*) #1

declare dso_local i32 @rofi_view_set_active(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
