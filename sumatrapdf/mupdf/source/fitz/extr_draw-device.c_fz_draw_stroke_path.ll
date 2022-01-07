; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_stroke_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_stroke_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { float }
%struct.TYPE_28__ = type { i64, i32, i64, %struct.TYPE_27__*, %struct.TYPE_25__*, i32 }
%struct.TYPE_27__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@FLT_EPSILON = common dso_local global float 0.000000e+00, align 4
@FZ_BLEND_KNOCKOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_24__*, i32, i32*, float*, float, i32)* @fz_draw_stroke_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_draw_stroke_path(i32* %0, i32* %1, i32* %2, %struct.TYPE_24__* %3, i32 %4, i32* %5, float* %6, float %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_25__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca %struct.TYPE_27__*, align 8
  %31 = alloca float, align 4
  %32 = alloca %struct.TYPE_26__, align 4
  %33 = alloca %struct.TYPE_26__*, align 8
  %34 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %19, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @fz_concat(i32 %37, i32 %40)
  store i32 %41, i32* %20, align 4
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %43, align 8
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %21, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i32* @fz_default_colorspace(i32* %45, i32 %48, i32* %49)
  store i32* %50, i32** %22, align 8
  %51 = load i32, i32* %20, align 4
  %52 = call float @fz_matrix_expansion(i32 %51)
  store float %52, float* %23, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load float, float* %54, align 4
  store float %55, float* %25, align 4
  %56 = load i32, i32* @FZ_MAX_COLORS, align 4
  %57 = add nsw i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %26, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %27, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %62 = call i32 @fz_rasterizer_graphics_aa_level(%struct.TYPE_25__* %61)
  %63 = add nsw i32 %62, 2
  %64 = sitofp i32 %63 to float
  %65 = fdiv float 2.000000e+00, %64
  store float %65, float* %29, align 4
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %67, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i64 %71
  store %struct.TYPE_27__* %72, %struct.TYPE_27__** %30, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %74 = call float @fz_rasterizer_graphics_min_line_width(%struct.TYPE_25__* %73)
  store float %74, float* %31, align 4
  %75 = bitcast %struct.TYPE_26__* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %75, i8 0, i64 4, i1 false)
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %9
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32*, i32** %10, align 8
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.TYPE_27__* @push_group_for_separations(i32* %86, %struct.TYPE_28__* %87, i32 %88, i32 %91)
  store %struct.TYPE_27__* %92, %struct.TYPE_27__** %30, align 8
  br label %93

93:                                               ; preds = %85, %80, %9
  %94 = load float, float* %31, align 4
  %95 = load float, float* %29, align 4
  %96 = fcmp ogt float %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load float, float* %31, align 4
  store float %98, float* %29, align 4
  br label %99

99:                                               ; preds = %97, %93
  %100 = load float, float* %23, align 4
  %101 = load float, float* @FLT_EPSILON, align 4
  %102 = fcmp olt float %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store float 1.000000e+00, float* %23, align 4
  br label %104

104:                                              ; preds = %103, %99
  %105 = load float, float* %25, align 4
  %106 = load float, float* %23, align 4
  %107 = fmul float %105, %106
  %108 = load float, float* %29, align 4
  %109 = fcmp olt float %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load float, float* %29, align 4
  %112 = load float, float* %23, align 4
  %113 = fdiv float %111, %112
  store float %113, float* %25, align 4
  br label %114

114:                                              ; preds = %110, %104
  %115 = load float, float* %23, align 4
  %116 = fdiv float 0x3FD3333340000000, %115
  store float %116, float* %24, align 4
  %117 = load float, float* %24, align 4
  %118 = fcmp olt float %117, 0x3F50624DE0000000
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store float 0x3F50624DE0000000, float* %24, align 4
  br label %120

120:                                              ; preds = %119, %114
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @fz_pixmap_bbox_no_ctx(i64 %123)
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @fz_intersect_irect(i32 %124, i32 %127)
  store i32 %128, i32* %28, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %133 = load i32, i32* %20, align 4
  %134 = load float, float* %24, align 4
  %135 = load float, float* %25, align 4
  %136 = call i64 @fz_flatten_stroke_path(i32* %129, %struct.TYPE_25__* %130, i32* %131, %struct.TYPE_24__* %132, i32 %133, float %134, float %135, i32* %28, i32* %28)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %120
  store i32 1, i32* %34, align 4
  br label %237

139:                                              ; preds = %120
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i32*, i32** %10, align 8
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %149 = call %struct.TYPE_27__* @fz_knockout_begin(i32* %147, %struct.TYPE_28__* %148)
  store %struct.TYPE_27__* %149, %struct.TYPE_27__** %30, align 8
  br label %150

