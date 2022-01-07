; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-font.c_lookup_glyph.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-font.c_lookup_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.glyph, %struct.TYPE_13__ }
%struct.glyph = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { float, float }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.key = type { float, i32, i8, i8, i32* }

@ctx = common dso_local global i32 0, align 4
@g_table = common dso_local global %struct.TYPE_14__* null, align 8
@g_table_load = common dso_local global i32 0, align 4
@MAXGLYPHS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"font cache table full, clearing cache\00", align 1
@PADDING = common dso_local global i64 0, align 8
@g_cache_h = common dso_local global i64 0, align 8
@g_cache_w = common dso_local global i64 0, align 8
@g_cache_row_x = common dso_local global i64 0, align 8
@g_cache_row_h = common dso_local global i64 0, align 8
@g_cache_row_y = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"font cache texture full, clearing cache\00", align 1
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_UNPACK_ROW_LENGTH = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_ALPHA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_QUADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.glyph* (i32*, float, i32, float*, float*)* @lookup_glyph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.glyph* @lookup_glyph(i32* %0, float %1, i32 %2, float* %3, float* %4) #0 {
  %6 = alloca %struct.glyph*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca %struct.TYPE_12__, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.key, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_12__, align 4
  store i32* %0, i32** %7, align 8
  store float %1, float* %8, align 4
  store i32 %2, i32* %9, align 4
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  %22 = load float, float* %8, align 4
  %23 = load float, float* %8, align 4
  %24 = fneg float %23
  %25 = call <2 x float> @fz_scale(float %22, float %24)
  %26 = bitcast %struct.TYPE_12__* %21 to <2 x float>*
  store <2 x float> %25, <2 x float>* %26, align 4
  %27 = bitcast %struct.TYPE_12__* %12 to i8*
  %28 = bitcast %struct.TYPE_12__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  %29 = load float*, float** %10, align 8
  %30 = load float, float* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  store float %30, float* %31, align 4
  %32 = load float*, float** %11, align 8
  %33 = load float, float* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store float %33, float* %34, align 4
  %35 = load i32, i32* @ctx, align 4
  %36 = call i32 @fz_subpixel_adjust(i32 %35, %struct.TYPE_12__* %12, %struct.TYPE_12__* %13, i8* %14, i8* %15)
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %10, align 8
  store float %38, float* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %41 = load float, float* %40, align 4
  %42 = load float*, float** %11, align 8
  store float %41, float* %42, align 4
  %43 = call i32 @memset(%struct.key* %17, i32 0, i32 24)
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 4
  store i32* %44, i32** %45, align 8
  %46 = load float, float* %8, align 4
  %47 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 0
  store float %46, float* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i8, i8* %14, align 1
  %51 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 2
  store i8 %50, i8* %51, align 8
  %52 = load i8, i8* %15, align 1
  %53 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 3
  store i8 %52, i8* %53, align 1
  %54 = call i32 @lookup_table(%struct.key* %17)
  store i32 %54, i32* %18, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_table, align 8
  %56 = load i32, i32* %18, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %5
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_table, align 8
  %65 = load i32, i32* %18, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store %struct.glyph* %68, %struct.glyph** %6, align 8
  br label %242

69:                                               ; preds = %5
  %70 = call i32 (...) @glEnd()
  %71 = load i32, i32* @ctx, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call %struct.TYPE_11__* @fz_render_glyph_pixmap(i32 %71, i32* %72, i32 %73, %struct.TYPE_12__* %13, i32* null, i32 8)
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %16, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %19, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* @g_table_load, align 4
  %82 = load i32, i32* @MAXGLYPHS, align 4
  %83 = mul nsw i32 %82, 3
  %84 = sdiv i32 %83, 4
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %69
  %87 = call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %88 = call i32 (...) @clear_font_cache()
  %89 = call i32 @lookup_table(%struct.key* %17)
  store i32 %89, i32* %18, align 4
  br label %90

90:                                               ; preds = %86, %69
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @PADDING, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i64, i64* @g_cache_h, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %19, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @PADDING, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i64, i64* @g_cache_w, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %97, %90
  store %struct.glyph* null, %struct.glyph** %6, align 8
  br label %242

105:                                              ; preds = %97
  %106 = load i64, i64* @g_cache_row_x, align 8
  %107 = load i32, i32* %19, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load i64, i64* @PADDING, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i64, i64* @g_cache_w, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  %115 = load i64, i64* @g_cache_row_h, align 8
  %116 = load i64, i64* @PADDING, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i64, i64* @g_cache_row_y, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* @g_cache_row_y, align 8
  %120 = load i64, i64* @PADDING, align 8
  store i64 %120, i64* @g_cache_row_x, align 8
  store i64 0, i64* @g_cache_row_h, align 8
  br label %121

