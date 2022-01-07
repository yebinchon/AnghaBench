; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_stroke_text.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_fz_draw_stroke_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__*, %struct.TYPE_31__, %struct.TYPE_28__* }
%struct.TYPE_27__ = type { i32, i64, i64 }
%struct.TYPE_31__ = type { i64, i64 }
%struct.TYPE_33__ = type { i64, i32, i64, i32, %struct.TYPE_32__*, %struct.TYPE_31__ }
%struct.TYPE_32__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }

@FZ_MAX_COLORS = common dso_local global i32 0, align 4
@FZ_BLEND_KNOCKOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot render glyph\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_29__*, i32*, i64, i64, i32*, float*, float, i32)* @fz_draw_stroke_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_draw_stroke_text(i32* %0, i32* %1, %struct.TYPE_29__* %2, i32* %3, i64 %4, i64 %5, i32* %6, float* %7, float %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_31__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_33__*, align 8
  %21 = alloca %struct.TYPE_31__, align 8
  %22 = alloca %struct.TYPE_32__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca %struct.TYPE_28__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_30__, align 4
  %32 = alloca %struct.TYPE_30__*, align 8
  %33 = alloca %struct.TYPE_31__, align 8
  %34 = alloca %struct.TYPE_31__, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca %struct.TYPE_31__, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32*, align 8
  %41 = bitcast %struct.TYPE_31__* %11 to { i64, i64 }*
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  store i64 %4, i64* %42, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  store i64 %5, i64* %43, align 8
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store float* %7, float** %17, align 8
  store float %8, float* %18, align 4
  store i32 %9, i32* %19, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = bitcast i32* %44 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %45, %struct.TYPE_33__** %20, align 8
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 5
  %48 = bitcast %struct.TYPE_31__* %11 to { i64, i64 }*
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = bitcast %struct.TYPE_31__* %47 to { i64, i64 }*
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call { i64, i64 } @fz_concat(i64 %50, i64 %52, i64 %55, i64 %57)
  %59 = bitcast %struct.TYPE_31__* %21 to { i64, i64 }*
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 0
  %61 = extractvalue { i64, i64 } %58, 0
  store i64 %61, i64* %60, align 8
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 1
  %63 = extractvalue { i64, i64 } %58, 1
  store i64 %63, i64* %62, align 8
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %65, align 8
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i64 %69
  store %struct.TYPE_32__* %70, %struct.TYPE_32__** %22, align 8
  %71 = load i32, i32* @FZ_MAX_COLORS, align 4
  %72 = add nsw i32 %71, 1
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %23, align 8
  %75 = alloca i8, i64 %73, align 16
  store i64 %73, i64* %24, align 8
  store i8 -1, i8* %25, align 1
  %76 = load float, float* %18, align 4
  %77 = fmul float %76, 2.550000e+02
  %78 = fptoui float %77 to i8
  store i8 %78, i8* %26, align 1
  store i32* null, i32** %29, align 8
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @fz_rasterizer_text_aa_level(i32 %81)
  store i32 %82, i32* %30, align 4
  %83 = bitcast %struct.TYPE_30__* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %83, i8 0, i64 4, i1 false)
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %10
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i32*, i32** %12, align 8
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %96 = load i32, i32* %19, align 4
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call %struct.TYPE_32__* @push_group_for_separations(i32* %94, %struct.TYPE_33__* %95, i32 %96, i32 %99)
  store %struct.TYPE_32__* %100, %struct.TYPE_32__** %22, align 8
  br label %101

101:                                              ; preds = %93, %88, %10
  %102 = load i32*, i32** %16, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32*, i32** %12, align 8
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = call i32* @fz_default_colorspace(i32* %105, i32 %108, i32* %109)
  store i32* %110, i32** %29, align 8
  br label %111

111:                                              ; preds = %104, %101
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i32*, i32** %12, align 8
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %121 = call %struct.TYPE_32__* @fz_knockout_begin(i32* %119, %struct.TYPE_33__* %120)
  store %struct.TYPE_32__* %121, %struct.TYPE_32__** %22, align 8
  br label %122

