; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_get_desired_width.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_textbox.c_textbox_get_desired_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }

@TB_INDICATOR = common dso_local global i32 0, align 4
@DOT_OFFSET = common dso_local global i32 0, align 4
@TB_AUTOWIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@ROFI_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @textbox_get_desired_width(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %89

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = bitcast %struct.TYPE_7__* %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TB_INDICATOR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @DOT_OFFSET, align 4
  br label %26

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TB_AUTOWIDTH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call i32 @textbox_get_font_width(%struct.TYPE_8__* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = call i32 @widget_padding_get_padding_width(%struct.TYPE_7__* %42)
  %44 = add nsw i32 %41, %43
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %44, %45
  store i32 %46, i32* %2, align 4
  br label %89

47:                                               ; preds = %32, %26
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = call i32 @WIDGET(%struct.TYPE_8__* %48)
  %50 = call i32 @rofi_theme_get_distance(i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ROFI_ORIENTATION_HORIZONTAL, align 4
  %53 = call i32 @distance_get_pixel(i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %89

58:                                               ; preds = %47
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = call i32 @WIDGET(%struct.TYPE_8__* %59)
  %61 = call i32 @widget_padding_get_left(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = call i32 @WIDGET(%struct.TYPE_8__* %62)
  %64 = call i64 @widget_padding_get_right(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pango_layout_get_width(i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pango_layout_set_width(i32 %75, i32 -1)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = call i32 @textbox_get_font_width(%struct.TYPE_8__* %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @pango_layout_set_width(i32 %81, i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %5, align 4
  %88 = add i32 %86, %87
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %58, %56, %39, %13
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @textbox_get_font_width(%struct.TYPE_8__*) #1

declare dso_local i32 @widget_padding_get_padding_width(%struct.TYPE_7__*) #1

declare dso_local i32 @rofi_theme_get_distance(i32, i8*, i32) #1

declare dso_local i32 @WIDGET(%struct.TYPE_8__*) #1

declare dso_local i32 @distance_get_pixel(i32, i32) #1

declare dso_local i32 @widget_padding_get_left(i32) #1

declare dso_local i64 @widget_padding_get_right(i32) #1

declare dso_local i32 @pango_layout_get_width(i32) #1

declare dso_local i32 @pango_layout_set_width(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
