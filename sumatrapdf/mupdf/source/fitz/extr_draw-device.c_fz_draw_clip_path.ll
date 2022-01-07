; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_clip_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_clip_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, i64, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i8*, i32*, i32*, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32*, i32* }

@fz_default_color_params = common dso_local global i32 0, align 4
@FLT_EPSILON = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [10 x i8] c"clip path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32)* @fz_draw_clip_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_draw_clip_path(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %13, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fz_concat(i32 %23, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %15, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call float @fz_matrix_expansion(i32 %31)
  store float %32, float* %16, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %38
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %19, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %6
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %52 = load i32, i32* @fz_default_color_params, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_10__* @push_group_for_separations(i32* %50, %struct.TYPE_11__* %51, i32 %52, i32 %55)
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %19, align 8
  br label %57

57:                                               ; preds = %49, %44, %6
  %58 = load float, float* %16, align 4
  %59 = load float, float* @FLT_EPSILON, align 4
  %60 = fcmp olt float %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store float 1.000000e+00, float* %16, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load float, float* %16, align 4
  %64 = fdiv float 0x3FD3333340000000, %63
  store float %64, float* %17, align 4
  %65 = load float, float* %17, align 4
  %66 = fcmp olt float %65, 0x3F50624DE0000000
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store float 0x3F50624DE0000000, float* %17, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %71 = call %struct.TYPE_10__* @push_stack(i32* %69, %struct.TYPE_11__* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %19, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %20, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @fz_is_infinite_rect(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @fz_transform_rect(i32 %81, i32 %84)
  %86 = call i8* @fz_irect_from_rect(i32 %85)
  store i8* %86, i8** %18, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = call i8* @fz_pixmap_bbox(i32* %88, %struct.TYPE_12__* %91)
  %93 = call i8* @fz_intersect_irect(i8* %87, i8* %92)
  store i8* %93, i8** %18, align 8
  %94 = load i8*, i8** %18, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @fz_intersect_irect(i8* %94, i8* %97)
  store i8* %98, i8** %18, align 8
  br label %109

99:                                               ; preds = %68
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = call i8* @fz_pixmap_bbox(i32* %100, %struct.TYPE_12__* %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @fz_intersect_irect(i8* %104, i8* %107)
  store i8* %108, i8** %18, align 8
  br label %109

109:                                              ; preds = %99, %80
  %110 = load i32*, i32** %7, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load float, float* %17, align 4
  %115 = call i64 @fz_flatten_fill_path(i32* %110, i32* %111, i32* %112, i32 %113, float %114, i8** %18, i8** %18)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %109
  %118 = load i32*, i32** %7, align 8
  %119 = load i32*, i32** %15, align 8
  %120 = call i64 @fz_is_rect_rasterizer(i32* %118, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %117, %109
  %123 = load i8*, i8** %18, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  store i32* null, i32** %129, align 8
  br label %230

130:                                              ; preds = %117
  %131 = load i32*, i32** %7, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = call i8* @fz_new_pixmap_with_bbox(i32* %131, i32* null, i8* %132, i32* null, i32 1)
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  store i32* %134, i32** %137, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @fz_clear_pixmap(i32* %138, i32* %142)
  %144 = load i32*, i32** %7, align 8
  %145 = load i32*, i32** %20, align 8
  %146 = load i8*, i8** %18, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @fz_new_pixmap_with_bbox(i32* %144, i32* %145, i8* %146, i32* %152, i32 %158)
  %160 = bitcast i8* %159 to %struct.TYPE_12__*
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 1
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 4
  store %struct.TYPE_12__* %160, %struct.TYPE_12__** %163, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 1
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = load i8*, i8** %18, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @fz_copy_pixmap_rect(i32* %164, %struct.TYPE_12__* %168, %struct.TYPE_12__* %172, i8* %173, i32 %176)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i64 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %197

183:                                              ; preds = %130
  %184 = load i32*, i32** %7, align 8
  %185 = load i8*, i8** %18, align 8
  %186 = call i8* @fz_new_pixmap_with_bbox(i32* %184, i32* null, i8* %185, i32* null, i32 1)
  %187 = bitcast i8* %186 to i32*
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i64 1
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 3
  store i32* %187, i32** %190, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i64 1
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @fz_clear_pixmap(i32* %191, i32* %195)
  br label %197

197:                                              ; preds = %183, %130
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 1
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %217

203:                                              ; preds = %197
  %204 = load i32*, i32** %7, align 8
  %205 = load i8*, i8** %18, align 8
  %206 = call i8* @fz_new_pixmap_with_bbox(i32* %204, i32* null, i8* %205, i32* null, i32 1)
  %207 = bitcast i8* %206 to i32*
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i64 1
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 2
  store i32* %207, i32** %210, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i64 1
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @fz_clear_pixmap(i32* %211, i32* %215)
  br label %217

217:                                              ; preds = %203, %197
  %218 = load i32*, i32** %7, align 8
  %219 = load i32*, i32** %15, align 8
  %220 = load i32, i32* %10, align 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i64 1
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @fz_convert_rasterizer(i32* %218, i32* %219, i32 %220, i32* %224, i32* null, i32 0)
  %226 = load i8*, i8** %18, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i64 1
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  store i8* %226, i8** %229, align 8
  br label %230

230:                                              ; preds = %217, %122
  ret void
}

declare dso_local i32 @fz_concat(i32, i32) #1

declare dso_local float @fz_matrix_expansion(i32) #1

declare dso_local %struct.TYPE_10__* @push_group_for_separations(i32*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @push_stack(i32*, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @fz_is_infinite_rect(i32) #1

declare dso_local i8* @fz_irect_from_rect(i32) #1

declare dso_local i32 @fz_transform_rect(i32, i32) #1

declare dso_local i8* @fz_intersect_irect(i8*, i8*) #1

declare dso_local i8* @fz_pixmap_bbox(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @fz_flatten_fill_path(i32*, i32*, i32*, i32, float, i8**, i8**) #1

declare dso_local i64 @fz_is_rect_rasterizer(i32*, i32*) #1

declare dso_local i8* @fz_new_pixmap_with_bbox(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @fz_clear_pixmap(i32*, i32*) #1

declare dso_local i32 @fz_copy_pixmap_rect(i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @fz_convert_rasterizer(i32*, i32*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
