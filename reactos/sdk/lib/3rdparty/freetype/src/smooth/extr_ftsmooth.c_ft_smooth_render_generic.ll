; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/smooth/extr_ftsmooth.c_ft_smooth_render_generic.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/smooth/extr_ftsmooth.c_ft_smooth_render_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64, i32, i64 (i32, %struct.TYPE_36__*)*, %struct.TYPE_32__ }
%struct.TYPE_36__ = type { i32, %struct.TYPE_37__*, %struct.TYPE_28__* }
%struct.TYPE_37__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_28__ = type { i32, i32, i64, i32, i32* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32, i32, %struct.TYPE_33__*, %struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_28__, %struct.TYPE_37__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { i32 (%struct.TYPE_28__*, i64, i32*)*, i32* }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_28__*, i64, i32*)*, i32* }
%struct.TYPE_34__ = type { i32, i32 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@FT_RENDER_MODE_LCD = common dso_local global i64 0, align 8
@FT_RENDER_MODE_LCD_V = common dso_local global i64 0, align 8
@Invalid_Argument = common dso_local global i32 0, align 4
@Cannot_Render_Glyph = common dso_local global i32 0, align 4
@FT_GLYPH_OWN_BITMAP = common dso_local global i32 0, align 4
@FT_PIXEL_MODE_LCD_V = common dso_local global i64 0, align 8
@FT_RASTER_FLAG_AA = common dso_local global i32 0, align 4
@FT_GLYPH_FORMAT_BITMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_35__*, %struct.TYPE_27__*, i64, %struct.TYPE_34__*, i64)* @ft_smooth_render_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ft_smooth_render_generic(%struct.TYPE_35__* %0, %struct.TYPE_27__* %1, i64 %2, %struct.TYPE_34__* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_35__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_34__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_37__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_36__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_34__* %3, %struct.TYPE_34__** %9, align 8
  store i64 %4, i64* %10, align 8
  %28 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 7
  store %struct.TYPE_37__* %30, %struct.TYPE_37__** %12, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 6
  store %struct.TYPE_28__* %32, %struct.TYPE_28__** %13, align 8
  %33 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @FT_RENDER_MODE_LCD, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %17, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @FT_RENDER_MODE_LCD_V, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %18, align 4
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %5
  %53 = load i32, i32* @Invalid_Argument, align 4
  %54 = call i64 @FT_THROW(i32 %53)
  store i64 %54, i64* %11, align 8
  br label %416

55:                                               ; preds = %5
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @Cannot_Render_Glyph, align 4
  %61 = call i64 @FT_THROW(i32 %60)
  store i64 %61, i64* %11, align 8
  br label %416

62:                                               ; preds = %55
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %62
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @FT_FREE(i32* %74)
  %76 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_33__*, %struct.TYPE_33__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %77
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %71, %62
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %88 = call i32 @ft_glyphslot_preset_bitmap(%struct.TYPE_27__* %85, i64 %86, %struct.TYPE_34__* %87)
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @FT_ALLOC_MULT(i32* %91, i32 %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  br label %416

101:                                              ; preds = %84
  %102 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %102
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 0, %111
  %113 = mul nsw i32 64, %112
  store i32 %113, i32* %15, align 4
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 0, %116
  %118 = mul nsw i32 64, %117
  store i32 %118, i32* %16, align 4
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @FT_PIXEL_MODE_LCD_V, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %101
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 64, %127
  %129 = sdiv i32 %128, 3
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %16, align 4
  br label %139

132:                                              ; preds = %101
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 64, %135
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %132, %124
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %141 = icmp ne %struct.TYPE_34__* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %15, align 4
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %16, align 4
  br label %153

153:                                              ; preds = %142, %139
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %16, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156, %153
  %160 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %16, align 4
  %163 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %159, %156
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 2
  store %struct.TYPE_28__* %165, %struct.TYPE_28__** %166, align 8
  %167 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 1
  store %struct.TYPE_37__* %167, %struct.TYPE_37__** %168, align 8
  %169 = load i32, i32* @FT_RASTER_FLAG_AA, align 4
  %170 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  store i32 %169, i32* %170, align 8
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %322

173:                                              ; preds = %164
  store i32* null, i32** %21, align 8
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %24, align 4
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %25, align 4
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %26, align 4
  %183 = load i32, i32* %25, align 4
  %184 = udiv i32 %183, 3
  store i32 %184, i32* %25, align 4
  %185 = load i32, i32* %25, align 4
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = zext i32 %185 to i64
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32* %190, i32** %187, align 8
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 2
  %193 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %192, align 8
  %194 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i64 %193(i32 %196, %struct.TYPE_36__* %19)
  store i64 %197, i64* %11, align 8
  %198 = load i64, i64* %11, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %173
  br label %416

201:                                              ; preds = %173
  %202 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %203 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %202, i32 -21, i32 0)
  %204 = load i32, i32* %15, align 4
  %205 = sub nsw i32 %204, 21
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %25, align 4
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = zext i32 %206 to i64
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  store i32* %211, i32** %208, align 8
  %212 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %212, i32 0, i32 2
  %214 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %213, align 8
  %215 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i64 %214(i32 %217, %struct.TYPE_36__* %19)
  store i64 %218, i64* %11, align 8
  %219 = load i64, i64* %11, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %201
  br label %416

222:                                              ; preds = %201
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %224 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %223, i32 42, i32 0)
  %225 = load i32, i32* %15, align 4
  %226 = add nsw i32 %225, 42
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* %25, align 4
  %228 = mul i32 2, %227
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = zext i32 %228 to i64
  %233 = sub i64 0, %232
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32* %234, i32** %230, align 8
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %235, i32 0, i32 2
  %237 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %236, align 8
  %238 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i64 %237(i32 %240, %struct.TYPE_36__* %19)
  store i64 %241, i64* %11, align 8
  %242 = load i64, i64* %11, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %222
  br label %416

