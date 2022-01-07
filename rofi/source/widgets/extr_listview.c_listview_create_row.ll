; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_listview_create_row.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_listview_create_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i64 }

@TB_INDICATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"element\00", align 1
@ROFI_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@WIDGET_TYPE_LISTVIEW_ELEMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"children\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"element-icon,element-text\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"element-icon\00", align 1
@config = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"element-text\00", align 1
@WIDGET_TYPE_TEXTBOX_TEXT = common dso_local global i32 0, align 4
@TB_AUTOHEIGHT = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"DDD\00", align 1
@TRUE = common dso_local global i32 0, align 4
@g_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_20__*)* @listview_create_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listview_create_row(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @TB_INDICATOR, align 4
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = call i32 @WIDGET(%struct.TYPE_19__* %17)
  %19 = load i32, i32* @ROFI_ORIENTATION_HORIZONTAL, align 4
  %20 = call %struct.TYPE_19__* @box_create(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %22, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %26 = call i32 @WIDGET(%struct.TYPE_19__* %25)
  %27 = load i32, i32* @WIDGET_TYPE_LISTVIEW_ELEMENT, align 4
  %28 = call i32 @widget_set_type(i32 %26, i32 %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %32 = call i32 @WIDGET(%struct.TYPE_19__* %31)
  %33 = call %struct.TYPE_21__* @rofi_theme_get_list(i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %6, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %35, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %37, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = call %struct.TYPE_21__* @g_list_first(%struct.TYPE_21__* %38)
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %7, align 8
  br label %40

40:                                               ; preds = %102, %15
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = icmp ne %struct.TYPE_21__* %41, null
  br i1 %42, label %43, label %105

43:                                               ; preds = %40
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i64 @strcasecmp(i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @config, i32 0, i32 0), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = call i32 @WIDGET(%struct.TYPE_19__* %56)
  %58 = call %struct.TYPE_19__* @icon_create(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %60, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  %67 = call i32 @WIDGET(%struct.TYPE_19__* %66)
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @box_add(%struct.TYPE_19__* %63, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %53, %50
  br label %101

71:                                               ; preds = %43
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i64 @strcasecmp(i8* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %71
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = call i32 @WIDGET(%struct.TYPE_19__* %81)
  %83 = load i32, i32* @WIDGET_TYPE_TEXTBOX_TEXT, align 4
  %84 = load i32, i32* @TB_AUTOHEIGHT, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @NORMAL, align 4
  %88 = call %struct.TYPE_19__* @textbox_create(i32 %82, i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  store %struct.TYPE_19__* %88, %struct.TYPE_19__** %90, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = call i32 @WIDGET(%struct.TYPE_19__* %96)
  %98 = load i32, i32* @TRUE, align 4
  %99 = call i32 @box_add(%struct.TYPE_19__* %93, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %78, %71
  br label %101

101:                                              ; preds = %100, %70
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = call %struct.TYPE_21__* @g_list_next(%struct.TYPE_21__* %103)
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %7, align 8
  br label %40

105:                                              ; preds = %40
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %107 = load i32, i32* @g_free, align 4
  %108 = call i32 @g_list_free_full(%struct.TYPE_21__* %106, i32 %107)
  ret void
}

declare dso_local %struct.TYPE_19__* @box_create(i32, i8*, i32) #1

declare dso_local i32 @WIDGET(%struct.TYPE_19__*) #1

declare dso_local i32 @widget_set_type(i32, i32) #1

declare dso_local %struct.TYPE_21__* @rofi_theme_get_list(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_21__* @g_list_first(%struct.TYPE_21__*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_19__* @icon_create(i32, i8*) #1

declare dso_local i32 @box_add(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_19__* @textbox_create(i32, i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @g_list_next(%struct.TYPE_21__*) #1

declare dso_local i32 @g_list_free_full(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