122:                                              ; preds = %118, %111
  %123 = load i32*, i32** %12, align 8
  %124 = load float*, float** %17, align 8
  %125 = load i32*, i32** %29, align 8
  %126 = load float, float* %18, align 4
  %127 = load i32, i32* %19, align 4
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = call %struct.TYPE_30__* @resolve_color(i32* %123, %struct.TYPE_30__* %31, float* %124, i32* %125, float %126, i32 %127, i8* %75, i64 %130)
  store %struct.TYPE_30__* %131, %struct.TYPE_30__** %32, align 8
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %133, align 8
  store %struct.TYPE_28__* %134, %struct.TYPE_28__** %27, align 8
  br label %135

135:                                              ; preds = %306, %122
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %137 = icmp ne %struct.TYPE_28__* %136, null
  br i1 %137, label %138, label %310

138:                                              ; preds = %135
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 3
  %141 = bitcast %struct.TYPE_31__* %33 to i8*
  %142 = bitcast %struct.TYPE_31__* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 %142, i64 16, i1 false)
  store i32 0, i32* %28, align 4
  br label %143

143:                                              ; preds = %302, %138
  %144 = load i32, i32* %28, align 4
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %305

149:                                              ; preds = %143
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %151, align 8
  %153 = load i32, i32* %28, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %36, align 4
  %158 = load i32, i32* %36, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %149
  br label %302

161:                                              ; preds = %149
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %163, align 8
  %165 = load i32, i32* %28, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 1
  store i64 %169, i64* %170, align 8
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %172, align 8
  %174 = load i32, i32* %28, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 0
  store i64 %178, i64* %179, align 8
  %180 = bitcast %struct.TYPE_31__* %33 to { i64, i64 }*
  %181 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %180, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = bitcast %struct.TYPE_31__* %21 to { i64, i64 }*
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call { i64, i64 } @fz_concat(i64 %182, i64 %184, i64 %187, i64 %189)
  %191 = bitcast %struct.TYPE_31__* %37 to { i64, i64 }*
  %192 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %191, i32 0, i32 0
  %193 = extractvalue { i64, i64 } %190, 0
  store i64 %193, i64* %192, align 8
  %194 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %191, i32 0, i32 1
  %195 = extractvalue { i64, i64 } %190, 1
  store i64 %195, i64* %194, align 8
  %196 = bitcast %struct.TYPE_31__* %34 to i8*
  %197 = bitcast %struct.TYPE_31__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 16, i1 false)
  %198 = load i32*, i32** %12, align 8
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %36, align 4
  %203 = load i32*, i32** %15, align 8
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %204, i32 0, i32 1
  %206 = load i32, i32* %30, align 4
  %207 = bitcast %struct.TYPE_31__* %21 to { i64, i64 }*
  %208 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %207, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = call i32* @fz_render_stroked_glyph(i32* %198, i32 %201, i32 %202, %struct.TYPE_31__* %34, i64 %209, i64 %211, i32* %203, i32* %205, i32 %206)
  store i32* %212, i32** %35, align 8
  %213 = load i32*, i32** %35, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %265

215:                                              ; preds = %161
  %216 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %38, align 4
  %219 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %39, align 4
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = load i32*, i32** %35, align 8
  %226 = load i32, i32* %38, align 4
  %227 = load i32, i32* %39, align 4
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %32, align 8
  %231 = call i32 @draw_glyph(i8* %75, i64 %224, i32* %225, i32 %226, i32 %227, i32* %229, %struct.TYPE_30__* %230)
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %215
  %237 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %238 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load i32*, i32** %35, align 8
  %241 = load i32, i32* %38, align 4
  %242 = load i32, i32* %39, align 4
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 1
  %245 = call i32 @draw_glyph(i8* %25, i64 %239, i32* %240, i32 %241, i32 %242, i32* %244, %struct.TYPE_30__* null)
  br label %246

