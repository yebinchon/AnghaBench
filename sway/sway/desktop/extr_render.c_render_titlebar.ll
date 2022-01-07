; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_titlebar.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_render_titlebar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.sway_output = type { double, double, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { float, i32 }
%struct.sway_container = type { i32, i32 }
%struct.border_colors = type { i32, i32 }
%struct.wlr_texture = type { i32 }
%struct.wlr_box = type { i32, i32, i32, i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@ALIGN_RIGHT = common dso_local global i32 0, align 4
@WL_OUTPUT_TRANSFORM_NORMAL = common dso_local global i32 0, align 4
@ALIGN_LEFT = common dso_local global i32 0, align 4
@ALIGN_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_output*, i32*, %struct.sway_container*, i32, i32, i32, %struct.border_colors*, %struct.wlr_texture*, %struct.wlr_texture*)* @render_titlebar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render_titlebar(%struct.sway_output* %0, i32* %1, %struct.sway_container* %2, i32 %3, i32 %4, i32 %5, %struct.border_colors* %6, %struct.wlr_texture* %7, %struct.wlr_texture* %8) #0 {
  %10 = alloca %struct.sway_output*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sway_container*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.border_colors*, align 8
  %17 = alloca %struct.wlr_texture*, align 8
  %18 = alloca %struct.wlr_texture*, align 8
  %19 = alloca %struct.wlr_box, align 4
  %20 = alloca [4 x float], align 16
  %21 = alloca float, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.wlr_box, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca [9 x float], align 16
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.wlr_box, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca [9 x float], align 16
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  store %struct.sway_output* %0, %struct.sway_output** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.sway_container* %2, %struct.sway_container** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.border_colors* %6, %struct.border_colors** %16, align 8
  store %struct.wlr_texture* %7, %struct.wlr_texture** %17, align 8
  store %struct.wlr_texture* %8, %struct.wlr_texture** %18, align 8
  %53 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %54 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load float, float* %56, align 4
  store float %57, float* %21, align 4
  %58 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %59 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  store double %60, double* %22, align 8
  %61 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %62 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %61, i32 0, i32 1
  %63 = load double, double* %62, align 8
  store double %63, double* %23, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %24, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %25, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %26, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %27, align 4
  %76 = bitcast [4 x float]* %20 to float**
  %77 = load %struct.border_colors*, %struct.border_colors** %16, align 8
  %78 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @memcpy(float** %76, i32 %79, i32 16)
  %81 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %82 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %83 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @premultiply_alpha(float* %81, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %14, align 4
  %89 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %15, align 4
  %91 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %24, align 4
  %93 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 %92, i32* %93, align 4
  %94 = load float, float* %21, align 4
  %95 = call i32 @scale_box(%struct.wlr_box* %19, float %94)
  %96 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %99 = call i32 @render_rect(%struct.sway_output* %96, i32* %97, %struct.wlr_box* %19, float* %98)
  %100 = load i32, i32* %13, align 4
  %101 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 (...) @container_titlebar_height()
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %24, align 4
  %106 = sub nsw i32 %104, %105
  %107 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %15, align 4
  %109 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %24, align 4
  %111 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 %110, i32* %111, align 4
  %112 = load float, float* %21, align 4
  %113 = call i32 @scale_box(%struct.wlr_box* %19, float %112)
  %114 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %117 = call i32 @render_rect(%struct.sway_output* %114, i32* %115, %struct.wlr_box* %19, float* %116)
  %118 = load i32, i32* %13, align 4
  %119 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %24, align 4
  %122 = add nsw i32 %120, %121
  %123 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %24, align 4
  %125 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  store i32 %124, i32* %125, align 4
  %126 = call i32 (...) @container_titlebar_height()
  %127 = load i32, i32* %24, align 4
  %128 = mul nsw i32 %127, 2
  %129 = sub nsw i32 %126, %128
  %130 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 %129, i32* %130, align 4
  %131 = load float, float* %21, align 4
  %132 = call i32 @scale_box(%struct.wlr_box* %19, float %131)
  %133 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %136 = call i32 @render_rect(%struct.sway_output* %133, i32* %134, %struct.wlr_box* %19, float* %135)
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* %24, align 4
  %141 = sub nsw i32 %139, %140
  %142 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %24, align 4
  %145 = add nsw i32 %143, %144
  %146 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  store i32 %145, i32* %146, align 4
  %147 = load i32, i32* %24, align 4
  %148 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  store i32 %147, i32* %148, align 4
  %149 = call i32 (...) @container_titlebar_height()
  %150 = load i32, i32* %24, align 4
  %151 = mul nsw i32 %150, 2
  %152 = sub nsw i32 %149, %151
  %153 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 %152, i32* %153, align 4
  %154 = load float, float* %21, align 4
  %155 = call i32 @scale_box(%struct.wlr_box* %19, float %154)
  %156 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %159 = call i32 @render_rect(%struct.sway_output* %156, i32* %157, %struct.wlr_box* %19, float* %158)
  %160 = load i32, i32* %13, align 4
  %161 = sitofp i32 %160 to double
  %162 = load double, double* %22, align 8
  %163 = fsub double %161, %162
  %164 = load i32, i32* %25, align 4
  %165 = sitofp i32 %164 to double
  %166 = fadd double %163, %165
  %167 = fptosi double %166 to i32
  store i32 %167, i32* %28, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %24, align 4
  %170 = add nsw i32 %168, %169
  store i32 %170, i32* %29, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %25, align 4
  %173 = mul nsw i32 %172, 2
  %174 = sub nsw i32 %171, %173
  %175 = sext i32 %174 to i64
  store i64 %175, i64* %30, align 8
  %176 = load i32, i32* %28, align 4
  %177 = sitofp i32 %176 to float
  %178 = load float, float* %21, align 4
  %179 = fmul float %177, %178
  %180 = fpext float %179 to double
  %181 = call i32 @round(double %180)
  store i32 %181, i32* %31, align 4
  %182 = load i64, i64* %30, align 8
  %183 = trunc i64 %182 to i32
  %184 = load i32, i32* %28, align 4
  %185 = load float, float* %21, align 4
  %186 = call i32 @scale_length(i32 %183, i32 %184, float %185)
  store i32 %186, i32* %32, align 4
  %187 = load i32, i32* %26, align 4
  %188 = load i32, i32* %24, align 4
  %189 = sub nsw i32 %187, %188
  %190 = mul nsw i32 %189, 2
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %190, %193
  %195 = load i32, i32* %29, align 4
  %196 = load float, float* %21, align 4
  %197 = call i32 @scale_length(i32 %194, i32 %195, float %196)
  store i32 %197, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %335

202:                                              ; preds = %9
  %203 = load %struct.wlr_texture*, %struct.wlr_texture** %18, align 8
  %204 = icmp ne %struct.wlr_texture* %203, null
  br i1 %204, label %205, label %335

205:                                              ; preds = %202
  %206 = load %struct.wlr_texture*, %struct.wlr_texture** %18, align 8
  %207 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 2
  %208 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 3
  %209 = call i32 @wlr_texture_get_size(%struct.wlr_texture* %206, i32* %207, i32* %208)
  %210 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %35, align 4
  %212 = load i32, i32* %33, align 4
  %213 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %212, %214
  store i32 %215, i32* %37, align 4
  %216 = load i32, i32* %37, align 4
  %217 = sitofp i32 %216 to double
  %218 = fdiv double %217, 2.000000e+00
  %219 = fptosi double %218 to i32
  %220 = call i32 @floor(i32 %219)
  store i32 %220, i32* %38, align 4
  %221 = load i32, i32* %37, align 4
  %222 = sitofp i32 %221 to double
  %223 = fdiv double %222, 2.000000e+00
  %224 = fptosi double %223 to i32
  %225 = call i32 @ceil(i32 %224)
  store i32 %225, i32* %39, align 4
  %226 = load i32, i32* %27, align 4
  %227 = load i32, i32* @ALIGN_RIGHT, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %234, label %229

229:                                              ; preds = %205
  %230 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %32, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %229, %205
  %235 = load i32, i32* %31, align 4
  %236 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 0
  store i32 %235, i32* %236, align 4
  br label %245

237:                                              ; preds = %229
  %238 = load i32, i32* %31, align 4
  %239 = load i32, i32* %32, align 4
  %240 = add nsw i32 %238, %239
  %241 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %240, %242
  %244 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 0
  store i32 %243, i32* %244, align 4
  br label %245

245:                                              ; preds = %237, %234
  %246 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %34, align 4
  %248 = load i32, i32* %29, align 4
  %249 = sitofp i32 %248 to double
  %250 = load double, double* %23, align 8
  %251 = fsub double %249, %250
  %252 = load float, float* %21, align 4
  %253 = fpext float %252 to double
  %254 = fmul double %251, %253
  %255 = call i32 @round(double %254)
  %256 = load i32, i32* %38, align 4
  %257 = add nsw i32 %255, %256
  %258 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 1
  store i32 %257, i32* %258, align 4
  %259 = getelementptr inbounds [9 x float], [9 x float]* %40, i64 0, i64 0
  %260 = load i32, i32* @WL_OUTPUT_TRANSFORM_NORMAL, align 4
  %261 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %262 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %261, i32 0, i32 2
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @wlr_matrix_project_box(float* %259, %struct.wlr_box* %36, i32 %260, double 0.000000e+00, i32 %265)
  %267 = load i32, i32* %32, align 4
  %268 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = icmp slt i32 %267, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %245
  %272 = load i32, i32* %32, align 4
  %273 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 2
  store i32 %272, i32* %273, align 4
  br label %274

274:                                              ; preds = %271, %245
  %275 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %276 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %275, i32 0, i32 2
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %276, align 8
  %278 = load i32*, i32** %11, align 8
  %279 = load %struct.wlr_texture*, %struct.wlr_texture** %18, align 8
  %280 = getelementptr inbounds [9 x float], [9 x float]* %40, i64 0, i64 0
  %281 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %282 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @render_texture(%struct.TYPE_3__* %277, i32* %278, %struct.wlr_texture* %279, %struct.wlr_box* %36, float* %280, i32 %283)
  %285 = bitcast [4 x float]* %20 to float**
  %286 = load %struct.border_colors*, %struct.border_colors** %16, align 8
  %287 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @memcpy(float** %285, i32 %288, i32 16)
  %290 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %291 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %292 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @premultiply_alpha(float* %290, i32 %293)
  %295 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load double, double* %22, align 8
  %298 = load float, float* %21, align 4
  %299 = fpext float %298 to double
  %300 = fmul double %297, %299
  %301 = call i32 @round(double %300)
  %302 = add nsw i32 %296, %301
  %303 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  store i32 %302, i32* %303, align 4
  %304 = load i32, i32* %14, align 4
  %305 = load i32, i32* %24, align 4
  %306 = add nsw i32 %304, %305
  %307 = sitofp i32 %306 to float
  %308 = load float, float* %21, align 4
  %309 = fmul float %307, %308
  %310 = fpext float %309 to double
  %311 = call i32 @round(double %310)
  %312 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  store i32 %311, i32* %312, align 4
  %313 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  store i32 %314, i32* %315, align 4
  %316 = load i32, i32* %38, align 4
  %317 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 %316, i32* %317, align 4
  %318 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %319 = load i32*, i32** %11, align 8
  %320 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %321 = call i32 @render_rect(%struct.sway_output* %318, i32* %319, %struct.wlr_box* %19, float* %320)
  %322 = load i32, i32* %38, align 4
  %323 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %36, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %322, %324
  %326 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, %325
  store i32 %328, i32* %326, align 4
  %329 = load i32, i32* %39, align 4
  %330 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 %329, i32* %330, align 4
  %331 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %332 = load i32*, i32** %11, align 8
  %333 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %334 = call i32 @render_rect(%struct.sway_output* %331, i32* %332, %struct.wlr_box* %19, float* %333)
  br label %335

335:                                              ; preds = %274, %202, %9
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  %336 = load %struct.wlr_texture*, %struct.wlr_texture** %17, align 8
  %337 = icmp ne %struct.wlr_texture* %336, null
  br i1 %337, label %338, label %528

338:                                              ; preds = %335
  %339 = load %struct.wlr_texture*, %struct.wlr_texture** %17, align 8
  %340 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 2
  %341 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 3
  %342 = call i32 @wlr_texture_get_size(%struct.wlr_texture* %339, i32* %340, i32* %341)
  %343 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %42, align 4
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 5
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %349 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = sub nsw i32 %347, %350
  %352 = load i32, i32* %26, align 4
  %353 = add nsw i32 %351, %352
  %354 = load i32, i32* %24, align 4
  %355 = sub nsw i32 %353, %354
  %356 = sitofp i32 %355 to float
  %357 = load float, float* %21, align 4
  %358 = fmul float %356, %357
  %359 = fpext float %358 to double
  %360 = call i32 @round(double %359)
  store i32 %360, i32* %44, align 4
  %361 = load i32, i32* %33, align 4
  %362 = load i32, i32* %44, align 4
  %363 = sub nsw i32 %361, %362
  %364 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  %366 = sub nsw i32 %363, %365
  store i32 %366, i32* %45, align 4
  %367 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %32, align 4
  %370 = load i32, i32* %35, align 4
  %371 = sub nsw i32 %369, %370
  %372 = icmp sgt i32 %368, %371
  br i1 %372, label %373, label %389

373:                                              ; preds = %338
  %374 = load i32, i32* %27, align 4
  %375 = load i32, i32* @ALIGN_RIGHT, align 4
  %376 = icmp eq i32 %374, %375
  br i1 %376, label %377, label %384

377:                                              ; preds = %373
  %378 = load i32, i32* %35, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %377
  %381 = load i32, i32* %34, align 4
  %382 = load i32, i32* %35, align 4
  %383 = add nsw i32 %381, %382
  br label %386

384:                                              ; preds = %377, %373
  %385 = load i32, i32* %31, align 4
  br label %386

386:                                              ; preds = %384, %380
  %387 = phi i32 [ %383, %380 ], [ %385, %384 ]
  %388 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 0
  store i32 %387, i32* %388, align 4
  br label %434

389:                                              ; preds = %338
  %390 = load i32, i32* %27, align 4
  %391 = load i32, i32* @ALIGN_LEFT, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %396

393:                                              ; preds = %389
  %394 = load i32, i32* %31, align 4
  %395 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 0
  store i32 %394, i32* %395, align 4
  br label %433

396:                                              ; preds = %389
  %397 = load i32, i32* %27, align 4
  %398 = load i32, i32* @ALIGN_CENTER, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %424

400:                                              ; preds = %396
  %401 = load i32, i32* %35, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %413

403:                                              ; preds = %400
  %404 = load i32, i32* %31, align 4
  %405 = load i32, i32* %34, align 4
  %406 = add nsw i32 %404, %405
  %407 = sdiv i32 %406, 2
  %408 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = sdiv i32 %409, 2
  %411 = sub nsw i32 %407, %410
  %412 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 0
  store i32 %411, i32* %412, align 4
  br label %423

413:                                              ; preds = %400
  %414 = load i32, i32* %31, align 4
  %415 = load i32, i32* %32, align 4
  %416 = sdiv i32 %415, 2
  %417 = add nsw i32 %414, %416
  %418 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = sdiv i32 %419, 2
  %421 = sub nsw i32 %417, %420
  %422 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 0
  store i32 %421, i32* %422, align 4
  br label %423

423:                                              ; preds = %413, %403
  br label %432

424:                                              ; preds = %396
  %425 = load i32, i32* %31, align 4
  %426 = load i32, i32* %32, align 4
  %427 = add nsw i32 %425, %426
  %428 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = sub nsw i32 %427, %429
  %431 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 0
  store i32 %430, i32* %431, align 4
  br label %432

432:                                              ; preds = %424, %423
  br label %433

433:                                              ; preds = %432, %393
  br label %434

434:                                              ; preds = %433, %386
  %435 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  store i32 %436, i32* %41, align 4
  %437 = load i32, i32* %29, align 4
  %438 = sitofp i32 %437 to double
  %439 = load double, double* %23, align 8
  %440 = fsub double %438, %439
  %441 = load float, float* %21, align 4
  %442 = fpext float %441 to double
  %443 = fmul double %440, %442
  %444 = call i32 @round(double %443)
  %445 = load i32, i32* %44, align 4
  %446 = add nsw i32 %444, %445
  %447 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 1
  store i32 %446, i32* %447, align 4
  %448 = getelementptr inbounds [9 x float], [9 x float]* %46, i64 0, i64 0
  %449 = load i32, i32* @WL_OUTPUT_TRANSFORM_NORMAL, align 4
  %450 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %451 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %450, i32 0, i32 2
  %452 = load %struct.TYPE_3__*, %struct.TYPE_3__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = call i32 @wlr_matrix_project_box(float* %448, %struct.wlr_box* %43, i32 %449, double 0.000000e+00, i32 %454)
  %456 = load i32, i32* %32, align 4
  %457 = load i32, i32* %35, align 4
  %458 = sub nsw i32 %456, %457
  %459 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 2
  %460 = load i32, i32* %459, align 4
  %461 = icmp slt i32 %458, %460
  br i1 %461, label %462, label %467

462:                                              ; preds = %434
  %463 = load i32, i32* %32, align 4
  %464 = load i32, i32* %35, align 4
  %465 = sub nsw i32 %463, %464
  %466 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 2
  store i32 %465, i32* %466, align 4
  br label %467

467:                                              ; preds = %462, %434
  %468 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %469 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %468, i32 0, i32 2
  %470 = load %struct.TYPE_3__*, %struct.TYPE_3__** %469, align 8
  %471 = load i32*, i32** %11, align 8
  %472 = load %struct.wlr_texture*, %struct.wlr_texture** %17, align 8
  %473 = getelementptr inbounds [9 x float], [9 x float]* %46, i64 0, i64 0
  %474 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %475 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @render_texture(%struct.TYPE_3__* %470, i32* %471, %struct.wlr_texture* %472, %struct.wlr_box* %43, float* %473, i32 %476)
  %478 = bitcast [4 x float]* %20 to float**
  %479 = load %struct.border_colors*, %struct.border_colors** %16, align 8
  %480 = getelementptr inbounds %struct.border_colors, %struct.border_colors* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = call i32 @memcpy(float** %478, i32 %481, i32 16)
  %483 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %484 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  %485 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @premultiply_alpha(float* %483, i32 %486)
  %488 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = load double, double* %22, align 8
  %491 = load float, float* %21, align 4
  %492 = fpext float %491 to double
  %493 = fmul double %490, %492
  %494 = call i32 @round(double %493)
  %495 = add nsw i32 %489, %494
  %496 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  store i32 %495, i32* %496, align 4
  %497 = load i32, i32* %14, align 4
  %498 = load i32, i32* %24, align 4
  %499 = add nsw i32 %497, %498
  %500 = sitofp i32 %499 to float
  %501 = load float, float* %21, align 4
  %502 = fmul float %500, %501
  %503 = fpext float %502 to double
  %504 = call i32 @round(double %503)
  %505 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  store i32 %504, i32* %505, align 4
  %506 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 2
  %507 = load i32, i32* %506, align 4
  %508 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  store i32 %507, i32* %508, align 4
  %509 = load i32, i32* %44, align 4
  %510 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 %509, i32* %510, align 4
  %511 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %512 = load i32*, i32** %11, align 8
  %513 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %514 = call i32 @render_rect(%struct.sway_output* %511, i32* %512, %struct.wlr_box* %19, float* %513)
  %515 = load i32, i32* %44, align 4
  %516 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %43, i32 0, i32 3
  %517 = load i32, i32* %516, align 4
  %518 = add nsw i32 %515, %517
  %519 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = add nsw i32 %520, %518
  store i32 %521, i32* %519, align 4
  %522 = load i32, i32* %45, align 4
  %523 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 %522, i32* %523, align 4
  %524 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %525 = load i32*, i32** %11, align 8
  %526 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %527 = call i32 @render_rect(%struct.sway_output* %524, i32* %525, %struct.wlr_box* %19, float* %526)
  br label %528

528:                                              ; preds = %467, %335
  %529 = load i32, i32* %42, align 4
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %537

531:                                              ; preds = %528
  %532 = load i32, i32* %35, align 4
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %537

534:                                              ; preds = %531
  %535 = load i32, i32* %31, align 4
  store i32 %535, i32* %47, align 4
  store i32 0, i32* %48, align 4
  %536 = load i32, i32* %31, align 4
  store i32 %536, i32* %49, align 4
  store i32 0, i32* %50, align 4
  br label %552

537:                                              ; preds = %531, %528
  %538 = load i32, i32* %41, align 4
  %539 = load i32, i32* %34, align 4
  %540 = icmp slt i32 %538, %539
  br i1 %540, label %541, label %546

541:                                              ; preds = %537
  %542 = load i32, i32* %41, align 4
  store i32 %542, i32* %47, align 4
  %543 = load i32, i32* %42, align 4
  store i32 %543, i32* %48, align 4
  %544 = load i32, i32* %34, align 4
  store i32 %544, i32* %49, align 4
  %545 = load i32, i32* %35, align 4
  store i32 %545, i32* %50, align 4
  br label %551

546:                                              ; preds = %537
  %547 = load i32, i32* %34, align 4
  store i32 %547, i32* %47, align 4
  %548 = load i32, i32* %35, align 4
  store i32 %548, i32* %48, align 4
  %549 = load i32, i32* %41, align 4
  store i32 %549, i32* %49, align 4
  %550 = load i32, i32* %42, align 4
  store i32 %550, i32* %50, align 4
  br label %551

551:                                              ; preds = %546, %541
  br label %552

552:                                              ; preds = %551, %534
  %553 = load i32, i32* %47, align 4
  %554 = load i32, i32* %31, align 4
  %555 = icmp slt i32 %553, %554
  br i1 %555, label %556, label %558

556:                                              ; preds = %552
  %557 = load i32, i32* %31, align 4
  store i32 %557, i32* %47, align 4
  br label %570

558:                                              ; preds = %552
  %559 = load i32, i32* %47, align 4
  %560 = load i32, i32* %48, align 4
  %561 = add nsw i32 %559, %560
  %562 = load i32, i32* %49, align 4
  %563 = load i32, i32* %50, align 4
  %564 = add nsw i32 %562, %563
  %565 = icmp sgt i32 %561, %564
  br i1 %565, label %566, label %569

566:                                              ; preds = %558
  %567 = load i32, i32* %47, align 4
  store i32 %567, i32* %49, align 4
  %568 = load i32, i32* %48, align 4
  store i32 %568, i32* %50, align 4
  br label %569

569:                                              ; preds = %566, %558
  br label %570

570:                                              ; preds = %569, %556
  %571 = load i32, i32* %49, align 4
  %572 = load i32, i32* %47, align 4
  %573 = sub nsw i32 %571, %572
  %574 = load i32, i32* %48, align 4
  %575 = sub nsw i32 %573, %574
  %576 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  store i32 %575, i32* %576, align 4
  %577 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  %578 = load i32, i32* %577, align 4
  %579 = icmp sgt i32 %578, 0
  br i1 %579, label %580, label %604

580:                                              ; preds = %570
  %581 = load i32, i32* %47, align 4
  %582 = load i32, i32* %48, align 4
  %583 = add nsw i32 %581, %582
  %584 = load double, double* %22, align 8
  %585 = load float, float* %21, align 4
  %586 = fpext float %585 to double
  %587 = fmul double %584, %586
  %588 = call i32 @round(double %587)
  %589 = add nsw i32 %583, %588
  %590 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  store i32 %589, i32* %590, align 4
  %591 = load i32, i32* %29, align 4
  %592 = sitofp i32 %591 to float
  %593 = load float, float* %21, align 4
  %594 = fmul float %592, %593
  %595 = fpext float %594 to double
  %596 = call i32 @round(double %595)
  %597 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  store i32 %596, i32* %597, align 4
  %598 = load i32, i32* %33, align 4
  %599 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 %598, i32* %599, align 4
  %600 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %601 = load i32*, i32** %11, align 8
  %602 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %603 = call i32 @render_rect(%struct.sway_output* %600, i32* %601, %struct.wlr_box* %19, float* %602)
  br label %604

604:                                              ; preds = %580, %570
  %605 = load i32, i32* %13, align 4
  %606 = load i32, i32* %24, align 4
  %607 = add nsw i32 %605, %606
  %608 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  store i32 %607, i32* %608, align 4
  %609 = load i32, i32* %14, align 4
  %610 = load i32, i32* %24, align 4
  %611 = add nsw i32 %609, %610
  %612 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  store i32 %611, i32* %612, align 4
  %613 = load i32, i32* %25, align 4
  %614 = load i32, i32* %24, align 4
  %615 = sub nsw i32 %613, %614
  %616 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  store i32 %615, i32* %616, align 4
  %617 = load i32, i32* %26, align 4
  %618 = load i32, i32* %24, align 4
  %619 = sub nsw i32 %617, %618
  %620 = mul nsw i32 %619, 2
  %621 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %622 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %621, i32 0, i32 4
  %623 = load i32, i32* %622, align 8
  %624 = add nsw i32 %620, %623
  %625 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 %624, i32* %625, align 4
  %626 = load float, float* %21, align 4
  %627 = call i32 @scale_box(%struct.wlr_box* %19, float %626)
  %628 = load i32, i32* %47, align 4
  %629 = load double, double* %22, align 8
  %630 = load float, float* %21, align 4
  %631 = fpext float %630 to double
  %632 = fmul double %629, %631
  %633 = call i32 @round(double %632)
  %634 = add nsw i32 %628, %633
  store i32 %634, i32* %51, align 4
  %635 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  %636 = load i32, i32* %635, align 4
  %637 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  %638 = load i32, i32* %637, align 4
  %639 = add nsw i32 %636, %638
  %640 = load i32, i32* %51, align 4
  %641 = icmp slt i32 %639, %640
  br i1 %641, label %642, label %653

642:                                              ; preds = %604
  %643 = load i32, i32* %51, align 4
  %644 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  %645 = load i32, i32* %644, align 4
  %646 = sub nsw i32 %643, %645
  %647 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  %648 = load i32, i32* %647, align 4
  %649 = sub nsw i32 %646, %648
  %650 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  %651 = load i32, i32* %650, align 4
  %652 = add nsw i32 %651, %649
  store i32 %652, i32* %650, align 4
  br label %653

653:                                              ; preds = %642, %604
  %654 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %655 = load i32*, i32** %11, align 8
  %656 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %657 = call i32 @render_rect(%struct.sway_output* %654, i32* %655, %struct.wlr_box* %19, float* %656)
  %658 = load i32, i32* %13, align 4
  %659 = load i32, i32* %15, align 4
  %660 = add nsw i32 %658, %659
  %661 = load i32, i32* %25, align 4
  %662 = sub nsw i32 %660, %661
  %663 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  store i32 %662, i32* %663, align 4
  %664 = load i32, i32* %14, align 4
  %665 = load i32, i32* %24, align 4
  %666 = add nsw i32 %664, %665
  %667 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 1
  store i32 %666, i32* %667, align 4
  %668 = load i32, i32* %25, align 4
  %669 = load i32, i32* %24, align 4
  %670 = sub nsw i32 %668, %669
  %671 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  store i32 %670, i32* %671, align 4
  %672 = load i32, i32* %26, align 4
  %673 = load i32, i32* %24, align 4
  %674 = sub nsw i32 %672, %673
  %675 = mul nsw i32 %674, 2
  %676 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %677 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %676, i32 0, i32 4
  %678 = load i32, i32* %677, align 8
  %679 = add nsw i32 %675, %678
  %680 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 3
  store i32 %679, i32* %680, align 4
  %681 = load float, float* %21, align 4
  %682 = call i32 @scale_box(%struct.wlr_box* %19, float %681)
  %683 = load i32, i32* %49, align 4
  %684 = load i32, i32* %50, align 4
  %685 = add nsw i32 %683, %684
  %686 = load double, double* %22, align 8
  %687 = load float, float* %21, align 4
  %688 = fpext float %687 to double
  %689 = fmul double %686, %688
  %690 = call i32 @round(double %689)
  %691 = add nsw i32 %685, %690
  store i32 %691, i32* %52, align 4
  %692 = load i32, i32* %52, align 4
  %693 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  %694 = load i32, i32* %693, align 4
  %695 = icmp slt i32 %692, %694
  br i1 %695, label %696, label %706

696:                                              ; preds = %653
  %697 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  %698 = load i32, i32* %697, align 4
  %699 = load i32, i32* %52, align 4
  %700 = sub nsw i32 %698, %699
  %701 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 2
  %702 = load i32, i32* %701, align 4
  %703 = add nsw i32 %702, %700
  store i32 %703, i32* %701, align 4
  %704 = load i32, i32* %52, align 4
  %705 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %19, i32 0, i32 0
  store i32 %704, i32* %705, align 4
  br label %706

706:                                              ; preds = %696, %653
  %707 = load %struct.sway_output*, %struct.sway_output** %10, align 8
  %708 = load i32*, i32** %11, align 8
  %709 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %710 = call i32 @render_rect(%struct.sway_output* %707, i32* %708, %struct.wlr_box* %19, float* %709)
  ret void
}

declare dso_local i32 @memcpy(float**, i32, i32) #1

declare dso_local i32 @premultiply_alpha(float*, i32) #1

declare dso_local i32 @scale_box(%struct.wlr_box*, float) #1

declare dso_local i32 @render_rect(%struct.sway_output*, i32*, %struct.wlr_box*, float*) #1

declare dso_local i32 @container_titlebar_height(...) #1

declare dso_local i32 @round(double) #1

declare dso_local i32 @scale_length(i32, i32, float) #1

declare dso_local i32 @wlr_texture_get_size(%struct.wlr_texture*, i32*, i32*) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @ceil(i32) #1

declare dso_local i32 @wlr_matrix_project_box(float*, %struct.wlr_box*, i32, double, i32) #1

declare dso_local i32 @render_texture(%struct.TYPE_3__*, i32*, %struct.wlr_texture*, %struct.wlr_box*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
