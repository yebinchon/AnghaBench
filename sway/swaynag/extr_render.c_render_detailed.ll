; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_detailed.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_render.c_render_detailed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaynag = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_9__, i8*, i32, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@PANGO_SCALE = common dso_local global i32 0, align 4
@PANGO_WRAP_WORD_CHAR = common dso_local global i32 0, align 4
@SWAYNAG_MAX_HEIGHT = common dso_local global i32 0, align 4
@PANGO_ELLIPSIZE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.swaynag*, i32)* @render_detailed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @render_detailed(i32* %0, %struct.swaynag* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.swaynag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.swaynag* %1, %struct.swaynag** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %21 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %24 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %28 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %33 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %37 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %42 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %50 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %54 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  %59 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %60 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %63, 2
  %65 = sub nsw i32 %62, %64
  %66 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %67 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %71 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %76 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %80 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32* @get_pango_layout(i32* %69, i32 %74, i32 %78, i32 %81, i32 0)
  store i32* %82, i32** %11, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %85 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 %88, 2
  %90 = sub nsw i32 %87, %89
  %91 = load i32, i32* @PANGO_SCALE, align 4
  %92 = mul nsw i32 %90, %91
  %93 = call i32 @pango_layout_set_width(i32* %83, i32 %92)
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* @PANGO_WRAP_WORD_CHAR, align 4
  %96 = call i32 @pango_layout_set_wrap(i32* %94, i32 %95)
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @pango_layout_set_single_paragraph_mode(i32* %97, i32 0)
  %99 = load i32*, i32** %4, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @pango_cairo_update_layout(i32* %99, i32* %100)
  %102 = load i32*, i32** %11, align 8
  %103 = call i8* @pango_layout_get_line_count(i32* %102)
  %104 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %105 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 8
  store i8* %103, i8** %106, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %109 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.TYPE_8__* @pango_layout_get_line_readonly(i32* %107, i32 %111)
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %12, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %13, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = call i8* @pango_layout_get_text(i32* %116)
  store i8* %117, i8** %14, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8*, i8** %14, align 8
  %124 = call i32 @strlen(i8* %123)
  %125 = load i32, i32* %13, align 4
  %126 = sub nsw i32 %124, %125
  %127 = call i32 @pango_layout_set_text(i32* %118, i8* %122, i32 %126)
  %128 = load i32*, i32** %4, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @pango_cairo_update_layout(i32* %128, i32* %129)
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @pango_layout_get_pixel_size(i32* %131, i32* %15, i32* %16)
  %133 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %134 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = icmp sgt i32 %136, 0
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %17, align 4
  %139 = load i32*, i32** %4, align 8
  %140 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %141 = call i32 @get_detailed_scroll_button_width(i32* %139, %struct.swaynag* %140)
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %17, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %3
  %145 = load i32, i32* %18, align 4
  %146 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %147 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, %145
  store i32 %150, i32* %148, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %153 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = mul nsw i32 %156, 2
  %158 = sub nsw i32 %155, %157
  %159 = load i32, i32* @PANGO_SCALE, align 4
  %160 = mul nsw i32 %158, %159
  %161 = call i32 @pango_layout_set_width(i32* %151, i32 %160)
  br label %162

162:                                              ; preds = %144, %3
  br label %163

163:                                              ; preds = %232, %162
  %164 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %165 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %9, align 4
  %173 = mul nsw i32 %172, 2
  %174 = add nsw i32 %171, %173
  store i32 %174, i32* %19, align 4
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* @SWAYNAG_MAX_HEIGHT, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %201

178:                                              ; preds = %163
  %179 = load i32, i32* @SWAYNAG_MAX_HEIGHT, align 4
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* %17, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %200, label %182

182:                                              ; preds = %178
  store i32 1, i32* %17, align 4
  %183 = load i32, i32* %18, align 4
  %184 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %185 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %187, %183
  store i32 %188, i32* %186, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %191 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = mul nsw i32 %194, 2
  %196 = sub nsw i32 %193, %195
  %197 = load i32, i32* @PANGO_SCALE, align 4
  %198 = mul nsw i32 %196, %197
  %199 = call i32 @pango_layout_set_width(i32* %189, i32 %198)
  br label %200

200:                                              ; preds = %182, %178
  br label %201

201:                                              ; preds = %200, %163
  %202 = load i32, i32* %19, align 4
  %203 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %204 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %202, %206
  %208 = load i32, i32* %10, align 4
  %209 = sub nsw i32 %207, %208
  %210 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %211 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 3
  store i32 %209, i32* %212, align 4
  %213 = load i32*, i32** %11, align 8
  %214 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %215 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %9, align 4
  %219 = mul nsw i32 %218, 2
  %220 = sub nsw i32 %217, %219
  %221 = load i32, i32* @PANGO_SCALE, align 4
  %222 = mul nsw i32 %220, %221
  %223 = call i32 @pango_layout_set_height(i32* %213, i32 %222)
  %224 = load i32*, i32** %11, align 8
  %225 = load i32, i32* @PANGO_ELLIPSIZE_END, align 4
  %226 = call i32 @pango_layout_set_ellipsize(i32* %224, i32 %225)
  %227 = load i32*, i32** %4, align 8
  %228 = load i32*, i32** %11, align 8
  %229 = call i32 @pango_cairo_update_layout(i32* %227, i32* %228)
  %230 = load i32*, i32** %11, align 8
  %231 = call i32 @pango_layout_get_pixel_size(i32* %230, i32* %15, i32* %16)
  br label %232

232:                                              ; preds = %201
  %233 = load i32, i32* %16, align 4
  %234 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %235 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %9, align 4
  %239 = mul nsw i32 %238, 2
  %240 = sub nsw i32 %237, %239
  %241 = icmp ne i32 %233, %240
  br i1 %241, label %163, label %242

242:                                              ; preds = %232
  %243 = load i32*, i32** %11, align 8
  %244 = call i8* @pango_layout_get_line_count(i32* %243)
  %245 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %246 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 6
  store i8* %244, i8** %247, align 8
  %248 = load i32, i32* %17, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %340

250:                                              ; preds = %242
  %251 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %252 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %256 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %254, %258
  %260 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %261 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  store i32 %259, i32* %263, align 8
  %264 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %265 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %269 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 1
  store i32 %267, i32* %271, align 4
  %272 = load i32, i32* %18, align 4
  %273 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %274 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 2
  store i32 %272, i32* %276, align 8
  %277 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %278 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = sdiv i32 %280, 2
  %282 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %283 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 5
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 3
  store i32 %281, i32* %285, align 4
  %286 = load i32*, i32** %4, align 8
  %287 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %288 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %289 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 5
  %291 = call i32 @render_details_scroll_button(i32* %286, %struct.swaynag* %287, %struct.TYPE_9__* %290)
  %292 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %293 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %297 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = add nsw i32 %295, %299
  %301 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %302 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %301, i32 0, i32 3
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 0
  store i32 %300, i32* %304, align 8
  %305 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %306 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %305, i32 0, i32 3
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %311 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 5
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %309, %314
  %316 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %317 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 1
  store i32 %315, i32* %319, align 4
  %320 = load i32, i32* %18, align 4
  %321 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %322 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 2
  store i32 %320, i32* %324, align 8
  %325 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %326 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = sdiv i32 %328, 2
  %330 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %331 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 3
  store i32 %329, i32* %333, align 4
  %334 = load i32*, i32** %4, align 8
  %335 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %336 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %337 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %336, i32 0, i32 3
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 4
  %339 = call i32 @render_details_scroll_button(i32* %334, %struct.swaynag* %335, %struct.TYPE_9__* %338)
  br label %340

340:                                              ; preds = %250, %242
  %341 = load i32*, i32** %4, align 8
  %342 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %343 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %342, i32 0, i32 2
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @cairo_set_source_u32(i32* %341, i32 %346)
  %348 = load i32*, i32** %4, align 8
  %349 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %350 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %349, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %354 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %358 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %362 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @cairo_rectangle(i32* %348, i32 %352, i32 %356, i32 %360, i32 %364)
  %366 = load i32*, i32** %4, align 8
  %367 = call i32 @cairo_fill(i32* %366)
  %368 = load i32*, i32** %4, align 8
  %369 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %370 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %369, i32 0, i32 3
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* %9, align 4
  %374 = add nsw i32 %372, %373
  %375 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %376 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %9, align 4
  %380 = add nsw i32 %378, %379
  %381 = call i32 @cairo_move_to(i32* %368, i32 %374, i32 %380)
  %382 = load i32*, i32** %4, align 8
  %383 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %384 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %383, i32 0, i32 2
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @cairo_set_source_u32(i32* %382, i32 %387)
  %389 = load i32*, i32** %4, align 8
  %390 = load i32*, i32** %11, align 8
  %391 = call i32 @pango_cairo_show_layout(i32* %389, i32* %390)
  %392 = load i32*, i32** %11, align 8
  %393 = call i32 @g_object_unref(i32* %392)
  %394 = load i32, i32* %19, align 4
  %395 = load %struct.swaynag*, %struct.swaynag** %5, align 8
  %396 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = sdiv i32 %394, %397
  ret i32 %398
}

