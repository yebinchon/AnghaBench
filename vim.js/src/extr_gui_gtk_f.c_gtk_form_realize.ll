; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_f.c_gtk_form_realize.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_f.c_gtk_form_realize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8*, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i64, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_25__*, %struct.TYPE_28__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_28__*, i8* }
%struct.TYPE_27__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@GTK_REALIZED = common dso_local global i32 0, align 4
@GDK_WINDOW_CHILD = common dso_local global i32 0, align 4
@GDK_INPUT_OUTPUT = common dso_local global i32 0, align 4
@GDK_VISIBILITY_NOTIFY_MASK = common dso_local global i32 0, align 4
@GDK_WA_X = common dso_local global i32 0, align 4
@GDK_WA_Y = common dso_local global i32 0, align 4
@GDK_WA_VISUAL = common dso_local global i32 0, align 4
@GDK_WA_COLORMAP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GTK_STATE_NORMAL = common dso_local global i32 0, align 4
@gtk_form_main_filter = common dso_local global i32 0, align 4
@gtk_form_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @gtk_form_realize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gtk_form_realize(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_27__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %9 = call i32 @GTK_IS_FORM(%struct.TYPE_24__* %8)
  %10 = call i32 @g_return_if_fail(i32 %9)
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %12 = call %struct.TYPE_26__* @GTK_FORM(%struct.TYPE_24__* %11)
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %4, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = load i32, i32* @GTK_REALIZED, align 4
  %15 = call i32 @GTK_WIDGET_SET_FLAGS(%struct.TYPE_26__* %13, i32 %14)
  %16 = load i32, i32* @GDK_WINDOW_CHILD, align 4
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 2
  store i64 %21, i64* %22, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 7
  store i32 %31, i32* %32, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 6
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @GDK_INPUT_OUTPUT, align 4
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 5
  store i32 %38, i32* %39, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %41 = call i32 @gtk_widget_get_visual(%struct.TYPE_24__* %40)
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %44 = call i32 @gtk_widget_get_colormap(%struct.TYPE_24__* %43)
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* @GDK_VISIBILITY_NOTIFY_MASK, align 4
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @GDK_WA_X, align 4
  %49 = load i32, i32* @GDK_WA_Y, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @GDK_WA_VISUAL, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @GDK_WA_COLORMAP, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %6, align 4
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %56 = call i8* @gtk_widget_get_parent_window(%struct.TYPE_24__* %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i8* @gdk_window_new(i8* %56, %struct.TYPE_27__* %5, i32 %57)
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %65 = call i32 @gdk_window_set_user_data(i8* %63, %struct.TYPE_24__* %64)
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %69 = call i32 @gtk_widget_get_events(%struct.TYPE_24__* %68)
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %5, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i8* @gdk_window_new(i8* %73, %struct.TYPE_27__* %5, i32 %74)
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %82 = call i32 @gdk_window_set_user_data(i8* %80, %struct.TYPE_24__* %81)
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @TRUE, align 4
  %87 = call i32 @gtk_form_set_static_gravity(i8* %85, i32 %86)
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @gtk_style_attach(i32 %90, i8* %93)
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @GTK_STATE_NORMAL, align 4
  %104 = call i32 @gtk_style_set_background(i32 %99, i8* %102, i32 %103)
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* @GTK_STATE_NORMAL, align 4
  %112 = call i32 @gtk_style_set_background(i32 %107, i8* %110, i32 %111)
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* @gtk_form_main_filter, align 4
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %118 = call i32 @gdk_window_add_filter(i8* %115, i32 %116, %struct.TYPE_26__* %117)
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* @gtk_form_filter, align 4
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %124 = call i32 @gdk_window_add_filter(i8* %121, i32 %122, %struct.TYPE_26__* %123)
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %126, align 8
  store %struct.TYPE_28__* %127, %struct.TYPE_28__** %3, align 8
  br label %128

128:                                              ; preds = %148, %1
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %130 = icmp ne %struct.TYPE_28__* %129, null
  br i1 %130, label %131, label %152

131:                                              ; preds = %128
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %133, align 8
  store %struct.TYPE_25__* %134, %struct.TYPE_25__** %7, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %137 = call i32 @gtk_form_attach_child_window(%struct.TYPE_26__* %135, %struct.TYPE_25__* %136)
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @GTK_WIDGET_VISIBLE(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %131
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %146 = call i32 @gtk_form_realize_child(%struct.TYPE_26__* %144, %struct.TYPE_25__* %145)
  br label %147

147:                                              ; preds = %143, %131
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %150, align 8
  store %struct.TYPE_28__* %151, %struct.TYPE_28__** %3, align 8
  br label %128

152:                                              ; preds = %128
  ret void
}

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @GTK_IS_FORM(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_26__* @GTK_FORM(%struct.TYPE_24__*) #1

declare dso_local i32 @GTK_WIDGET_SET_FLAGS(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @gtk_widget_get_visual(%struct.TYPE_24__*) #1

declare dso_local i32 @gtk_widget_get_colormap(%struct.TYPE_24__*) #1

declare dso_local i8* @gdk_window_new(i8*, %struct.TYPE_27__*, i32) #1

declare dso_local i8* @gtk_widget_get_parent_window(%struct.TYPE_24__*) #1

declare dso_local i32 @gdk_window_set_user_data(i8*, %struct.TYPE_24__*) #1

declare dso_local i32 @gtk_widget_get_events(%struct.TYPE_24__*) #1

declare dso_local i32 @gtk_form_set_static_gravity(i8*, i32) #1

declare dso_local i32 @gtk_style_attach(i32, i8*) #1

declare dso_local i32 @gtk_style_set_background(i32, i8*, i32) #1

declare dso_local i32 @gdk_window_add_filter(i8*, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @gtk_form_attach_child_window(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i64 @GTK_WIDGET_VISIBLE(i32) #1

declare dso_local i32 @gtk_form_realize_child(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
