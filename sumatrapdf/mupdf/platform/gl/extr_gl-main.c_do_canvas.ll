; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_canvas.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_canvas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i64, i64, i32, i32, i64, i32, i32, i32, i64, %struct.TYPE_22__*, i64 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i64, i64 }

@do_canvas.saved_scroll_x = internal global i32 0, align 4
@do_canvas.saved_scroll_y = internal global i32 0, align 4
@do_canvas.saved_ui_x = internal global i32 0, align 4
@do_canvas.saved_ui_y = internal global i32 0, align 4
@tooltip = common dso_local global i32* null, align 8
@ALL = common dso_local global i32 0, align 4
@BOTH = common dso_local global i32 0, align 4
@NW = common dso_local global i32 0, align 4
@ui = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@canvas_x = common dso_local global i64 0, align 8
@canvas_y = common dso_local global i64 0, align 8
@canvas_w = common dso_local global i64 0, align 8
@canvas_h = common dso_local global i64 0, align 8
@doc = common dso_local global i64 0, align 8
@scroll_x = common dso_local global i32 0, align 4
@scroll_y = common dso_local global i32 0, align 4
@GLUT_ACTIVE_CTRL = common dso_local global i64 0, align 8
@currentzoom = common dso_local global i32 0, align 4
@page_tex = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@view_page_ctm = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@draw_page_ctm = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@view_page_inv_ctm = common dso_local global i32 0, align 4
@page_bounds = common dso_local global i32 0, align 4
@view_page_bounds = common dso_local global i32 0, align 4
@view_page_area = common dso_local global i32 0, align 4
@search_active = common dso_local global i32 0, align 4
@T = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@L = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Searching chapter %d page %d...\00", align 1
@search_page = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@pdf = common dso_local global i64 0, align 8
@links = common dso_local global i32 0, align 4
@search_hit_page = common dso_local global i32 0, align 4
@currentpage = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@search_hit_count = common dso_local global i64 0, align 8
@showsearch = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Search:\00", align 1
@E = common dso_local global i32 0, align 4
@search_input = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@UI_INPUT_ACCEPT = common dso_local global i64 0, align 8
@search_needle = common dso_local global i32* null, align 8
@ctx = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4
@N = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_canvas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_canvas() #0 {
  %1 = alloca %struct.TYPE_20__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__, align 8
  %5 = alloca %struct.TYPE_20__, align 8
  %6 = alloca %struct.TYPE_25__, align 4
  store i32* null, i32** @tooltip, align 8
  %7 = load i32, i32* @ALL, align 4
  %8 = load i32, i32* @BOTH, align 4
  %9 = load i32, i32* @NW, align 4
  %10 = call i32 @ui_layout(i32 %7, i32 %8, i32 %9, i32 0, i32 0)
  call void @ui_pack(%struct.TYPE_20__* sret %5, i32 0, i32 0)
  %11 = bitcast %struct.TYPE_20__* %1 to i8*
  %12 = bitcast %struct.TYPE_20__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = bitcast %struct.TYPE_20__* %4 to i8*
  %14 = bitcast %struct.TYPE_20__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 32, i1 false)
  %15 = call i32 @ui_pack_push(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %4)
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %18, %20
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %23, %25
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %28, %30
  %32 = call i32 @glScissor(i64 %17, i64 %21, i64 %26, i64 %31)
  %33 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %34 = call i32 @glEnable(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* @canvas_x, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* @canvas_y, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %40, %42
  store i64 %43, i64* @canvas_w, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %45, %47
  store i64 %48, i64* @canvas_h, align 8
  %49 = call i64 @ui_mouse_inside(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %0
  %52 = load i64, i64* @doc, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 1), align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 2), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 11), align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i64, i64* @doc, align 8
  store i64 %59, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 2), align 8
  %60 = load i32, i32* @scroll_x, align 4
  store i32 %60, i32* @do_canvas.saved_scroll_x, align 4
  %61 = load i32, i32* @scroll_y, align 4
  store i32 %61, i32* @do_canvas.saved_scroll_y, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 3), align 8
  store i32 %62, i32* @do_canvas.saved_ui_x, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 4), align 4
  store i32 %63, i32* @do_canvas.saved_ui_y, align 4
  br label %64

64:                                               ; preds = %58, %55, %51
  br label %65

65:                                               ; preds = %64, %0
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 1), align 8
  %67 = load i64, i64* @doc, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %110

