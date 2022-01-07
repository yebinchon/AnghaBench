; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_update_marks_texture.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_update_marks_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sway_container = type { double, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8** }
%struct.wlr_texture = type { i32 }
%struct.border_colors = type { i32*, i32* }
%struct.sway_output = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double, i32 }
%struct.wlr_renderer = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unable to allocate memory\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@config = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CAIRO_FORMAT_ARGB32 = common dso_local global i32 0, align 4
@CAIRO_ANTIALIAS_BEST = common dso_local global i32 0, align 4
@WL_SHM_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, %struct.wlr_texture**, %struct.border_colors*)* @update_marks_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_marks_texture(%struct.sway_container* %0, %struct.wlr_texture** %1, %struct.border_colors* %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.wlr_texture**, align 8
  %6 = alloca %struct.border_colors*, align 8
  %7 = alloca %struct.sway_output*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.wlr_renderer*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store %struct.wlr_texture** %1, %struct.wlr_texture*** %5, align 8
  store %struct.border_colors* %2, %struct.border_colors** %6, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %26 = call %struct.sway_output* @container_get_effective_output(%struct.sway_container* %25)
  store %struct.sway_output* %26, %struct.sway_output** %7, align 8
  %27 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %28 = icmp ne %struct.sway_output* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %255

30:                                               ; preds = %3
  %31 = load %struct.wlr_texture**, %struct.wlr_texture*** %5, align 8
  %32 = load %struct.wlr_texture*, %struct.wlr_texture** %31, align 8
  %33 = icmp ne %struct.wlr_texture* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.wlr_texture**, %struct.wlr_texture*** %5, align 8
  %36 = load %struct.wlr_texture*, %struct.wlr_texture** %35, align 8
  %37 = call i32 @wlr_texture_destroy(%struct.wlr_texture* %36)
  %38 = load %struct.wlr_texture**, %struct.wlr_texture*** %5, align 8
  store %struct.wlr_texture* null, %struct.wlr_texture** %38, align 8
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %41 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %255

47:                                               ; preds = %39
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %78, %47
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %48
  %57 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %58 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 95
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load i8*, i8** %10, align 8
  %73 = call i64 @strlen(i8* %72)
  %74 = add nsw i64 %73, 2
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %71, %56
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %48

81:                                               ; preds = %48
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, 1
  %84 = call i8* @calloc(i64 %83, i32 1)
  store i8* %84, i8** %11, align 8
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  %87 = call i8* @malloc(i64 %86)
  store i8* %87, i8** %12, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i8*, i8** %12, align 8
  %92 = icmp ne i8* %91, null
  br label %93

93:                                               ; preds = %90, %81
  %94 = phi i1 [ false, %81 ], [ %92, %90 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @sway_assert(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @free(i8* %99)
  br label %255

101:                                              ; preds = %93
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %133, %101
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %105 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %103, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %102
  %111 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %112 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %14, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 95
  br i1 %124, label %125, label %132

125:                                              ; preds = %110
  %126 = load i8*, i8** %12, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = call i32 @sprintf(i8* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %127)
  %129 = load i8*, i8** %11, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = call i32 @strcat(i8* %129, i8* %130)
  br label %132

132:                                              ; preds = %125, %110
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %102

136:                                              ; preds = %102
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %140 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %139, i32 0, i32 0
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load double, double* %142, align 8
  store double %143, double* %15, align 8
  store i32 0, i32* %16, align 4
  %144 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %145 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %144, i32 0, i32 0
  %146 = load double, double* %145, align 8
  %147 = load double, double* %15, align 8
  %148 = fmul double %146, %147
  %149 = fptosi double %148 to i32
  store i32 %149, i32* %17, align 4
  %150 = call i32* @cairo_create(i32* null)
  store i32* %150, i32** %18, align 8
  %151 = load i32*, i32** %18, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load double, double* %15, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 @get_text_size(i32* %151, i32 %154, i32* %16, i32* null, i32* null, double %155, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %156)
  %158 = load i32*, i32** %18, align 8
  %159 = call i32 @cairo_destroy(i32* %158)
  %160 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %17, align 4
  %163 = call i32* @cairo_image_surface_create(i32 %160, i32 %161, i32 %162)
  store i32* %163, i32** %19, align 8
  %164 = load i32*, i32** %19, align 8
  %165 = call i32* @cairo_create(i32* %164)
  store i32* %165, i32** %20, align 8
  %166 = load i32*, i32** %20, align 8
  %167 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %168 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %173 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %178 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %183 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @cairo_set_source_rgba(i32* %166, i32 %171, i32 %176, i32 %181, i32 %186)
  %188 = load i32*, i32** %20, align 8
  %189 = call i32 @cairo_paint(i32* %188)
  %190 = load i32*, i32** %20, align 8
  %191 = call i32* @pango_cairo_create_context(i32* %190)
  store i32* %191, i32** %21, align 8
  %192 = load i32*, i32** %20, align 8
  %193 = load i32, i32* @CAIRO_ANTIALIAS_BEST, align 4
  %194 = call i32 @cairo_set_antialias(i32* %192, i32 %193)
  %195 = load i32*, i32** %20, align 8
  %196 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %197 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %202 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %207 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.border_colors*, %struct.border_colors** %6, align 8
  %212 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @cairo_set_source_rgba(i32* %195, i32 %200, i32 %205, i32 %210, i32 %215)
  %217 = load i32*, i32** %20, align 8
  %218 = call i32 @cairo_move_to(i32* %217, i32 0, i32 0)
  %219 = load i32*, i32** %20, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** @config, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load double, double* %15, align 8
  %224 = load i8*, i8** %11, align 8
  %225 = call i32 @pango_printf(i32* %219, i32 %222, double %223, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %224)
  %226 = load i32*, i32** %19, align 8
  %227 = call i32 @cairo_surface_flush(i32* %226)
  %228 = load i32*, i32** %19, align 8
  %229 = call i8* @cairo_image_surface_get_data(i32* %228)
  store i8* %229, i8** %22, align 8
  %230 = load i32, i32* @CAIRO_FORMAT_ARGB32, align 4
  %231 = load i32, i32* %16, align 4
  %232 = call i32 @cairo_format_stride_for_width(i32 %230, i32 %231)
  store i32 %232, i32* %23, align 4
  %233 = load %struct.sway_output*, %struct.sway_output** %7, align 8
  %234 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %233, i32 0, i32 0
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call %struct.wlr_renderer* @wlr_backend_get_renderer(i32 %237)
  store %struct.wlr_renderer* %238, %struct.wlr_renderer** %24, align 8
  %239 = load %struct.wlr_renderer*, %struct.wlr_renderer** %24, align 8
  %240 = load i32, i32* @WL_SHM_FORMAT_ARGB8888, align 4
  %241 = load i32, i32* %23, align 4
  %242 = load i32, i32* %16, align 4
  %243 = load i32, i32* %17, align 4
  %244 = load i8*, i8** %22, align 8
  %245 = call %struct.wlr_texture* @wlr_texture_from_pixels(%struct.wlr_renderer* %239, i32 %240, i32 %241, i32 %242, i32 %243, i8* %244)
  %246 = load %struct.wlr_texture**, %struct.wlr_texture*** %5, align 8
  store %struct.wlr_texture* %245, %struct.wlr_texture** %246, align 8
  %247 = load i32*, i32** %19, align 8
  %248 = call i32 @cairo_surface_destroy(i32* %247)
  %249 = load i32*, i32** %21, align 8
  %250 = call i32 @g_object_unref(i32* %249)
  %251 = load i32*, i32** %20, align 8
  %252 = call i32 @cairo_destroy(i32* %251)
  %253 = load i8*, i8** %11, align 8
  %254 = call i32 @free(i8* %253)
  br label %255

255:                                              ; preds = %136, %98, %46, %29
  ret void
}

declare dso_local %struct.sway_output* @container_get_effective_output(%struct.sway_container*) #1

declare dso_local i32 @wlr_texture_destroy(%struct.wlr_texture*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, double, i32, i8*, i8*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

declare dso_local i32* @cairo_image_surface_create(i32, i32, i32) #1

declare dso_local i32 @cairo_set_source_rgba(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cairo_paint(i32*) #1

declare dso_local i32* @pango_cairo_create_context(i32*) #1

declare dso_local i32 @cairo_set_antialias(i32*, i32) #1

declare dso_local i32 @cairo_move_to(i32*, i32, i32) #1

declare dso_local i32 @pango_printf(i32*, i32, double, i32, i8*, i8*) #1

declare dso_local i32 @cairo_surface_flush(i32*) #1

declare dso_local i8* @cairo_image_surface_get_data(i32*) #1

declare dso_local i32 @cairo_format_stride_for_width(i32, i32) #1

declare dso_local %struct.wlr_renderer* @wlr_backend_get_renderer(i32) #1

declare dso_local %struct.wlr_texture* @wlr_texture_from_pixels(%struct.wlr_renderer*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
