; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-form.c_do_widget_canvas.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-form.c_do_widget_canvas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i64, i64, i64 }

@pdf = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@page = common dso_local global i32 0, align 4
@view_page_ctm = common dso_local global i32 0, align 4
@ui = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@selected_annot = common dso_local global %struct.TYPE_24__* null, align 8
@PDF_ANNOT_WIDGET = common dso_local global i64 0, align 8
@showform = common dso_local global i64 0, align 8
@GL_ONE = common dso_local global i32 0, align 4
@GL_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GL_BLEND = common dso_local global i32 0, align 4
@GL_LINE_STIPPLE = common dso_local global i32 0, align 4
@GL_ONE_MINUS_DST_COLOR = common dso_local global i32 0, align 4
@GL_ZERO = common dso_local global i32 0, align 4
@GL_LINE_LOOP = common dso_local global i32 0, align 4
@PDF_WIDGET_TYPE_SIGNATURE = common dso_local global i32 0, align 4
@PDF_FIELD_IS_READ_ONLY = common dso_local global i32 0, align 4
@ch_dialog = common dso_local global i32 0, align 4
@ch_widget = common dso_local global %struct.TYPE_24__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_widget_canvas(%struct.TYPE_25__* byval(%struct.TYPE_25__) align 8 %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__, align 8
  %5 = alloca %struct.TYPE_25__, align 8
  %6 = load i32, i32* @pdf, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %255

9:                                                ; preds = %1
  %10 = load i32, i32* @ctx, align 4
  %11 = load i32, i32* @page, align 4
  %12 = call %struct.TYPE_24__* @pdf_first_widget(i32 %10, i32 %11)
  store %struct.TYPE_24__* %12, %struct.TYPE_24__** %2, align 8
  br label %13

13:                                               ; preds = %244, %9
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %15 = icmp ne %struct.TYPE_24__* %14, null
  br i1 %15, label %16, label %248

16:                                               ; preds = %13
  %17 = load i32, i32* @ctx, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %19 = call i32 @pdf_bound_widget(i32 %17, %struct.TYPE_24__* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @view_page_ctm, align 4
  %22 = call i32 @fz_transform_rect(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  call void @fz_irect_from_rect(%struct.TYPE_25__* sret %5, i32 %23)
  %24 = bitcast %struct.TYPE_25__* %4 to i8*
  %25 = bitcast %struct.TYPE_25__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 32, i1 false)
  %26 = call i64 @ui_mouse_inside(%struct.TYPE_25__* byval(%struct.TYPE_25__) align 8 %0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %16
  %29 = call i64 @ui_mouse_inside(%struct.TYPE_25__* byval(%struct.TYPE_25__) align 8 %4)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %28
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ctx, align 4
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %39 = call i32 @pdf_annot_event_enter(i32 %37, %struct.TYPE_24__* %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  store %struct.TYPE_24__* %43, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 3), align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 2), align 8
  %45 = icmp ne %struct.TYPE_24__* %44, null
  br i1 %45, label %76, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 1), align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %46
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  store %struct.TYPE_24__* %50, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 2), align 8
  %51 = load i32, i32* @ctx, align 4
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %53 = call i32 @pdf_annot_event_down(i32 %51, %struct.TYPE_24__* %52)
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** @selected_annot, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %56 = icmp ne %struct.TYPE_24__* %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** @selected_annot, align 8
  %59 = icmp ne %struct.TYPE_24__* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32, i32* @ctx, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** @selected_annot, align 8
  %63 = call i64 @pdf_annot_type(i32 %61, %struct.TYPE_24__* %62)
  %64 = load i64, i64* @PDF_ANNOT_WIDGET, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @ctx, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** @selected_annot, align 8
  %69 = call i32 @pdf_annot_event_blur(i32 %67, %struct.TYPE_24__* %68)
  br label %70

70:                                               ; preds = %66, %60, %57
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  store %struct.TYPE_24__* %71, %struct.TYPE_24__** @selected_annot, align 8
  %72 = load i32, i32* @ctx, align 4
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %74 = call i32 @pdf_annot_event_focus(i32 %72, %struct.TYPE_24__* %73)
  br label %75

