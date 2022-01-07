; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_workspace_button.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_render.c_render_workspace_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.swaybar_config* }
%struct.swaybar_config = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.box_colors, %struct.box_colors, %struct.box_colors, %struct.box_colors }
%struct.box_colors = type { i32, i32, i32 }
%struct.swaybar_workspace = type { i32, i32, i64, i64, i64 }
%struct.swaybar_hotspot = type { double, i32, i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WS_VERTICAL_PADDING = common dso_local global i32 0, align 4
@WS_HORIZONTAL_PADDING = common dso_local global i32 0, align 4
@BORDER_WIDTH = common dso_local global i32 0, align 4
@workspace_hotspot_callback = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.swaybar_output*, %struct.swaybar_workspace*, double*)* @render_workspace_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @render_workspace_button(i32* %0, %struct.swaybar_output* %1, %struct.swaybar_workspace* %2, double* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.swaybar_output*, align 8
  %8 = alloca %struct.swaybar_workspace*, align 8
  %9 = alloca double*, align 8
  %10 = alloca %struct.swaybar_config*, align 8
  %11 = alloca %struct.box_colors, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca double, align 8
  %22 = alloca %struct.swaybar_hotspot*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.swaybar_output* %1, %struct.swaybar_output** %7, align 8
  store %struct.swaybar_workspace* %2, %struct.swaybar_workspace** %8, align 8
  store double* %3, double** %9, align 8
  %23 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %24 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.swaybar_config*, %struct.swaybar_config** %26, align 8
  store %struct.swaybar_config* %27, %struct.swaybar_config** %10, align 8
  %28 = load %struct.swaybar_workspace*, %struct.swaybar_workspace** %8, align 8
  %29 = getelementptr inbounds %struct.swaybar_workspace, %struct.swaybar_workspace* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load %struct.swaybar_config*, %struct.swaybar_config** %10, align 8
  %34 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = bitcast %struct.box_colors* %11 to i8*
  %37 = bitcast %struct.box_colors* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  br label %68

38:                                               ; preds = %4
  %39 = load %struct.swaybar_workspace*, %struct.swaybar_workspace** %8, align 8
  %40 = getelementptr inbounds %struct.swaybar_workspace, %struct.swaybar_workspace* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.swaybar_config*, %struct.swaybar_config** %10, align 8
  %45 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = bitcast %struct.box_colors* %11 to i8*
  %48 = bitcast %struct.box_colors* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 12, i1 false)
  br label %67

49:                                               ; preds = %38
  %50 = load %struct.swaybar_workspace*, %struct.swaybar_workspace** %8, align 8
  %51 = getelementptr inbounds %struct.swaybar_workspace, %struct.swaybar_workspace* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.swaybar_config*, %struct.swaybar_config** %10, align 8
  %56 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = bitcast %struct.box_colors* %11 to i8*
  %59 = bitcast %struct.box_colors* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  br label %66

60:                                               ; preds = %49
  %61 = load %struct.swaybar_config*, %struct.swaybar_config** %10, align 8
  %62 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = bitcast %struct.box_colors* %11 to i8*
  %65 = bitcast %struct.box_colors* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 12, i1 false)
  br label %66

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %66, %43
  br label %68

