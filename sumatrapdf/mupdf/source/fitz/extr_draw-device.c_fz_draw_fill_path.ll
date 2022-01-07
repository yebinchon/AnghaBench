; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_fill_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_fill_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i64, %struct.TYPE_21__*, %struct.TYPE_19__*, i32 }
%struct.TYPE_21__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@FLT_EPSILON = common dso_local global float 0.000000e+00, align 4
@FZ_BLEND_KNOCKOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32*, float*, float, i32)* @fz_draw_fill_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_draw_fill_path(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5, float* %6, float %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_19__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_21__*, align 8
  %29 = alloca %struct.TYPE_20__, align 4
  %30 = alloca %struct.TYPE_20__*, align 8
  %31 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = bitcast i32* %32 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %19, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @fz_concat(i32 %34, i32 %37)
  store i32 %38, i32* %20, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %21, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32* @fz_default_colorspace(i32* %42, i32 %45, i32* %46)
  store i32* %47, i32** %22, align 8
  %48 = load i32, i32* %20, align 4
  %49 = call float @fz_matrix_expansion(i32 %48)
  store float %49, float* %23, align 4
  %50 = load i32, i32* @FZ_MAX_COLORS, align 4
  %51 = add nsw i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %25, align 8
  %54 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %26, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i64 %60
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %28, align 8
  %62 = bitcast %struct.TYPE_20__* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %62, i8 0, i64 4, i1 false)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %9
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i32*, i32** %10, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.TYPE_21__* @push_group_for_separations(i32* %73, %struct.TYPE_22__* %74, i32 %75, i32 %78)
  store %struct.TYPE_21__* %79, %struct.TYPE_21__** %28, align 8
  br label %80

80:                                               ; preds = %72, %67, %9
  %81 = load float, float* %23, align 4
  %82 = load float, float* @FLT_EPSILON, align 4
  %83 = fcmp olt float %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store float 1.000000e+00, float* %23, align 4
  br label %85

85:                                               ; preds = %84, %80
  %86 = load float, float* %23, align 4
  %87 = fdiv float 0x3FD3333340000000, %86
  store float %87, float* %24, align 4
  %88 = load float, float* %24, align 4
  %89 = fcmp olt float %88, 0x3F50624DE0000000
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store float 0x3F50624DE0000000, float* %24, align 4
  br label %91

91:                                               ; preds = %90, %85
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @fz_pixmap_bbox(i32* %92, i64 %95)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @fz_intersect_irect(i32 %96, i32 %99)
  store i32 %100, i32* %27, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %20, align 4
  %105 = load float, float* %24, align 4
  %106 = call i64 @fz_flatten_fill_path(i32* %101, %struct.TYPE_19__* %102, i32* %103, i32 %104, float %105, i32* %27, i32* %27)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  store i32 1, i32* %31, align 4
  br label %206

109:                                              ; preds = %91
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32*, i32** %10, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %119 = call %struct.TYPE_21__* @fz_knockout_begin(i32* %117, %struct.TYPE_22__* %118)
  store %struct.TYPE_21__* %119, %struct.TYPE_21__** %28, align 8
  br label %120

120:                                              ; preds = %116, %109
  %121 = load i32*, i32** %10, align 8
  %122 = load float*, float** %16, align 8
  %123 = load i32*, i32** %22, align 8
  %124 = load float, float* %17, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = call %struct.TYPE_20__* @resolve_color(i32* %121, %struct.TYPE_20__* %29, float* %122, i32* %123, float %124, i32 %125, i8* %54, i64 %128)
  store %struct.TYPE_20__* %129, %struct.TYPE_20__** %30, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %137 = call i32 @fz_convert_rasterizer(i32* %130, %struct.TYPE_19__* %131, i32 %132, i64 %135, i8* %54, %struct.TYPE_20__* %136)
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %120
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %142
  %149 = load i32*, i32** %10, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = load i32, i32* %20, align 4
  %153 = load float, float* %24, align 4
  %154 = call i64 @fz_flatten_fill_path(i32* %149, %struct.TYPE_19__* %150, i32* %151, i32 %152, float %153, i32* %27, i32* null)
  br label %155

155:                                              ; preds = %148, %142
  %156 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 -1, i8* %156, align 16
  %157 = load i32*, i32** %10, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @fz_convert_rasterizer(i32* %157, %struct.TYPE_19__* %158, i32 %159, i64 %162, i8* %54, %struct.TYPE_20__* null)
  br label %164

164:                                              ; preds = %155, %120
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %194

169:                                              ; preds = %164
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %169
  %176 = load i32*, i32** %10, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %178 = load i32*, i32** %12, align 8
  %179 = load i32, i32* %20, align 4
  %180 = load float, float* %24, align 4
  %181 = call i64 @fz_flatten_fill_path(i32* %176, %struct.TYPE_19__* %177, i32* %178, i32 %179, float %180, i32* %27, i32* null)
  br label %182

182:                                              ; preds = %175, %169
  %183 = load float, float* %17, align 4
  %184 = fmul float %183, 2.550000e+02
  %185 = fptoui float %184 to i8
  %186 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %185, i8* %186, align 16
  %187 = load i32*, i32** %10, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %189 = load i32, i32* %13, align 4
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @fz_convert_rasterizer(i32* %187, %struct.TYPE_19__* %188, i32 %189, i64 %192, i8* %54, %struct.TYPE_20__* null)
  br label %194

194:                                              ; preds = %182, %164
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load i32*, i32** %10, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %204 = call i32 @fz_knockout_end(i32* %202, %struct.TYPE_22__* %203)
  br label %205

205:                                              ; preds = %201, %194
  store i32 0, i32* %31, align 4
  br label %206

206:                                              ; preds = %205, %108
  %207 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %31, align 4
  switch i32 %208, label %210 [
    i32 0, label %209
    i32 1, label %209
  ]

209:                                              ; preds = %206, %206
  ret void

210:                                              ; preds = %206
  unreachable
}

declare dso_local i32 @fz_concat(i32, i32) #1

declare dso_local i32* @fz_default_colorspace(i32*, i32, i32*) #1

declare dso_local float @fz_matrix_expansion(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local %struct.TYPE_21__* @push_group_for_separations(i32*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @fz_intersect_irect(i32, i32) #1

declare dso_local i32 @fz_pixmap_bbox(i32*, i64) #1

declare dso_local i64 @fz_flatten_fill_path(i32*, %struct.TYPE_19__*, i32*, i32, float, i32*, i32*) #1

declare dso_local %struct.TYPE_21__* @fz_knockout_begin(i32*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_20__* @resolve_color(i32*, %struct.TYPE_20__*, float*, i32*, float, i32, i8*, i64) #1

declare dso_local i32 @fz_convert_rasterizer(i32*, %struct.TYPE_19__*, i32, i64, i8*, %struct.TYPE_20__*) #1

declare dso_local i32 @fz_knockout_end(i32*, %struct.TYPE_22__*) #1

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