246:                                              ; preds = %236, %215
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %246
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = load i32*, i32** %35, align 8
  %256 = load i32, i32* %38, align 4
  %257 = load i32, i32* %39, align 4
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 1
  %260 = call i32 @draw_glyph(i8* %26, i64 %254, i32* %255, i32 %256, i32 %257, i32* %259, %struct.TYPE_30__* null)
  br label %261

261:                                              ; preds = %251, %246
  %262 = load i32*, i32** %12, align 8
  %263 = load i32*, i32** %35, align 8
  %264 = call i32 @fz_drop_glyph(i32* %262, i32* %263)
  br label %301

265:                                              ; preds = %161
  %266 = load i32*, i32** %12, align 8
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %36, align 4
  %271 = bitcast %struct.TYPE_31__* %33 to { i64, i64 }*
  %272 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %271, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = call i32* @fz_outline_glyph(i32* %266, i32 %269, i32 %270, i64 %273, i64 %275)
  store i32* %276, i32** %40, align 8
  %277 = load i32*, i32** %40, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %297

279:                                              ; preds = %265
  %280 = load i32*, i32** %12, align 8
  %281 = load i32*, i32** %13, align 8
  %282 = load i32*, i32** %40, align 8
  %283 = load i32*, i32** %15, align 8
  %284 = load i32*, i32** %29, align 8
  %285 = load float*, float** %17, align 8
  %286 = load float, float* %18, align 4
  %287 = load i32, i32* %19, align 4
  %288 = bitcast %struct.TYPE_31__* %11 to { i64, i64 }*
  %289 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %288, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @fz_draw_stroke_path(i32* %280, i32* %281, i32* %282, i32* %283, i64 %290, i64 %292, i32* %284, float* %285, float %286, i32 %287)
  %294 = load i32*, i32** %12, align 8
  %295 = load i32*, i32** %40, align 8
  %296 = call i32 @fz_drop_path(i32* %294, i32* %295)
  br label %300

297:                                              ; preds = %265
  %298 = load i32*, i32** %12, align 8
  %299 = call i32 @fz_warn(i32* %298, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %300

300:                                              ; preds = %297, %279
  br label %301

301:                                              ; preds = %300, %261
  br label %302

302:                                              ; preds = %301, %160
  %303 = load i32, i32* %28, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %28, align 4
  br label %143

305:                                              ; preds = %143
  br label %306

306:                                              ; preds = %305
  %307 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %308 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %307, i32 0, i32 4
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %308, align 8
  store %struct.TYPE_28__* %309, %struct.TYPE_28__** %27, align 8
  br label %135

310:                                              ; preds = %135
  %311 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %312 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @FZ_BLEND_KNOCKOUT, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %310
  %318 = load i32*, i32** %12, align 8
  %319 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %320 = call i32 @fz_knockout_end(i32* %318, %struct.TYPE_33__* %319)
  br label %321

321:                                              ; preds = %317, %310
  %322 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %322)
  ret void
}

declare dso_local { i64, i64 } @fz_concat(i64, i64, i64, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fz_rasterizer_text_aa_level(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local %struct.TYPE_32__* @push_group_for_separations(i32*, %struct.TYPE_33__*, i32, i32) #1

declare dso_local i32* @fz_default_colorspace(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_32__* @fz_knockout_begin(i32*, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_30__* @resolve_color(i32*, %struct.TYPE_30__*, float*, i32*, float, i32, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32* @fz_render_stroked_glyph(i32*, i32, i32, %struct.TYPE_31__*, i64, i64, i32*, i32*, i32) #1

declare dso_local i32 @draw_glyph(i8*, i64, i32*, i32, i32, i32*, %struct.TYPE_30__*) #1

declare dso_local i32 @fz_drop_glyph(i32*, i32*) #1

declare dso_local i32* @fz_outline_glyph(i32*, i32, i32, i64, i64) #1

declare dso_local i32 @fz_draw_stroke_path(i32*, i32*, i32*, i32*, i64, i64, i32*, float*, float, i32) #1

declare dso_local i32 @fz_drop_path(i32*, i32*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @fz_knockout_end(i32*, %struct.TYPE_33__*) #1

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