declare dso_local i32* @get_pango_layout(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pango_layout_set_width(i32*, i32) #1

declare dso_local i32 @pango_layout_set_wrap(i32*, i32) #1

declare dso_local i32 @pango_layout_set_single_paragraph_mode(i32*, i32) #1

declare dso_local i32 @pango_cairo_update_layout(i32*, i32*) #1

declare dso_local i8* @pango_layout_get_line_count(i32*) #1

declare dso_local %struct.TYPE_8__* @pango_layout_get_line_readonly(i32*, i32) #1

declare dso_local i8* @pango_layout_get_text(i32*) #1

declare dso_local i32 @pango_layout_set_text(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pango_layout_get_pixel_size(i32*, i32*, i32*) #1

declare dso_local i32 @get_detailed_scroll_button_width(i32*, %struct.swaynag*) #1

declare dso_local i32 @pango_layout_set_height(i32*, i32) #1

declare dso_local i32 @pango_layout_set_ellipsize(i32*, i32) #1

declare dso_local i32 @render_details_scroll_button(i32*, %struct.swaynag*, %struct.TYPE_9__*) #1

declare dso_local i32 @cairo_set_source_u32(i32*, i32) #1

declare dso_local i32 @cairo_rectangle(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cairo_fill(i32*) #1

declare dso_local i32 @cairo_move_to(i32*, i32, i32) #1

declare dso_local i32 @pango_cairo_show_layout(i32*, i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