75:                                               ; preds = %70, %49
  br label %76

76:                                               ; preds = %75, %46, %40
  br label %89

77:                                               ; preds = %28, %16
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* @ctx, align 4
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %85 = call i32 @pdf_annot_event_exit(i32 %83, %struct.TYPE_24__* %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %76
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 2), align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %92 = icmp eq %struct.TYPE_24__* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 1), align 8
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i1 [ false, %89 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i64, i64* @showform, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %96
  %104 = load i32, i32* @GL_ONE, align 4
  %105 = load i32, i32* @GL_ONE_MINUS_SRC_ALPHA, align 4
  %106 = call i32 @glBlendFunc(i32 %104, i32 %105)
  %107 = load i32, i32* @GL_BLEND, align 4
  %108 = call i32 @glEnable(i32 %107)
  %109 = call i32 @glColor4f(i32 0, i32 0, i32 1, i32 0)
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @glRectf(i64 %111, i64 %113, i64 %115, i64 %117)
  %119 = load i32, i32* @GL_BLEND, align 4
  %120 = call i32 @glDisable(i32 %119)
  br label %121

121:                                              ; preds = %103, %96
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 2), align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %124 = icmp eq %struct.TYPE_24__* %122, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %121
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 2), align 8
  %127 = icmp ne %struct.TYPE_24__* %126, null
  br i1 %127, label %193, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 3), align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %131 = icmp eq %struct.TYPE_24__* %129, %130
  br i1 %131, label %132, label %193

132:                                              ; preds = %128, %121
  %133 = call i32 @glLineStipple(i32 1, i32 43690)
  %134 = load i32, i32* @GL_LINE_STIPPLE, align 4
  %135 = call i32 @glEnable(i32 %134)
  %136 = load i32, i32* @GL_ONE_MINUS_DST_COLOR, align 4
  %137 = load i32, i32* @GL_ZERO, align 4
  %138 = call i32 @glBlendFunc(i32 %136, i32 %137)
  %139 = load i32, i32* @GL_BLEND, align 4
  %140 = call i32 @glEnable(i32 %139)
  %141 = call i32 @glColor4f(i32 1, i32 1, i32 1, i32 1)
  %142 = load i32, i32* @GL_LINE_LOOP, align 4
  %143 = call i32 @glBegin(i32 %142)
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = sitofp i64 %145 to float
  %147 = fsub float %146, 5.000000e-01
  %148 = fptosi float %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = sitofp i64 %150 to float
  %152 = fsub float %151, 5.000000e-01
  %153 = fptosi float %152 to i64
  %154 = call i32 @glVertex2f(i64 %148, i64 %153)
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = sitofp i64 %156 to float
  %158 = fadd float %157, 5.000000e-01
  %159 = fptosi float %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = sitofp i64 %161 to float
  %163 = fsub float %162, 5.000000e-01
  %164 = fptosi float %163 to i64
  %165 = call i32 @glVertex2f(i64 %159, i64 %164)
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = sitofp i64 %167 to float
  %169 = fadd float %168, 5.000000e-01
  %170 = fptosi float %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = sitofp i64 %172 to float
  %174 = fadd float %173, 5.000000e-01
  %175 = fptosi float %174 to i64
  %176 = call i32 @glVertex2f(i64 %170, i64 %175)
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = sitofp i64 %178 to float
  %180 = fsub float %179, 5.000000e-01
  %181 = fptosi float %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = sitofp i64 %183 to float
  %185 = fadd float %184, 5.000000e-01
  %186 = fptosi float %185 to i64
  %187 = call i32 @glVertex2f(i64 %181, i64 %186)
  %188 = call i32 (...) @glEnd()
  %189 = load i32, i32* @GL_BLEND, align 4
  %190 = call i32 @glDisable(i32 %189)
  %191 = load i32, i32* @GL_LINE_STIPPLE, align 4
  %192 = call i32 @glDisable(i32 %191)
  br label %193

193:                                              ; preds = %132, %128, %125
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 3), align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %196 = icmp eq %struct.TYPE_24__* %194, %195
  br i1 %196, label %197, label %243