68:                                               ; preds = %67, %32
  %69 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %70 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %73 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = mul nsw i64 %71, %74
  store i64 %75, i64* %12, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.swaybar_config*, %struct.swaybar_config** %10, align 8
  %78 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %81 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.swaybar_config*, %struct.swaybar_config** %10, align 8
  %84 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.swaybar_workspace*, %struct.swaybar_workspace** %8, align 8
  %87 = getelementptr inbounds %struct.swaybar_workspace, %struct.swaybar_workspace* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @get_text_size(i32* %76, i32 %79, i32* %13, i32* %14, i32* null, i64 %82, i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @WS_VERTICAL_PADDING, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %93 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = mul nsw i64 %91, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* @WS_HORIZONTAL_PADDING, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %100 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = mul nsw i64 %98, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* @BORDER_WIDTH, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %107 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = mul nsw i64 %105, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %15, align 4
  %112 = mul nsw i32 %111, 2
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %17, align 4
  %116 = mul nsw i32 %115, 2
  %117 = add nsw i32 %114, %116
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %18, align 8
  %119 = load i64, i64* %18, align 8
  %120 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %121 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = sdiv i64 %119, %122
  store i64 %123, i64* %19, align 8
  %124 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %125 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %124, i32 0, i32 3
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.swaybar_config*, %struct.swaybar_config** %127, align 8
  %129 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %68
  %133 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %134 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %19, align 8
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i64, i64* %19, align 8
  store i64 %139, i64* %5, align 8
  br label %290

140:                                              ; preds = %132, %68
  %141 = load i32, i32* %16, align 4
  %142 = mul nsw i32 %141, 2
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %17, align 4
  %146 = mul nsw i32 %145, 2
  %147 = add nsw i32 %144, %146
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %20, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds %struct.box_colors, %struct.box_colors* %11, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @cairo_set_source_u32(i32* %149, i32 %151)
  %153 = load i32*, i32** %6, align 8
  %154 = load double*, double** %9, align 8
  %155 = load double, double* %154, align 8
  %156 = load i64, i64* %20, align 8
  %157 = load i64, i64* %12, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @cairo_rectangle(i32* %153, double %155, i64 0, i64 %156, i32 %158)
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @cairo_fill(i32* %160)
  %162 = load i32*, i32** %6, align 8
  %163 = getelementptr inbounds %struct.box_colors, %struct.box_colors* %11, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @cairo_set_source_u32(i32* %162, i32 %164)
  %166 = load i32*, i32** %6, align 8
  %167 = load double*, double** %9, align 8
  %168 = load double, double* %167, align 8
  %169 = load i64, i64* %20, align 8
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @cairo_rectangle(i32* %166, double %168, i64 0, i64 %169, i32 %170)
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @cairo_fill(i32* %172)
  %174 = load i32*, i32** %6, align 8
  %175 = load double*, double** %9, align 8
  %176 = load double, double* %175, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %12, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i32 @cairo_rectangle(i32* %174, double %176, i64 0, i64 %178, i32 %180)
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @cairo_fill(i32* %182)
  %184 = load i32*, i32** %6, align 8
  %185 = load double*, double** %9, align 8
  %186 = load double, double* %185, align 8
  %187 = load i64, i64* %20, align 8
  %188 = sitofp i64 %187 to double
  %189 = fadd double %186, %188
  %190 = load i32, i32* %17, align 4
  %191 = sitofp i32 %190 to double
  %192 = fsub double %189, %191
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* %12, align 8
  %196 = trunc i64 %195 to i32
  %197 = call i32 @cairo_rectangle(i32* %184, double %192, i64 0, i64 %194, i32 %196)
  %198 = load i32*, i32** %6, align 8
  %199 = call i32 @cairo_fill(i32* %198)
  %200 = load i32*, i32** %6, align 8
  %201 = load double*, double** %9, align 8
  %202 = load double, double* %201, align 8
  %203 = load i64, i64* %12, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = sub nsw i64 %203, %205
  %207 = load i64, i64* %20, align 8
  %208 = load i32, i32* %17, align 4
  %209 = call i32 @cairo_rectangle(i32* %200, double %202, i64 %206, i64 %207, i32 %208)
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @cairo_fill(i32* %210)
  %212 = load i64, i64* %12, align 8
  %213 = sitofp i64 %212 to double
  %214 = fdiv double %213, 2.000000e+00
  %215 = load i32, i32* %14, align 4
  %216 = sitofp i32 %215 to double
  %217 = fdiv double %216, 2.000000e+00
  %218 = fsub double %214, %217
  store double %218, double* %21, align 8
  %219 = load i32*, i32** %6, align 8
  %220 = getelementptr inbounds %struct.box_colors, %struct.box_colors* %11, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @cairo_set_source_u32(i32* %219, i32 %221)
  %223 = load i32*, i32** %6, align 8
  %224 = load double*, double** %9, align 8
  %225 = load double, double* %224, align 8
  %226 = load i64, i64* %20, align 8
  %227 = sdiv i64 %226, 2
  %228 = sitofp i64 %227 to double
  %229 = fadd double %225, %228
  %230 = load i32, i32* %13, align 4
  %231 = sdiv i32 %230, 2
  %232 = sitofp i32 %231 to double
  %233 = fsub double %229, %232
  %234 = load double, double* %21, align 8
  %235 = call i64 @floor(double %234)
  %236 = trunc i64 %235 to i32
  %237 = call i32 @cairo_move_to(i32* %223, double %233, i32 %236)
  %238 = load i32*, i32** %6, align 8
  %239 = load %struct.swaybar_config*, %struct.swaybar_config** %10, align 8
  %240 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %243 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.swaybar_config*, %struct.swaybar_config** %10, align 8
  %246 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.swaybar_workspace*, %struct.swaybar_workspace** %8, align 8
  %249 = getelementptr inbounds %struct.swaybar_workspace, %struct.swaybar_workspace* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @pango_printf(i32* %238, i32 %241, i64 %244, i32 %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %250)
  %252 = call %struct.swaybar_hotspot* @calloc(i32 1, i32 48)
  store %struct.swaybar_hotspot* %252, %struct.swaybar_hotspot** %22, align 8
  %253 = load double*, double** %9, align 8
  %254 = load double, double* %253, align 8
  %255 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %22, align 8
  %256 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %255, i32 0, i32 0
  store double %254, double* %256, align 8
  %257 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %22, align 8
  %258 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %257, i32 0, i32 7
  store i64 0, i64* %258, align 8
  %259 = load i64, i64* %20, align 8
  %260 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %22, align 8
  %261 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %260, i32 0, i32 6
  store i64 %259, i64* %261, align 8
  %262 = load i64, i64* %12, align 8
  %263 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %22, align 8
  %264 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %263, i32 0, i32 5
  store i64 %262, i64* %264, align 8
  %265 = load i32, i32* @workspace_hotspot_callback, align 4
  %266 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %22, align 8
  %267 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %266, i32 0, i32 4
  store i32 %265, i32* %267, align 4
  %268 = load i32, i32* @free, align 4
  %269 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %22, align 8
  %270 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 8
  %271 = load %struct.swaybar_workspace*, %struct.swaybar_workspace** %8, align 8
  %272 = getelementptr inbounds %struct.swaybar_workspace, %struct.swaybar_workspace* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @strdup(i32 %273)
  %275 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %22, align 8
  %276 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 4
  %277 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %278 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %277, i32 0, i32 2
  %279 = load %struct.swaybar_hotspot*, %struct.swaybar_hotspot** %22, align 8
  %280 = getelementptr inbounds %struct.swaybar_hotspot, %struct.swaybar_hotspot* %279, i32 0, i32 1
  %281 = call i32 @wl_list_insert(i32* %278, i32* %280)
  %282 = load i64, i64* %20, align 8
  %283 = sitofp i64 %282 to double
  %284 = load double*, double** %9, align 8
  %285 = load double, double* %284, align 8
  %286 = fadd double %285, %283
  store double %286, double* %284, align 8
  %287 = load %struct.swaybar_output*, %struct.swaybar_output** %7, align 8
  %288 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %5, align 8
  br label %290

290:                                              ; preds = %140, %138
  %291 = load i64, i64* %5, align 8
  ret i64 %291
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_text_size(i32*, i32, i32*, i32*, i32*, i64, i32, i8*, i32) #2

declare dso_local i32 @cairo_set_source_u32(i32*, i32) #2

declare dso_local i32 @cairo_rectangle(i32*, double, i64, i64, i32) #2

declare dso_local i32 @cairo_fill(i32*) #2

declare dso_local i32 @cairo_move_to(i32*, double, i32) #2

declare dso_local i64 @floor(double) #2

declare dso_local i32 @pango_printf(i32*, i32, i64, i32, i8*, i32) #2

declare dso_local %struct.swaybar_hotspot* @calloc(i32, i32) #2

declare dso_local i32 @strdup(i32) #2

declare dso_local i32 @wl_list_insert(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
