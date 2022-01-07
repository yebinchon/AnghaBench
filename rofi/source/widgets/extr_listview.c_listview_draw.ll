; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_listview_draw.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_listview_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_14__*, i64, i64, %struct.TYPE_13__, i64, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@LISTVIEW_SCROLL_CONTINIOUS = common dso_local global i64 0, align 8
@ROFI_ORIENTATION_VERTICAL = common dso_local global i32 0, align 4
@ROFI_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32*)* @listview_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @listview_draw(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = bitcast %struct.TYPE_15__* %19 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %6, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LISTVIEW_SCROLL_CONTINIOUS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = call i32 @scroll_continious(%struct.TYPE_16__* %27)
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = call i32 @scroll_per_page(%struct.TYPE_16__* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 11
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @scrollbar_set_max_value(i32 %35, i64 %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = call i32 @scrollbar_set_handle_length(i32 %42, i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %32
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 11
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 13
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = sub nsw i64 %65, 1
  %67 = call i32 @scrollbar_set_handle(i32 %58, i64 %66)
  br label %76

68:                                               ; preds = %32
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 13
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @scrollbar_set_handle(i32 %71, i64 %74)
  br label %76

76:                                               ; preds = %68, %55
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 12
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ROFI_ORIENTATION_VERTICAL, align 4
  %84 = call i32 @distance_get_pixel(i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 12
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ROFI_ORIENTATION_HORIZONTAL, align 4
  %89 = call i32 @distance_get_pixel(i32 %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = call i32 @widget_padding_get_left(%struct.TYPE_15__* %90)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = call i32 @widget_padding_get_top(%struct.TYPE_15__* %92)
  store i32 %93, i32* %10, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %325

98:                                               ; preds = %76
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %325

103:                                              ; preds = %98
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 11
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = zext i32 %110 to i64
  %112 = sub nsw i64 %109, %111
  %113 = call i32 @MIN(i64 %106, i64 %112)
  store i32 %113, i32* %11, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 8
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %296

118:                                              ; preds = %103
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 10
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  %128 = mul nsw i32 %123, %127
  %129 = sub nsw i32 %122, %128
  store i32 %129, i32* %12, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %131 = call i64 @widget_padding_get_padding_width(%struct.TYPE_15__* %130)
  %132 = load i32, i32* %12, align 4
  %133 = zext i32 %132 to i64
  %134 = sub nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %12, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @WIDGET(i32 %138)
  %140 = call i64 @widget_enabled(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %118
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %12, align 4
  %145 = sub i32 %144, %143
  store i32 %145, i32* %12, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @WIDGET(i32 %148)
  %150 = call i64 @widget_get_width(i32 %149)
  %151 = load i32, i32* %12, align 4
  %152 = zext i32 %151 to i64
  %153 = sub nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %142, %118
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = udiv i32 %156, %159
  store i32 %160, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %161

161:                                              ; preds = %289, %155
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %165, label %292

165:                                              ; preds = %161
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = udiv i32 %167, %170
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %8, align 4
  %174 = add i32 %172, %173
  %175 = mul i32 %171, %174
  %176 = add i32 %166, %175
  store i32 %176, i32* %15, align 4
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 9
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %230

181:                                              ; preds = %165
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %186 = call i32 @widget_padding_get_bottom(%struct.TYPE_15__* %185)
  %187 = load i32, i32* %14, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = urem i32 %187, %190
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %194, %195
  %197 = mul i32 %191, %196
  %198 = add i32 %186, %197
  %199 = sub i32 %184, %198
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = sub i32 %199, %202
  store i32 %203, i32* %16, align 4
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 7
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @WIDGET(i32 %211)
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %16, align 4
  %215 = call i32 @widget_move(i32 %212, i32 %213, i32 %214)
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 7
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @WIDGET(i32 %223)
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @widget_resize(i32 %224, i32 %225, i32 %228)
  br label %270

230:                                              ; preds = %165
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %14, align 4
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = urem i32 %232, %235
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %239, %240
  %242 = mul i32 %236, %241
  %243 = add i32 %231, %242
  store i32 %243, i32* %17, align 4
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 7
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %245, align 8
  %247 = load i32, i32* %14, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @WIDGET(i32 %251)
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %17, align 4
  %255 = call i32 @widget_move(i32 %252, i32 %253, i32 %254)
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 7
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %257, align 8
  %259 = load i32, i32* %14, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @WIDGET(i32 %263)
  %265 = load i32, i32* %13, align 4
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @widget_resize(i32 %264, i32 %265, i32 %268)
  br label %270

270:                                              ; preds = %230, %181
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* %5, align 4
  %275 = add i32 %273, %274
  %276 = load i64, i64* @TRUE, align 8
  %277 = call i32 @update_element(%struct.TYPE_16__* %271, i32 %272, i32 %275, i64 %276)
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 7
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %279, align 8
  %281 = load i32, i32* %14, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @WIDGET(i32 %285)
  %287 = load i32*, i32** %4, align 8
  %288 = call i32 @widget_draw(i32 %286, i32* %287)
  br label %289

289:                                              ; preds = %270
  %290 = load i32, i32* %14, align 4
  %291 = add i32 %290, 1
  store i32 %291, i32* %14, align 4
  br label %161

292:                                              ; preds = %161
  %293 = load i64, i64* @FALSE, align 8
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 8
  store i64 %293, i64* %295, align 8
  br label %324

296:                                              ; preds = %103
  store i32 0, i32* %18, align 4
  br label %297

297:                                              ; preds = %320, %296
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* %11, align 4
  %300 = icmp ult i32 %298, %299
  br i1 %300, label %301, label %323

301:                                              ; preds = %297
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %303 = load i32, i32* %18, align 4
  %304 = load i32, i32* %18, align 4
  %305 = load i32, i32* %5, align 4
  %306 = add i32 %304, %305
  %307 = load i64, i64* @FALSE, align 8
  %308 = call i32 @update_element(%struct.TYPE_16__* %302, i32 %303, i32 %306, i64 %307)
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 7
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %310, align 8
  %312 = load i32, i32* %18, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @WIDGET(i32 %316)
  %318 = load i32*, i32** %4, align 8
  %319 = call i32 @widget_draw(i32 %317, i32* %318)
  br label %320

320:                                              ; preds = %301
  %321 = load i32, i32* %18, align 4
  %322 = add i32 %321, 1
  store i32 %322, i32* %18, align 4
  br label %297

323:                                              ; preds = %297
  br label %324

324:                                              ; preds = %323, %292
  br label %325

325:                                              ; preds = %324, %98, %76
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 6
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @WIDGET(i32 %328)
  %330 = load i32*, i32** %4, align 8
  %331 = call i32 @widget_draw(i32 %329, i32* %330)
  ret void
}

declare dso_local i32 @scroll_continious(%struct.TYPE_16__*) #1

declare dso_local i32 @scroll_per_page(%struct.TYPE_16__*) #1

declare dso_local i32 @scrollbar_set_max_value(i32, i64) #1

declare dso_local i32 @scrollbar_set_handle_length(i32, i32) #1

declare dso_local i32 @scrollbar_set_handle(i32, i64) #1

declare dso_local i32 @distance_get_pixel(i32, i32) #1

declare dso_local i32 @widget_padding_get_left(%struct.TYPE_15__*) #1

declare dso_local i32 @widget_padding_get_top(%struct.TYPE_15__*) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i64 @widget_padding_get_padding_width(%struct.TYPE_15__*) #1

declare dso_local i64 @widget_enabled(i32) #1

declare dso_local i32 @WIDGET(i32) #1

declare dso_local i64 @widget_get_width(i32) #1

declare dso_local i32 @widget_padding_get_bottom(%struct.TYPE_15__*) #1

declare dso_local i32 @widget_move(i32, i32, i32) #1

declare dso_local i32 @widget_resize(i32, i32, i32) #1

declare dso_local i32 @update_element(%struct.TYPE_16__*, i32, i32, i64) #1

declare dso_local i32 @widget_draw(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
