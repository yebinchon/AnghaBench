; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_barview_draw.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_barview_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_10__*, %struct.TYPE_8__, i32, %struct.TYPE_7__, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }

@ROFI_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@LEFT_TO_RIGHT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @barview_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @barview_draw(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
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
  %19 = alloca %struct.TYPE_10__, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = call i32 @scroll_per_page_barview(%struct.TYPE_9__* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ROFI_ORIENTATION_HORIZONTAL, align 4
  %33 = call i32 @distance_get_pixel(i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @widget_padding_get_left(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @widget_padding_get_right(i32* %40)
  %42 = sub nsw i32 %39, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @widget_padding_get_top(i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %383

49:                                               ; preds = %2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  %59 = call i32 @MIN(i64 %52, i64 %58)
  store i32 %59, i32* %11, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %351

64:                                               ; preds = %49
  %65 = load i8*, i8** @TRUE, align 8
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 @widget_padding_get_padding_width(i32* %74)
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = sub nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %13, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @LEFT_TO_RIGHT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %182

86:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %178, %86
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = icmp sgt i32 %92, 0
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi i1 [ false, %87 ], [ %93, %91 ]
  br i1 %95, label %96, label %181

96:                                               ; preds = %94
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %5, align 4
  %101 = add i32 %99, %100
  %102 = load i8*, i8** @TRUE, align 8
  %103 = call i32 @update_element(%struct.TYPE_9__* %97, i32 %98, i32 %101, i8* %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @WIDGET(i32 %111)
  %113 = call i32 @textbox_get_desired_width(i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %96
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  br label %181

121:                                              ; preds = %117
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %121, %96
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @WIDGET(i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @widget_move(i32 %132, i32 %133, i32 %134)
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @WIDGET(i32 %143)
  %145 = load i32, i32* %15, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @widget_resize(i32 %144, i32 %145, i32 %148)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @WIDGET(i32 %157)
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @widget_draw(i32 %158, i32* %159)
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32, i32* %13, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %8, align 4
  %171 = load i8*, i8** @FALSE, align 8
  %172 = ptrtoint i8* %171 to i32
  store i32 %172, i32* %12, align 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %123
  %179 = load i32, i32* %14, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %87

181:                                              ; preds = %120, %94
  br label %346

182:                                              ; preds = %64
  store i32 0, i32* %16, align 4
  br label %183

183:                                              ; preds = %282, %182
  %184 = load i32, i32* %16, align 4
  %185 = zext i32 %184 to i64
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp slt i64 %185, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %183
  %191 = load i32, i32* %13, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp ule i32 %194, %195
  br label %197

197:                                              ; preds = %193, %190, %183
  %198 = phi i1 [ false, %190 ], [ false, %183 ], [ %196, %193 ]
  br i1 %198, label %199, label %285

199:                                              ; preds = %197
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* %16, align 4
  %204 = sub i32 %202, %203
  %205 = load i8*, i8** @TRUE, align 8
  %206 = call i32 @update_element(%struct.TYPE_9__* %200, i32 %201, i32 %204, i8* %205)
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = load i32, i32* %16, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @WIDGET(i32 %214)
  %216 = call i32 @textbox_get_desired_width(i32 %215)
  store i32 %216, i32* %17, align 4
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %13, align 4
  %219 = icmp sge i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %199
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  br label %285

224:                                              ; preds = %220
  %225 = load i32, i32* %13, align 4
  store i32 %225, i32* %17, align 4
  br label %226

226:                                              ; preds = %224, %199
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* %9, align 4
  %229 = sub nsw i32 %228, %227
  store i32 %229, i32* %9, align 4
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = load i32, i32* %16, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @WIDGET(i32 %237)
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @widget_move(i32 %238, i32 %239, i32 %240)
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = load i32, i32* %16, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @WIDGET(i32 %249)
  %251 = load i32, i32* %17, align 4
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @widget_resize(i32 %250, i32 %251, i32 %254)
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 3
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %257, align 8
  %259 = load i32, i32* %16, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @WIDGET(i32 %263)
  %265 = load i32*, i32** %4, align 8
  %266 = call i32 @widget_draw(i32 %264, i32* %265)
  %267 = load i32, i32* %17, align 4
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32, i32* %13, align 4
  %271 = sub nsw i32 %270, %269
  store i32 %271, i32* %13, align 4
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* %9, align 4
  %274 = sub nsw i32 %273, %272
  store i32 %274, i32* %9, align 4
  %275 = load i8*, i8** @FALSE, align 8
  %276 = ptrtoint i8* %275 to i32
  store i32 %276, i32* %12, align 4
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 8
  br label %282

282:                                              ; preds = %226
  %283 = load i32, i32* %16, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %16, align 4
  br label %183

285:                                              ; preds = %223, %197
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = sub nsw i32 %289, 1
  %291 = load i32, i32* %5, align 4
  %292 = sub i32 %291, %290
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* %5, align 4
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  store i32 0, i32* %18, align 4
  br label %296

296:                                              ; preds = %342, %285
  %297 = load i32, i32* %18, align 4
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = sdiv i32 %301, 2
  %303 = icmp ult i32 %297, %302
  br i1 %303, label %304, label %345

304:                                              ; preds = %296
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 3
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = load i32, i32* %18, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i64 %309
  %311 = bitcast %struct.TYPE_10__* %19 to i8*
  %312 = bitcast %struct.TYPE_10__* %310 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %311, i8* align 4 %312, i64 8, i1 false)
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* %18, align 4
  %318 = sub i32 %316, %317
  %319 = sub i32 %318, 1
  store i32 %319, i32* %20, align 4
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 3
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = load i32, i32* %18, align 4
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i64 %324
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 3
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %327, align 8
  %329 = load i32, i32* %20, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i64 %330
  %332 = bitcast %struct.TYPE_10__* %325 to i8*
  %333 = bitcast %struct.TYPE_10__* %331 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %332, i8* align 4 %333, i64 8, i1 false)
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 3
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %335, align 8
  %337 = load i32, i32* %20, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i64 %338
  %340 = bitcast %struct.TYPE_10__* %339 to i8*
  %341 = bitcast %struct.TYPE_10__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %340, i8* align 4 %341, i64 8, i1 false)
  br label %342

342:                                              ; preds = %304
  %343 = load i32, i32* %18, align 4
  %344 = add i32 %343, 1
  store i32 %344, i32* %18, align 4
  br label %296

345:                                              ; preds = %296
  br label %346

346:                                              ; preds = %345, %181
  %347 = load i8*, i8** @FALSE, align 8
  %348 = ptrtoint i8* %347 to i32
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 2
  store i32 %348, i32* %350, align 8
  br label %382

351:                                              ; preds = %49
  store i32 0, i32* %21, align 4
  br label %352

352:                                              ; preds = %378, %351
  %353 = load i32, i32* %21, align 4
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 4
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = icmp ult i32 %353, %357
  br i1 %358, label %359, label %381

359:                                              ; preds = %352
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %361 = load i32, i32* %21, align 4
  %362 = load i32, i32* %21, align 4
  %363 = load i32, i32* %5, align 4
  %364 = add i32 %362, %363
  %365 = load i8*, i8** @FALSE, align 8
  %366 = call i32 @update_element(%struct.TYPE_9__* %360, i32 %361, i32 %364, i8* %365)
  %367 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 3
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %368, align 8
  %370 = load i32, i32* %21, align 4
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @WIDGET(i32 %374)
  %376 = load i32*, i32** %4, align 8
  %377 = call i32 @widget_draw(i32 %375, i32* %376)
  br label %378

378:                                              ; preds = %359
  %379 = load i32, i32* %21, align 4
  %380 = add i32 %379, 1
  store i32 %380, i32* %21, align 4
  br label %352

381:                                              ; preds = %352
  br label %382

382:                                              ; preds = %381, %346
  br label %383

383:                                              ; preds = %382, %2
  ret void
}

declare dso_local i32 @scroll_per_page_barview(%struct.TYPE_9__*) #1

declare dso_local i32 @distance_get_pixel(i32, i32) #1

declare dso_local i32 @widget_padding_get_left(i32*) #1

declare dso_local i32 @widget_padding_get_right(i32*) #1

declare dso_local i32 @widget_padding_get_top(i32*) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i64 @widget_padding_get_padding_width(i32*) #1

declare dso_local i32 @update_element(%struct.TYPE_9__*, i32, i32, i8*) #1

declare dso_local i32 @textbox_get_desired_width(i32) #1

declare dso_local i32 @WIDGET(i32) #1

declare dso_local i32 @widget_move(i32, i32, i32) #1

declare dso_local i32 @widget_resize(i32, i32, i32) #1

declare dso_local i32 @widget_draw(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
