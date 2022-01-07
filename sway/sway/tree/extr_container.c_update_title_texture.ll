; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_update_title_texture.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_update_title_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.sway_container = type { double, i32 }
%struct.wlr_texture = type { i32 }
%struct.border_colors = type { i32*, i32* }
%struct.sway_output = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { double, i32, i32 }
%struct.wlr_renderer = type { i32 }

@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4
@CAIRO_ANTIALIAS_BEST = common dso_local global i32 0, align 4
@CAIRO_HINT_STYLE_FULL = common dso_local global i32 0, align 4
@CAIRO_ANTIALIAS_SUBPIXEL = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WL_SHM_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, %struct.wlr_texture**, %struct.border_colors*)* @update_title_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_title_texture(%struct.sway_container* %0, %struct.wlr_texture** %1, %struct.border_colors* %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.wlr_texture**, align 8
  %6 = alloca %struct.border_colors*, align 8
  %7 = alloca %struct.sway_output*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.wlr_renderer*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store %struct.wlr_texture** %1, %struct.wlr_texture*** %5, align 8
  store %struct.border_colors* %2, %struct.border_colors** %6, align 8
  %20 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %21 = call %struct.sway_output* @container_get_effective_output(%struct.sway_container* %20)
  store %struct.sway_output* %21, %struct.sway_output** %7, align 8
  %22 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %23 = icmp ne %struct.sway_output* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %196

25:                                               ; preds = %3
  %26 = load %struct.wlr_texture**, %struct.wlr_texture*** %5, align 8
  %27 = load %struct.wlr_texture*, %struct.wlr_texture** %26, align 8
  %28 = icmp ne %struct.wlr_texture* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.wlr_texture**, %struct.wlr_texture*** %5, align 8
  %31 = load %struct.wlr_texture*, %struct.wlr_texture** %30, align 8
  %32 = call i32 @wlr_texture_destroy(%struct.wlr_texture* %31)
  %33 = load %struct.wlr_texture**, %struct.wlr_texture*** %5, align 8
  store %struct.wlr_texture* null, %struct.wlr_texture** %33, align 8
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %36 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %196

40:                                               ; preds = %34
  %41 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %42 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  store double %45, double* %8, align 8
  store i32 0, i32* %9, align 4
  %46 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %47 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = load double, double* %8, align 8
  %50 = fmul double %48, %49
  %51 = fptosi double %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %53 = call i32* @cairo_image_surface_create(i32 %52, i32 0, i32 0)
  store i32* %53, i32** %11, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32* @cairo_create(i32* %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* @CAIRO_ANTIALIAS_BEST, align 4
  %58 = call i32 @cairo_set_antialias(i32* %56, i32 %57)
  %59 = call i32* (...) @cairo_font_options_create()
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* @CAIRO_HINT_STYLE_FULL, align 4
  %62 = call i32 @cairo_font_options_set_hint_style(i32* %60, i32 %61)
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* @CAIRO_ANTIALIAS_SUBPIXEL, align 4
  %65 = call i32 @cairo_font_options_set_antialias(i32* %63, i32 %64)
  %66 = load i32*, i32** %13, align 8
  %67 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %68 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @to_cairo_subpixel_order(i32 %71)
  %73 = call i32 @cairo_font_options_set_subpixel_order(i32* %66, i32 %72)
  %74 = load i32*, i32** %12, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @cairo_set_font_options(i32* %74, i32* %75)
  %77 = load i32*, i32** %12, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load double, double* %8, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %86 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @get_text_size(i32* %77, i32 %80, i32* %9, i32* null, i32* null, double %81, i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @cairo_surface_destroy(i32* %89)
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @cairo_destroy(i32* %91)
  %93 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32* @cairo_image_surface_create(i32 %93, i32 %94, i32 %95)
  store i32* %96, i32** %14, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = call i32* @cairo_create(i32* %97)
  store i32* %98, i32** %15, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = load i32, i32* @CAIRO_ANTIALIAS_BEST, align 4
  %101 = call i32 @cairo_set_antialias(i32* %99, i32 %100)
  %102 = load i32*, i32** %15, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @cairo_set_font_options(i32* %102, i32* %103)
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @cairo_font_options_destroy(i32* %105)
  %107 = load i32*, i32** %15, align 8
  %108 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %109 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %114 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %119 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %124 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @cairo_set_source_rgba(i32* %107, i32 %112, i32 %117, i32 %122, i32 %127)
  %129 = load i32*, i32** %15, align 8
  %130 = call i32 @cairo_paint(i32* %129)
  %131 = load i32*, i32** %15, align 8
  %132 = call i32* @pango_cairo_create_context(i32* %131)
  store i32* %132, i32** %16, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %135 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %140 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %145 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %150 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @cairo_set_source_rgba(i32* %133, i32 %138, i32 %143, i32 %148, i32 %153)
  %155 = load i32*, i32** %15, align 8
  %156 = call i32 @cairo_move_to(i32* %155, i32 0, i32 0)
  %157 = load i32*, i32** %15, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load double, double* %8, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %166 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @pango_printf(i32* %157, i32 %160, double %161, i32 %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %167)
  %169 = load i32*, i32** %14, align 8
  %170 = call i32 @cairo_surface_flush(i32* %169)
  %171 = load i32*, i32** %14, align 8
  %172 = call i8* @cairo_image_surface_get_data(i32* %171)
  store i8* %172, i8** %17, align 8
  %173 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @cairo_format_stride_for_width(i32 %173, i32 %174)
  store i32 %175, i32* %18, align 4
  %176 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %177 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %176, i32 0, i32 0
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call %struct.wlr_renderer* @wlr_backend_get_renderer(i32 %180)
  store %struct.wlr_renderer* %181, %struct.wlr_renderer** %19, align 8
  %182 = load %struct.wlr_renderer*, %struct.wlr_renderer** %19, align 8
  %183 = load i32, i32* @WL_SHM_FORMAT_ARGB8888, align 4
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i8*, i8** %17, align 8
  %188 = call %struct.wlr_texture* @wlr_texture_from_pixels(%struct.wlr_renderer* %182, i32 %183, i32 %184, i32 %185, i32 %186, i8* %187)
  %189 = load %struct.wlr_texture**, %struct.wlr_texture*** %5, align 8
  store %struct.wlr_texture* %188, %struct.wlr_texture** %189, align 8
  %190 = load i32*, i32** %14, align 8
  %191 = call i32 @cairo_surface_destroy(i32* %190)
  %192 = load i32*, i32** %16, align 8
  %193 = call i32 @g_object_unref(i32* %192)
  %194 = load i32*, i32** %15, align 8
  %195 = call i32 @cairo_destroy(i32* %194)
  br label %196

196:                                              ; preds = %40, %39, %24
  ret void
}

declare dso_local %struct.sway_output* @container_get_effective_output(%struct.sway_container*) #1

declare dso_local i32 @wlr_texture_destroy(%struct.wlr_texture*) #1

declare dso_local i32* @cairo_image_surface_create(i32, i32, i32) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32 @cairo_set_antialias(i32*, i32) #1

declare dso_local i32* @cairo_font_options_create(...) #1

declare dso_local i32 @cairo_font_options_set_hint_style(i32*, i32) #1

declare dso_local i32 @cairo_font_options_set_antialias(i32*, i32) #1

declare dso_local i32 @cairo_font_options_set_subpixel_order(i32*, i32) #1

declare dso_local i32 @to_cairo_subpixel_order(i32) #1

declare dso_local i32 @cairo_set_font_options(i32*, i32*) #1

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, double, i32, i8*, i32) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

declare dso_local i32 @cairo_font_options_destroy(i32*) #1

declare dso_local i32 @cairo_set_source_rgba(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cairo_paint(i32*) #1

declare dso_local i32* @pango_cairo_create_context(i32*) #1

declare dso_local i32 @cairo_move_to(i32*, i32, i32) #1

declare dso_local i32 @pango_printf(i32*, i32, double, i32, i8*, i32) #1

declare dso_local i32 @cairo_surface_flush(i32*) #1

declare dso_local i8* @cairo_image_surface_get_data(i32*) #1

declare dso_local i32 @cairo_format_stride_for_width(i32, i32) #1

declare dso_local %struct.wlr_renderer* @wlr_backend_get_renderer(i32) #1

declare dso_local %struct.wlr_texture* @wlr_texture_from_pixels(%struct.wlr_renderer*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @g_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