245:                                              ; preds = %222
  %246 = load i32*, i32** %21, align 8
  %247 = load i32, i32* %26, align 4
  %248 = call i64 @FT_ALLOC(i32* %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  br label %416

251:                                              ; preds = %245
  store i32 0, i32* %22, align 4
  br label %252

252:                                              ; preds = %316, %251
  %253 = load i32, i32* %22, align 4
  %254 = load i32, i32* %24, align 4
  %255 = icmp ult i32 %253, %254
  br i1 %255, label %256, label %319

256:                                              ; preds = %252
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 4
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %22, align 4
  %261 = load i32, i32* %26, align 4
  %262 = mul i32 %260, %261
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %259, i64 %263
  store i32* %264, i32** %20, align 8
  store i32 0, i32* %23, align 4
  br label %265

265:                                              ; preds = %308, %256
  %266 = load i32, i32* %23, align 4
  %267 = load i32, i32* %25, align 4
  %268 = icmp ult i32 %266, %267
  br i1 %268, label %269, label %311

269:                                              ; preds = %265
  %270 = load i32*, i32** %20, align 8
  %271 = load i32, i32* %23, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %21, align 8
  %276 = load i32, i32* %23, align 4
  %277 = mul i32 3, %276
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  store i32 %274, i32* %279, align 4
  %280 = load i32*, i32** %20, align 8
  %281 = load i32, i32* %23, align 4
  %282 = load i32, i32* %25, align 4
  %283 = add i32 %281, %282
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %280, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load i32*, i32** %21, align 8
  %288 = load i32, i32* %23, align 4
  %289 = mul i32 3, %288
  %290 = add i32 %289, 1
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %287, i64 %291
  store i32 %286, i32* %292, align 4
  %293 = load i32*, i32** %20, align 8
  %294 = load i32, i32* %23, align 4
  %295 = load i32, i32* %25, align 4
  %296 = add i32 %294, %295
  %297 = load i32, i32* %25, align 4
  %298 = add i32 %296, %297
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %293, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32*, i32** %21, align 8
  %303 = load i32, i32* %23, align 4
  %304 = mul i32 3, %303
  %305 = add i32 %304, 2
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %302, i64 %306
  store i32 %301, i32* %307, align 4
  br label %308

308:                                              ; preds = %269
  %309 = load i32, i32* %23, align 4
  %310 = add i32 %309, 1
  store i32 %310, i32* %23, align 4
  br label %265

311:                                              ; preds = %265
  %312 = load i32*, i32** %20, align 8
  %313 = load i32*, i32** %21, align 8
  %314 = load i32, i32* %26, align 4
  %315 = call i32 @FT_MEM_COPY(i32* %312, i32* %313, i32 %314)
  br label %316

316:                                              ; preds = %311
  %317 = load i32, i32* %22, align 4
  %318 = add i32 %317, 1
  store i32 %318, i32* %22, align 4
  br label %252

319:                                              ; preds = %252
  %320 = load i32*, i32** %21, align 8
  %321 = call i32 @FT_FREE(i32* %320)
  br label %415

322:                                              ; preds = %164
  %323 = load i32, i32* %18, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %406

325:                                              ; preds = %322
  %326 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  store i32 %328, i32* %27, align 4
  %329 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %330 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = mul nsw i32 %331, 3
  store i32 %332, i32* %330, align 4
  %333 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %334 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = udiv i32 %335, 3
  store i32 %336, i32* %334, align 8
  %337 = load i32, i32* %27, align 4
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 4
  %340 = load i32*, i32** %339, align 8
  %341 = sext i32 %337 to i64
  %342 = getelementptr inbounds i32, i32* %340, i64 %341
  store i32* %342, i32** %339, align 8
  %343 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %343, i32 0, i32 2
  %345 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %344, align 8
  %346 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = call i64 %345(i32 %348, %struct.TYPE_36__* %19)
  store i64 %349, i64* %11, align 8
  %350 = load i64, i64* %11, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %325
  br label %416

353:                                              ; preds = %325
  %354 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %355 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %354, i32 0, i32 21)
  %356 = load i32, i32* %16, align 4
  %357 = add nsw i32 %356, 21
  store i32 %357, i32* %16, align 4
  %358 = load i32, i32* %27, align 4
  %359 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %359, i32 0, i32 4
  %361 = load i32*, i32** %360, align 8
  %362 = sext i32 %358 to i64
  %363 = getelementptr inbounds i32, i32* %361, i64 %362
  store i32* %363, i32** %360, align 8
  %364 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %364, i32 0, i32 2
  %366 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %365, align 8
  %367 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = call i64 %366(i32 %369, %struct.TYPE_36__* %19)
  store i64 %370, i64* %11, align 8
  %371 = load i64, i64* %11, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %353
  br label %416

