; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_create.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32*, i32 }
%struct.TYPE_20__ = type { i32*, void (%struct.TYPE_20__*)*, i32, i8*, i32, i32, i32, i32, i64, i64, i32*, i8*, i32, i8*, i32, i32, i32 }
%struct.TYPE_21__ = type { i64 }

@UINT32_MAX = common dso_local global i32 0, align 4
@MENU_CANCEL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rofi - %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rofi\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Startup notification\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Get active monitor\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@ROFI_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"children\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mainbox\00", align 1
@CacheState = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@MENU_NORMAL_WINDOW = common dso_local global i32 0, align 4
@xcb = common dso_local global %struct.TYPE_22__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @rofi_view_create(i32* %0, i8* %1, i32 %2, void (%struct.TYPE_20__*)* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.TYPE_20__*)*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store void (%struct.TYPE_20__*)* %3, void (%struct.TYPE_20__*)** %8, align 8
  %13 = call i32 (...) @TICK()
  %14 = call %struct.TYPE_20__* (...) @__rofi_view_state_create()
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 16
  store i32 %15, i32* %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 10
  store i32* %18, i32** %20, align 8
  %21 = load i32, i32* @UINT32_MAX, align 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 15
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @MENU_CANCEL, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 14
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load i8*, i8** @FALSE, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @FALSE, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 13
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 12
  store i32 %35, i32* %37, align 8
  %38 = load void (%struct.TYPE_20__*)*, void (%struct.TYPE_20__*)** %8, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  store void (%struct.TYPE_20__*)* %38, void (%struct.TYPE_20__*)** %40, align 8
  %41 = load i8*, i8** @FALSE, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 11
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @mode_get_num_entries(i32* %44)
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 10
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 10
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @mode_get_display_name(i32* %55)
  %57 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @rofi_view_set_window_title(i8* %58)
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @g_free(i8* %60)
  br label %64

62:                                               ; preds = %4
  %63 = call i32 @rofi_view_set_window_title(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %52
  %65 = call i32 @TICK_N(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %66 = call i32 @TICK_N(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @ROFI_ORIENTATION_VERTICAL, align 4
  %68 = call i32 @box_create(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @WIDGET(i32 %73)
  %75 = call %struct.TYPE_21__* @rofi_theme_get_list(i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_21__* %75, %struct.TYPE_21__** %11, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %76, %struct.TYPE_21__** %12, align 8
  br label %77

77:                                               ; preds = %91, %64
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %79 = icmp ne %struct.TYPE_21__* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @WIDGET(i32 %84)
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 @rofi_view_add_widget(%struct.TYPE_20__* %81, i32 %85, i8* %89)
  br label %91

91:                                               ; preds = %80
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %93 = call %struct.TYPE_21__* @g_list_next(%struct.TYPE_21__* %92)
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %12, align 8
  br label %77

94:                                               ; preds = %77
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %96 = call i32 @g_list_free_full(%struct.TYPE_21__* %95, i32 (i8*)* @g_free)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 9
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %94
  %102 = load i8*, i8** %6, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 9
  %107 = load i64, i64* %106, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @textbox_text(i64 %107, i8* %108)
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 9
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @textbox_cursor_end(i64 %112)
  br label %114

114:                                              ; preds = %104, %101, %94
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @g_malloc0_n(i32 %117, i32 4)
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 8
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @g_malloc0_n(i32 %123, i32 4)
  %125 = inttoptr i64 %124 to i32*
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  store i32* %125, i32** %127, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %129 = call i32 @rofi_view_calculate_window_width(%struct.TYPE_20__* %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @WIDGET(i32 %132)
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @widget_resize(i32 %133, i32 %136, i32 100)
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @CacheState, i32 0, i32 0), align 4
  %139 = load i32, i32* @MENU_NORMAL_WINDOW, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* @MENU_NORMAL_WINDOW, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %114
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @listview_set_fixed_num_lines(i32 %146)
  br label %148

148:                                              ; preds = %143, %114
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %150 = call i32 @rofi_view_calculate_height(%struct.TYPE_20__* %149)
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %154 = call i32 @rofi_view_calculate_window_position(%struct.TYPE_20__* %153)
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %156 = call i32 @rofi_view_window_update_size(%struct.TYPE_20__* %155)
  %157 = load i8*, i8** @FALSE, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %161 = call i32 @rofi_view_refilter(%struct.TYPE_20__* %160)
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %163 = load i32, i32* @TRUE, align 4
  %164 = call i32 @rofi_view_update(%struct.TYPE_20__* %162, i32 %163)
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** @xcb, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @CacheState, i32 0, i32 1), align 4
  %169 = call i32 @xcb_map_window(i32 %167, i32 %168)
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @WIDGET(i32 %172)
  %174 = call i32 @widget_queue_redraw(i32 %173)
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** @xcb, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @xcb_flush(i32 %177)
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** @xcb, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %188

183:                                              ; preds = %148
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** @xcb, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @sn_launchee_context_complete(i32* %186)
  br label %188

188:                                              ; preds = %183, %148
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  ret %struct.TYPE_20__* %189
}

declare dso_local i32 @TICK(...) #1

declare dso_local %struct.TYPE_20__* @__rofi_view_state_create(...) #1

declare dso_local i32 @mode_get_num_entries(i32*) #1

declare dso_local i8* @g_strdup_printf(i8*, i32) #1

declare dso_local i32 @mode_get_display_name(i32*) #1

declare dso_local i32 @rofi_view_set_window_title(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @TICK_N(i8*) #1

declare dso_local i32 @box_create(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_21__* @rofi_theme_get_list(i32, i8*, i8*) #1

declare dso_local i32 @WIDGET(i32) #1

declare dso_local i32 @rofi_view_add_widget(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local %struct.TYPE_21__* @g_list_next(%struct.TYPE_21__*) #1

declare dso_local i32 @g_list_free_full(%struct.TYPE_21__*, i32 (i8*)*) #1

declare dso_local i32 @textbox_text(i64, i8*) #1

declare dso_local i32 @textbox_cursor_end(i64) #1

declare dso_local i64 @g_malloc0_n(i32, i32) #1

declare dso_local i32 @rofi_view_calculate_window_width(%struct.TYPE_20__*) #1

declare dso_local i32 @widget_resize(i32, i32, i32) #1

declare dso_local i32 @listview_set_fixed_num_lines(i32) #1

declare dso_local i32 @rofi_view_calculate_height(%struct.TYPE_20__*) #1

declare dso_local i32 @rofi_view_calculate_window_position(%struct.TYPE_20__*) #1

declare dso_local i32 @rofi_view_window_update_size(%struct.TYPE_20__*) #1

declare dso_local i32 @rofi_view_refilter(%struct.TYPE_20__*) #1

declare dso_local i32 @rofi_view_update(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @xcb_map_window(i32, i32) #1

declare dso_local i32 @widget_queue_redraw(i32) #1

declare dso_local i32 @xcb_flush(i32) #1

declare dso_local i32 @sn_launchee_context_complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