69:                                               ; preds = %65
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 5), align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 6), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 7), align 4
  %75 = mul nsw i32 %73, %74
  %76 = mul nsw i32 %75, 3
  %77 = load i32, i32* @scroll_x, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* @scroll_x, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 8), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 7), align 4
  %81 = mul nsw i32 %79, %80
  %82 = mul nsw i32 %81, 3
  %83 = load i32, i32* @scroll_y, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* @scroll_y, align 4
  br label %109

85:                                               ; preds = %69
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 5), align 8
  %87 = load i64, i64* @GLUT_ACTIVE_CTRL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %85
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 8), align 8
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* @currentzoom, align 4
  %94 = call i32 @zoom_in(i32 %93)
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 3), align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 4), align 4
  %97 = call i32 @set_zoom(i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 8), align 8
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* @currentzoom, align 4
  %103 = call i32 @zoom_out(i32 %102)
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 3), align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 4), align 4
  %106 = call i32 @set_zoom(i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %98
  br label %108

108:                                              ; preds = %107, %85
  br label %109

109:                                              ; preds = %108, %72
  br label %110

110:                                              ; preds = %109, %65
  %111 = call i32 (...) @render_page_if_changed()
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 2), align 8
  %113 = load i64, i64* @doc, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load i32, i32* @do_canvas.saved_scroll_x, align 4
  %117 = load i32, i32* @do_canvas.saved_ui_x, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 3), align 8
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* @scroll_x, align 4
  %121 = load i32, i32* @do_canvas.saved_scroll_y, align 4
  %122 = load i32, i32* @do_canvas.saved_ui_y, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 4), align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* @scroll_y, align 4
  br label %126

126:                                              ; preds = %115, %110
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @page_tex, i32 0, i32 0), align 8
  %128 = load i64, i64* @canvas_w, align 8
  %129 = icmp sle i64 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  store i32 0, i32* @scroll_x, align 4
  %131 = load i64, i64* @canvas_x, align 8
  %132 = load i64, i64* @canvas_w, align 8
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @page_tex, i32 0, i32 0), align 8
  %134 = sub nsw i64 %132, %133
  %135 = sdiv i64 %134, 2
  %136 = add nsw i64 %131, %135
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %2, align 4
  br label %149

138:                                              ; preds = %126
  %139 = load i32, i32* @scroll_x, align 4
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @page_tex, i32 0, i32 0), align 8
  %141 = load i64, i64* @canvas_w, align 8
  %142 = sub nsw i64 %140, %141
  %143 = call i32 @fz_clamp(i32 %139, i32 0, i64 %142)
  store i32 %143, i32* @scroll_x, align 4
  %144 = load i64, i64* @canvas_x, align 8
  %145 = load i32, i32* @scroll_x, align 4
  %146 = sext i32 %145 to i64
  %147 = sub nsw i64 %144, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %138, %130
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @page_tex, i32 0, i32 1), align 8
  %151 = load i64, i64* @canvas_h, align 8
  %152 = icmp sle i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  store i32 0, i32* @scroll_y, align 4
  %154 = load i64, i64* @canvas_y, align 8
  %155 = load i64, i64* @canvas_h, align 8
  %156 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @page_tex, i32 0, i32 1), align 8
  %157 = sub nsw i64 %155, %156
  %158 = sdiv i64 %157, 2
  %159 = add nsw i64 %154, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %3, align 4
  br label %172

