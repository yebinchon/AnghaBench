; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_clip_stroke_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_clip_stroke_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { float }
%struct.TYPE_17__ = type { i64, i32, i32, i64, %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { i8*, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32*, i32* }

@fz_default_color_params = common dso_local global i32 0, align 4
@FLT_EPSILON = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [12 x i8] c"clip stroke\00", align 1
@FZ_BLEND_ISOLATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_15__*, i32, i32)* @fz_draw_clip_stroke_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_draw_clip_stroke_path(i32* %0, i32* %1, i32* %2, %struct.TYPE_15__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %13, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fz_concat(i32 %26, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %15, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call float @fz_matrix_expansion(i32 %34)
  store float %35, float* %16, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load float, float* %37, align 4
  store float %38, float* %18, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i64 %44
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %20, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @fz_rasterizer_graphics_aa_level(i32* %46)
  %48 = add nsw i32 %47, 2
  %49 = sitofp i32 %48 to float
  %50 = fdiv float 2.000000e+00, %49
  store float %50, float* %22, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = call float @fz_rasterizer_graphics_min_line_width(i32* %51)
  store float %52, float* %23, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %6
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %65 = load i32, i32* @fz_default_color_params, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.TYPE_16__* @push_group_for_separations(i32* %63, %struct.TYPE_17__* %64, i32 %65, i32 %68)
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %20, align 8
  br label %70

70:                                               ; preds = %62, %57, %6
  %71 = load float, float* %23, align 4
  %72 = load float, float* %22, align 4
  %73 = fcmp ogt float %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load float, float* %23, align 4
  store float %75, float* %22, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = load float, float* %16, align 4
  %78 = load float, float* @FLT_EPSILON, align 4
  %79 = fcmp olt float %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store float 1.000000e+00, float* %16, align 4
  br label %81

81:                                               ; preds = %80, %76
  %82 = load float, float* %18, align 4
  %83 = load float, float* %16, align 4
  %84 = fmul float %82, %83
  %85 = load float, float* %22, align 4
  %86 = fcmp olt float %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load float, float* %22, align 4
  %89 = load float, float* %16, align 4
  %90 = fdiv float %88, %89
  store float %90, float* %18, align 4
  br label %91

91:                                               ; preds = %87, %81
  %92 = load float, float* %16, align 4
  %93 = fdiv float 0x3FD3333340000000, %92
  store float %93, float* %17, align 4
  %94 = load float, float* %17, align 4
  %95 = fcmp olt float %94, 0x3F50624DE0000000
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store float 0x3F50624DE0000000, float* %17, align 4
  br label %97

97:                                               ; preds = %96, %91
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %100 = call %struct.TYPE_16__* @push_stack(i32* %98, %struct.TYPE_17__* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_16__* %100, %struct.TYPE_16__** %20, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %21, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @fz_is_infinite_rect(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %128, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @fz_transform_rect(i32 %110, i32 %113)
  %115 = call i8* @fz_irect_from_rect(i32 %114)
  store i8* %115, i8** %19, align 8
  %116 = load i8*, i8** %19, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = call i8* @fz_pixmap_bbox(i32* %117, %struct.TYPE_18__* %120)
  %122 = call i8* @fz_intersect_irect(i8* %116, i8* %121)
  store i8* %122, i8** %19, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @fz_intersect_irect(i8* %123, i8* %126)
  store i8* %127, i8** %19, align 8
  br label %138

128:                                              ; preds = %97
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 5
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = call i8* @fz_pixmap_bbox(i32* %129, %struct.TYPE_18__* %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* @fz_intersect_irect(i8* %133, i8* %136)
  store i8* %137, i8** %19, align 8
  br label %138

138:                                              ; preds = %128, %109
  %139 = load i32*, i32** %7, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %143 = load i32, i32* %14, align 4
  %144 = load float, float* %17, align 4
  %145 = load float, float* %18, align 4
  %146 = call i64 @fz_flatten_stroke_path(i32* %139, i32* %140, i32* %141, %struct.TYPE_15__* %142, i32 %143, float %144, float %145, i8** %19, i8** %19)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %138
  %149 = load i8*, i8** %19, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  store i8* %149, i8** %152, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %155, align 8
  br label %275

156:                                              ; preds = %138
  %157 = load i32*, i32** %7, align 8
  %158 = load i8*, i8** %19, align 8
  %159 = call i8* @fz_new_pixmap_with_bbox(i32* %157, i32* null, i8* %158, i32* null, i32 1)
  %160 = bitcast i8* %159 to %struct.TYPE_18__*
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i64 1
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 2
  store %struct.TYPE_18__* %160, %struct.TYPE_18__** %163, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i64 1
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = call i32 @fz_clear_pixmap(i32* %164, %struct.TYPE_18__* %168)
  %170 = load i32*, i32** %7, align 8
  %171 = load i32*, i32** %21, align 8
  %172 = load i8*, i8** %19, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i8* @fz_new_pixmap_with_bbox(i32* %170, i32* %171, i8* %172, i32* %178, i32 %184)
  %186 = bitcast i8* %185 to %struct.TYPE_18__*
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i64 1
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 5
  store %struct.TYPE_18__* %186, %struct.TYPE_18__** %189, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 5
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %156
  %198 = load i32*, i32** %7, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i64 1
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 5
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %201, align 8
  %203 = call i32 @fz_clear_pixmap(i32* %198, %struct.TYPE_18__* %202)
  br label %219

204:                                              ; preds = %156
  %205 = load i32*, i32** %7, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i64 1
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 5
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %208, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 5
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %212, align 8
  %214 = load i8*, i8** %19, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @fz_copy_pixmap_rect(i32* %205, %struct.TYPE_18__* %209, %struct.TYPE_18__* %213, i8* %214, i32 %217)
  br label %219

219:                                              ; preds = %204, %197
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 4
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %221, align 8
  %223 = icmp ne %struct.TYPE_18__* %222, null
  br i1 %223, label %224, label %238

224:                                              ; preds = %219
  %225 = load i32*, i32** %7, align 8
  %226 = load i8*, i8** %19, align 8
  %227 = call i8* @fz_new_pixmap_with_bbox(i32* %225, i32* null, i8* %226, i32* null, i32 1)
  %228 = bitcast i8* %227 to %struct.TYPE_18__*
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i64 1
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 4
  store %struct.TYPE_18__* %228, %struct.TYPE_18__** %231, align 8
  %232 = load i32*, i32** %7, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i64 1
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 4
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %235, align 8
  %237 = call i32 @fz_clear_pixmap(i32* %232, %struct.TYPE_18__* %236)
  br label %238

238:                                              ; preds = %224, %219
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = icmp ne %struct.TYPE_18__* %241, null
  br i1 %242, label %243, label %257

243:                                              ; preds = %238
  %244 = load i32*, i32** %7, align 8
  %245 = load i8*, i8** %19, align 8
  %246 = call i8* @fz_new_pixmap_with_bbox(i32* %244, i32* null, i8* %245, i32* null, i32 1)
  %247 = bitcast i8* %246 to %struct.TYPE_18__*
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i64 1
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 3
  store %struct.TYPE_18__* %247, %struct.TYPE_18__** %250, align 8
  %251 = load i32*, i32** %7, align 8
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i64 1
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 3
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %254, align 8
  %256 = call i32 @fz_clear_pixmap(i32* %251, %struct.TYPE_18__* %255)
  br label %257

257:                                              ; preds = %243, %238
  %258 = load i32*, i32** %7, align 8
  %259 = load i32*, i32** %15, align 8
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i64 1
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %262, align 8
  %264 = call i32 @fz_convert_rasterizer(i32* %258, i32* %259, i32 0, %struct.TYPE_18__* %263, i32* null, i32 0)
  %265 = load i32, i32* @FZ_BLEND_ISOLATED, align 4
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i64 1
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %265
  store i32 %270, i32* %268, align 8
  %271 = load i8*, i8** %19, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i64 1
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  store i8* %271, i8** %274, align 8
  br label %275

275:                                              ; preds = %257, %148
  ret void
}

declare dso_local i32 @fz_concat(i32, i32) #1

declare dso_local float @fz_matrix_expansion(i32) #1

declare dso_local i32 @fz_rasterizer_graphics_aa_level(i32*) #1

declare dso_local float @fz_rasterizer_graphics_min_line_width(i32*) #1

declare dso_local %struct.TYPE_16__* @push_group_for_separations(i32*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @push_stack(i32*, %struct.TYPE_17__*, i8*) #1

declare dso_local i32 @fz_is_infinite_rect(i32) #1

declare dso_local i8* @fz_irect_from_rect(i32) #1

declare dso_local i32 @fz_transform_rect(i32, i32) #1

declare dso_local i8* @fz_intersect_irect(i8*, i8*) #1

declare dso_local i8* @fz_pixmap_bbox(i32*, %struct.TYPE_18__*) #1

declare dso_local i64 @fz_flatten_stroke_path(i32*, i32*, i32*, %struct.TYPE_15__*, i32, float, float, i8**, i8**) #1

declare dso_local i8* @fz_new_pixmap_with_bbox(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @fz_clear_pixmap(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @fz_copy_pixmap_rect(i32*, %struct.TYPE_18__*, %struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @fz_convert_rasterizer(i32*, i32*, i32, %struct.TYPE_18__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