150:                                              ; preds = %146, %139
  %151 = load i32*, i32** %10, align 8
  %152 = load float*, float** %16, align 8
  %153 = load i32*, i32** %22, align 8
  %154 = load float, float* %17, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = call %struct.TYPE_26__* @resolve_color(i32* %151, %struct.TYPE_26__* %32, float* %152, i32* %153, float %154, i32 %155, i8* %60, i64 %158)
  store %struct.TYPE_26__* %159, %struct.TYPE_26__** %33, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %33, align 8
  %166 = call i32 @fz_convert_rasterizer(i32* %160, %struct.TYPE_25__* %161, i32 0, i64 %164, i8* %60, %struct.TYPE_26__* %165)
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %194

171:                                              ; preds = %150
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %186, label %177

177:                                              ; preds = %171
  %178 = load i32*, i32** %10, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %180 = load i32*, i32** %12, align 8
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %182 = load i32, i32* %20, align 4
  %183 = load float, float* %24, align 4
  %184 = load float, float* %25, align 4
  %185 = call i64 @fz_flatten_stroke_path(i32* %178, %struct.TYPE_25__* %179, i32* %180, %struct.TYPE_24__* %181, i32 %182, float %183, float %184, i32* %28, i32* null)
  br label %186

186:                                              ; preds = %177, %171
  %187 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 -1, i8* %187, align 16
  %188 = load i32*, i32** %10, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @fz_convert_rasterizer(i32* %188, %struct.TYPE_25__* %189, i32 0, i64 %192, i8* %60, %struct.TYPE_26__* null)
  br label %194

194:                                              ; preds = %186, %150
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %196 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %225

199:                                              ; preds = %194
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %199
  %206 = load i32*, i32** %10, align 8
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %208 = load i32*, i32** %12, align 8
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %210 = load i32, i32* %20, align 4
  %211 = load float, float* %24, align 4
  %212 = load float, float* %25, align 4
  %213 = call i64 @fz_flatten_stroke_path(i32* %206, %struct.TYPE_25__* %207, i32* %208, %struct.TYPE_24__* %209, i32 %210, float %211, float %212, i32* %28, i32* null)
  br label %214

214:                                              ; preds = %205, %199
  %215 = load float, float* %17, align 4
  %216 = fmul float 2.550000e+02, %215
  %217 = fptoui float %216 to i8
  %218 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 %217, i8* %218, align 16
  %219 = load i32*, i32** %10, align 8
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @fz_convert_rasterizer(i32* %219, %struct.TYPE_25__* %220, i32 0, i64 %223, i8* %60, %struct.TYPE_26__* null)
  br label %225

225:                                              ; preds = %214, %194
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load i32*, i32** %10, align 8
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %235 = call i32 @fz_knockout_end(i32* %233, %struct.TYPE_28__* %234)
  br label %236

236:                                              ; preds = %232, %225
  store i32 0, i32* %34, align 4
  br label %237

237:                                              ; preds = %236, %138
  %238 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %238)
  %239 = load i32, i32* %34, align 4
  switch i32 %239, label %241 [
    i32 0, label %240
    i32 1, label %240
  ]

240:                                              ; preds = %237, %237
  ret void

241:                                              ; preds = %237
  unreachable
}

declare dso_local i32 @fz_concat(i32, i32) #1

declare dso_local i32* @fz_default_colorspace(i32*, i32, i32*) #1

declare dso_local float @fz_matrix_expansion(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fz_rasterizer_graphics_aa_level(%struct.TYPE_25__*) #1

declare dso_local float @fz_rasterizer_graphics_min_line_width(%struct.TYPE_25__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local %struct.TYPE_27__* @push_group_for_separations(i32*, %struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @fz_intersect_irect(i32, i32) #1

declare dso_local i32 @fz_pixmap_bbox_no_ctx(i64) #1

declare dso_local i64 @fz_flatten_stroke_path(i32*, %struct.TYPE_25__*, i32*, %struct.TYPE_24__*, i32, float, float, i32*, i32*) #1

declare dso_local %struct.TYPE_27__* @fz_knockout_begin(i32*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_26__* @resolve_color(i32*, %struct.TYPE_26__*, float*, i32*, float, i32, i8*, i64) #1

declare dso_local i32 @fz_convert_rasterizer(i32*, %struct.TYPE_25__*, i32, i64, i8*, %struct.TYPE_26__*) #1

declare dso_local i32 @fz_knockout_end(i32*, %struct.TYPE_28__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