197:                                              ; preds = %193
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 2), align 8
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %200 = icmp eq %struct.TYPE_24__* %198, %199
  br i1 %200, label %201, label %243

201:                                              ; preds = %197
  %202 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 1), align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %243, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* @ctx, align 4
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %207 = call i32 @pdf_annot_event_up(i32 %205, %struct.TYPE_24__* %206)
  %208 = load i32, i32* @ctx, align 4
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %210 = call i32 @pdf_widget_type(i32 %208, %struct.TYPE_24__* %209)
  %211 = load i32, i32* @PDF_WIDGET_TYPE_SIGNATURE, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %204
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %215 = call i32 @show_sig_dialog(%struct.TYPE_24__* %214)
  br label %242

216:                                              ; preds = %204
  %217 = load i32, i32* @ctx, align 4
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @pdf_field_flags(i32 %217, i32 %220)
  %222 = load i32, i32* @PDF_FIELD_IS_READ_ONLY, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %216
  br label %244

226:                                              ; preds = %216
  %227 = load i32, i32* @ctx, align 4
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %229 = call i32 @pdf_widget_type(i32 %227, %struct.TYPE_24__* %228)
  switch i32 %229, label %230 [
    i32 132, label %231
    i32 129, label %231
    i32 128, label %235
    i32 131, label %238
    i32 130, label %238
  ]

230:                                              ; preds = %226
  br label %241

231:                                              ; preds = %226, %226
  %232 = load i32, i32* @ctx, align 4
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %234 = call i32 @pdf_toggle_widget(i32 %232, %struct.TYPE_24__* %233)
  br label %241

235:                                              ; preds = %226
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %237 = call i32 @show_tx_dialog(%struct.TYPE_24__* %236)
  br label %241

238:                                              ; preds = %226, %226
  %239 = load i32, i32* @ch_dialog, align 4
  store i32 %239, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ui, i32 0, i32 0), align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  store %struct.TYPE_24__* %240, %struct.TYPE_24__** @ch_widget, align 8
  br label %241

241:                                              ; preds = %238, %235, %231, %230
  br label %242

242:                                              ; preds = %241, %213
  br label %243

243:                                              ; preds = %242, %201, %197, %193
  br label %244

244:                                              ; preds = %243, %225
  %245 = load i32, i32* @ctx, align 4
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %247 = call %struct.TYPE_24__* @pdf_next_widget(i32 %245, %struct.TYPE_24__* %246)
  store %struct.TYPE_24__* %247, %struct.TYPE_24__** %2, align 8
  br label %13

248:                                              ; preds = %13
  %249 = load i32, i32* @ctx, align 4
  %250 = load i32, i32* @page, align 4
  %251 = call i64 @pdf_update_page(i32 %249, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = call i32 (...) @render_page()
  br label %255

255:                                              ; preds = %8, %253, %248
  ret void
}

declare dso_local %struct.TYPE_24__* @pdf_first_widget(i32, i32) #1

declare dso_local i32 @pdf_bound_widget(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @fz_transform_rect(i32, i32) #1

declare dso_local void @fz_irect_from_rect(%struct.TYPE_25__* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ui_mouse_inside(%struct.TYPE_25__* byval(%struct.TYPE_25__) align 8) #1

declare dso_local i32 @pdf_annot_event_enter(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @pdf_annot_event_down(i32, %struct.TYPE_24__*) #1

declare dso_local i64 @pdf_annot_type(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @pdf_annot_event_blur(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @pdf_annot_event_focus(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @pdf_annot_event_exit(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @glBlendFunc(i32, i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glColor4f(i32, i32, i32, i32) #1

declare dso_local i32 @glRectf(i64, i64, i64, i64) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @glLineStipple(i32, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glVertex2f(i64, i64) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @pdf_annot_event_up(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @pdf_widget_type(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @show_sig_dialog(%struct.TYPE_24__*) #1

declare dso_local i32 @pdf_field_flags(i32, i32) #1

declare dso_local i32 @pdf_toggle_widget(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @show_tx_dialog(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @pdf_next_widget(i32, %struct.TYPE_24__*) #1

declare dso_local i64 @pdf_update_page(i32, i32) #1

declare dso_local i32 @render_page(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
