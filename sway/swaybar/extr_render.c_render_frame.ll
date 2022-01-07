; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_frame.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32, i64, i32, i32, i32*, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.wl_callback = type { i32 }

@CAIRO_CONTENT_COLOR_ALPHA = common dso_local global i32 0, align 4
@CAIRO_ANTIALIAS_BEST = common dso_local global i32 0, align 4
@CAIRO_HINT_STYLE_FULL = common dso_local global i32 0, align 4
@CAIRO_ANTIALIAS_SUBPIXEL = common dso_local global i32 0, align 4
@CAIRO_OPERATOR_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dock\00", align 1
@output_frame_listener = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_frame(%struct.swaybar_output* %0) #0 {
  %2 = alloca %struct.swaybar_output*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.wl_callback*, align 8
  store %struct.swaybar_output* %0, %struct.swaybar_output** %2, align 8
  %10 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %11 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %17 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %252

21:                                               ; preds = %1
  %22 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %23 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %22, i32 0, i32 10
  %24 = call i32 @free_hotspots(i32* %23)
  %25 = load i32, i32* @CAIRO_CONTENT_COLOR_ALPHA, align 4
  %26 = call i32* @cairo_recording_surface_create(i32 %25, i32* null)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* @cairo_create(i32* %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @CAIRO_ANTIALIAS_BEST, align 4
  %31 = call i32 @cairo_set_antialias(i32* %29, i32 %30)
  %32 = call i32* (...) @cairo_font_options_create()
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @CAIRO_HINT_STYLE_FULL, align 4
  %35 = call i32 @cairo_font_options_set_hint_style(i32* %33, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @CAIRO_ANTIALIAS_SUBPIXEL, align 4
  %38 = call i32 @cairo_font_options_set_antialias(i32* %36, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %41 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @to_cairo_subpixel_order(i32 %42)
  %44 = call i32 @cairo_font_options_set_subpixel_order(i32* %39, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @cairo_set_font_options(i32* %45, i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @cairo_font_options_destroy(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @cairo_save(i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @CAIRO_OPERATOR_CLEAR, align 4
  %54 = call i32 @cairo_set_operator(i32* %52, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @cairo_paint(i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @cairo_restore(i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %61 = call i32 @render_to_cairo(i32* %59, %struct.swaybar_output* %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %63 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %62, i32 0, i32 7
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %21
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %21
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %76 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %81 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %146

84:                                               ; preds = %79, %73
  %85 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %86 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @zwlr_layer_surface_v1_set_size(i32 %87, i32 0, i32 %88)
  %90 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %91 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %94 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %93, i32 0, i32 7
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %102 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %101, i32 0, i32 7
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %110 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %109, i32 0, i32 7
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %118 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %117, i32 0, i32 7
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @zwlr_layer_surface_v1_set_margin(i32 %92, i32 %100, i32 %108, i32 %116, i32 %124)
  %126 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %127 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %126, i32 0, i32 7
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @strcmp(i32 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %84
  %136 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %137 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @zwlr_layer_surface_v1_set_exclusive_zone(i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %135, %84
  %142 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %143 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @wl_surface_commit(i32* %144)
  br label %247

146:                                              ; preds = %79
  %147 = load i32, i32* %6, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %246

149:                                              ; preds = %146
  %150 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %151 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %150, i32 0, i32 7
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %156 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %159 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %162 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = mul nsw i64 %160, %164
  %166 = trunc i64 %165 to i32
  %167 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %168 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %171 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = mul nsw i32 %169, %172
  %174 = call %struct.TYPE_8__* @get_next_buffer(i32 %154, i32 %157, i32 %166, i32 %173)
  %175 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %176 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %175, i32 0, i32 5
  store %struct.TYPE_8__* %174, %struct.TYPE_8__** %176, align 8
  %177 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %178 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %177, i32 0, i32 5
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = icmp ne %struct.TYPE_8__* %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %149
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @cairo_surface_destroy(i32* %182)
  %184 = load i32*, i32** %4, align 8
  %185 = call i32 @cairo_destroy(i32* %184)
  br label %252

186:                                              ; preds = %149
  %187 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %188 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %187, i32 0, i32 5
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  store i32* %191, i32** %8, align 8
  %192 = load i32*, i32** %8, align 8
  %193 = call i32 @cairo_save(i32* %192)
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* @CAIRO_OPERATOR_CLEAR, align 4
  %196 = call i32 @cairo_set_operator(i32* %194, i32 %195)
  %197 = load i32*, i32** %8, align 8
  %198 = call i32 @cairo_paint(i32* %197)
  %199 = load i32*, i32** %8, align 8
  %200 = call i32 @cairo_restore(i32* %199)
  %201 = load i32*, i32** %8, align 8
  %202 = load i32*, i32** %3, align 8
  %203 = call i32 @cairo_set_source_surface(i32* %201, i32* %202, double 0.000000e+00, double 0.000000e+00)
  %204 = load i32*, i32** %8, align 8
  %205 = call i32 @cairo_paint(i32* %204)
  %206 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %207 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %210 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @wl_surface_set_buffer_scale(i32* %208, i32 %211)
  %213 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %214 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %217 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %216, i32 0, i32 5
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @wl_surface_attach(i32* %215, i32 %220, i32 0, i32 0)
  %222 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %223 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %226 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %230 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @wl_surface_damage(i32* %224, i32 0, i32 0, i32 %228, i32 %231)
  %233 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %234 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %233, i32 0, i32 4
  %235 = load i32*, i32** %234, align 8
  %236 = call %struct.wl_callback* @wl_surface_frame(i32* %235)
  store %struct.wl_callback* %236, %struct.wl_callback** %9, align 8
  %237 = load %struct.wl_callback*, %struct.wl_callback** %9, align 8
  %238 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %239 = call i32 @wl_callback_add_listener(%struct.wl_callback* %237, i32* @output_frame_listener, %struct.swaybar_output* %238)
  %240 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %241 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %240, i32 0, i32 3
  store i32 1, i32* %241, align 4
  %242 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %243 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %242, i32 0, i32 4
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @wl_surface_commit(i32* %244)
  br label %246

246:                                              ; preds = %186, %146
  br label %247

247:                                              ; preds = %246, %141
  %248 = load i32*, i32** %3, align 8
  %249 = call i32 @cairo_surface_destroy(i32* %248)
  %250 = load i32*, i32** %4, align 8
  %251 = call i32 @cairo_destroy(i32* %250)
  br label %252

252:                                              ; preds = %247, %181, %20
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_hotspots(i32*) #1

declare dso_local i32* @cairo_recording_surface_create(i32, i32*) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32 @cairo_set_antialias(i32*, i32) #1

declare dso_local i32* @cairo_font_options_create(...) #1

declare dso_local i32 @cairo_font_options_set_hint_style(i32*, i32) #1

declare dso_local i32 @cairo_font_options_set_antialias(i32*, i32) #1

declare dso_local i32 @cairo_font_options_set_subpixel_order(i32*, i32) #1

declare dso_local i32 @to_cairo_subpixel_order(i32) #1

declare dso_local i32 @cairo_set_font_options(i32*, i32*) #1

declare dso_local i32 @cairo_font_options_destroy(i32*) #1

declare dso_local i32 @cairo_save(i32*) #1

declare dso_local i32 @cairo_set_operator(i32*, i32) #1

declare dso_local i32 @cairo_paint(i32*) #1

declare dso_local i32 @cairo_restore(i32*) #1

declare dso_local i32 @render_to_cairo(i32*, %struct.swaybar_output*) #1

declare dso_local i32 @zwlr_layer_surface_v1_set_size(i32, i32, i32) #1

declare dso_local i32 @zwlr_layer_surface_v1_set_margin(i32, i32, i32, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @zwlr_layer_surface_v1_set_exclusive_zone(i32, i32) #1

declare dso_local i32 @wl_surface_commit(i32*) #1

declare dso_local %struct.TYPE_8__* @get_next_buffer(i32, i32, i32, i32) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

declare dso_local i32 @cairo_set_source_surface(i32*, i32*, double, double) #1

declare dso_local i32 @wl_surface_set_buffer_scale(i32*, i32) #1

declare dso_local i32 @wl_surface_attach(i32*, i32, i32, i32) #1

declare dso_local i32 @wl_surface_damage(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.wl_callback* @wl_surface_frame(i32*) #1

declare dso_local i32 @wl_callback_add_listener(%struct.wl_callback*, i32*, %struct.swaybar_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
