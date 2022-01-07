; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_listview_create.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_listview_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32, i64, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32, i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }

@WIDGET_TYPE_LISTVIEW = common dso_local global i32 0, align 4
@listview_free = common dso_local global i32 0, align 4
@listview_resize = common dso_local global i32 0, align 4
@_listview_draw = common dso_local global i32 0, align 4
@listview_find_mouse_target = common dso_local global i32 0, align 4
@listview_trigger_action = common dso_local global i32 0, align 4
@listview_get_desired_height = common dso_local global i32 0, align 4
@PANGO_ELLIPSIZE_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"scrollbar\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"spacing\00", align 1
@DEFAULT_SPACING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@config = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"fixed-height\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"fixed-columns\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@ROFI_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@LISTVIEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @listview_create(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = call %struct.TYPE_12__* @g_malloc0(i32 120)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %13, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %17 = call i32 @WIDGET(%struct.TYPE_12__* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @WIDGET_TYPE_LISTVIEW, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @widget_init(i32 %17, i32* %18, i32 %19, i8* %20)
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @g_strdup(i8* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 15
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @listview_free, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 14
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @listview_resize, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 14
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @_listview_draw, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 14
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @listview_find_mouse_target, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 14
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @listview_trigger_action, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 14
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @listview_get_desired_height, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 14
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @PANGO_ELLIPSIZE_END, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 13
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %57 = call i32 @WIDGET(%struct.TYPE_12__* %56)
  %58 = call i32 @scrollbar_create(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 12
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %62 = call i32 @listview_create_row(%struct.TYPE_12__* %61, %struct.TYPE_13__* %14)
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = call i32 @WIDGET(%struct.TYPE_12__* %64)
  %66 = call i32 @widget_get_desired_height(i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = call i32 @WIDGET(%struct.TYPE_12__* %70)
  %72 = call i32 @widget_free(i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 9
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %80 = call i32 @WIDGET(%struct.TYPE_12__* %79)
  %81 = load i32, i32* @DEFAULT_SPACING, align 4
  %82 = call i32 @rofi_theme_get_distance(i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %86 = call i32 @WIDGET(%struct.TYPE_12__* %85)
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 2), align 8
  %88 = call i32 @rofi_theme_get_integer(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %92 = call i32 @WIDGET(%struct.TYPE_12__* %91)
  %93 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 0), align 8
  %94 = call i8* @rofi_theme_get_boolean(i32 %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %98 = call i32 @WIDGET(%struct.TYPE_12__* %97)
  %99 = load i8*, i8** @TRUE, align 8
  %100 = call i8* @rofi_theme_get_boolean(i32 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %99)
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 5
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %104 = call i32 @WIDGET(%struct.TYPE_12__* %103)
  %105 = load i8*, i8** %12, align 8
  %106 = call i8* @rofi_theme_get_boolean(i32 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %110 = call i32 @WIDGET(%struct.TYPE_12__* %109)
  %111 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @config, i32 0, i32 1), align 8
  %112 = call i8* @rofi_theme_get_boolean(i32 %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %116 = call i32 @WIDGET(%struct.TYPE_12__* %115)
  %117 = load i8*, i8** @FALSE, align 8
  %118 = call i8* @rofi_theme_get_boolean(i32 %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %122 = call i32 @WIDGET(%struct.TYPE_12__* %121)
  %123 = load i32, i32* @ROFI_ORIENTATION_VERTICAL, align 4
  %124 = call i64 @rofi_theme_get_orientation(i32 %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %123)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @LISTVIEW, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %6
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %135 = call i32 @WIDGET(%struct.TYPE_12__* %134)
  %136 = load i8*, i8** @FALSE, align 8
  %137 = call i8* @rofi_theme_get_boolean(i32 %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %136)
  %138 = call i32 @listview_set_show_scrollbar(%struct.TYPE_12__* %133, i8* %137)
  br label %143

139:                                              ; preds = %6
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %141 = load i8*, i8** @FALSE, align 8
  %142 = call i32 @listview_set_show_scrollbar(%struct.TYPE_12__* %140, i8* %141)
  br label %143

143:                                              ; preds = %139, %132
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  ret %struct.TYPE_12__* %144
}

declare dso_local %struct.TYPE_12__* @g_malloc0(i32) #1

declare dso_local i32 @widget_init(i32, i32*, i32, i8*) #1

declare dso_local i32 @WIDGET(%struct.TYPE_12__*) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i32 @scrollbar_create(i32, i8*) #1

declare dso_local i32 @listview_create_row(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @widget_get_desired_height(i32) #1

declare dso_local i32 @widget_free(i32) #1

declare dso_local i32 @rofi_theme_get_distance(i32, i8*, i32) #1

declare dso_local i32 @rofi_theme_get_integer(i32, i8*, i32) #1

declare dso_local i8* @rofi_theme_get_boolean(i32, i8*, i8*) #1

declare dso_local i64 @rofi_theme_get_orientation(i32, i8*, i32) #1

declare dso_local i32 @listview_set_show_scrollbar(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
