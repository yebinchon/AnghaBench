; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_f.c_gtk_form_attach_child_window.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_f.c_gtk_form_attach_child_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { %struct.TYPE_24__*, i32*, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GDK_WINDOW_CHILD = common dso_local global i32 0, align 4
@GDK_INPUT_OUTPUT = common dso_local global i32 0, align 4
@GDK_EXPOSURE_MASK = common dso_local global i32 0, align 4
@GDK_WA_X = common dso_local global i32 0, align 4
@GDK_WA_Y = common dso_local global i32 0, align 4
@GDK_WA_VISUAL = common dso_local global i32 0, align 4
@GDK_WA_COLORMAP = common dso_local global i32 0, align 4
@GTK_STATE_NORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"map\00", align 1
@gtk_form_child_map = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@gtk_form_child_unmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_21__*)* @gtk_form_attach_child_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtk_form_attach_child_window(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_23__, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %124

13:                                               ; preds = %2
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %17 = call i64 @GTK_WIDGET_NO_WINDOW(%struct.TYPE_24__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %109

19:                                               ; preds = %13
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %21 = call %struct.TYPE_20__* @GTK_WIDGET(%struct.TYPE_22__* %20)
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %5, align 8
  %22 = load i32, i32* @GDK_WINDOW_CHILD, align 4
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 7
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 6
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @GDK_INPUT_OUTPUT, align 4
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = call i32 @gtk_widget_get_visual(%struct.TYPE_20__* %48)
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = call i32 @gtk_widget_get_colormap(%struct.TYPE_20__* %51)
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @GDK_EXPOSURE_MASK, align 4
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @GDK_WA_X, align 4
  %57 = load i32, i32* @GDK_WA_Y, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @GDK_WA_VISUAL, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @GDK_WA_COLORMAP, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32* @gdk_window_new(i32* %65, %struct.TYPE_23__* %6, i32 %66)
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = call i32 @gdk_window_set_user_data(i32* %72, %struct.TYPE_20__* %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @GTK_STATE_NORMAL, align 4
  %82 = call i32 @gtk_style_set_background(i32 %77, i32* %80, i32 %81)
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @gtk_widget_set_parent_window(%struct.TYPE_24__* %85, i32* %88)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @TRUE, align 4
  %94 = call i32 @gtk_form_set_static_gravity(i32* %92, i32 %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %96, align 8
  %98 = call i32 @GTK_OBJECT(%struct.TYPE_24__* %97)
  %99 = call i32 @GTK_SIGNAL_FUNC(i32* @gtk_form_child_map)
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = call i32 @gtk_signal_connect(i32 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %99, %struct.TYPE_21__* %100)
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  %105 = call i32 @GTK_OBJECT(%struct.TYPE_24__* %104)
  %106 = call i32 @GTK_SIGNAL_FUNC(i32* @gtk_form_child_unmap)
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %108 = call i32 @gtk_signal_connect(i32 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %106, %struct.TYPE_21__* %107)
  br label %124

109:                                              ; preds = %13
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %111, align 8
  %113 = call i32 @GTK_WIDGET_REALIZED(%struct.TYPE_24__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %109
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %117, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @gtk_widget_set_parent_window(%struct.TYPE_24__* %118, i32* %121)
  br label %123

123:                                              ; preds = %115, %109
  br label %124

124:                                              ; preds = %12, %123, %19
  ret void
}

declare dso_local i64 @GTK_WIDGET_NO_WINDOW(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_20__* @GTK_WIDGET(%struct.TYPE_22__*) #1

declare dso_local i32 @gtk_widget_get_visual(%struct.TYPE_20__*) #1

declare dso_local i32 @gtk_widget_get_colormap(%struct.TYPE_20__*) #1

declare dso_local i32* @gdk_window_new(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @gdk_window_set_user_data(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @gtk_style_set_background(i32, i32*, i32) #1

declare dso_local i32 @gtk_widget_set_parent_window(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @gtk_form_set_static_gravity(i32*, i32) #1

declare dso_local i32 @gtk_signal_connect(i32, i8*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @GTK_OBJECT(%struct.TYPE_24__*) #1

declare dso_local i32 @GTK_SIGNAL_FUNC(i32*) #1

declare dso_local i32 @GTK_WIDGET_REALIZED(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