374:                                              ; preds = %353
  %375 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %376 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %375, i32 0, i32 -42)
  %377 = load i32, i32* %16, align 4
  %378 = sub nsw i32 %377, 42
  store i32 %378, i32* %16, align 4
  %379 = load i32, i32* %27, align 4
  %380 = mul nsw i32 2, %379
  %381 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %382 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %381, i32 0, i32 4
  %383 = load i32*, i32** %382, align 8
  %384 = sext i32 %380 to i64
  %385 = sub i64 0, %384
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  store i32* %386, i32** %382, align 8
  %387 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %387, i32 0, i32 2
  %389 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %388, align 8
  %390 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = call i64 %389(i32 %392, %struct.TYPE_36__* %19)
  store i64 %393, i64* %11, align 8
  %394 = load i64, i64* %11, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %374
  br label %416

397:                                              ; preds = %374
  %398 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %399 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = sdiv i32 %400, 3
  store i32 %401, i32* %399, align 4
  %402 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %403 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = mul i32 %404, 3
  store i32 %405, i32* %403, align 8
  br label %414

406:                                              ; preds = %322
  %407 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %408 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %407, i32 0, i32 2
  %409 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %408, align 8
  %410 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 8
  %413 = call i64 %409(i32 %412, %struct.TYPE_36__* %19)
  store i64 %413, i64* %11, align 8
  br label %414

414:                                              ; preds = %406, %397
  br label %415

415:                                              ; preds = %414, %319
  br label %416

416:                                              ; preds = %415, %396, %373, %352, %250, %244, %221, %200, %100, %59, %52
  %417 = load i64, i64* %11, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %423, label %419

419:                                              ; preds = %416
  %420 = load i64, i64* @FT_GLYPH_FORMAT_BITMAP, align 8
  %421 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %421, i32 0, i32 0
  store i64 %420, i64* %422, align 8
  br label %446

423:                                              ; preds = %416
  %424 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %424, i32 0, i32 3
  %426 = load %struct.TYPE_33__*, %struct.TYPE_33__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %445

432:                                              ; preds = %423
  %433 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %434 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %433, i32 0, i32 4
  %435 = load i32*, i32** %434, align 8
  %436 = call i32 @FT_FREE(i32* %435)
  %437 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %438 = xor i32 %437, -1
  %439 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %439, i32 0, i32 3
  %441 = load %struct.TYPE_33__*, %struct.TYPE_33__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = and i32 %443, %438
  store i32 %444, i32* %442, align 4
  br label %445

445:                                              ; preds = %432, %423
  br label %446

446:                                              ; preds = %445, %419
  %447 = load i32, i32* %15, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %452, label %449

449:                                              ; preds = %446
  %450 = load i32, i32* %16, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %459

452:                                              ; preds = %449, %446
  %453 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %454 = load i32, i32* %15, align 4
  %455 = sub nsw i32 0, %454
  %456 = load i32, i32* %16, align 4
  %457 = sub nsw i32 0, %456
  %458 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %453, i32 %455, i32 %457)
  br label %459

459:                                              ; preds = %452, %449
  %460 = load i64, i64* %11, align 8
  ret i64 %460
}

declare dso_local i64 @FT_THROW(i32) #1

declare dso_local i32 @FT_FREE(i32*) #1

declare dso_local i32 @ft_glyphslot_preset_bitmap(%struct.TYPE_27__*, i64, %struct.TYPE_34__*) #1

declare dso_local i64 @FT_ALLOC_MULT(i32*, i32, i32) #1

declare dso_local i32 @FT_Outline_Translate(%struct.TYPE_37__*, i32, i32) #1

declare dso_local i64 @FT_ALLOC(i32*, i32) #1

declare dso_local i32 @FT_MEM_COPY(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