161:                                              ; preds = %149
  %162 = load i32, i32* @scroll_y, align 4
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @page_tex, i32 0, i32 1), align 8
  %164 = load i64, i64* @canvas_h, align 8
  %165 = sub nsw i64 %163, %164
  %166 = call i32 @fz_clamp(i32 %162, i32 0, i64 %165)
  store i32 %166, i32* @scroll_y, align 4
  %167 = load i64, i64* @canvas_y, align 8
  %168 = load i32, i32* @scroll_y, align 4
  %169 = sext i32 %168 to i64
  %170 = sub nsw i64 %167, %169
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %161, %153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_21__* @view_page_ctm to i8*), i8* align 4 bitcast (%struct.TYPE_21__* @draw_page_ctm to i8*), i64 8, i1 false)
  %173 = load i32, i32* %2, align 4
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @view_page_ctm, i32 0, i32 0), align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @view_page_ctm, i32 0, i32 0), align 4
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @view_page_ctm, i32 0, i32 1), align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @view_page_ctm, i32 0, i32 1), align 4
  %179 = load i64, i64* bitcast (%struct.TYPE_21__* @view_page_ctm to i64*), align 4
  %180 = call i32 @fz_invert_matrix(i64 %179)
  store i32 %180, i32* @view_page_inv_ctm, align 4
  %181 = load i32, i32* @page_bounds, align 4
  %182 = load i64, i64* bitcast (%struct.TYPE_21__* @view_page_ctm to i64*), align 4
  %183 = call i32 @fz_transform_rect(i32 %181, i64 %182)
  store i32 %183, i32* @view_page_bounds, align 4
  %184 = load i32, i32* @view_page_bounds, align 4
  %185 = call i32 @fz_irect_from_rect(i32 %184)
  store i32 %185, i32* @view_page_area, align 4
  %186 = load i32, i32* %2, align 4
  %187 = load i32, i32* %3, align 4
  %188 = call i32 @ui_draw_image(%struct.TYPE_23__* @page_tex, i32 %186, i32 %187)
  %189 = load i32, i32* @search_active, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %207

191:                                              ; preds = %172
  %192 = load i32, i32* @T, align 4
  %193 = load i32, i32* @X, align 4
  %194 = load i32, i32* @NW, align 4
  %195 = call i32 @ui_layout(i32 %192, i32 %193, i32 %194, i32 0, i32 0)
  %196 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 9), align 8
  %197 = add nsw i64 %196, 8
  %198 = call i32 @ui_panel_begin(i32 0, i64 %197, i32 4, i32 4, i32 1)
  %199 = load i32, i32* @L, align 4
  %200 = load i32, i32* @NONE, align 4
  %201 = load i32, i32* @W, align 4
  %202 = call i32 @ui_layout(i32 %199, i32 %200, i32 %201, i32 2, i32 0)
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @search_page, i32 0, i32 1), align 4
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @search_page, i32 0, i32 0), align 4
  %205 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %203, i32 %204)
  %206 = call i32 (...) @ui_panel_end()
  br label %227

207:                                              ; preds = %172
  %208 = load i64, i64* @pdf, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = call i32 @do_annotate_canvas(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %1)
  %212 = call i32 @do_widget_canvas(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %1)
  br label %213

213:                                              ; preds = %210, %207
  %214 = load i32, i32* @links, align 4
  %215 = call i32 @do_links(i32 %214)
  %216 = call i32 (...) @do_page_selection()
  %217 = load i32, i32* @search_hit_page, align 4
  %218 = load i64, i64* bitcast (%struct.TYPE_25__* @currentpage to i64*), align 4
  %219 = call i64 @eqloc(i32 %217, i64 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %213
  %222 = load i64, i64* @search_hit_count, align 8
  %223 = icmp sgt i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = call i32 (...) @do_search_hits()
  br label %226

226:                                              ; preds = %224, %221, %213
  br label %227

227:                                              ; preds = %226, %191
  %228 = load i64, i64* @showsearch, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %275

230:                                              ; preds = %227
  %231 = load i32, i32* @T, align 4
  %232 = load i32, i32* @X, align 4
  %233 = load i32, i32* @NW, align 4
  %234 = call i32 @ui_layout(i32 %231, i32 %232, i32 %233, i32 0, i32 0)
  %235 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 9), align 8
  %236 = add nsw i64 %235, 8
  %237 = call i32 @ui_panel_begin(i32 0, i64 %236, i32 4, i32 4, i32 1)
  %238 = load i32, i32* @L, align 4
  %239 = load i32, i32* @NONE, align 4
  %240 = load i32, i32* @W, align 4
  %241 = call i32 @ui_layout(i32 %238, i32 %239, i32 %240, i32 2, i32 0)
  %242 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %243 = load i32, i32* @ALL, align 4
  %244 = load i32, i32* @X, align 4
  %245 = load i32, i32* @E, align 4
  %246 = call i32 @ui_layout(i32 %243, i32 %244, i32 %245, i32 2, i32 0)
  %247 = call i64 @ui_input(%struct.TYPE_22__* @search_input, i32 0, i32 1)
  %248 = load i64, i64* @UI_INPUT_ACCEPT, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %269

