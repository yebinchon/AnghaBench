; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/smooth/extr_ftsmooth.c_ft_smooth_render_generic.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/smooth/extr_ftsmooth.c_ft_smooth_render_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64, i32, i64 (i32, %struct.TYPE_36__*)*, %struct.TYPE_32__ }
%struct.TYPE_36__ = type { i32, %struct.TYPE_37__*, %struct.TYPE_28__* }
%struct.TYPE_37__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_28__ = type { i32, i32, i64, i32, i32* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32, i32, %struct.TYPE_33__*, %struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_28__, %struct.TYPE_37__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_34__*, i32 (%struct.TYPE_28__*, i64, i32*)*, i32* }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_28__*, i64, i32*)*, i32* }
%struct.TYPE_34__ = type { i32, i32 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@FT_RENDER_MODE_LCD = common dso_local global i64 0, align 8
@FT_RENDER_MODE_LCD_V = common dso_local global i64 0, align 8
@Invalid_Argument = common dso_local global i32 0, align 4
@Cannot_Render_Glyph = common dso_local global i32 0, align 4
@FT_GLYPH_OWN_BITMAP = common dso_local global i32 0, align 4
@Raster_Overflow = common dso_local global i32 0, align 4
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
  %27 = alloca %struct.TYPE_34__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %6, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_34__* %3, %struct.TYPE_34__** %9, align 8
  store i64 %4, i64* %10, align 8
  %30 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %30, i64* %11, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 7
  store %struct.TYPE_37__* %32, %struct.TYPE_37__** %12, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 6
  store %struct.TYPE_28__* %34, %struct.TYPE_28__** %13, align 8
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @FT_RENDER_MODE_LCD, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %17, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @FT_RENDER_MODE_LCD_V, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %18, align 4
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %5
  %55 = load i32, i32* @Invalid_Argument, align 4
  %56 = call i64 @FT_THROW(i32 %55)
  store i64 %56, i64* %11, align 8
  br label %560

57:                                               ; preds = %5
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @Cannot_Render_Glyph, align 4
  %63 = call i64 @FT_THROW(i32 %62)
  store i64 %63, i64* %11, align 8
  br label %560

64:                                               ; preds = %57
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %64
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @FT_FREE(i32* %76)
  %78 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %79
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %73, %64
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %90 = call i64 @ft_glyphslot_preset_bitmap(%struct.TYPE_27__* %87, i64 %88, %struct.TYPE_34__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @Raster_Overflow, align 4
  %94 = call i64 @FT_THROW(i32 %93)
  store i64 %94, i64* %11, align 8
  br label %560

95:                                               ; preds = %86
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @FT_ALLOC_MULT(i32* %98, i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %560

108:                                              ; preds = %95
  %109 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %109
  store i32 %115, i32* %113, align 4
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 0, %118
  %120 = mul nsw i32 64, %119
  store i32 %120, i32* %15, align 4
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 0, %123
  %125 = mul nsw i32 64, %124
  store i32 %125, i32* %16, align 4
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @FT_PIXEL_MODE_LCD_V, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %108
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 64, %134
  %136 = sdiv i32 %135, 3
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %16, align 4
  br label %146

139:                                              ; preds = %108
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 64, %142
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %139, %131
  %147 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %148 = icmp ne %struct.TYPE_34__* %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %15, align 4
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %16, align 4
  br label %160

160:                                              ; preds = %149, %146
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163, %160
  %167 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %16, align 4
  %170 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %166, %163
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 2
  store %struct.TYPE_28__* %172, %struct.TYPE_28__** %173, align 8
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 1
  store %struct.TYPE_37__* %174, %struct.TYPE_37__** %175, align 8
  %176 = load i32, i32* @FT_RASTER_FLAG_AA, align 4
  %177 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i32 0, i32 0
  store i32 %176, i32* %177, align 8
  %178 = load i32, i32* %17, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %398

180:                                              ; preds = %171
  store i32* null, i32** %21, align 8
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %24, align 4
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  store i32 %186, i32* %25, align 4
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %26, align 4
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %193, align 8
  store %struct.TYPE_34__* %194, %struct.TYPE_34__** %27, align 8
  %195 = load i32, i32* %25, align 4
  %196 = udiv i32 %195, 3
  store i32 %196, i32* %25, align 4
  %197 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = sub nsw i32 0, %201
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 0, %206
  %208 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %197, i32 %202, i32 %207)
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %209, i32 0, i32 2
  %211 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %210, align 8
  %212 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i64 %211(i32 %214, %struct.TYPE_36__* %19)
  store i64 %215, i64* %11, align 8
  %216 = load i64, i64* %11, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %180
  br label %560

219:                                              ; preds = %180
  %220 = load i32, i32* %25, align 4
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 4
  %223 = load i32*, i32** %222, align 8
  %224 = zext i32 %220 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %222, align 8
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i64 1
  %233 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %230, %234
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %237 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %236, i64 0
  %238 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %240, i64 1
  %242 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %239, %243
  %245 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %226, i32 %235, i32 %244)
  %246 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %246, i32 0, i32 2
  %248 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %247, align 8
  %249 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = call i64 %248(i32 %251, %struct.TYPE_36__* %19)
  store i64 %252, i64* %11, align 8
  %253 = load i32, i32* %25, align 4
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 4
  %256 = load i32*, i32** %255, align 8
  %257 = zext i32 %253 to i64
  %258 = sub i64 0, %257
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32* %259, i32** %255, align 8
  %260 = load i64, i64* %11, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %219
  br label %560

263:                                              ; preds = %219
  %264 = load i32, i32* %25, align 4
  %265 = mul i32 2, %264
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 4
  %268 = load i32*, i32** %267, align 8
  %269 = zext i32 %265 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32* %270, i32** %267, align 8
  %271 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %272 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %273 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %272, i64 1
  %274 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %277 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %276, i64 2
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = sub nsw i32 %275, %279
  %281 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %282 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %281, i64 1
  %283 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %285, i64 2
  %287 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = sub nsw i32 %284, %288
  %290 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %271, i32 %280, i32 %289)
  %291 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %291, i32 0, i32 2
  %293 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %292, align 8
  %294 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = call i64 %293(i32 %296, %struct.TYPE_36__* %19)
  store i64 %297, i64* %11, align 8
  %298 = load i32, i32* %25, align 4
  %299 = mul i32 2, %298
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 4
  %302 = load i32*, i32** %301, align 8
  %303 = zext i32 %299 to i64
  %304 = sub i64 0, %303
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32* %305, i32** %301, align 8
  %306 = load i64, i64* %11, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %263
  br label %560