121:                                              ; preds = %114, %105
  %122 = load i64, i64* @g_cache_row_y, align 8
  %123 = load i32, i32* %20, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = load i64, i64* @PADDING, align 8
  %127 = add nsw i64 %125, %126
  %128 = load i64, i64* @g_cache_h, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %132 = call i32 (...) @clear_font_cache()
  %133 = call i32 @lookup_table(%struct.key* %17)
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %130, %121
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_table, align 8
  %136 = load i32, i32* %18, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = call i32 @memcpy(%struct.TYPE_13__* %139, %struct.key* %17, i32 24)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_table, align 8
  %145 = load i32, i32* %18, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.glyph, %struct.glyph* %148, i32 0, i32 0
  store i32 %143, i32* %149, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_table, align 8
  %154 = load i32, i32* %18, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.glyph, %struct.glyph* %157, i32 0, i32 1
  store i32 %152, i32* %158, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_table, align 8
  %163 = load i32, i32* %18, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.glyph, %struct.glyph* %166, i32 0, i32 5
  store i32 %161, i32* %167, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 0, %170
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_table, align 8
  %173 = load i32, i32* %18, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.glyph, %struct.glyph* %176, i32 0, i32 4
  store i32 %171, i32* %177, align 8
  %178 = load i64, i64* @g_cache_row_x, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_table, align 8
  %180 = load i32, i32* %18, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.glyph, %struct.glyph* %183, i32 0, i32 3
  store i64 %178, i64* %184, align 8
  %185 = load i64, i64* @g_cache_row_y, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_table, align 8
  %187 = load i32, i32* %18, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.glyph, %struct.glyph* %190, i32 0, i32 2
  store i64 %185, i64* %191, align 8
  %192 = load i32, i32* @g_table_load, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* @g_table_load, align 4
  %194 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %195 = call i32 @glPixelStorei(i32 %194, i32 1)
  %196 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @glPixelStorei(i32 %196, i32 %199)
  %201 = load i32, i32* @GL_TEXTURE_2D, align 4
  %202 = load i64, i64* @g_cache_row_x, align 8
  %203 = load i64, i64* @g_cache_row_y, align 8
  %204 = load i32, i32* %19, align 4
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* @GL_ALPHA, align 4
  %207 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @glTexSubImage2D(i32 %201, i32 0, i64 %202, i64 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %210)
  %212 = load i32, i32* @GL_UNPACK_ROW_LENGTH, align 4
  %213 = call i32 @glPixelStorei(i32 %212, i32 0)
  %214 = load i32, i32* @ctx, align 4
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %216 = call i32 @fz_drop_pixmap(i32 %214, %struct.TYPE_11__* %215)
  %217 = load i32, i32* @GL_QUADS, align 4
  %218 = call i32 @glBegin(i32 %217)
  %219 = load i32, i32* %19, align 4
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* @PADDING, align 8
  %222 = add nsw i64 %220, %221
  %223 = load i64, i64* @g_cache_row_x, align 8
  %224 = add nsw i64 %223, %222
  store i64 %224, i64* @g_cache_row_x, align 8
  %225 = load i64, i64* @g_cache_row_h, align 8
  %226 = load i32, i32* %20, align 4
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* @PADDING, align 8
  %229 = add nsw i64 %227, %228
  %230 = icmp slt i64 %225, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %134
  %232 = load i32, i32* %20, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* @PADDING, align 8
  %235 = add nsw i64 %233, %234
  store i64 %235, i64* @g_cache_row_h, align 8
  br label %236

236:                                              ; preds = %231, %134
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_table, align 8
  %238 = load i32, i32* %18, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  store %struct.glyph* %241, %struct.glyph** %6, align 8
  br label %242

242:                                              ; preds = %236, %104, %63
  %243 = load %struct.glyph*, %struct.glyph** %6, align 8
  ret %struct.glyph* %243
}

declare dso_local <2 x float> @fz_scale(float, float) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fz_subpixel_adjust(i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i32 @memset(%struct.key*, i32, i32) #1

declare dso_local i32 @lookup_table(%struct.key*) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local %struct.TYPE_11__* @fz_render_glyph_pixmap(i32, i32*, i32, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @clear_font_cache(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.key*, i32) #1

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @glTexSubImage2D(i32, i32, i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fz_drop_pixmap(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @glBegin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