250:                                              ; preds = %230
  store i64 0, i64* @showsearch, align 8
  %251 = call i64 @fz_make_location(i32 -1, i32 -1)
  %252 = bitcast %struct.TYPE_25__* %6 to i64*
  store i64 %251, i64* %252, align 4
  %253 = bitcast %struct.TYPE_25__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_25__* @search_page to i8*), i8* align 4 %253, i64 8, i1 false)
  %254 = load i32*, i32** @search_needle, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load i32, i32* @ctx, align 4
  %258 = load i32*, i32** @search_needle, align 8
  %259 = call i32 @fz_free(i32 %257, i32* %258)
  store i32* null, i32** @search_needle, align 8
  br label %260

260:                                              ; preds = %256, %250
  %261 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @search_input, i32 0, i32 0), align 8
  %262 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @search_input, i32 0, i32 1), align 8
  %263 = icmp sgt i64 %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = load i32, i32* @ctx, align 4
  %266 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @search_input, i32 0, i32 1), align 8
  %267 = call i32* @fz_strdup(i32 %265, i64 %266)
  store i32* %267, i32** @search_needle, align 8
  store i32 1, i32* @search_active, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_25__* @search_page to i8*), i8* align 4 bitcast (%struct.TYPE_25__* @currentpage to i8*), i64 8, i1 false)
  br label %268

268:                                              ; preds = %264, %260
  br label %269

269:                                              ; preds = %268, %230
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 10), align 8
  %271 = icmp ne %struct.TYPE_22__* %270, @search_input
  br i1 %271, label %272, label %273

272:                                              ; preds = %269
  store i64 0, i64* @showsearch, align 8
  br label %273

273:                                              ; preds = %272, %269
  %274 = call i32 (...) @ui_panel_end()
  br label %275

275:                                              ; preds = %273, %227
  %276 = load i32*, i32** @tooltip, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %292

278:                                              ; preds = %275
  %279 = load i32, i32* @B, align 4
  %280 = load i32, i32* @X, align 4
  %281 = load i32, i32* @N, align 4
  %282 = call i32 @ui_layout(i32 %279, i32 %280, i32 %281, i32 0, i32 0)
  %283 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @ui, i32 0, i32 9), align 8
  %284 = call i32 @ui_panel_begin(i32 0, i64 %283, i32 4, i32 4, i32 1)
  %285 = load i32, i32* @L, align 4
  %286 = load i32, i32* @NONE, align 4
  %287 = load i32, i32* @W, align 4
  %288 = call i32 @ui_layout(i32 %285, i32 %286, i32 %287, i32 2, i32 0)
  %289 = load i32*, i32** @tooltip, align 8
  %290 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %289)
  %291 = call i32 (...) @ui_panel_end()
  br label %292

292:                                              ; preds = %278, %275
  %293 = call i32 (...) @ui_pack_pop()
  %294 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %295 = call i32 @glDisable(i32 %294)
  ret void
}

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_pack_push(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8) #1

declare dso_local void @ui_pack(%struct.TYPE_20__* sret, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @glScissor(i64, i64, i64, i64) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i64 @ui_mouse_inside(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8) #1

declare dso_local i32 @set_zoom(i32, i32, i32) #1

declare dso_local i32 @zoom_in(i32) #1

declare dso_local i32 @zoom_out(i32) #1

declare dso_local i32 @render_page_if_changed(...) #1

declare dso_local i32 @fz_clamp(i32, i32, i64) #1

declare dso_local i32 @fz_invert_matrix(i64) #1

declare dso_local i32 @fz_transform_rect(i32, i64) #1

declare dso_local i32 @fz_irect_from_rect(i32) #1

declare dso_local i32 @ui_draw_image(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ui_panel_begin(i32, i64, i32, i32, i32) #1

declare dso_local i32 @ui_label(i8*, ...) #1

declare dso_local i32 @ui_panel_end(...) #1

declare dso_local i32 @do_annotate_canvas(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8) #1

declare dso_local i32 @do_widget_canvas(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8) #1

declare dso_local i32 @do_links(i32) #1

declare dso_local i32 @do_page_selection(...) #1

declare dso_local i64 @eqloc(i32, i64) #1

declare dso_local i32 @do_search_hits(...) #1

declare dso_local i64 @ui_input(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @fz_make_location(i32, i32) #1

declare dso_local i32 @fz_free(i32, i32*) #1

declare dso_local i32* @fz_strdup(i32, i64) #1

declare dso_local i32 @ui_pack_pop(...) #1

declare dso_local i32 @glDisable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