309:                                              ; preds = %263
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i64 2
  %312 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %15, align 4
  %315 = sub nsw i32 %314, %313
  store i32 %315, i32* %15, align 4
  %316 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %317 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %316, i64 2
  %318 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %16, align 4
  %321 = sub nsw i32 %320, %319
  store i32 %321, i32* %16, align 4
  %322 = load i32*, i32** %21, align 8
  %323 = load i32, i32* %26, align 4
  %324 = call i64 @FT_ALLOC(i32* %322, i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %309
  br label %560

327:                                              ; preds = %309
  store i32 0, i32* %22, align 4
  br label %328

328:                                              ; preds = %392, %327
  %329 = load i32, i32* %22, align 4
  %330 = load i32, i32* %24, align 4
  %331 = icmp ult i32 %329, %330
  br i1 %331, label %332, label %395

332:                                              ; preds = %328
  %333 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %334 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %333, i32 0, i32 4
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %22, align 4
  %337 = load i32, i32* %26, align 4
  %338 = mul i32 %336, %337
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %335, i64 %339
  store i32* %340, i32** %20, align 8
  store i32 0, i32* %23, align 4
  br label %341

341:                                              ; preds = %384, %332
  %342 = load i32, i32* %23, align 4
  %343 = load i32, i32* %25, align 4
  %344 = icmp ult i32 %342, %343
  br i1 %344, label %345, label %387

345:                                              ; preds = %341
  %346 = load i32*, i32** %20, align 8
  %347 = load i32, i32* %23, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load i32*, i32** %21, align 8
  %352 = load i32, i32* %23, align 4
  %353 = mul i32 3, %352
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  store i32 %350, i32* %355, align 4
  %356 = load i32*, i32** %20, align 8
  %357 = load i32, i32* %23, align 4
  %358 = load i32, i32* %25, align 4
  %359 = add i32 %357, %358
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %356, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load i32*, i32** %21, align 8
  %364 = load i32, i32* %23, align 4
  %365 = mul i32 3, %364
  %366 = add i32 %365, 1
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %363, i64 %367
  store i32 %362, i32* %368, align 4
  %369 = load i32*, i32** %20, align 8
  %370 = load i32, i32* %23, align 4
  %371 = load i32, i32* %25, align 4
  %372 = add i32 %370, %371
  %373 = load i32, i32* %25, align 4
  %374 = add i32 %372, %373
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %369, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32*, i32** %21, align 8
  %379 = load i32, i32* %23, align 4
  %380 = mul i32 3, %379
  %381 = add i32 %380, 2
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %378, i64 %382
  store i32 %377, i32* %383, align 4
  br label %384

384:                                              ; preds = %345
  %385 = load i32, i32* %23, align 4
  %386 = add i32 %385, 1
  store i32 %386, i32* %23, align 4
  br label %341

387:                                              ; preds = %341
  %388 = load i32*, i32** %20, align 8
  %389 = load i32*, i32** %21, align 8
  %390 = load i32, i32* %26, align 4
  %391 = call i32 @FT_MEM_COPY(i32* %388, i32* %389, i32 %390)
  br label %392

392:                                              ; preds = %387
  %393 = load i32, i32* %22, align 4
  %394 = add i32 %393, 1
  store i32 %394, i32* %22, align 4
  br label %328

395:                                              ; preds = %328
  %396 = load i32*, i32** %21, align 8
  %397 = call i32 @FT_FREE(i32* %396)
  br label %559

398:                                              ; preds = %171
  %399 = load i32, i32* %18, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %550

401:                                              ; preds = %398
  %402 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %403 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  store i32 %404, i32* %28, align 4
  %405 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %405, i32 0, i32 4
  %407 = load %struct.TYPE_31__*, %struct.TYPE_31__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %407, i32 0, i32 0
  %409 = load %struct.TYPE_34__*, %struct.TYPE_34__** %408, align 8
  store %struct.TYPE_34__* %409, %struct.TYPE_34__** %29, align 8
  %410 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %411 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = mul nsw i32 %412, 3
  store i32 %413, i32* %411, align 4
  %414 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %415 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = udiv i32 %416, 3
  store i32 %417, i32* %415, align 8
  %418 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %419 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %420 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %419, i64 0
  %421 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = sub nsw i32 0, %422
  %424 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %425 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %424, i64 0
  %426 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %418, i32 %423, i32 %427)
  %429 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %429, i32 0, i32 2
  %431 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %430, align 8
  %432 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = call i64 %431(i32 %434, %struct.TYPE_36__* %19)
  store i64 %435, i64* %11, align 8
  %436 = load i64, i64* %11, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %401
  br label %560

439:                                              ; preds = %401
  %440 = load i32, i32* %28, align 4
  %441 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %442 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %441, i32 0, i32 4
  %443 = load i32*, i32** %442, align 8
  %444 = sext i32 %440 to i64
  %445 = getelementptr inbounds i32, i32* %443, i64 %444
  store i32* %445, i32** %442, align 8
  %446 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %447 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %448 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %447, i64 0
  %449 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %452 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %451, i64 1
  %453 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = sub nsw i32 %450, %454
  %456 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %457 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %456, i64 1
  %458 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %461 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %460, i64 0
  %462 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = sub nsw i32 %459, %463
  %465 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %446, i32 %455, i32 %464)
  %466 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %466, i32 0, i32 2
  %468 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %467, align 8
  %469 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %470 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = call i64 %468(i32 %471, %struct.TYPE_36__* %19)
  store i64 %472, i64* %11, align 8
  %473 = load i32, i32* %28, align 4
  %474 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %475 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %474, i32 0, i32 4
  %476 = load i32*, i32** %475, align 8
  %477 = sext i32 %473 to i64
  %478 = sub i64 0, %477
  %479 = getelementptr inbounds i32, i32* %476, i64 %478
  store i32* %479, i32** %475, align 8
  %480 = load i64, i64* %11, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %439
  br label %560

483:                                              ; preds = %439
  %484 = load i32, i32* %28, align 4
  %485 = mul nsw i32 2, %484
  %486 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %487 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %486, i32 0, i32 4
  %488 = load i32*, i32** %487, align 8
  %489 = sext i32 %485 to i64
  %490 = getelementptr inbounds i32, i32* %488, i64 %489
  store i32* %490, i32** %487, align 8
  %491 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %492 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %493 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %492, i64 1
  %494 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %497 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %496, i64 2
  %498 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = sub nsw i32 %495, %499
  %501 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %502 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %501, i64 2
  %503 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %506 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %505, i64 1
  %507 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = sub nsw i32 %504, %508
  %510 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %491, i32 %500, i32 %509)
  %511 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %511, i32 0, i32 2
  %513 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %512, align 8
  %514 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %515 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 8
  %517 = call i64 %513(i32 %516, %struct.TYPE_36__* %19)
  store i64 %517, i64* %11, align 8
  %518 = load i32, i32* %28, align 4
  %519 = mul nsw i32 2, %518
  %520 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %521 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %520, i32 0, i32 4
  %522 = load i32*, i32** %521, align 8
  %523 = sext i32 %519 to i64
  %524 = sub i64 0, %523
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  store i32* %525, i32** %521, align 8
  %526 = load i64, i64* %11, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %483
  br label %560

529:                                              ; preds = %483
  %530 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %531 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %530, i64 2
  %532 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* %15, align 4
  %535 = sub nsw i32 %534, %533
  store i32 %535, i32* %15, align 4
  %536 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  %537 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %536, i64 2
  %538 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 4
  %540 = load i32, i32* %16, align 4
  %541 = add nsw i32 %540, %539
  store i32 %541, i32* %16, align 4
  %542 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %543 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = sdiv i32 %544, 3
  store i32 %545, i32* %543, align 4
  %546 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %547 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = mul i32 %548, 3
  store i32 %549, i32* %547, align 8
  br label %558

550:                                              ; preds = %398
  %551 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %552 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %551, i32 0, i32 2
  %553 = load i64 (i32, %struct.TYPE_36__*)*, i64 (i32, %struct.TYPE_36__*)** %552, align 8
  %554 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %555 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 8
  %557 = call i64 %553(i32 %556, %struct.TYPE_36__* %19)
  store i64 %557, i64* %11, align 8
  br label %558

558:                                              ; preds = %550, %529
  br label %559

559:                                              ; preds = %558, %395
  br label %560

560:                                              ; preds = %559, %528, %482, %438, %326, %308, %262, %218, %107, %92, %61, %54
  %561 = load i64, i64* %11, align 8
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %567, label %563

563:                                              ; preds = %560
  %564 = load i64, i64* @FT_GLYPH_FORMAT_BITMAP, align 8
  %565 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %566 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %565, i32 0, i32 0
  store i64 %564, i64* %566, align 8
  br label %590

567:                                              ; preds = %560
  %568 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %569 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %568, i32 0, i32 3
  %570 = load %struct.TYPE_33__*, %struct.TYPE_33__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 4
  %573 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %574 = and i32 %572, %573
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %576, label %589

576:                                              ; preds = %567
  %577 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %578 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %577, i32 0, i32 4
  %579 = load i32*, i32** %578, align 8
  %580 = call i32 @FT_FREE(i32* %579)
  %581 = load i32, i32* @FT_GLYPH_OWN_BITMAP, align 4
  %582 = xor i32 %581, -1
  %583 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %584 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %583, i32 0, i32 3
  %585 = load %struct.TYPE_33__*, %struct.TYPE_33__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 4
  %588 = and i32 %587, %582
  store i32 %588, i32* %586, align 4
  br label %589

589:                                              ; preds = %576, %567
  br label %590

590:                                              ; preds = %589, %563
  %591 = load i32, i32* %15, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %596, label %593

593:                                              ; preds = %590
  %594 = load i32, i32* %16, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %603

596:                                              ; preds = %593, %590
  %597 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %598 = load i32, i32* %15, align 4
  %599 = sub nsw i32 0, %598
  %600 = load i32, i32* %16, align 4
  %601 = sub nsw i32 0, %600
  %602 = call i32 @FT_Outline_Translate(%struct.TYPE_37__* %597, i32 %599, i32 %601)
  br label %603

603:                                              ; preds = %596, %593
  %604 = load i64, i64* %11, align 8
  ret i64 %604
}

declare dso_local i64 @FT_THROW(i32) #1

declare dso_local i32 @FT_FREE(i32*) #1

declare dso_local i64 @ft_glyphslot_preset_bitmap(%struct.TYPE_27__*, i64, %struct.TYPE_34__*) #1

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
